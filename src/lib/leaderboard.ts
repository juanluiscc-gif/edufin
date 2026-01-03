import { LeaderboardType, AgeCategory } from '@prisma/client';
import { prisma } from '@/lib/prisma';

interface LeaderboardEntry {
  id: string;
  gameId: string;
  userId: string;
  score: number;
  rank: number;
  userName: string;
  profilePicture?: string;
  achievedAt: Date;
}

interface CreateLeaderboardEntryParams {
  gameId: string;
  userId: string;
  score: number;
  ageCategory: AgeCategory;
}

/**
 * Update leaderboards after a game score is submitted
 * Creates/updates entries for global, weekly, and age group leaderboards
 */
export async function updateLeaderboards(params: CreateLeaderboardEntryParams): Promise<void> {
  const { gameId, userId, score, ageCategory } = params;

  // Get the start of the current week (Monday)
  const now = new Date();
  const dayOfWeek = now.getDay();
  const mondayOffset = dayOfWeek === 0 ? 6 : dayOfWeek - 1;
  const monday = new Date(now);
  monday.setDate(now.getDate() - mondayOffset);
  monday.setHours(0, 0, 0, 0);

  // Check global leaderboard
  await checkAndUpdateLeaderboard({
    gameId,
    userId,
    score,
    ageCategory,
    leaderboardType: LeaderboardType.global,
    achievedAt: now
  });

  // Check weekly leaderboard
  await checkAndUpdateLeaderboard({
    gameId,
    userId,
    score,
    ageCategory,
    leaderboardType: LeaderboardType.weekly,
    achievedAt: now,
    weekStart: monday
  });

  // Check age group leaderboard
  await checkAndUpdateLeaderboard({
    gameId,
    userId,
    score,
    ageCategory,
    leaderboardType: LeaderboardType.age_group,
    achievedAt: now
  });
}

interface CheckLeaderboardParams {
  gameId: string;
  userId: string;
  score: number;
  ageCategory: AgeCategory;
  leaderboardType: LeaderboardType;
  achievedAt: Date;
  weekStart?: Date;
}

/**
 * Check if score qualifies for leaderboard and update if it does
 */
async function checkAndUpdateLeaderboard(params: CheckLeaderboardParams): Promise<void> {
  const { gameId, userId, score, ageCategory, leaderboardType, achievedAt, weekStart } = params;

  // Build where clause based on leaderboard type
  const whereClause: any = {
    game_id: gameId,
    leaderboard_type: leaderboardType
  };

  if (leaderboardType === LeaderboardType.age_group) {
    whereClause.age_group = ageCategory;
  }

  if (leaderboardType === LeaderboardType.weekly && weekStart) {
    whereClause.achieved_at = {
      gte: weekStart
    };
  }

  // Count current entries
  const entryCount = await prisma.leaderboard.count({ where: whereClause });

  // Check if user already has entry
  const existingEntry = await prisma.leaderboard.findFirst({
    where: {
      ...whereClause,
      user_id: userId
    }
  });

  // If user has existing entry and new score is not better, skip
  if (existingEntry && score <= existingEntry.score) {
    return;
  }

  // If leaderboard has < 100 entries OR score is better than 100th place, add/update
  const shouldUpdate = entryCount < 100;

  if (!shouldUpdate) {
    // Check 100th place score
    const lowestEntry = await prisma.leaderboard.findFirst({
      where: whereClause,
      orderBy: { score: 'desc' },
      skip: 99,
      take: 1
    });

    if (!lowestEntry || score <= lowestEntry.score) {
      return;
    }
  }

  // Delete user's existing entry if it exists
  if (existingEntry) {
    await prisma.leaderboard.delete({
      where: { id: existingEntry.id }
    });
  }

  // Create new entry
  await prisma.leaderboard.create({
    data: {
      game_id: gameId,
      user_id: userId,
      score,
      rank: 0, // Will be updated below
      leaderboard_type: leaderboardType,
      age_group: ageCategory,
      achieved_at: achievedAt
    }
  });

  // Recalculate ranks for this leaderboard
  await recalculateRanks(gameId, leaderboardType, ageCategory, weekStart);

  // Remove entries beyond 100th place
  if (entryCount >= 100) {
    const entriesToDelete = await prisma.leaderboard.findMany({
      where: whereClause,
      orderBy: { score: 'desc' },
      skip: 100
    });

    if (entriesToDelete.length > 0) {
      await prisma.leaderboard.deleteMany({
        where: {
          id: {
            in: entriesToDelete.map(e => e.id)
          }
        }
      });
    }
  }
}

/**
 * Recalculate ranks for a specific leaderboard
 */
