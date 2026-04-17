import { NextRequest, NextResponse } from "next/server";
import { readFile } from "fs/promises";
import { join } from "path";

const CRM_URL = process.env.NEXT_PUBLIC_CRM_URL;

export async function GET(req: NextRequest) {
  const { searchParams } = req.nextUrl;
  const utmSource   = searchParams.get("utm_source")   || "direct";
  const utmMedium   = searchParams.get("utm_medium")   || null;
  const utmCampaign = searchParams.get("utm_campaign") || null;
  const referrer    = req.headers.get("referer")       || null;

  // Tracking Kokpit — fire and forget
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
        page: "/catalogues/mobilier-interieur-teck.pdf",
      }),
    }).catch(() => {});
  }

  // Streamer le PDF
  try {
    const filePath = join(process.cwd(), "public", "catalogues", "mobilier-interieur-teck.pdf");
    const fileBuffer = await readFile(filePath);

    return new NextResponse(fileBuffer, {
      headers: {
        "Content-Type": "application/pdf",
        "Content-Disposition": "inline; filename=\"mobilier-interieur-teck.pdf\"",
        "Cache-Control": "public, max-age=3600",
      },
    });
  } catch {
    return new NextResponse("PDF non trouvé", { status: 404 });
  }
}
