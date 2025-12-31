import { NextRequest, NextResponse } from 'next/server';
import { PrismaClient, LeaderboardType, AgeCategory } from '@prisma/client';
import { verifyToken } from '@/lib/auth';
import { updateLeaderboards, getUserRank } from '@/lib/leaderboard';

const prisma = new PrismaClient();

/**
 * POST /api/games/submit
 * Submit game score and update leaderboards
 */
export async function POST(request: NextRequest) {
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

    // Parse request body
    const body = await request.json();
    const {
      gameId,
      score,
      timeTaken,
      completed,
      gameData
    } = body;

    // Validate required fields
    if (!gameId || typeof score !== 'number' || typeof timeTaken !== 'number') {
      return NextResponse.json(
        { error: 'Invalid request data' },
        { status: 400 }
      );
    }

    // Verify game exists
    const game = await prisma.game.findUnique({
      where: { id: gameId },
      select: { id: true, max_score: true }
    });

    if (!game) {
      return NextResponse.json({ error: 'Game not found' }, { status: 404 });
    }

    // Create game score record
    const gameScore = await prisma.gameScore.create({
      data: {
        user_id,
        game_id: gameId,
        score,
        time_taken_seconds: timeTaken,
        completed: completed || false
      }
    });

    // Get user's previous best score
    const previousScores = await prisma.gameScore.findMany({
      where: {
        user_id,
        game_id: gameId,
        completed: true,
        id: {
          not: gameScore.id
        }
      },
      orderBy: {
        score: 'desc'
      },
      take: 1
    });

    const previousBest = previousScores.length > 0 ? previousScores[0].score : 0;
    const isPersonalBest = score > previousBest;

    // Calculate improvement percentage
    const improvement = previousBest > 0
      ? ((score - previousBest) / previousBest) * 100
      : 0;

    // Update leaderboards if completed and is personal best
    if (completed && isPersonalBest) {
      await updateLeaderboards({
        gameId,
        userId: user_id,
        score,
        ageCategory: age_category as AgeCategory
      });
    }

    // Get leaderboard ranks
    const [globalRank, weeklyRank, ageGroupRank] = await Promise.all([
      getUserRank(gameId, user_id, LeaderboardType.global),
      getUserRank(gameId, user_id, LeaderboardType.weekly),
      getUserRank(gameId, user_id, LeaderboardType.age_group, age_category as AgeCategory)
    ]);

    // Get average score for this game
    const avgResult = await prisma.gameScore.aggregate({
      where: {
        game_id: gameId,
        completed: true
      },
      _avg: {
        score: true
      }
    });

    const averageScore = avgResult._avg.score || 0;

    // Return comprehensive result
    return NextResponse.json({
      success: true,
      score: {
        id: gameScore.id,
        score,
        rank: {
          global: globalRank,
          weekly: weeklyRank,
          ageGroup: ageGroupRank,
          friends: null // Will be calculated separately if needed
        },
        isPersonalBest,
        improvement: Math.round(improvement),
        averageScore: Math.round(averageScore),
        previousBest
      }
    });

  } catch (error) {
    console.error('Error submitting game score:', error);
    return NextResponse.json(
      { error: 'Internal server error' },
      { status: 500 }
    );
  }
}
