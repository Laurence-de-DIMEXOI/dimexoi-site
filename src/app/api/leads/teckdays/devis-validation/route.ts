import { NextRequest, NextResponse } from 'next/server';
import { z } from 'zod';
import { ratelimit, getIP } from '@/src/lib/ratelimit';
import { forwardTeckDaysLead } from '@/src/lib/teckdays-kokpit';

const schema = z.object({
  numeroDevis: z.string().min(2).max(40),
  email: z.string().email(),
  telephone: z.string().min(6).max(25),
  confirmation: z.union([z.literal('on'), z.literal(true), z.literal('true')]),
});

const ALLOWED_ORIGINS = ['https://www.dimexoi.fr', 'https://dimexoi.fr', 'http://localhost:3000', 'http://localhost:3003'];

export async function POST(request: NextRequest) {
  const origin = request.headers.get('origin');
  if (process.env.NODE_ENV === 'production' && (!origin || !ALLOWED_ORIGINS.includes(origin))) {
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
  }

  if (ratelimit) {
    const ip = getIP(request);
    const { success } = await ratelimit.limit(`teckdays-devis:${ip}`);
    if (!success) {
      return NextResponse.json({ error: 'Trop de requêtes, réessayez plus tard.' }, { status: 429 });
    }
  }

  let body: z.infer<typeof schema>;
  try {
    body = schema.parse(await request.json());
  } catch (err) {
    return NextResponse.json({ error: 'Données invalides', detail: (err as Error).message }, { status: 400 });
  }

  // Le client est connu via email — on n'a pas son nom au moment du form devis.
  // On utilise l'email tronqué comme prénom de fallback, le commercial le mettra à jour.
  const fallbackPrenom = body.email.split('@')[0]?.slice(0, 30) || 'Client';

  const meuble = `Teck Days · Validation devis ${body.numeroDevis}`;
  const notes = `Validation devis ${body.numeroDevis} avec remise -30% Teck Days. À traiter manuellement (Sellsy non synchronisé).`;

  try {
    const result = await forwardTeckDaysLead({
      variant: 'DEVIS_VALIDE',
      prenom: fallbackPrenom,
      nom: 'Devis Teck Days',
      email: body.email,
      telephone: body.telephone,
      meuble,
      notesExtra: notes,
      consentements: { rgpdEmail: true },
      notifyEmailFallback: 'contact@dimexoi.fr',
    });

    return NextResponse.json({
      ok: true,
      leadId: result.leadId,
      message: 'Validation enregistrée. Un conseiller vous recontacte sous 24h ouvrées.',
    });
  } catch (err) {
    console.error('[teckdays/devis-validation] forward error:', err);
    return NextResponse.json({ error: 'Erreur serveur, réessayez plus tard.' }, { status: 502 });
  }
}
