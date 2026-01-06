import { NextResponse } from 'next/server';
import { prisma } from '@/lib/prisma';
import { seedScenarioGames } from '@/lib/seed-scenarios-data';

export async function POST() {
  try {
    console.log('🎭 Starting scenario games seeding via API...');

    const createdGames = await seedScenarioGames(prisma);

    return NextResponse.json({
      success: true,
      message: '✨ Scenario games seeded successfully!',
      details: {
        gamesCreated: createdGames.length,
        games: createdGames.map(g => ({ id: g.id, title: g.title })),
        topics: [
          'Negotiation',
          'Fraud Detection',
          'Business Ethics',
          'Consultative Sales',
          'Time Management',
          'Customer Fraud Protection',
          'Customer Loyalty',
          'Influencer Marketing',
          'Customer Service Excellence',
          'B2B Sales'
        ]
      }
    });

  } catch (error: any) {
    console.error('Error seeding scenarios:', error);

    return NextResponse.json(
      {
        success: false,
        error: error.message,
        stack: process.env.NODE_ENV === 'development' ? error.stack : undefined,
      },
      { status: 500 }
    );
  } finally {
    // Prisma will be disconnected by the connection pool
    // No need to manually disconnect in serverless
  }
}
