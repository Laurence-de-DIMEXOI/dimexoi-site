import { NextRequest, NextResponse } from 'next/server';
import { forwardTeckDaysLead, showroomLabel } from '@/src/lib/teckdays-kokpit';

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

    // UTM depuis les query params (transmis par Meta ads)
    const sp = req.nextUrl.searchParams;
    const slugTag = typeof meubleSlug === 'string'
      ? meubleSlug.toUpperCase().replace(/-/g, '_')
      : 'INCONNU';

    await forwardTeckDaysLead({
      variant: 'CONTACT',
      prenom: String(prenom),
      nom: nom ? String(nom) : undefined,
      email: String(email),
      telephone: telephone ? String(telephone) : undefined,
      showroomLabel: showroomLabel(showroom) ?? (showroom ? String(showroom) : undefined),
      meuble: String(meuble),
      notesExtra: "[STOCK_MAI_2026][" + slugTag + "]",
      consentements: { rgpdEmail: rgpd === true },
      utm: {
        utm_source:   sp.get('utm_source')   ?? 'meta',
        utm_medium:   sp.get('utm_medium')   ?? 'paid',
        utm_campaign: sp.get('utm_campaign') ?? 'stock_mai_2026',
        utm_content:  sp.get('utm_content')  ?? (typeof meubleSlug === 'string' ? meubleSlug : undefined),
      },
    });

    return NextResponse.json({ ok: true });
  } catch (err) {
    console.error('[stock-mai-2026 lead]', err);
    return NextResponse.json({ error: 'Erreur serveur' }, { status: 500 });
  }
}
