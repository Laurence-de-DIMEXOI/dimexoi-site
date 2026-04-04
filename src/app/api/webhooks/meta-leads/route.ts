import { NextRequest, NextResponse } from "next/server";

/**
 * POST /api/webhooks/meta-leads
 * GET  /api/webhooks/meta-leads (verification challenge Meta)
 *
 * Webhook pour recevoir les leads du formulaire natif Facebook/Instagram Ads.
 * Forward vers KOKPIT dans le meme format que guide-download.
 *
 * Meta envoie :
 * {
 *   "object": "page",
 *   "entry": [{
 *     "id": "PAGE_ID",
 *     "time": 1234567890,
 *     "changes": [{
 *       "field": "leadgen",
 *       "value": {
 *         "form_id": "...",
 *         "leadgen_id": "...",
 *         "created_time": 1234567890,
 *         "page_id": "..."
 *       }
 *     }]
 *   }]
 * }
 *
 * On doit ensuite fetcher les donnees du lead via Graph API.
 *
 * Env vars necessaires :
 * - META_WEBHOOK_VERIFY_TOKEN : token de verification (GET challenge)
 * - META_ACCESS_TOKEN : token pour lire les donnees du lead
 * - CRM_URL : URL KOKPIT
 */

// Verification challenge Meta (GET)
export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const mode = searchParams.get("hub.mode");
  const token = searchParams.get("hub.verify_token");
  const challenge = searchParams.get("hub.challenge");

  const verifyToken = process.env.META_WEBHOOK_VERIFY_TOKEN;

  if (mode === "subscribe" && token === verifyToken) {
    console.log("[meta-leads] Webhook verified");
    return new NextResponse(challenge, { status: 200 });
  }

  return NextResponse.json({ error: "Forbidden" }, { status: 403 });
}

// Reception des leads (POST)
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // Meta envoie un objet avec entry[].changes[].value.leadgen_id
    if (body.object !== "page" || !body.entry) {
      return NextResponse.json({ received: true }, { status: 200 });
    }

    const accessToken = process.env.META_ACCESS_TOKEN;
    const crmUrl = process.env.CRM_URL;

    if (!accessToken) {
      console.error("[meta-leads] META_ACCESS_TOKEN manquant");
      return NextResponse.json({ received: true }, { status: 200 });
    }

    for (const entry of body.entry) {
      for (const change of entry.changes || []) {
        if (change.field !== "leadgen") continue;

        const leadgenId = change.value?.leadgen_id;
        if (!leadgenId) continue;

        // Fetcher les donnees du lead via Graph API
        const leadData = await fetchLeadData(leadgenId, accessToken);
        if (!leadData) continue;

        // Extraire les champs du formulaire Meta
        const fields = parseLeadFields(leadData.field_data || []);

        // Forward vers KOKPIT
        if (crmUrl && fields.email) {
          await fetch(`${crmUrl}api/webhooks/guide-download`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              name: fields.prenom || fields.full_name || "Prospect Meta",
              email: fields.email,
              phone: fields.phone || null,
              tags: ["GUIDE_SDB", "META_ADS"],
              metadata: {
                piece: null,
                showroom: null,
                source: "meta_ads",
                guide: "amenager-salle-de-bain-en-teck",
                metaFormId: change.value?.form_id || null,
                metaLeadgenId: leadgenId,
                downloadedAt: new Date().toISOString(),
              },
            }),
          }).catch((err) =>
            console.error("[meta-leads] CRM push failed:", err)
          );
        }
      }
    }

    // Meta attend toujours un 200
    return NextResponse.json({ received: true }, { status: 200 });
  } catch (error) {
    console.error("[meta-leads] Error:", error);
    // Toujours retourner 200 sinon Meta desactive le webhook
    return NextResponse.json({ received: true }, { status: 200 });
  }
}

/**
 * Fetch lead data from Meta Graph API
 */
async function fetchLeadData(
  leadgenId: string,
  accessToken: string
): Promise<{ field_data: Array<{ name: string; values: string[] }> } | null> {
  try {
    const res = await fetch(
      `https://graph.facebook.com/v19.0/${leadgenId}?access_token=${accessToken}`,
      { method: "GET" }
    );
    if (!res.ok) {
      console.error(
        `[meta-leads] Graph API error ${res.status}:`,
        await res.text()
      );
      return null;
    }
    return res.json();
  } catch (error) {
    console.error("[meta-leads] Graph API fetch error:", error);
    return null;
  }
}

/**
 * Parse Meta lead form field_data into a flat object
 * Meta field names vary: "email", "full_name", "first_name", "phone_number", etc.
 */
function parseLeadFields(
  fieldData: Array<{ name: string; values: string[] }>
): Record<string, string> {
  const fields: Record<string, string> = {};
  for (const field of fieldData) {
    const value = field.values?.[0] || "";
    switch (field.name.toLowerCase()) {
      case "email":
        fields.email = value.toLowerCase().trim();
        break;
      case "full_name":
        fields.full_name = value.trim();
        break;
      case "first_name":
        fields.prenom = value.trim();
        break;
      case "last_name":
        fields.nom = value.trim();
        break;
      case "phone_number":
      case "phone":
        fields.phone = value.trim();
        break;
      default:
        fields[field.name] = value;
    }
  }
  return fields;
}
