/**
 * Multilingual Content Translation Script
 * Translates all lessons and games to any target language
 * Uses ContentTranslation table to store translations (preserves original English)
 *
 * Supports: English (en), Spanish (es), French (fr), German (de), Japanese (ja), Chinese (zh)
 */

import 'dotenv/config';
import { PrismaClient, Language } from '@prisma/client';
import Anthropic from '@anthropic-ai/sdk';
import { Pool } from 'pg';
import { PrismaPg } from '@prisma/adapter-pg';

// Initialize Prisma with pg adapter (same as src/lib/prisma.ts)
const connectionString = process.env.POSTGRES_URL_NON_POOLING || process.env.DATABASE_URL || process.env.POSTGRES_URL;

if (!connectionString) {
  throw new Error('DATABASE_URL, POSTGRES_URL, or POSTGRES_URL_NON_POOLING must be defined');
}

const pool = new Pool({
  connectionString,
  ssl: connectionString.includes('sslmode=require') ? { rejectUnauthorized: false } : undefined,
});

const adapter = new PrismaPg(pool);
const prisma = new PrismaClient({ adapter });

const anthropic = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

// Language configurations
const LANGUAGE_CONFIG = {
  es: {
    name: 'Spanish',
    fullName: 'Spanish (Latin American)',
    instructions: 'Translate to Latin American Spanish. Use neutral Spanish understandable across all Spanish-speaking countries.',
  },
  fr: {
    name: 'French',
    fullName: 'French',
    instructions: 'Translate to standard French (français). Use clear, educational language.',
  },
  de: {
    name: 'German',
    fullName: 'German',
    instructions: 'Translate to standard German (Deutsch). Use clear, educational language.',
  },
  ja: {
    name: 'Japanese',
    fullName: 'Japanese',
    instructions: 'Translate to Japanese (日本語). Use polite form (です/ます). Use clear, educational language.',
  },
  zh: {
    name: 'Chinese',
    fullName: 'Chinese (Simplified)',
    instructions: 'Translate to Simplified Chinese (简体中文). Use clear, educational language.',
  },
  hi: {
    name: 'Hindi',
    fullName: 'Hindi',
    instructions: 'Translate to Hindi (हिन्दी). Use Devanagari script. Use clear, educational language appropriate for financial literacy.',
  },
  it: {
    name: 'Italian',
    fullName: 'Italian',
    instructions: 'Translate to Italian (Italiano). Use clear, educational language.',
  },
  pt: {
    name: 'Portuguese',
    fullName: 'Portuguese (Brazilian)',
    instructions: 'Translate to Brazilian Portuguese (Português Brasileiro). Use Brazilian spelling and terminology. Use clear, educational language.',
  },
};

interface TranslationRecord {
  contentType: 'lesson' | 'game';
  contentId: string;
  fieldName: string;
  sourceText: string;
  translatedText: string;
}

const translations: TranslationRecord[] = [];

/**
 * Translate text using Claude API
 */
