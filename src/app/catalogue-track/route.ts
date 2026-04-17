import { NextRequest, NextResponse } from "next/server";

const PDF_URL = "/catalogues/mobilier-interieur-teck.pdf";
const CRM_URL = process.env.NEXT_PUBLIC_CRM_URL;

/**
 * GET /catalogue-track
 * Enregistre un clic externe (partage réseaux, ads, email…) et redirige vers le PDF.
 * Paramètres UTM transmis pour tracking Kokpit.
 */
export async function GET(req: NextRequest) {
  const { searchParams } = req.nextUrl;
  const utmSource = searchParams.get("utm_source") || null;
  const utmMedium = searchParams.get("utm_medium") || null;
  const utmCampaign = searchParams.get("utm_campaign") || null;
  const referrer = req.headers.get("referer") || null;

  // Envoyer l'événement au CRM Kokpit (non bloquant)
  if (CRM_URL) {
    fetch(`${CRM_URL}/api/webhooks/catalogue`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        type: "click",
        referrer,
        utmSource,
        utmMedium,
        utmCampaign,
        page: "/catalogue-track",
      }),
    }).catch(() => {});
  }

  return NextResponse.redirect(new URL(PDF_URL, req.url));
}
