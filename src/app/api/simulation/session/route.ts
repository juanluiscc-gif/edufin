import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken } from '@/lib/auth';
import { SessionStatus } from '@prisma/client';

/**
 * POST /api/simulation/session
 * Start a new game session
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
    const { balance = 100, reputation = 3, inventory = 10, currentLevel = 1 } = body;

    // Create new session
    const session = await prisma.gameSession.create({
      data: {
        user_id: decoded.userId,
        balance,
        reputation,
        inventory,
        current_level: currentLevel,
        status: SessionStatus.active,
      },
    });

    return NextResponse.json({
      sessionId: session.id,
      balance: session.balance,
      reputation: session.reputation,
      inventory: session.inventory,
      currentLevel: session.current_level,
      startTime: session.session_start,
    });
  } catch (error) {
    console.error('Error creating session:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

/**
 * GET /api/simulation/session?userId=xxx
 * Get active session or last session data
 */
export async function GET(request: NextRequest) {
  try {
    const token = request.headers.get('Authorization')?.replace('Bearer ', '');
    if (!token) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const decoded = await verifyToken(token);
    if (!decoded?.userId) {
      return NextResponse.json({ error: 'Invalid token' }, { status: 401 });
    }

    // Get last session (active or completed)
    const lastSession = await prisma.gameSession.findFirst({
      where: { user_id: decoded.userId },
      orderBy: { session_start: 'desc' },
    });

    if (!lastSession) {
      return NextResponse.json({
        hasSession: false,
        balance: 100,
        reputation: 3,
        currentLevel: 1,
      });
    }

    return NextResponse.json({
      hasSession: true,
      sessionId: lastSession.id,
      balance: lastSession.balance,
      reputation: lastSession.reputation,
      inventory: lastSession.inventory,
      currentLevel: lastSession.current_level,
      conversationsCompleted: lastSession.conversations_completed,
      status: lastSession.status,
      startTime: lastSession.session_start,
      endTime: lastSession.session_end,
    });
  } catch (error) {
    console.error('Error fetching session:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
