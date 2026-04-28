import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { ratelimit, getIP } from '@/src/lib/ratelimit';
import { forwardTeckDaysLead, showroomLabel } from '@/src/lib/teckdays-kokpit';

const schema = z.object({
  prenom: z.string().min(2).max(50),
  nom: z.string().max(50).optional().or(z.literal('')),
  email: z.string().email(),
  telephone: z.string().min(6).max(25),
  showroomPreferred: z.enum(['SAINT_DENIS', 'SAINT_PIERRE']),
  projet: z.enum(['SDB', 'CUISINE', 'DRESSING', 'CHAMBRE', 'SALON', 'AUTRE']).optional(),
  message: z.string().max(500).optional().or(z.literal('')),
  consent: z.union([z.literal('on'), z.literal(true), z.literal('true')]),
});

const ALLOWED_ORIGINS = ['https://www.dimexoi.fr', 'https://dimexoi.fr', 'http://localhost:3000', 'http://localhost:3003'];

export async function POST(request: NextRequest) {
  // CSRF light
  const origin = request.headers.get('origin');
  if (process.env.NODE_ENV === 'production' && (!origin || !ALLOWED_ORIGINS.includes(origin))) {
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
  }

  // Rate limit
  if (ratelimit) {
    const ip = getIP(request);
    const { success } = await ratelimit.limit(`teckdays-contact:${ip}`);
    if (!success) {
      return NextResponse.json({ error: 'Trop de requêtes, réessayez plus tard.' }, { status: 429 });
    }
  }

  let body: z.infer<typeof schema>;
  try {
    const json = await request.json();
    body = schema.parse(json);
  } catch (err) {
    return NextResponse.json({ error: 'Données invalides', detail: (err as Error).message }, { status: 400 });
  }

  const meuble = body.projet
    ? `Teck Days · Demande de contact (${body.projet})`
    : 'Teck Days · Demande de contact';

  try {
    const result = await forwardTeckDaysLead({
      variant: 'CONTACT',
      prenom: body.prenom,
      nom: body.nom || undefined,
      email: body.email,
      telephone: body.telephone,
      showroomLabel: showroomLabel(body.showroomPreferred),
      meuble,
      notesExtra: body.message ? `Message client: ${body.message}` : null,
      consentements: { rgpdEmail: true },
    });

    return NextResponse.json({
      ok: true,
      leadId: result.leadId,
      message: 'Merci, nous vous recontactons sous 24h ouvrées.',
    });
  } catch (err) {
    console.error('[teckdays/contact] forward error:', err);
    return NextResponse.json({ error: 'Erreur serveur, réessayez plus tard.' }, { status: 502 });
  }
}
