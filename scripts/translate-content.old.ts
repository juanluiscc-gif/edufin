/**
 * Automatic Content Translation Script
 * Translates all lessons and games from English to Spanish
 * Uses Anthropic's Claude API for high-quality translations
 */

import { PrismaClient } from '@prisma/client';
import Anthropic from '@anthropic-ai/sdk';

const prisma = new PrismaClient();

// Initialize Anthropic client (will use ANTHROPIC_API_KEY from environment)
const anthropic = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

interface TranslationResult {
  original: string;
  translated: string;
  contentType: string;
  contentId: string;
  fieldPath: string;
}

const translations: TranslationResult[] = [];

/**
 * Translate text using Claude API
 */
async function translateWithClaude(text: string, context: string): Promise<string> {
  const message = await anthropic.messages.create({
    model: 'claude-3-5-sonnet-20241022',
    max_tokens: 4000,
    messages: [
      {
        role: 'user',
        content: `You are a professional translator specializing in educational content about financial literacy.

Translate the following text from English to Spanish (Latin American Spanish).

IMPORTANT RULES:
- Keep markdown formatting exactly as is (# headers, ** bold **, bullet points, etc.)
- Preserve all emojis
- Keep technical terms accurate (e.g., "cryptocurrency" → "criptomoneda")
- Use clear, educational language appropriate for both children and adults
- Maintain the same tone and style as the original
- DO NOT add explanations or comments, ONLY return the translated text

Context: ${context}

Text to translate:
${text}`,
      },
    ],
  });

  const translatedText = message.content[0].type === 'text' ? message.content[0].text : '';
  return translatedText.trim();
}

/**
 * Translate lesson content
 */
async function translateLesson(lesson: any) {
  console.log(`\n📖 Translating lesson: ${lesson.title}`);

  const content = JSON.parse(lesson.content);
  const translatedContent = JSON.parse(JSON.stringify(content)); // Deep clone

  // Translate sections
  if (content.sections && Array.isArray(content.sections)) {
    console.log(`  - Translating ${content.sections.length} sections...`);

    for (let i = 0; i < content.sections.length; i++) {
      const section = content.sections[i];

      // Translate title
      if (section.title) {
        const translatedTitle = await translateWithClaude(
          section.title,
          `Lesson section title for "${lesson.title}"`
        );
        translatedContent.sections[i].title = translatedTitle;

        translations.push({
          original: section.title,
          translated: translatedTitle,
          contentType: 'lesson',
          contentId: lesson.id,
          fieldPath: `sections[${i}].title`,
        });
      }

      // Translate content (markdown)
      if (section.content) {
        const translatedSectionContent = await translateWithClaude(
          section.content,
          `Lesson section content for "${lesson.title}" - section "${section.title}"`
        );
        translatedContent.sections[i].content = translatedSectionContent;

        translations.push({
          original: section.content,
          translated: translatedSectionContent,
          contentType: 'lesson',
          contentId: lesson.id,
          fieldPath: `sections[${i}].content`,
        });
      }

      // Small delay to respect rate limits
      await new Promise(resolve => setTimeout(resolve, 500));
    }
  }

  // Translate quiz
  if (content.quiz && content.quiz.questions && Array.isArray(content.quiz.questions)) {
    console.log(`  - Translating ${content.quiz.questions.length} quiz questions...`);

    for (let i = 0; i < content.quiz.questions.length; i++) {
      const question = content.quiz.questions[i];

      // Translate question text
      if (question.question) {
        const translatedQuestion = await translateWithClaude(
          question.question,
          `Quiz question for lesson "${lesson.title}"`
        );
        translatedContent.quiz.questions[i].question = translatedQuestion;

        translations.push({
          original: question.question,
          translated: translatedQuestion,
          contentType: 'lesson',
          contentId: lesson.id,
          fieldPath: `quiz.questions[${i}].question`,
        });
      }

      // Translate options
      if (question.options && Array.isArray(question.options)) {
        for (let j = 0; j < question.options.length; j++) {
          const option = question.options[j];
          const translatedOption = await translateWithClaude(
            option,
            `Quiz answer option for question "${question.question}"`
          );
          translatedContent.quiz.questions[i].options[j] = translatedOption;

          translations.push({
            original: option,
            translated: translatedOption,
            contentType: 'lesson',
            contentId: lesson.id,
            fieldPath: `quiz.questions[${i}].options[${j}]`,
          });
        }
      }

      // Translate explanation
      if (question.explanation) {
        const translatedExplanation = await translateWithClaude(
          question.explanation,
          `Quiz answer explanation for "${lesson.title}"`
        );
        translatedContent.quiz.questions[i].explanation = translatedExplanation;

        translations.push({
          original: question.explanation,
          translated: translatedExplanation,
          contentType: 'lesson',
          contentId: lesson.id,
          fieldPath: `quiz.questions[${i}].explanation`,
        });
      }

      // Small delay to respect rate limits
      await new Promise(resolve => setTimeout(resolve, 500));
    }
  }

  return {
    lessonId: lesson.id,
    originalTitle: lesson.title,
    translatedContent: JSON.stringify(translatedContent),
  };
}

