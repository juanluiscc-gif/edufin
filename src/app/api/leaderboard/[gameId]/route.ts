import { NextRequest, NextResponse } from 'next/server';
import { getLeaderboard } from '@/lib/leaderboard';
import { LeaderboardType, AgeCategory } from '@prisma/client';
import { verifyToken } from '@/lib/auth';

/**
 * GET /api/leaderboard/[gameId]
 * Get leaderboard for a specific game
 * Query params: type (global/weekly/age_group)
 */
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ gameId: string }> }
) {
  try {
    const { gameId } = await params;
    const searchParams = request.nextUrl.searchParams;
    const type = searchParams.get('type') || 'global';

    // Get user age category if authenticated
    let ageCategory: AgeCategory | undefined;
    const token = request.cookies.get('token')?.value;

    if (token) {
      const payload = await verifyToken(token);
      if (payload) {
        ageCategory = payload.age_category;
      }
    }

    // Validate leaderboard type
    const validTypes = ['global', 'weekly', 'age_group'];
    if (!validTypes.includes(type)) {
      return NextResponse.json(
        { error: 'Invalid leaderboard type' },
        { status: 400 }
      );
    }

    const leaderboardType = type as LeaderboardType;

    // Fetch leaderboard
    const entries = await getLeaderboard(
      gameId,
      leaderboardType,
      ageCategory,
      100
    );

    return NextResponse.json({
      success: true,
      leaderboard: entries,
      type: leaderboardType
    });

  } catch (error) {
    console.error('Error fetching leaderboard:', error);
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    );
  }
}
