import { NextRequest, NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { verifyToken } from '@/lib/auth';

/**
 * GET /api/simulation/inventory
 * Get player's current inventory
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

    // Get or create inventory
    let inventory = await prisma.playerInventory.findUnique({
      where: { user_id: decoded.userId },
    });

    if (!inventory) {
      // Create initial inventory
      inventory = await prisma.playerInventory.create({
        data: {
          user_id: decoded.userId,
          quantity: 10,
        },
      });
    }

    return NextResponse.json({
      quantity: inventory.quantity,
      lastUpdated: inventory.last_updated,
    });
  } catch (error) {
    console.error('Error fetching inventory:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

/**
 * POST /api/simulation/inventory
 * Update player's inventory (after purchase/sale)
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
    const { quantity } = body;

    if (typeof quantity !== 'number' || quantity < 0) {
      return NextResponse.json({ error: 'Invalid quantity' }, { status: 400 });
    }

    // Update or create inventory
    const inventory = await prisma.playerInventory.upsert({
      where: { user_id: decoded.userId },
      update: { quantity },
      create: {
        user_id: decoded.userId,
        quantity,
      },
    });

    return NextResponse.json({
      success: true,
      quantity: inventory.quantity,
      lastUpdated: inventory.last_updated,
    });
  } catch (error) {
    console.error('Error updating inventory:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
