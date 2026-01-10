
import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken } from '@/lib/auth';

// Force dynamic to avoid caching stale challenge data
export const dynamic = 'force-dynamic';

export async function GET(request: NextRequest) {
  try {
    // 1. Auth Check
    const token = request.cookies.get('token')?.value;
    if (!token) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    // 2. Fetch a random challenge (Mock for now, will connect to DB)
    // In a real scenario, we would query the MarketChallenge table.
    // Since we just created the table and it might be empty, we'll return a Mock if DB is empty.
    
    // Check if we have challenges in DB
    const count = await prisma.marketChallenge.count();
    
    let challenge;

    if (count > 0) {
      // Fetch random challenge
      const challenges = await prisma.marketChallenge.findMany({
        take: 1,
        include: { asset: true },
        // Simple random sampling strategy for MVP
        skip: Math.floor(Math.random() * count),
      });
      challenge = challenges[0];
    } else {
      // Fallback Mock Data (Apple Stock)
      challenge = {
        id: 'mock-challenge-001',
        asset: {
          symbol: 'AAPL',
          name: 'Apple Inc.',
          sector: 'Technology',
          type: 'stock'
        },
        data_points: [150, 152, 149, 155, 158, 157, 160], // Last 7 days prices
        outcome: 'UP',
        difficulty: 1
      };
    }

    // Hide the outcome from the client!
    const { outcome, ...clientChallenge } = challenge;

    return NextResponse.json({
      success: true,
      challenge: clientChallenge
    });

  } catch (error) {
    console.error('Error fetching market challenge:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { challengeId, prediction } = body; // prediction: 'UP' or 'DOWN'

    // Verify challenge outcome
    let outcome = 'UP'; // Default mock
    
    // Try to find in DB
    const dbChallenge = await prisma.marketChallenge.findUnique({
      where: { id: challengeId }
    });

    if (dbChallenge) {
      outcome = dbChallenge.outcome;
    } else if (challengeId === 'mock-challenge-001') {
      outcome = 'UP';
    }

    const isCorrect = prediction === outcome;

    return NextResponse.json({
      success: true,
      correct: isCorrect,
      actualOutcome: outcome,
      message: isCorrect ? '¡Correcto! El mercado subió.' : 'Incorrecto. El mercado se movió en contra.'
    });

  } catch (error) {
    return NextResponse.json({ error: 'Error submitting prediction' }, { status: 500 });
  }
}
