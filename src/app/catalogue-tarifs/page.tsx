'use client';

import { useEffect, Suspense } from 'react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';
// icons inline — pas de dépendance lucide-react

const CRM_URL = process.env.NEXT_PUBLIC_CRM_URL;

function CatalogueTarifsContent() {
  const searchParams = useSearchParams();

  useEffect(() => {
    const utmSource   = searchParams.get('utm_source')   || 'direct';
    const utmMedium   = searchParams.get('utm_medium')   || null;
    const utmCampaign = searchParams.get('utm_campaign') || null;

    if (CRM_URL) {
      fetch(`${CRM_URL}/api/webhooks/catalogue`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          type: 'view',
          referrer: document.referrer || null,
          utmSource,
          utmMedium,
          utmCampaign,
          page: '/catalogue-tarifs',
        }),
      }).catch(() => {});
    }
  }, [searchParams]);

  return (
    <main className="min-h-screen bg-off-white">

      {/* Header */}
      <div className="bg-dark-olive text-off-white py-8 sm:py-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center gap-3 mb-2">
            <svg className="w-6 h-6 opacity-70" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" /></svg>
            <span className="text-sm uppercase tracking-widest opacity-70">DIMEXOI</span>
          </div>
          <h1 className="text-2xl sm:text-3xl font-playfair font-semibold mb-1">
            Catalogue & Tarifs 2026
          </h1>
          <p className="text-sm opacity-70">
            Mobilier en teck massif — Collection complète avec prix
          </p>
        </div>
      </div>

      {/* CTAs */}
      <div className="bg-white border-b border-gray-100 sticky top-0 z-10 shadow-sm">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-3 flex flex-wrap gap-3 items-center justify-between">
          <p className="text-sm text-gray-500 hidden sm:block">
            Consultez nos tarifs et demandez un devis personnalisé
          </p>
          <div className="flex gap-3 w-full sm:w-auto">
            <Link
              href="/devis"
              className="flex-1 sm:flex-none flex items-center justify-center gap-2 px-5 py-2.5 rounded-lg text-sm font-medium text-white transition-opacity hover:opacity-90"
              style={{ backgroundColor: '#5C6B3A' }}
            >
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" /></svg>
              Demander un devis
            </Link>
            <Link
              href="/contact"
              className="flex-1 sm:flex-none flex items-center justify-center gap-2 px-5 py-2.5 rounded-lg text-sm font-medium border border-gray-300 text-gray-700 bg-white transition-colors hover:bg-gray-50"
            >
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" /></svg>
              Nous contacter
            </Link>
          </div>
        </div>
      </div>

      {/* PDF Viewer */}
      <div className="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8 py-6">
        <div className="rounded-xl overflow-hidden shadow-lg border border-gray-200 bg-white"
          style={{ height: 'calc(100vh - 200px)', minHeight: '600px' }}>
          <iframe
            src="/catalogues/mobilier-interieur-teck.pdf"
            className="w-full h-full"
            title="Catalogue DIMEXOI — Mobilier en teck 2026"
          />
        </div>

        {/* Fallback si iframe bloqué */}
        <p className="text-center text-sm text-gray-400 mt-3">
          Si le catalogue ne s&apos;affiche pas,{' '}
          <a
            href="/catalogues/mobilier-interieur-teck.pdf"
            target="_blank"
            rel="noopener noreferrer"
            className="underline hover:text-gray-600"
          >
            téléchargez-le ici
          </a>
          .
        </p>
      </div>

      {/* CTAs bas de page */}
      <div className="bg-dark-olive text-off-white py-10 mt-6">
        <div className="max-w-2xl mx-auto px-4 text-center">
          <h2 className="text-xl font-playfair font-semibold mb-2">
            Un meuble vous intéresse ?
          </h2>
          <p className="text-sm opacity-70 mb-6">
            Nos équipes sont disponibles dans nos showrooms de Saint-Pierre et Saint-Denis.
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link
              href="/devis"
              className="flex items-center justify-center gap-2 px-8 py-3 rounded-lg text-sm font-semibold text-dark-olive bg-off-white hover:bg-white transition-colors"
            >
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" /></svg>
              Demander un devis gratuit
            </Link>
            <Link
              href="/contact"
              className="flex items-center justify-center gap-2 px-8 py-3 rounded-lg text-sm font-semibold border border-white/40 text-off-white hover:bg-white/10 transition-colors"
            >
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" /></svg>
              Nous contacter
            </Link>
          </div>
        </div>
      </div>
    </main>
  );
}

export default function CatalogueTarifsPage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen bg-off-white flex items-center justify-center">
        <div className="w-8 h-8 border-2 border-dark-olive border-t-transparent rounded-full animate-spin" />
      </div>
    }>
      <CatalogueTarifsContent />
    </Suspense>
  );
}
