import { NextRequest, NextResponse } from 'next/server';
import { showroomLabel } from '@/src/lib/teckdays-kokpit';

const KOKPIT_URL =
  process.env.KOKPIT_WEBHOOK_URL ||
  'https://kokpit-kappa.vercel.app/api/webhooks/demande';

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const { prenom, nom, email, telephone, showroom, rgpd, meuble, meubleSlug } = body;

    if (!prenom || !email || !meuble) {
      return NextResponse.json(
        { error: 'Champs requis manquants (prenom, email, meuble)' },
        { status: 400 }
      );
    }

    const sp = req.nextUrl.searchParams;
    const slugTag = typeof meubleSlug === 'string'
      ? meubleSlug.toUpperCase().replace(/-/g, '_')
      : 'INCONNU';

    const payload = {
      nom: nom ? String(nom) : String(prenom),
      prenom: String(prenom),
      email: String(email),
      telephone: telephone ? String(telephone) : undefined,
      showroom: showroomLabel(showroom) ?? (showroom ? String(showroom) : undefined),
      source: 'WEB',
      message: `[STOCK_MAI_2026][${slugTag}]`,
      articles: [{ nom: String(meuble), categorie: 'STOCK_MAI_2026' }],
      consentements: {
        offre: true,
        rgpdEmail: rgpd === true,
      },
      utm: {
        utm_source:   sp.get('utm_source')   ?? 'meta',
        utm_medium:   sp.get('utm_medium')   ?? 'paid',
        utm_campaign: sp.get('utm_campaign') ?? 'stock_mai_2026',
        utm_content:  sp.get('utm_content')  ?? (typeof meubleSlug === 'string' ? meubleSlug : undefined),
      },
    };

    const headers: Record<string, string> = { 'Content-Type': 'application/json' };
    const secret = process.env.KOKPIT_WEBHOOK_SECRET;
    if (secret) headers['Authorization'] = `Bearer ${secret}`;

    const r = await fetch(KOKPIT_URL, {
      method: 'POST',
      headers,
      body: JSON.stringify(payload),
      cache: 'no-store',
    });

    if (!r.ok) {
      const detail = await r.text().catch(() => '');
      throw new Error(`KOKPIT webhook ${r.status}: ${detail}`);
    }

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error('[stock-mai-2026 lead]', err);
    return NextResponse.json({ error: 'Erreur serveur' }, { status: 500 });
  }
}