/**
 * Translate game content
 */
async function translateGame(game: any) {
  console.log(`\n🎮 Translating game: ${game.title}`);

  const description = JSON.parse(game.description);
  const translatedDescription = JSON.parse(JSON.stringify(description)); // Deep clone

  // Translate instructions
  if (description.instructions) {
    const translatedInstructions = await translateWithClaude(
      description.instructions,
      `Game instructions for "${game.title}"`
    );
    translatedDescription.instructions = translatedInstructions;

    translations.push({
      original: description.instructions,
      translated: translatedInstructions,
      contentType: 'game',
      contentId: game.id,
      fieldPath: 'instructions',
    });
  }

  // Translate questions
  if (description.questions && Array.isArray(description.questions)) {
    console.log(`  - Translating ${description.questions.length} questions...`);

    for (let i = 0; i < description.questions.length; i++) {
      const question = description.questions[i];

      // Translate question text
      if (question.text) {
        const translatedText = await translateWithClaude(
          question.text,
          `Game question for "${game.title}"`
        );
        translatedDescription.questions[i].text = translatedText;

        translations.push({
          original: question.text,
          translated: translatedText,
          contentType: 'game',
          contentId: game.id,
          fieldPath: `questions[${i}].text`,
        });
      }

      // Translate options
      if (question.options && Array.isArray(question.options)) {
        for (let j = 0; j < question.options.length; j++) {
          const option = question.options[j];
          const translatedOption = await translateWithClaude(
            option,
            `Game answer option for question "${question.text}"`
          );
          translatedDescription.questions[i].options[j] = translatedOption;

          translations.push({
            original: option,
            translated: translatedOption,
            contentType: 'game',
            contentId: game.id,
            fieldPath: `questions[${i}].options[${j}]`,
          });
        }
      }

      // Translate explanation
      if (question.explanation) {
        const translatedExplanation = await translateWithClaude(
          question.explanation,
          `Game answer explanation for "${game.title}"`
        );
        translatedDescription.questions[i].explanation = translatedExplanation;

        translations.push({
          original: question.explanation,
          translated: translatedExplanation,
          contentType: 'game',
          contentId: game.id,
          fieldPath: `questions[${i}].explanation`,
        });
      }

      // Small delay to respect rate limits
      await new Promise(resolve => setTimeout(resolve, 500));
    }
  }

  return {
    gameId: game.id,
    originalTitle: game.title,
    translatedDescription: JSON.stringify(translatedDescription),
  };
}

/**
 * Generate SQL migration script
 */
