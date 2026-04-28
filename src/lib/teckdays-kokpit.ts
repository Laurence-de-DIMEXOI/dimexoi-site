/**
 * Helper pour relayer les leads Teck Days vers le webhook KÒKPIT
 * (POST /api/webhooks/demande, déjà conçu pour dimexoi.fr → KÒKPIT).
 *
 * Le secret (KOKPIT_WEBHOOK_SECRET) reste server-side.
 * URL configurable via KOKPIT_WEBHOOK_URL (par défaut prod Vercel).
 */

const KOKPIT_URL =
  process.env.KOKPIT_WEBHOOK_URL ||
  'https://kokpit-kappa.vercel.app/api/webhooks/demande';

export type TeckDaysVariant = 'CONTACT' | 'DEVIS_VALIDE' | 'DEVIS_INTROUVABLE';

type ForwardArgs = {
  variant: TeckDaysVariant;
  prenom: string;
  nom?: string;
  email: string;
  telephone?: string | null;
  showroomLabel?: string | null;
  meuble: string;
  notesExtra?: string | null;
  consentements?: { rgpdEmail?: boolean };
  utm?: Record<string, string | undefined>;
};

export async function forwardTeckDaysLead(args: ForwardArgs) {
  const tagsBlock = `[TECK_DAYS_2026][TECK_DAYS_${args.variant}]`;
  const notes = [tagsBlock, args.notesExtra].filter(Boolean).join(' ');

  const payload = {
    nom: args.nom || args.prenom,
    prenom: args.prenom,
    email: args.email,
    telephone: args.telephone || undefined,
    showroom: args.showroomLabel || undefined,
    source: 'SALON', // Teck Days mappé sur LeadSource.SALON
    message: notes,
    articles: [{ nom: args.meuble, categorie: 'TECK_DAYS' }],
    consentements: {
      offre: true,
      rgpdEmail: args.consentements?.rgpdEmail ?? true,
    },
    utm: args.utm
      ? {
          utm_source: args.utm.utm_source || 'dimexoi',
          utm_medium: args.utm.utm_medium || 'site',
          utm_campaign: args.utm.utm_campaign || 'teckdays_2026',
          utm_content: args.utm.utm_content,
        }
      : {
          utm_source: 'dimexoi',
          utm_medium: 'site',
          utm_campaign: 'teckdays_2026',
        },
  };

  const headers: Record<string, string> = {
    'Content-Type': 'application/json',
  };
  const secret = process.env.KOKPIT_WEBHOOK_SECRET;
  if (secret) headers['Authorization'] = `Bearer ${secret}`;

  const r = await fetch(KOKPIT_URL, {
    method: 'POST',
    headers,
    body: JSON.stringify(payload),
    cache: 'no-store',
  });

  if (!r.ok) {
    const detail = await r.text().catch(() => '');
    throw new Error(`KOKPIT webhook ${r.status}: ${detail}`);
  }
  return r.json() as Promise<{ leadId?: string; contactId?: string }>;
}

export function showroomLabel(code: string | undefined | null): string | null {
  if (code === 'SAINT_DENIS') return 'NORD - Saint-Denis';
  if (code === 'SAINT_PIERRE') return 'SUD - Saint-Pierre';
  return null;
}
