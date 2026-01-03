import { NextRequest, NextResponse } from 'next/server';
import { getGlobalLeaderboard } from '@/lib/leaderboard';

/**
 * GET /api/leaderboard/global
 * Get global leaderboard across all games
 */
export async function GET(request: NextRequest) {
  try {
    const searchParams = request.nextUrl.searchParams;
    const limit = parseInt(searchParams.get('limit') || '100');

    const leaderboard = await getGlobalLeaderboard(Math.min(limit, 100));

    return NextResponse.json({
      success: true,
      leaderboard
    });

  } catch (error) {
    console.error('Error fetching global leaderboard:', error);
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    );
  }
}
