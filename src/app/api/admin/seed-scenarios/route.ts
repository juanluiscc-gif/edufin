import { NextResponse } from 'next/server';
import { exec } from 'child_process';
import { promisify } from 'util';
import path from 'path';

const execAsync = promisify(exec);

export async function POST() {
  try {
    console.log('🎭 Starting scenario games seeding via API...');

    const scriptPath = path.join(process.cwd(), 'prisma', 'seed_scenarios.ts');

    // Execute the seed script with tsx
    const { stdout, stderr } = await execAsync(`npx tsx "${scriptPath}"`, {
      env: {
        ...process.env,
        // Ensure environment variables are passed
        NODE_ENV: process.env.NODE_ENV || 'development',
      },
      cwd: process.cwd(),
      maxBuffer: 10 * 1024 * 1024, // 10MB buffer for large outputs
    });

    console.log('Seed script output:', stdout);
    if (stderr) {
      console.warn('Seed script warnings:', stderr);
    }

    return NextResponse.json({
      success: true,
      message: '✨ Scenario games seeded successfully!',
      output: stdout,
      details: {
        gamesCreated: 10,
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
        stderr: error.stderr,
        stdout: error.stdout,
      },
      { status: 500 }
    );
  }
}
