import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken } from '@/lib/auth';
import { SessionStatus } from '@prisma/client';

/**
 * POST /api/simulation/session/end
 * End a game session and save final state
 */
export async function POST(request: NextRequest) {
  try {
    const token = request.headers.get('Authorization')?.replace('Bearer ', '');
    if (!token) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const decoded = await verifyToken(token);
    if (!decoded?.userId) {
      return NextResponse.json({ error: 'Invalid token' }, { status: 401 });
    }

    const body = await request.json();
    const {
      sessionId,
      finalBalance,
      finalReputation,
      finalInventory,
      conversationsCompleted,
      status, // 'completed' or 'game_over'
    } = body;

    if (!sessionId) {
      return NextResponse.json({ error: 'Session ID required' }, { status: 400 });
    }

    // Update session
    const session = await prisma.gameSession.update({
      where: { id: sessionId, user_id: decoded.userId },
      data: {
        balance: finalBalance,
        reputation: finalReputation,
        inventory: finalInventory,
        conversations_completed: conversationsCompleted,
        status: status === 'game_over' ? SessionStatus.game_over : SessionStatus.completed,
        session_end: new Date(),
      },
    });

    // Update inventory in persistent table
    await prisma.playerInventory.upsert({
      where: { user_id: decoded.userId },
      update: { quantity: finalInventory },
      create: {
        user_id: decoded.userId,
        quantity: finalInventory,
      },
    });

    return NextResponse.json({
      success: true,
      sessionId: session.id,
      finalBalance: session.balance,
      finalReputation: session.reputation,
      finalInventory: session.inventory,
      conversationsCompleted: session.conversations_completed,
      timePlayed: session.session_end
        ? Math.floor((session.session_end.getTime() - session.session_start.getTime()) / 1000)
        : 0,
    });
  } catch (error) {
    console.error('Error ending session:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
