import { NextRequest, NextResponse } from 'next/server';
import { verifyToken } from '@/lib/auth';
import { prisma } from '@/lib/prisma';

/**
 * GET /api/games/[gameId]
 * Fetch specific game details
 */
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ gameId: string }> }
) {
  try {
    const { gameId } = await params;

    // Get user from token (optional for viewing game)
    const token = request.cookies.get('token')?.value;
    let userId: string | null = null;

    if (token) {
      const payload = await verifyToken(token);
      if (payload) {
        userId = payload.user_id;
      }
    }

    // Fetch game
    const game = await prisma.game.findUnique({
      where: { id: gameId },
      select: {
        id: true,
        title: true,
        description: true,
        game_type: true,
        difficulty_level: true,
        max_score: true,
        age_group: true
      }
    });

    if (!game) {
      return NextResponse.json({ error: 'Game not found' }, { status: 404 });
    }

    // If user is authenticated, fetch their stats for this game
    let userStats = null;
    if (userId) {
      const scores = await prisma.gameScore.findMany({
        where: {
          user_id: userId,
          game_id: gameId,
          completed: true
        },
        orderBy: {
          score: 'desc'
        },
        take: 1
      });

      if (scores.length > 0) {
        const playCount = await prisma.gameScore.count({
          where: {
            user_id: userId,
            game_id: gameId
          }
        });

        userStats = {
          bestScore: scores[0].score,
          playCount,
          lastPlayed: scores[0].played_at
        };
      }
    }

    return NextResponse.json({
      success: true,
      game,
      userStats
    });

  } catch (error) {
    console.error('Error fetching game:', error);
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    );
  }
}