async function translateWithClaude(
  text: string,
  targetLang: Language,
  context: string
): Promise<string> {
  const langConfig = LANGUAGE_CONFIG[targetLang as keyof typeof LANGUAGE_CONFIG];

  const message = await anthropic.messages.create({
    model: 'claude-3-5-sonnet-20241022',
    max_tokens: 4000,
    messages: [
      {
        role: 'user',
        content: `You are a professional translator specializing in educational content about financial literacy.

Translate the following text from English to ${langConfig.fullName}.

IMPORTANT RULES:
- ${langConfig.instructions}
- Keep markdown formatting exactly as is (# headers, ** bold **, bullet points, etc.)
- Preserve all emojis
- Keep technical terms accurate
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
 * Translate lesson content and store in ContentTranslation
 */
async function translateLesson(lesson: any, targetLang: Language) {
  console.log(`\n📖 Translating lesson: ${lesson.title}`);

  const content = JSON.parse(lesson.content);

  // Translate sections
  if (content.sections && Array.isArray(content.sections)) {
    console.log(`  - Translating ${content.sections.length} sections...`);

    for (let i = 0; i < content.sections.length; i++) {
      const section = content.sections[i];

      // Translate section title
      if (section.title) {
        const translatedTitle = await translateWithClaude(
          section.title,
          targetLang,
          `Lesson section title for "${lesson.title}"`
        );

        translations.push({
          contentType: 'lesson',
          contentId: lesson.id,
          fieldName: `sections[${i}].title`,
          sourceText: section.title,
          translatedText: translatedTitle,
        });
      }

      // Translate section content
      if (section.content) {
        const translatedContent = await translateWithClaude(
          section.content,
          targetLang,
          `Lesson section content for "${lesson.title}" - section "${section.title}"`
        );

        translations.push({
          contentType: 'lesson',
          contentId: lesson.id,
          fieldName: `sections[${i}].content`,
          sourceText: section.content,
          translatedText: translatedContent,
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
          targetLang,
          `Quiz question for lesson "${lesson.title}"`
        );

        translations.push({
          contentType: 'lesson',
          contentId: lesson.id,
          fieldName: `quiz.questions[${i}].question`,
          sourceText: question.question,
          translatedText: translatedQuestion,
        });
      }

      // Translate options
      if (question.options && Array.isArray(question.options)) {
        for (let j = 0; j < question.options.length; j++) {
          const option = question.options[j];
          const translatedOption = await translateWithClaude(
            option,
            targetLang,
            `Quiz answer option for question "${question.question}"`
          );

          translations.push({
            contentType: 'lesson',
            contentId: lesson.id,
            fieldName: `quiz.questions[${i}].options[${j}]`,
            sourceText: option,
            translatedText: translatedOption,
          });
        }
      }

      // Translate explanation
      if (question.explanation) {
        const translatedExplanation = await translateWithClaude(
          question.explanation,
          targetLang,
          `Quiz answer explanation for "${lesson.title}"`
        );

        translations.push({
          contentType: 'lesson',
          contentId: lesson.id,
          fieldName: `quiz.questions[${i}].explanation`,
          sourceText: question.explanation,
          translatedText: translatedExplanation,
        });
      }

      // Small delay to respect rate limits
      await new Promise(resolve => setTimeout(resolve, 500));
    }
  }

  console.log(`  ✓ Completed: ${lesson.title}`);
}

/**
 * Translate game content and store in ContentTranslation
 */
async function translateGame(game: any, targetLang: Language) {
  console.log(`\n🎮 Translating game: ${game.title}`);

  const description = JSON.parse(game.description);

  // Translate instructions
  if (description.instructions) {
    const translatedInstructions = await translateWithClaude(
      description.instructions,
      targetLang,
      `Game instructions for "${game.title}"`
    );

    translations.push({
      contentType: 'game',
      contentId: game.id,
      fieldName: 'instructions',
      sourceText: description.instructions,
      translatedText: translatedInstructions,
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
          targetLang,
          `Game question for "${game.title}"`
        );

        translations.push({
          contentType: 'game',
          contentId: game.id,
          fieldName: `questions[${i}].text`,
          sourceText: question.text,
          translatedText: translatedText,
        });
      }

      // Translate options
      if (question.options && Array.isArray(question.options)) {
        for (let j = 0; j < question.options.length; j++) {
          const option = question.options[j];
          const translatedOption = await translateWithClaude(
            option,
            targetLang,
            `Game answer option for question "${question.text}"`
          );

          translations.push({
            contentType: 'game',
            contentId: game.id,
            fieldName: `questions[${i}].options[${j}]`,
            sourceText: option,
            translatedText: translatedOption,
          });
        }
      }

      // Translate explanation
      if (question.explanation) {
        const translatedExplanation = await translateWithClaude(
          question.explanation,
          targetLang,
          `Game answer explanation for "${game.title}"`
        );

        translations.push({
          contentType: 'game',
          contentId: game.id,
          fieldName: `questions[${i}].explanation`,
          sourceText: question.explanation,
          translatedText: translatedExplanation,
        });
      }

      // Small delay to respect rate limits
      await new Promise(resolve => setTimeout(resolve, 500));
    }
  }

  console.log(`  ✓ Completed: ${game.title}`);
}

/**
 * Generate SQL to insert translations into ContentTranslation table
 */
function generateSQL(targetLang: Language) {
  const langConfig = LANGUAGE_CONFIG[targetLang as keyof typeof LANGUAGE_CONFIG];
  const now = new Date().toISOString();
  const expiresAt = new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toISOString(); // 1 year

  let sql = `-- Multilingual Translation Migration
-- Target Language: ${langConfig.fullName} (${targetLang})
-- Generated: ${now}
-- Inserts translations into ContentTranslation table

-- Delete existing translations for this language (if re-running)
DELETE FROM "ContentTranslation"
WHERE target_language = '${targetLang}';

`;

  // Group translations by content type
  const lessonTranslations = translations.filter(t => t.contentType === 'lesson');
  const gameTranslations = translations.filter(t => t.contentType === 'game');

  if (lessonTranslations.length > 0) {
    sql += `-- ========================================
-- LESSON TRANSLATIONS
-- ========================================

`;
    for (const trans of lessonTranslations) {
      // Escape single quotes in SQL
      const escapedSourceText = trans.sourceText.replace(/'/g, "''");
      const escapedTranslatedText = trans.translatedText.replace(/'/g, "''");

      sql += `INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'lesson',
  '${trans.contentId}',
  '${trans.fieldName}',
  'en',
  '${targetLang}',
  '${escapedSourceText}',
  '${escapedTranslatedText}',
  '${now}',
  '${expiresAt}'
);

`;
    }
  }

  if (gameTranslations.length > 0) {
    sql += `-- ========================================
-- GAME TRANSLATIONS
-- ========================================

`;
    for (const trans of gameTranslations) {
      // Escape single quotes in SQL
      const escapedSourceText = trans.sourceText.replace(/'/g, "''");
      const escapedTranslatedText = trans.translatedText.replace(/'/g, "''");

      sql += `INSERT INTO "ContentTranslation" (
  id, content_type, content_id, field_name,
  source_language, target_language,
  source_text, translated_text,
  translated_at, expires_at
) VALUES (
  gen_random_uuid(),
  'game',
  '${trans.contentId}',
  '${trans.fieldName}',
  'en',
  '${targetLang}',
  '${escapedSourceText}',
  '${escapedTranslatedText}',
  '${now}',
  '${expiresAt}'
);

`;
    }
  }

  sql += `-- ========================================
-- VERIFICATION
-- ========================================
SELECT 'Translation completed for ${targetLang}!' as message;
SELECT COUNT(*) as total_translations
FROM "ContentTranslation"
WHERE target_language = '${targetLang}';
`;

  return sql;
}

/**
 * Main execution
 */
async function main() {
  // Get target language from command line
  const args = process.argv.slice(2);
  const langArg = args.find(arg => arg.startsWith('--lang='));

  if (!langArg) {
    console.error('❌ ERROR: Please specify target language');
    console.error('   Usage: npm run translate -- --lang=es');
    console.error('   Available languages: es, fr, de, ja, zh');
    process.exit(1);
  }

  const targetLang = langArg.split('=')[1] as Language;

  if (!LANGUAGE_CONFIG[targetLang as keyof typeof LANGUAGE_CONFIG]) {
    console.error(`❌ ERROR: Unsupported language: ${targetLang}`);
    console.error('   Available languages: es, fr, de, ja, zh');
    process.exit(1);
  }

  const langConfig = LANGUAGE_CONFIG[targetLang as keyof typeof LANGUAGE_CONFIG];

  console.log('🌍 Starting multilingual content translation...\n');
  console.log('📝 Configuration:');
  console.log(`  - Source language: English (en)`);
  console.log(`  - Target language: ${langConfig.fullName} (${targetLang})`);
  console.log(`  - Translation engine: Claude 3.5 Sonnet`);
  console.log(`  - Storage: ContentTranslation table\n`);

  // Check API key
  if (!process.env.ANTHROPIC_API_KEY) {
    console.error('❌ ERROR: ANTHROPIC_API_KEY environment variable not set');
    console.error('   Please set it with: export ANTHROPIC_API_KEY=your_api_key');
    process.exit(1);
  }

  // Get all lessons
  const lessons = await prisma.lesson.findMany({
    orderBy: { display_order: 'asc' },
  });

  console.log(`\n📚 Found ${lessons.length} lessons to translate`);

  // Translate each lesson
  for (const lesson of lessons) {
    try {
      await translateLesson(lesson, targetLang);
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
      await translateGame(game, targetLang);
    } catch (error) {
      console.error(`  ✗ Error translating game "${game.title}":`, error);
    }
  }

  // Generate SQL migration
  console.log('\n\n📄 Generating SQL migration script...');
  const sql = generateSQL(targetLang);

  // Save SQL to file
  const fs = await import('fs');
  const sqlPath = `./prisma/migration_${targetLang}_translation.sql`;
  fs.writeFileSync(sqlPath, sql);

  console.log(`  ✓ SQL saved to: ${sqlPath}`);

  // Save translation log as JSON
  const logPath = `./prisma/translation_${targetLang}_log.json`;
  fs.writeFileSync(
    logPath,
    JSON.stringify(
      {
        generatedAt: new Date().toISOString(),
        targetLanguage: targetLang,
        languageName: langConfig.fullName,
        statistics: {
          totalLessons: lessons.length,
          totalGames: games.length,
          totalTranslations: translations.length,
        },
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
  console.log(`  - Target language: ${langConfig.fullName} (${targetLang})`);
  console.log(`  - Lessons translated: ${lessons.length}`);
  console.log(`  - Games translated: ${games.length}`);
  console.log(`  - Total strings translated: ${translations.length}`);
  console.log('\n📝 Next steps:');
  console.log(`  1. Review the SQL file: prisma/migration_${targetLang}_translation.sql`);
  console.log('  2. Execute it in your Neon SQL console');
  console.log('  3. Verify translations in the app');
  console.log(`  4. Repeat for other languages: npm run translate -- --lang=fr|de|ja|zh\n`);
}

main()
  .catch((error) => {
    console.error('❌ Fatal error:', error);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
