'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';

// Popup visible uniquement à partir du 17 avril 2026
const SHOW_FROM = new Date('2026-04-17T00:00:00');
const STORAGE_KEY = 'catalogue-popup-dismissed-v1';
const CRM_URL = process.env.NEXT_PUBLIC_CRM_URL || 'https://kokpit-kappa.vercel.app';

function trackEvent(type: 'view' | 'click') {
  try {
    const params = new URLSearchParams(window.location.search);
    fetch(`${CRM_URL}/api/webhooks/catalogue`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        type,
        referrer: document.referrer || null,
        page: window.location.pathname,
        utmSource: params.get('utm_source') || null,
        utmMedium: params.get('utm_medium') || null,
        utmCampaign: params.get('utm_campaign') || null,
      }),
    }).catch(() => {});
  } catch {
    // silently ignore
  }
}

export default function CataloguePopup() {
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const now = new Date();
    if (now < SHOW_FROM) return;

    const dismissed = localStorage.getItem(STORAGE_KEY);
    if (dismissed) return;

    // Délai léger pour laisser la page se charger
    const timer = setTimeout(() => {
      setVisible(true);
      trackEvent('view');
    }, 1500);
    return () => clearTimeout(timer);
  }, []);

  const dismiss = () => {
    localStorage.setItem(STORAGE_KEY, '1');
    setVisible(false);
  };

  if (!visible) return null;

  return (
    <div
      className="fixed inset-0 z-[80] flex items-center justify-center p-4"
      role="dialog"
      aria-modal="true"
      aria-label="Catalogue mobilier en teck"
    >
      {/* Backdrop */}
      <div
        className="absolute inset-0 bg-black/60 backdrop-blur-sm"
        onClick={dismiss}
        aria-hidden="true"
      />

      {/* Modal */}
      <div className="relative bg-off-white rounded-2xl shadow-2xl w-full max-w-md overflow-hidden animate-fade-in">
        {/* Close button */}
        <button
          onClick={dismiss}
          className="absolute top-3 right-3 z-10 w-8 h-8 flex items-center justify-center rounded-full bg-white/80 hover:bg-white text-dark-charcoal transition-colors"
          aria-label="Fermer"
        >
          <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>

        {/* Header */}
        <div className="bg-dark-olive px-6 py-5 text-center">
          <p className="text-xs uppercase tracking-widest text-teak-light/80 mb-1">Nouveauté</p>
          <h2 className="font-serif text-2xl font-bold text-off-white leading-tight">
            Votre mobilier<br />d&apos;intérieur en teck
          </h2>
          <p className="text-teak-light/90 text-sm mt-2">Collection Avril 2026</p>
        </div>

        {/* Body */}
        <div className="px-6 py-6 text-center">
          <p className="text-dark-charcoal/80 text-sm leading-relaxed mb-6">
            Découvrez notre nouvelle sélection de mobilier intérieur en teck massif —
            chambres, salons, salles de bain — disponible dans nos showrooms à La Réunion.
          </p>

          <div className="flex flex-col gap-3">
            <a
              href="/catalogues/mobilier-interieur-teck.pdf"
              target="_blank"
              rel="noopener noreferrer"
              className="btn-primary text-center"
              onClick={() => { trackEvent('click'); dismiss(); }}
            >
              <svg className="w-4 h-4 inline-block mr-2 -mt-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
              </svg>
              Voir le catalogue PDF
            </a>
            <Link
              href="/catalogue"
              className="btn-secondary text-center"
              onClick={dismiss}
            >
              Explorer tous les produits
            </Link>
          </div>
        </div>

        {/* Footer */}
        <div className="px-6 pb-4 text-center">
          <button
            onClick={dismiss}
            className="text-xs text-dark-charcoal/50 hover:text-dark-charcoal/80 underline transition-colors"
          >
            Ne plus afficher
          </button>
        </div>
      </div>
    </div>
  );
}