async function recalculateRanks(
  gameId: string,
  leaderboardType: LeaderboardType,
  ageCategory: AgeCategory,
  weekStart?: Date
): Promise<void> {
  const whereClause: any = {
    game_id: gameId,
    leaderboard_type: leaderboardType
  };

  if (leaderboardType === LeaderboardType.age_group) {
    whereClause.age_group = ageCategory;
  }

  if (leaderboardType === LeaderboardType.weekly && weekStart) {
    whereClause.achieved_at = {
      gte: weekStart
    };
  }

  // Get all entries sorted by score
  const entries = await prisma.leaderboard.findMany({
    where: whereClause,
    orderBy: { score: 'desc' }
  });

  // Update ranks
  let currentRank = 1;
  let previousScore = -1;
  let skipCount = 0;

  for (const entry of entries) {
    if (entry.score !== previousScore) {
      currentRank += skipCount;
      skipCount = 0;
      previousScore = entry.score;
    }

    await prisma.leaderboard.update({
      where: { id: entry.id },
      data: { rank: currentRank }
    });

    skipCount++;
  }
}

/**
 * Get leaderboard entries for a specific game and type
 */
export async function getLeaderboard(
  gameId: string,
  leaderboardType: LeaderboardType,
  ageCategory?: AgeCategory,
  limit: number = 100
): Promise<LeaderboardEntry[]> {
  const whereClause: any = {
    game_id: gameId,
    leaderboard_type: leaderboardType
  };

  if (leaderboardType === LeaderboardType.age_group && ageCategory) {
    whereClause.age_group = ageCategory;
  }

  if (leaderboardType === LeaderboardType.weekly) {
    const now = new Date();
    const dayOfWeek = now.getDay();
    const mondayOffset = dayOfWeek === 0 ? 6 : dayOfWeek - 1;
    const monday = new Date(now);
    monday.setDate(now.getDate() - mondayOffset);
    monday.setHours(0, 0, 0, 0);

    whereClause.achieved_at = {
      gte: monday
    };
  }

  const entries = await prisma.leaderboard.findMany({
    where: whereClause,
    orderBy: { rank: 'asc' },
    take: limit,
    include: {
      user: {
        select: {
          id: true,
          name: true,
          profile_picture_url: true
        }
      }
    }
  });

  return entries.map(entry => ({
    id: entry.id,
    gameId: entry.game_id,
    userId: entry.user_id,
    score: entry.score,
    rank: entry.rank,
    userName: entry.user.name,
    profilePicture: entry.user.profile_picture_url || undefined,
    achievedAt: entry.achieved_at
  }));
}

/**
 * Get user's rank for a specific game and leaderboard type
 */
export async function getUserRank(
  gameId: string,
  userId: string,
  leaderboardType: LeaderboardType,
  ageCategory?: AgeCategory
): Promise<number | null> {
  const whereClause: any = {
    game_id: gameId,
    user_id: userId,
    leaderboard_type: leaderboardType
  };

  if (leaderboardType === LeaderboardType.age_group && ageCategory) {
    whereClause.age_group = ageCategory;
  }

  if (leaderboardType === LeaderboardType.weekly) {
    const now = new Date();
    const dayOfWeek = now.getDay();
    const mondayOffset = dayOfWeek === 0 ? 6 : dayOfWeek - 1;
    const monday = new Date(now);
    monday.setDate(now.getDate() - mondayOffset);
    monday.setHours(0, 0, 0, 0);

    whereClause.achieved_at = {
      gte: monday
    };
  }

  const entry = await prisma.leaderboard.findFirst({
    where: whereClause,
    select: { rank: true }
  });

  return entry?.rank || null;
}

/**
 * Get global leaderboard across all games
 * Sums best scores from each game per user
 */
export async function getGlobalLeaderboard(limit: number = 100): Promise<any[]> {
  // This is complex - get best score per user per game, then sum
  const result = await prisma.$queryRaw`
    SELECT
      u.id as user_id,
      u.name as user_name,
      u.profile_picture_url,
      SUM(gs.max_score) as total_score,
      COUNT(DISTINCT gs.game_id) as games_played
    FROM "User" u
    INNER JOIN (
      SELECT
        user_id,
        game_id,
        MAX(score) as max_score
      FROM "GameScore"
      WHERE completed = true
      GROUP BY user_id, game_id
    ) gs ON u.id = gs.user_id
    GROUP BY u.id, u.name, u.profile_picture_url
    ORDER BY total_score DESC
    LIMIT ${limit}
  `;

  return result as any[];
}

/**
 * Get friends leaderboard for a specific game
 */
export async function getFriendsLeaderboard(
  gameId: string,
  userId: string,
  limit: number = 20
): Promise<any[]> {
  const result = await prisma.$queryRaw`
    SELECT
      gs.id,
      gs.user_id,
      gs.game_id,
      gs.score,
      u.name as user_name,
      u.profile_picture_url,
      gs.played_at
    FROM "GameScore" gs
    INNER JOIN "User" u ON gs.user_id = u.id
    WHERE gs.game_id = ${gameId}
      AND gs.completed = true
      AND (
        gs.user_id IN (
          SELECT friend_id FROM "Friendship"
          WHERE user_id = ${userId} AND status = 'accepted'
        )
        OR gs.user_id = ${userId}
      )
    ORDER BY gs.score DESC
    LIMIT ${limit}
  `;

  return result as any[];
}
