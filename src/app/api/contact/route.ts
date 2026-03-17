import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { ratelimit, getIP } from '@/src/lib/ratelimit';

const contactSchema = z.object({
  name: z.string().min(2).max(100),
  email: z.string().email(),
  phone: z.string().regex(/^(\+?\d{1,4}[\s.-]?)?(\(?\d{1,4}\)?[\s.-]?)?[\d\s.-]{4,15}$/).optional().or(z.literal('')),
  subject: z.string().min(2).max(200),
  message: z.string().min(10).max(5000),
  consentRGPD: z.literal(true, { message: 'Le consentement RGPD est obligatoire' }),
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
      const { success } = await ratelimit.limit(`contact:${ip}`);
      if (!success) {
        return NextResponse.json({ error: 'Trop de requêtes, réessayez plus tard' }, { status: 429 });
      }
    }

    const body = await request.json();

    // Validation Zod
    const parsed = contactSchema.safeParse(body);
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
        type: 'contact',
        ...parsed.data,
        createdAt: new Date().toISOString(),
      }),
    });

    if (!response.ok) {
      throw new Error('Failed to submit contact form');
    }

    const data = await response.json();

    return NextResponse.json(data, { status: 200 });
  } catch (error) {
    console.error('Error submitting contact form:', error);
    return NextResponse.json(
      { error: 'Failed to submit contact form' },
      { status: 500 }
    );
  }
}
