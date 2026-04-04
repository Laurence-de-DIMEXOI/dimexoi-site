import { NextRequest, NextResponse } from 'next/server';
import crypto from 'crypto';

/**
 * POST /api/webhooks/calendly
 *
 * Webhook Calendly : reçoit les événements invitee.created et invitee.canceled.
 * Forward vers KOKPIT pour créer/annuler un RendezVous + Lead.
 *
 * Configuration dans Calendly :
 * - URL : https://www.dimexoi.fr/api/webhooks/calendly
 * - Events : invitee.created, invitee.canceled
 * - Signing key → CALENDLY_WEBHOOK_SIGNING_KEY
 */

function verifyCalendlySignature(
  rawBody: string,
  signatureHeader: string | null,
  signingKey: string
): boolean {
  if (!signatureHeader) return false;

  // Format: t=timestamp,v1=signature
  const parts = signatureHeader.split(',');
  const timestamp = parts.find((p) => p.startsWith('t='))?.slice(2);
  const sig = parts.find((p) => p.startsWith('v1='))?.slice(3);

  if (!timestamp || !sig) return false;

  const data = `${timestamp}.${rawBody}`;
  const expected = crypto
    .createHmac('sha256', signingKey)
    .update(data)
    .digest('hex');

  try {
    return crypto.timingSafeEqual(
      Buffer.from(sig),
      Buffer.from(expected)
    );
  } catch {
    return false;
  }
}

export async function POST(request: NextRequest) {
  try {
    const rawBody = await request.text();
    const signingKey = process.env.CALENDLY_WEBHOOK_SIGNING_KEY;

    // Vérifier la signature si la clé est configurée
    if (signingKey) {
      const signature = request.headers.get('Calendly-Webhook-Signature');
      if (!verifyCalendlySignature(rawBody, signature, signingKey)) {
        console.error('[calendly webhook] Signature invalide');
        return NextResponse.json({ error: 'Signature invalide' }, { status: 401 });
      }
    }

    const body = JSON.parse(rawBody);
    const event = body.event as string;
    const payload = body.payload;

    if (!payload) {
      return NextResponse.json({ received: true }, { status: 200 });
    }

    const crmUrl = process.env.CRM_URL;
    if (!crmUrl) {
      console.error('[calendly webhook] CRM_URL manquant');
      return NextResponse.json({ received: true }, { status: 200 });
    }

    if (event === 'invitee.created') {
      const { email, name, tracking, scheduled_event, questions_and_answers } = payload;

      // Récupérer les params custom (a1 = pageSource, a2 = productSlug)
      // Calendly les passe dans tracking.utm_term ou questions_and_answers
      const pageSource =
        questions_and_answers?.find(
          (q: { question: string; answer: string }) =>
            q.question.toLowerCase().includes('source')
        )?.answer ||
        tracking?.utm_term ||
        'calendly';

      const productSlug =
        questions_and_answers?.find(
          (q: { question: string; answer: string }) =>
            q.question.toLowerCase().includes('produit')
        )?.answer || null;

      await fetch(`${crmUrl}api/webhooks/calendly-rdv`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          type: 'rdv',
          email: email,
          name: name,
          phone: null,
          rdvDate: scheduled_event?.start_time,
          rdvEndDate: scheduled_event?.end_time,
          calendlyEventUri: scheduled_event?.uri || null,
          source: `calendly_${pageSource}`,
          productSlug,
          utm: tracking || {},
          createdAt: new Date().toISOString(),
        }),
      }).catch((err) =>
        console.error('[calendly webhook] CRM push failed:', err)
      );
    }

    if (event === 'invitee.canceled') {
      await fetch(`${crmUrl}api/webhooks/calendly-rdv`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          type: 'rdv_annulation',
          email: payload.email,
          calendlyEventUri: payload.scheduled_event?.uri || null,
          createdAt: new Date().toISOString(),
        }),
      }).catch((err) =>
        console.error('[calendly webhook] CRM cancel push failed:', err)
      );
    }

    return NextResponse.json({ received: true }, { status: 200 });
  } catch (error) {
    console.error('[calendly webhook] Error:', error);
    return NextResponse.json({ received: true }, { status: 200 });
  }
}
