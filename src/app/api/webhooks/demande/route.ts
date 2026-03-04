import { NextRequest, NextResponse } from 'next/server';

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

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
