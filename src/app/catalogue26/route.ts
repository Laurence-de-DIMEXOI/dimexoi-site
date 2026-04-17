import { NextRequest, NextResponse } from "next/server";

const PDF_URL = "/catalogues/mobilier-interieur-teck.pdf";
const CRM_URL = process.env.NEXT_PUBLIC_CRM_URL;

/**
 * GET /catalogue26
 * Lien court pour partage du catalogue PDF 2026.
 * Tracke le clic dans Kokpit puis redirige vers le PDF.
 */
export async function GET(req: NextRequest) {
  const referrer = req.headers.get("referer") || null;

  // Tracking Kokpit (non bloquant)
  if (CRM_URL) {
    fetch(`${CRM_URL}/api/webhooks/catalogue`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        type: "click",
        referrer,
        utmSource: "lien_court",
        utmMedium: "direct",
        utmCampaign: "catalogue26",
        page: "/catalogue26",
      }),
    }).catch(() => {});
  }

  return NextResponse.redirect(new URL(PDF_URL, req.url));
}
