/**
 * Tracking helpers for conversion events
 * Used by Meta Pixel + GTM (Google Ads, GA4, etc.)
 */

declare global {
  interface Window {
    dataLayer: Record<string, unknown>[];
    fbq: (...args: unknown[]) => void;
  }
}

/**
 * Track when a user submits a devis (quote request)
 * This is the main conversion event for DIMEXOI
 */
export function trackDevisSubmission(data: {
  showroom: string;
  articlesCount: number;
  articles: string[];
}) {
  // Meta Pixel - Lead event
  if (typeof window !== 'undefined' && typeof window.fbq === 'function') {
    window.fbq('track', 'Lead', {
      content_name: 'Demande de devis',
      content_category: data.showroom,
      num_items: data.articlesCount,
      contents: data.articles.map((name) => ({ id: name, quantity: 1 })),
    });
  }

  // GTM dataLayer - custom event for GA4 / Google Ads
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'demande_devis',
      devis_showroom: data.showroom,
      devis_articles_count: data.articlesCount,
      devis_articles: data.articles,
    });
  }
}

/**
 * Track when a user views a product
 */
export function trackProductView(data: {
  name: string;
  category: string;
  slug: string;
}) {
  // Meta Pixel - ViewContent
  if (typeof window !== 'undefined' && typeof window.fbq === 'function') {
    window.fbq('track', 'ViewContent', {
      content_name: data.name,
      content_category: data.category,
      content_ids: [data.slug],
      content_type: 'product',
    });
  }

  // GTM dataLayer
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'view_product',
      product_name: data.name,
      product_category: data.category,
      product_slug: data.slug,
    });
  }
}

/**
 * Track when a user adds a product to devis cart
 */
export function trackAddToDevis(data: {
  name: string;
  category: string;
  slug: string;
}) {
  // Meta Pixel - AddToCart equivalent
  if (typeof window !== 'undefined' && typeof window.fbq === 'function') {
    window.fbq('track', 'AddToCart', {
      content_name: data.name,
      content_category: data.category,
      content_ids: [data.slug],
      content_type: 'product',
    });
  }

  // GTM dataLayer
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'add_to_devis',
      product_name: data.name,
      product_category: data.category,
      product_slug: data.slug,
    });
  }
}

/**
 * Track phone call click
 */
export function trackPhoneCall(showroom: string) {
  if (typeof window !== 'undefined' && typeof window.fbq === 'function') {
    window.fbq('track', 'Contact', {
      content_name: `Appel ${showroom}`,
    });
  }

  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'phone_call',
      call_showroom: showroom,
    });
  }
}
