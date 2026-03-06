/**
 * UTM parameter tracking
 * Captures UTM params on first visit and stores them in sessionStorage
 * So we can send them with the devis form to Kokpit CRM
 */

export interface UtmData {
  utm_source?: string;    // e.g., 'facebook', 'google', 'instagram'
  utm_medium?: string;    // e.g., 'cpc', 'social', 'email'
  utm_campaign?: string;  // e.g., 'promo-teck-2026'
  utm_content?: string;   // e.g., 'banner-salon'
  utm_term?: string;      // e.g., 'meuble teck reunion'
  referrer?: string;      // original referrer URL
  landing_page?: string;  // first page visited
}

const STORAGE_KEY = 'dimexoi-utm';

/**
 * Capture UTM parameters from URL and store them
 * Should be called on every page load (but only saves the FIRST visit's params)
 */
export function captureUtm(): void {
  if (typeof window === 'undefined') return;

  // Only capture once per session (first touch attribution)
  const existing = sessionStorage.getItem(STORAGE_KEY);
  if (existing) return;

  const params = new URLSearchParams(window.location.search);

  const utmData: UtmData = {};

  const utmSource = params.get('utm_source');
  const utmMedium = params.get('utm_medium');
  const utmCampaign = params.get('utm_campaign');
  const utmContent = params.get('utm_content');
  const utmTerm = params.get('utm_term');

  if (utmSource) utmData.utm_source = utmSource;
  if (utmMedium) utmData.utm_medium = utmMedium;
  if (utmCampaign) utmData.utm_campaign = utmCampaign;
  if (utmContent) utmData.utm_content = utmContent;
  if (utmTerm) utmData.utm_term = utmTerm;

  // Also capture referrer if no UTM (organic search, direct link, etc.)
  if (document.referrer && !document.referrer.includes('dimexoi')) {
    utmData.referrer = document.referrer;
  }

  // Detect source from fbclid / gclid params (Meta / Google click IDs)
  if (!utmSource) {
    if (params.get('fbclid')) {
      utmData.utm_source = 'facebook';
      utmData.utm_medium = 'cpc';
    } else if (params.get('gclid')) {
      utmData.utm_source = 'google';
      utmData.utm_medium = 'cpc';
    } else if (document.referrer) {
      // Detect from referrer
      const ref = document.referrer.toLowerCase();
      if (ref.includes('facebook.com') || ref.includes('fb.com')) {
        utmData.utm_source = 'facebook';
        utmData.utm_medium = 'social';
      } else if (ref.includes('instagram.com')) {
        utmData.utm_source = 'instagram';
        utmData.utm_medium = 'social';
      } else if (ref.includes('google.')) {
        utmData.utm_source = 'google';
        utmData.utm_medium = 'organic';
      } else if (ref.includes('bing.com')) {
        utmData.utm_source = 'bing';
        utmData.utm_medium = 'organic';
      }
    }
  }

  utmData.landing_page = window.location.pathname;

  sessionStorage.setItem(STORAGE_KEY, JSON.stringify(utmData));
}

/**
 * Get stored UTM data
 */
export function getUtmData(): UtmData {
  if (typeof window === 'undefined') return {};

  try {
    const stored = sessionStorage.getItem(STORAGE_KEY);
    return stored ? JSON.parse(stored) : {};
  } catch {
    return {};
  }
}

/**
 * Get a human-readable source label for display in CRM
 */
export function getSourceLabel(): string {
  const utm = getUtmData();

  if (utm.utm_source && utm.utm_medium) {
    const parts = [utm.utm_source];
    if (utm.utm_medium !== 'social' && utm.utm_medium !== 'organic') {
      parts.push(utm.utm_medium);
    }
    if (utm.utm_campaign) {
      parts.push(utm.utm_campaign);
    }
    return parts.join(' / ');
  }

  if (utm.utm_source) return utm.utm_source;
  if (utm.referrer) return `referral (${new URL(utm.referrer).hostname})`;

  return 'direct';
}
