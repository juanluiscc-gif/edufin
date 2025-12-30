import 'server-only';
import { prisma } from './prisma';
import { Language } from './types';

/**
 * AI-powered translation service
 * Uses OpenAI API or caches existing translations
 */

const OPENAI_API_KEY = process.env.OPENAI_API_KEY;

interface TranslationOptions {
  contentType: 'lesson' | 'game' | 'category' | 'insight';
  contentId: string;
  fieldName: string;
  sourceText: string;
  targetLanguage: Language;
  context?: string;
}

/**
 * Translate content using AI with caching
 */
export async function translateContent(options: TranslationOptions): Promise<string> {
  const { contentType, contentId, fieldName, sourceText, targetLanguage, context } = options;

  // If target is English, return source
  if (targetLanguage === Language.en) {
    return sourceText;
  }

  // Check cache first
  const cached = await prisma.contentTranslation.findUnique({
    where: {
      content_type_content_id_field_name_target_language: {
        content_type: contentType,
        content_id: contentId,
        field_name: fieldName,
        target_language: targetLanguage,
      },
    },
  });

  // Return cached if exists and not expired
  if (cached && cached.expires_at > new Date()) {
    return cached.translated_text;
  }

  // Call AI translation API
  const translatedText = await translateWithAI(sourceText, targetLanguage, context);

  // Cache the translation (expires in 30 days)
  const expiresAt = new Date();
  expiresAt.setDate(expiresAt.getDate() + 30);

  await prisma.contentTranslation.upsert({
    where: {
      content_type_content_id_field_name_target_language: {
        content_type: contentType,
        content_id: contentId,
        field_name: fieldName,
        target_language: targetLanguage,
      },
    },
    create: {
      content_type: contentType,
      content_id: contentId,
      field_name: fieldName,
      source_language: Language.en,
      target_language: targetLanguage,
      source_text: sourceText,
      translated_text: translatedText,
      expires_at: expiresAt,
    },
    update: {
      translated_text: translatedText,
      translated_at: new Date(),
      expires_at: expiresAt,
    },
  });

  return translatedText;
}

/**
 * Call OpenAI API for translation
 */
async function translateWithAI(
  text: string,
  targetLanguage: Language,
  context?: string
): Promise<string> {
  if (!OPENAI_API_KEY) {
    console.warn('OpenAI API key not configured, returning original text');
    return text;
  }

  const languageNames: Record<Language, string> = {
    en: 'English',
    es: 'Spanish',
    fr: 'French',
    de: 'German',
    ja: 'Japanese',
    zh: 'Simplified Chinese',
  };

  const targetLangName = languageNames[targetLanguage];
  const contextStr = context ? ` This is ${context}.` : '';

  const prompt = `Translate the following text to ${targetLangName}. Maintain the tone and ensure it's appropriate for financial education.${contextStr} If the text contains markdown formatting, preserve it exactly.

Text to translate:
${text}

Translation:`;

  try {
    const response = await fetch('https://api.openai.com/v1/chat/completions', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${OPENAI_API_KEY}`,
      },
      body: JSON.stringify({
        model: 'gpt-4',
        messages: [
          {
            role: 'system',
            content:
              'You are a professional translator specializing in financial education content. Preserve all markdown formatting.',
          },
          {
            role: 'user',
            content: prompt,
          },
        ],
        temperature: 0.3,
        max_tokens: 2000,
      }),
    });

    if (!response.ok) {
      throw new Error(`OpenAI API error: ${response.statusText}`);
    }

    const data = await response.json();
    const translation = data.choices[0]?.message?.content?.trim();

    if (!translation) {
      throw new Error('No translation returned from API');
    }

    return translation;
  } catch (error) {
    console.error('Translation error:', error);
    // Fallback to original text
    return text;
  }
}

/**
 * Get translation for a specific content field
 */
export async function getTranslation(
  contentType: 'lesson' | 'game',
  contentId: string,
  fieldName: string,
  targetLanguage: Language
): Promise<string | null> {
  try {
    const translation = await prisma.contentTranslation.findUnique({
      where: {
        content_type_content_id_field_name_target_language: {
          content_type: contentType,
          content_id: contentId,
          field_name: fieldName,
          target_language: targetLanguage,
        },
      },
    });

    if (translation && translation.expires_at > new Date()) {
      return translation.translated_text;
    }

    return null;
  } catch (error) {
    console.error('Error fetching translation:', error);
    return null;
  }
}
