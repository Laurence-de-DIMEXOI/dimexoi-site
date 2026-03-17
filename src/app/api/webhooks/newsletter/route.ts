import { NextRequest, NextResponse } from 'next/server';
import crypto from 'crypto';

export async function POST(request: NextRequest) {
  try {
    const bodyText = await request.text();

    // Vérification HMAC si WEBHOOK_SECRET est configuré
    const signature = request.headers.get('x-webhook-signature');
    if (process.env.WEBHOOK_SECRET && signature) {
      const expected = crypto
        .createHmac('sha256', process.env.WEBHOOK_SECRET)
        .update(bodyText)
        .digest('hex');
      if (signature !== expected) {
        return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
      }
    }

    const body = JSON.parse(bodyText);

    const response = await fetch('https://kokpit-kappa.vercel.app/api/webhooks/newsletter', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
      redirect: 'follow',
    });

    const responseText = await response.text();

    let responseData;
    try {
      responseData = JSON.parse(responseText);
    } catch {
      responseData = { status: 'ok', raw: responseText };
    }

    if (response.status < 400) {
      return NextResponse.json(responseData, { status: 200 });
    }

    return NextResponse.json(
      { error: responseData?.error || responseText || 'Erreur du serveur CRM' },
      { status: response.status }
    );
  } catch (error) {
    console.error('Webhook newsletter error:', error);
    return NextResponse.json(
      { error: 'Erreur interne du serveur' },
      { status: 500 }
    );
  }
}
