'use client';

import { useEffect, useRef, useState } from 'react';

declare global {
  interface Window {
    Calendly?: {
      initPopupWidget: (opts: { url: string }) => void;
      initInlineWidget: (opts: { url: string; parentElement: HTMLElement }) => void;
    };
  }
}

interface CalendlyWidgetProps {
  mode: 'inline' | 'popup';
  utm?: {
    utmSource?: string;
    utmMedium?: string;
    utmCampaign?: string;
    utmContent?: string;
  };
  pageSource?: string;
  productSlug?: string;
  buttonText?: string;
  buttonClassName?: string;
}

const CALENDLY_URL = 'https://calendly.com/dimexoi/60min';

function buildCalendlyUrl(props: CalendlyWidgetProps): string {
  const params = new URLSearchParams();

  // UTM params
  if (props.utm?.utmSource) params.set('utm_source', props.utm.utmSource);
  if (props.utm?.utmMedium) params.set('utm_medium', props.utm.utmMedium);
  if (props.utm?.utmCampaign) params.set('utm_campaign', props.utm.utmCampaign);
  if (props.utm?.utmContent) params.set('utm_content', props.utm.utmContent);

  // Custom params (a1 = pageSource, a2 = productSlug)
  if (props.pageSource) params.set('a1', props.pageSource);
  if (props.productSlug) params.set('a2', props.productSlug);

  const qs = params.toString();
  return qs ? `${CALENDLY_URL}?${qs}` : CALENDLY_URL;
}

/**
 * Charge le script Calendly dynamiquement (une seule fois).
 */
function useCalendlyScript() {
  const [ready, setReady] = useState(false);

  useEffect(() => {
    if (window.Calendly) {
      setReady(true);
      return;
    }

    const existing = document.querySelector('script[src*="calendly.com/assets/external/widget.js"]');
    if (existing) {
      existing.addEventListener('load', () => setReady(true));
      return;
    }

    // CSS Calendly
    const link = document.createElement('link');
    link.href = 'https://assets.calendly.com/assets/external/widget.css';
    link.rel = 'stylesheet';
    document.head.appendChild(link);

    // JS Calendly
    const script = document.createElement('script');
    script.src = 'https://assets.calendly.com/assets/external/widget.js';
    script.async = true;
    script.onload = () => setReady(true);
    document.head.appendChild(script);

    return () => {
      // Ne pas retirer — partagé entre composants
    };
  }, []);

  return ready;
}

/**
 * Tracking GTM
 */
function trackCalendlyOpened(pageSource?: string, productSlug?: string) {
  if (typeof window !== 'undefined' && window.dataLayer) {
    window.dataLayer.push({
      event: 'calendly_opened',
      calendly_source: pageSource || '',
      calendly_product: productSlug || null,
    });
  }
}

/**
 * Récupère les UTM depuis sessionStorage (UtmCapture.tsx)
 */
function getStoredUtm(): CalendlyWidgetProps['utm'] {
  if (typeof window === 'undefined') return {};
  try {
    const stored = sessionStorage.getItem('dimexoi_utm');
    if (!stored) return {};
    const parsed = JSON.parse(stored);
    return {
      utmSource: parsed.utm_source || undefined,
      utmMedium: parsed.utm_medium || undefined,
      utmCampaign: parsed.utm_campaign || undefined,
      utmContent: parsed.utm_content || undefined,
    };
  } catch {
    return {};
  }
}

export default function CalendlyWidget(props: CalendlyWidgetProps) {
  const ready = useCalendlyScript();
  const containerRef = useRef<HTMLDivElement>(null);
  const [initialized, setInitialized] = useState(false);

  // Merge UTM props avec sessionStorage
  const mergedUtm = { ...getStoredUtm(), ...props.utm };
  const fullProps = { ...props, utm: mergedUtm };

  // Mode inline
  useEffect(() => {
    if (props.mode !== 'inline' || !ready || !containerRef.current || initialized) return;
    const url = buildCalendlyUrl(fullProps);
    window.Calendly?.initInlineWidget({
      url,
      parentElement: containerRef.current,
    });
    setInitialized(true);
    trackCalendlyOpened(props.pageSource, props.productSlug);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [ready, props.mode, initialized]);

  if (props.mode === 'inline') {
    return (
      <div
        ref={containerRef}
        style={{ minWidth: '320px', height: '700px' }}
      />
    );
  }

  // Mode popup
  function handlePopupClick() {
    if (!ready || !window.Calendly) return;
    const url = buildCalendlyUrl(fullProps);
    window.Calendly.initPopupWidget({ url });
    trackCalendlyOpened(props.pageSource, props.productSlug);
  }

  return (
    <button
      type="button"
      onClick={handlePopupClick}
      disabled={!ready}
      className={
        props.buttonClassName ||
        'inline-flex items-center gap-2 py-3 px-6 border-2 border-teak-brown text-teak-brown hover:bg-teak-brown hover:text-white rounded-lg transition-colors font-medium disabled:opacity-50'
      }
    >
      {props.buttonText || 'Prendre rendez-vous en showroom'}
    </button>
  );
}
