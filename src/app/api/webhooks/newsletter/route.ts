import { NextRequest, NextResponse } from 'next/server';

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

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
