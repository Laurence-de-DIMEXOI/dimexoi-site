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

    const response = await fetch('https://kokpit-kappa.vercel.app/api/webhooks/demande', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
      redirect: 'follow',
    });

    // Read response body as text first
    const responseText = await response.text();

    // Try to parse as JSON, fallback to wrapping in object
    let responseData;
    try {
      responseData = JSON.parse(responseText);
    } catch {
      responseData = { status: 'ok', raw: responseText };
    }

    // Accept any 2xx or 3xx as success (kokpit may redirect after processing)
    if (response.status < 400) {
      return NextResponse.json(responseData, { status: 200 });
    }

    // Only treat 4xx/5xx as real errors
    return NextResponse.json(
      { error: responseData?.error || responseText || 'Erreur du serveur CRM' },
      { status: response.status }
    );
  } catch (error) {
    console.error('Webhook demande error:', error);
    return NextResponse.json(
      { error: 'Erreur interne du serveur' },
      { status: 500 }
    );
  }
}
