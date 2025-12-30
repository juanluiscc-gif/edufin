import { NextRequest, NextResponse } from 'next/server';
import { cookies } from 'next/headers';
import { prisma } from '@/lib/prisma';
import { generateToken, calculateAgeCategory } from '@/lib/auth';
import { OAuthProvider, Language, AgeCategory } from '@/lib/types';

// Force dynamic rendering to avoid build-time Prisma issues
export const dynamic = 'force-dynamic';

/**
 * Complete user signup with birthdate
 */
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { birthdate, locale } = body;

    if (!birthdate) {
      return NextResponse.json({ error: 'Birthdate is required' }, { status: 400 });
    }

    // Get OAuth temp data from cookie
    const cookieStore = await cookies();
    const oauthTempData = cookieStore.get('oauth_temp')?.value;

    if (!oauthTempData) {
      return NextResponse.json({ error: 'OAuth session expired' }, { status: 400 });
    }

    const oauthData = JSON.parse(oauthTempData);
    const { provider, oauth_id, email, name, profile_picture } = oauthData;

    // Validate birthdate
    const birthdateObj = new Date(birthdate);
    const today = new Date();
    const age = today.getFullYear() - birthdateObj.getFullYear();

    if (age < 5) {
      return NextResponse.json(
        { error: 'You must be at least 5 years old' },
        { status: 400 }
      );
    }

    if (birthdateObj > today) {
      return NextResponse.json(
        { error: 'Birthdate cannot be in the future' },
        { status: 400 }
      );
    }

    // Calculate age category
    const ageCategory = calculateAgeCategory(birthdateObj);

    // Map locale string to Language enum
    const languageMap: Record<string, Language> = {
      en: Language.en,
      es: Language.es,
      fr: Language.fr,
      de: Language.de,
      ja: Language.ja,
      zh: Language.zh,
    };
    const preferredLanguage = languageMap[locale] || Language.en;

    // Create user
    const user = await prisma.user.create({
      data: {
        oauth_provider: provider as any,
        oauth_id,
        email,
        name,
        profile_picture_url: profile_picture,
        birthdate: birthdateObj,
        age_category: ageCategory as any,
        preferred_language: preferredLanguage as any,
      },
    });

    // Generate JWT
    const token = await generateToken({
      user_id: user.id,
      email: user.email,
      age_category: user.age_category as AgeCategory,
    });

    // Create response
    const response = NextResponse.json({ success: true });

    // Set JWT cookie
    response.cookies.set('token', token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === 'production',
      sameSite: 'lax',
      maxAge: 60 * 60 * 24 * 7, // 7 days
      path: '/',
    });

    // Clear OAuth temp cookie
    response.cookies.delete('oauth_temp');

    return response;
  } catch (error) {
    console.error('Complete signup error:', error);

    // Check for unique constraint violation (user already exists)
    if (error instanceof Error && error.message.includes('Unique constraint')) {
      return NextResponse.json(
        { error: 'An account with this email already exists' },
        { status: 400 }
      );
    }

    return NextResponse.json(
      { error: 'Failed to complete signup' },
      { status: 500 }
    );
  }
}
