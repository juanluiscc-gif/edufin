import { NextRequest, NextResponse } from 'next/server';

/**
 * Test endpoint to verify OAuth configuration
 * Only works in development mode
 */
export async function GET(request: NextRequest) {
  // Only allow in development
  if (process.env.NODE_ENV === 'production') {
    return NextResponse.json({ error: 'Not available in production' }, { status: 403 });
  }

  const config = {
    google_client_id: process.env.GOOGLE_CLIENT_ID ? 'SET' : 'MISSING',
    google_client_secret: process.env.GOOGLE_CLIENT_SECRET ? 'SET' : 'MISSING',
    app_url: process.env.NEXT_PUBLIC_APP_URL || 'NOT SET',
    node_env: process.env.NODE_ENV,
    expected_callback: `${process.env.NEXT_PUBLIC_APP_URL || 'http://localhost:3000'}/api/auth/callback`,
  };

  return NextResponse.json(config);
}