function generateSQL(lessonResults: any[], gameResults: any[]) {
  let sql = `-- Automatic Translation Migration
-- Generated: ${new Date().toISOString()}
-- Translates all lesson and game content from English to Spanish

`;

  // Update lessons
  if (lessonResults.length > 0) {
    sql += `-- ========================================
-- UPDATE LESSONS
-- ========================================

`;
    for (const result of lessonResults) {
      // Escape single quotes in JSON
      const escapedContent = result.translatedContent.replace(/'/g, "''");

      sql += `-- Update: ${result.originalTitle}
UPDATE "Lesson"
SET
  content = '${escapedContent}',
  updated_at = NOW()
WHERE id = '${result.lessonId}';

`;
    }
  }

  // Update games
  if (gameResults.length > 0) {
    sql += `-- ========================================
-- UPDATE GAMES
-- ========================================

`;
    for (const result of gameResults) {
      // Escape single quotes in JSON
      const escapedDescription = result.translatedDescription.replace(/'/g, "''");

      sql += `-- Update: ${result.originalTitle}
UPDATE "Game"
SET description = '${escapedDescription}'
WHERE id = '${result.gameId}';

`;
    }
  }

  sql += `-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation migration completed!' as message;
SELECT COUNT(*) as total_lessons FROM "Lesson";
SELECT COUNT(*) as total_games FROM "Game";
`;

  return sql;
}

/**
 * Main execution
 */
async function main() {
  console.log('🌍 Starting automatic content translation...\n');
  console.log('📝 Configuration:');
  console.log(`  - Source language: English`);
  console.log(`  - Target language: Spanish (Latin American)`);
  console.log(`  - Translation engine: Claude 3.5 Sonnet\n`);

  // Check API key
  if (!process.env.ANTHROPIC_API_KEY) {
    console.error('❌ ERROR: ANTHROPIC_API_KEY environment variable not set');
    console.error('   Please set it with: export ANTHROPIC_API_KEY=your_api_key');
    process.exit(1);
  }

  const lessonResults: any[] = [];
  const gameResults: any[] = [];

  // Get all lessons
  const lessons = await prisma.lesson.findMany({
    orderBy: { display_order: 'asc' },
  });

  console.log(`\n📚 Found ${lessons.length} lessons to translate`);

  // Translate each lesson
  for (const lesson of lessons) {
    try {
      const result = await translateLesson(lesson);
      lessonResults.push(result);
      console.log(`  ✓ Completed: ${lesson.title}`);
    } catch (error) {
      console.error(`  ✗ Error translating lesson "${lesson.title}":`, error);
    }
  }

  // Get all games
  const games = await prisma.game.findMany();

  console.log(`\n\n🎮 Found ${games.length} games to translate`);

  // Translate each game
  for (const game of games) {
    try {
      const result = await translateGame(game);
      gameResults.push(result);
      console.log(`  ✓ Completed: ${game.title}`);
    } catch (error) {
      console.error(`  ✗ Error translating game "${game.title}":`, error);
    }
  }

  // Generate SQL migration
  console.log('\n\n📄 Generating SQL migration script...');
  const sql = generateSQL(lessonResults, gameResults);

  // Save SQL to file
  const fs = await import('fs');
  const sqlPath = './prisma/migration_spanish_translation.sql';
  fs.writeFileSync(sqlPath, sql);

  console.log(`  ✓ SQL saved to: ${sqlPath}`);

  // Save translation log as JSON
  const logPath = './prisma/translation_log.json';
  fs.writeFileSync(
    logPath,
    JSON.stringify(
      {
        generatedAt: new Date().toISOString(),
        statistics: {
          totalLessons: lessonResults.length,
          totalGames: gameResults.length,
          totalTranslations: translations.length,
        },
        lessons: lessonResults,
        games: gameResults,
        translations,
      },
      null,
      2
    )
  );

  console.log(`  ✓ Translation log saved to: ${logPath}`);

  // Summary
  console.log('\n\n✨ Translation Complete!\n');
  console.log('📊 Summary:');
  console.log(`  - Lessons translated: ${lessonResults.length}`);
  console.log(`  - Games translated: ${gameResults.length}`);
  console.log(`  - Total strings translated: ${translations.length}`);
  console.log('\n📝 Next steps:');
  console.log('  1. Review the SQL file: prisma/migration_spanish_translation.sql');
  console.log('  2. Execute it in your Neon SQL console');
  console.log('  3. Verify translations in the app\n');
}

main()
  .catch((error) => {
    console.error('❌ Fatal error:', error);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
