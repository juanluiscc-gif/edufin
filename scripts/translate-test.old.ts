/**
 * Test Translation Script
 * Translates only the FIRST lesson to test the system
 */

import { PrismaClient } from '@prisma/client';
import Anthropic from '@anthropic-ai/sdk';

const prisma = new PrismaClient();

const anthropic = new Anthropic({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

async function translateWithClaude(text: string, context: string): Promise<string> {
  console.log(`    → Translating (${text.length} chars)...`);

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

async function main() {
  console.log('🧪 TEST TRANSLATION - First Lesson Only\n');

  // Check API key
  if (!process.env.ANTHROPIC_API_KEY) {
    console.error('❌ ERROR: ANTHROPIC_API_KEY environment variable not set');
    console.error('   Please set it with: export ANTHROPIC_API_KEY=your_api_key');
    process.exit(1);
  }

  // Get only the first lesson
  const lesson = await prisma.lesson.findFirst({
    orderBy: { display_order: 'asc' },
  });

  if (!lesson) {
    console.error('❌ No lessons found in database');
    process.exit(1);
  }

  console.log(`📖 Testing with lesson: "${lesson.title}"\n`);

  const content = JSON.parse(lesson.content);
  const translatedContent = JSON.parse(JSON.stringify(content));

  // Translate first section only
  if (content.sections && content.sections.length > 0) {
    const section = content.sections[0];

    console.log('1️⃣ Translating Section 1:');
    console.log(`   Original title: "${section.title}"`);

    const translatedTitle = await translateWithClaude(
      section.title,
      `Section title for lesson "${lesson.title}"`
    );

    console.log(`   ✓ Translated title: "${translatedTitle}"\n`);

    console.log('   Translating content (markdown)...');
    const translatedSectionContent = await translateWithClaude(
      section.content,
      `Section content for "${lesson.title}" - section "${section.title}"`
    );

    console.log('   ✓ Content translated\n');
    console.log('   Original content:');
    console.log('   ---');
    console.log(section.content.substring(0, 200) + '...');
    console.log('   ---\n');
    console.log('   Translated content:');
    console.log('   ---');
    console.log(translatedSectionContent.substring(0, 200) + '...');
    console.log('   ---\n');

    translatedContent.sections[0].title = translatedTitle;
    translatedContent.sections[0].content = translatedSectionContent;
  }

  // Translate first quiz question only
  if (content.quiz && content.quiz.questions && content.quiz.questions.length > 0) {
    const question = content.quiz.questions[0];

    console.log('2️⃣ Translating Quiz Question 1:');
    console.log(`   Original: "${question.question}"`);

    const translatedQuestion = await translateWithClaude(
      question.question,
      `Quiz question for lesson "${lesson.title}"`
    );

    console.log(`   ✓ Translated: "${translatedQuestion}"\n`);

    console.log('   Translating answer options...');
    const translatedOptions = [];
    for (let i = 0; i < question.options.length; i++) {
      const option = question.options[i];
      const translatedOption = await translateWithClaude(
        option,
        `Answer option for question "${question.question}"`
      );
      translatedOptions.push(translatedOption);
      console.log(`     ${i + 1}. "${option}" → "${translatedOption}"`);
    }

    console.log('\n   Translating explanation...');
    const translatedExplanation = await translateWithClaude(
      question.explanation,
      `Explanation for question "${question.question}"`
    );

    console.log(`   ✓ Explanation translated\n`);

    translatedContent.quiz.questions[0].question = translatedQuestion;
    translatedContent.quiz.questions[0].options = translatedOptions;
    translatedContent.quiz.questions[0].explanation = translatedExplanation;
  }

  // Show final result
  console.log('\n✨ Test Translation Complete!\n');
  console.log('📊 Sample of translated JSON structure:');
  console.log('---');
  console.log(JSON.stringify(translatedContent, null, 2).substring(0, 500) + '...');
  console.log('---\n');

  console.log('✅ SUCCESS! The translation system is working correctly.\n');
  console.log('📝 Next steps:');
  console.log('   1. If the translations look good, run the full script:');
  console.log('      npm run translate');
  console.log('   2. This will translate all 18 lessons and all games');
  console.log('   3. Then execute the generated SQL in Neon\n');
}

main()
  .catch((error) => {
    console.error('❌ Error:', error);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
