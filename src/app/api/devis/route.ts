import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { ratelimit, getIP } from '@/src/lib/ratelimit';

const devisSchema = z.object({
  name: z.string().min(2).max(100),
  email: z.string().email(),
  phone: z.string().regex(/^(\+?\d{1,4}[\s.-]?)?(\(?\d{1,4}\)?[\s.-]?)?[\d\s.-]{4,15}$/).optional().or(z.literal('')),
  address: z.string().max(500).optional().or(z.literal('')),
  message: z.string().max(5000).optional().or(z.literal('')),
  products: z.array(z.unknown()),
  consentRGPD: z.literal(true, { message: 'Le consentement RGPD est obligatoire' }),
  showroom: z.string().optional(),
  source: z.string().optional(),
  conversationSummary: z.string().max(5000).optional(),
  firstName: z.string().optional(),
  preferredShowroom: z.string().optional(),
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
      const { success } = await ratelimit.limit(`devis:${ip}`);
      if (!success) {
        return NextResponse.json({ error: 'Trop de requêtes, réessayez plus tard' }, { status: 429 });
      }
    }

    const body = await request.json();

    // Validation Zod
    const parsed = devisSchema.safeParse(body);
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
        type: 'devis',
        ...parsed.data,
        createdAt: new Date().toISOString(),
      }),
    });

    if (!response.ok) {
      throw new Error('Failed to submit devis');
    }

    const data = await response.json();

    return NextResponse.json(data, { status: 200 });
  } catch (error) {
    console.error('Error submitting devis:', error);
    return NextResponse.json(
      { error: 'Failed to submit devis' },
      { status: 500 }
    );
  }
}
