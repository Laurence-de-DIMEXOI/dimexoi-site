import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { ratelimit, getIP } from '@/src/lib/ratelimit';

const guideDownloadSchema = z.object({
  prenom: z.string().min(1).max(100).transform(s => s.trim()),
  email: z.string().email().transform(s => s.toLowerCase().trim()),
  telephone: z.string().optional().or(z.literal('')),
  piece: z.string().optional().or(z.literal('')),
  consentRGPD: z.literal(true, { message: 'Le consentement RGPD est obligatoire' }),
  source: z.string().optional().default('blog_sdb'),
});

export async function POST(request: NextRequest) {
  try {
    const origin = request.headers.get('origin');
    const allowedOrigins = ['https://www.dimexoi.fr', 'https://dimexoi.fr', 'http://localhost:3000'];
    if (process.env.NODE_ENV === 'production' && (!origin || !allowedOrigins.includes(origin))) {
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
    }

    if (ratelimit) {
      const ip = getIP(request);
      const { success } = await ratelimit.limit(`guide-download:${ip}`);
      if (!success) {
        return NextResponse.json({ error: 'Trop de requêtes, réessayez plus tard' }, { status: 429 });
      }
    }

    const body = await request.json();
    const parsed = guideDownloadSchema.safeParse(body);
    if (!parsed.success) {
      return NextResponse.json({ error: parsed.error.flatten() }, { status: 400 });
    }

    const { prenom, email, telephone, piece, source } = parsed.data;

    const crmUrl = process.env.CRM_URL;
    if (crmUrl) {
      await fetch(`${crmUrl}api/webhooks/guide-download`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          name: prenom,
          email,
          phone: telephone || null,
          tags: ['GUIDE_SDB'],
          metadata: {
            piece: piece || null,
            source,
            guide: 'amenager-salle-de-bain-en-teck',
            downloadedAt: new Date().toISOString(),
          },
        }),
      }).catch(err => console.error('CRM push failed:', err));
    }

    return NextResponse.json({
      success: true,
      message: 'Votre guide est prêt !',
      downloadUrl: '/guides/amenager-salle-de-bain-en-teck.pdf',
    });
  } catch (error) {
    console.error('guide-download error:', error);
    return NextResponse.json({ error: 'Erreur serveur' }, { status: 500 });
  }
}
