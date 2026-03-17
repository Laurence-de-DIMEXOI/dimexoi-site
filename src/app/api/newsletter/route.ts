import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { ratelimit, getIP } from '@/src/lib/ratelimit';

const newsletterSchema = z.object({
  email: z.string().email(),
});

export async function POST(request: NextRequest) {
  try {
    // Vérification origine (CSRF)
    const origin = request.headers.get('origin');
    const allowedOrigins = ['https://www.dimexoi.fr', 'https://dimexoi.fr', 'http://localhost:3000'];
    if (process.env.NODE_ENV === 'production' && (!origin || !allowedOrigins.includes(origin))) {
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
    }

    // Rate limiting
    if (ratelimit) {
      const ip = getIP(request);
      const { success } = await ratelimit.limit(`newsletter:${ip}`);
      if (!success) {
        return NextResponse.json({ error: 'Trop de requêtes, réessayez plus tard' }, { status: 429 });
      }
    }

    const body = await request.json();

    // Validation Zod
    const parsed = newsletterSchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }

    const crmUrl = process.env.CRM_URL;
    if (!crmUrl) {
      return NextResponse.json(
        { error: 'CRM URL not configured' },
        { status: 500 }
      );
    }

    const response = await fetch(`${crmUrl}api/submissions`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        type: 'newsletter',
        ...parsed.data,
        createdAt: new Date().toISOString(),
      }),
    });

    if (!response.ok) {
      throw new Error('Failed to subscribe to newsletter');
    }

    const data = await response.json();

    return NextResponse.json(data, { status: 200 });
  } catch (error) {
    console.error('Error subscribing to newsletter:', error);
    return NextResponse.json(
      { error: 'Failed to subscribe to newsletter' },
      { status: 500 }
    );
  }
}
