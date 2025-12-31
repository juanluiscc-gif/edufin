import { NextRequest, NextResponse } from 'next/server';
import { PrismaClient } from '@prisma/client';
import { verifyToken } from '@/lib/auth';

const prisma = new PrismaClient();

/**
 * GET /api/games/list
 * Fetch all games filtered by user's age category
 * Returns games with user's high scores
 */
export async function GET(request: NextRequest) {
  try {
    // Get user from token
    const token = request.cookies.get('token')?.value;

    if (!token) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const payload = await verifyToken(token);

    if (!payload) {
      return NextResponse.json({ error: 'Invalid token' }, { status: 401 });
    }

    const { user_id, age_category } = payload;

    // Get filter params
    const searchParams = request.nextUrl.searchParams;
    const gameType = searchParams.get('type');

    // Build where clause
    const whereClause: any = {
      OR: [
        { age_group: age_category },
        { age_group: 'both' }
      ]
    };

    if (gameType && gameType !== 'all') {
      whereClause.game_type = gameType;
    }

    // Fetch games
    const games = await prisma.game.findMany({
      where: whereClause,
      orderBy: [
        { difficulty_level: 'asc' },
        { title: 'asc' }
      ],
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

    // Fetch user's high scores for these games
    const gameIds = games.map(g => g.id);

    const userScores = await prisma.gameScore.groupBy({
      by: ['game_id'],
      where: {
        user_id,
        game_id: {
          in: gameIds
        },
        completed: true
      },
      _max: {
        score: true
      }
    });

    // Create map of game_id -> high score
    const scoresMap = new Map(
      userScores.map(s => [s.game_id, s._max.score || 0])
    );

    // Combine games with scores
    const gamesWithScores = games.map(game => ({
      ...game,
      userHighScore: scoresMap.get(game.id) || null,
      hasPlayed: scoresMap.has(game.id)
    }));

    return NextResponse.json({
      success: true,
      games: gamesWithScores
    });

  } catch (error) {
    console.error('Error fetching games:', error);
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    );
  }
}
