/**
 * Tracking helpers for conversion events
 * Used by Meta Pixel + GTM (Google Ads, GA4, etc.)
 */

declare global {
  interface Window {
    dataLayer: Record<string, unknown>[];
    fbq: (...args: unknown[]) => void;
    gtag: (...args: unknown[]) => void;
  }
}

/**
 * Google Ads conversion - Website traffic
 */
export function gtagReportConversion(url?: string) {
  if (typeof window === 'undefined' || typeof window.gtag !== 'function') {
    if (url) window.location.href = url;
    return;
  }
  const callback = () => {
    if (url) window.location.href = url;
  };
  window.gtag('event', 'conversion', {
    send_to: 'AW-869002426/3MTcCOuCiIsYELrZr54D',
    event_callback: callback,
  });
}

/**
 * Google Ads conversion - Demande de devis (valeur 26€)
 */
export function gtagReportDevisConversion() {
  if (typeof window === 'undefined' || typeof window.gtag !== 'function') return;
  window.gtag('event', 'conversion', {
    send_to: 'AW-869002426/bwcYCO_RtZAcELrZr54D',
    value: 26.0,
    currency: 'EUR',
  });
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

// --- Guide PDF tracking events ---

/**
 * Track guide PDF download (lead magnet)
 * Fires: Meta Pixel Lead + GTM guide_download + Google Ads conversion
 */
export function trackGuideDownload(data: {
  guideName: string;
  showroom?: string;
  piece?: string;
  source?: string;
}) {
  // Meta Pixel - Lead event
  if (typeof window !== 'undefined' && typeof window.fbq === 'function') {
    window.fbq('track', 'Lead', {
      content_name: data.guideName,
      content_category: 'lead_magnet',
    });
  }

  // GTM dataLayer
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'guide_download',
      guide_name: data.guideName,
      guide_showroom: data.showroom || '',
      guide_piece: data.piece || '',
      guide_source: data.source || '',
    });
  }

  // Google Ads conversion
  if (typeof window !== 'undefined' && typeof window.gtag === 'function') {
    window.gtag('event', 'conversion', {
      send_to: 'AW-869002426/bwcYCO_RtZAcELrZr54D',
    });
  }
}

// --- Chat IA tracking events ---

export function trackChatOpened() {
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({ event: 'chat_opened' });
  }
}

export function trackChatMessageSent() {
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({ event: 'chat_message_sent' });
  }
}

export function trackChatProductViewed(productSlug: string) {
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'chat_product_viewed',
      chat_product_slug: productSlug,
    });
  }
}

export function trackChatLeadSubmitted(products: string[]) {
  if (typeof window !== 'undefined' && typeof window.fbq === 'function') {
    window.fbq('track', 'Lead', {
      content_name: 'Chat IA Lead',
      contents: products.map((slug) => ({ id: slug, quantity: 1 })),
    });
  }

  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'chat_lead_submitted',
      chat_products: products,
    });
  }
}

export function trackChatVisualizationStarted(productSlug: string) {
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'chat_visualization_started',
      chat_product_slug: productSlug,
    });
  }
}

export function trackChatVisualizationCompleted(productSlug: string) {
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'chat_visualization_completed',
      chat_product_slug: productSlug,
    });
  }
}
