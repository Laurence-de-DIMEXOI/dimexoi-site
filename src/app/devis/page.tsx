'use client';

import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import Breadcrumb from '@/src/components/Breadcrumb';
import QuoteForm from '@/src/components/QuoteForm';
import { getProductBySlug } from '@/src/lib/products';

function DevisContent() {
  const searchParams = useSearchParams();
  const productSlug = searchParams.get('product');
  const product = productSlug ? getProductBySlug(productSlug) : null;

  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-12">
        <div className="container mx-auto">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Demander un devis' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-2">
            Demander un devis
          </h1>
          <p className="text-sm opacity-80 mt-2 uppercase tracking-wider">
            R&eacute;ponse sous 24h
          </p>
        </div>
      </div>

      <div className="container mx-auto py-16">
        <div className="max-w-2xl mx-auto">
          <div className="text-center mb-10">
            <p className="text-gray-600">
              Remplissez ce formulaire pour recevoir un devis personnalis&eacute; de nos experts
            </p>
          </div>

          {product && (
            <div className="bg-warm-beige p-6 mb-8 border-l-4 border-teak-brown">
              <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">Produit s&eacute;lectionn&eacute;</p>
              <p className="font-serif font-bold text-lg text-dark-olive">{product.name}</p>
            </div>
          )}

          <div className="bg-white p-8 border border-gray-100">
            <QuoteForm productSlug={product?.slug} productName={product?.name} />
          </div>

          <div className="mt-12 bg-dark-olive text-off-white p-8 text-center">
            <h3 className="font-serif font-bold text-xl mb-4">
              Pr&eacute;f&eacute;rez le contact direct ?
            </h3>
            <p className="text-sm opacity-80 mb-6">
              Appelez-nous ou visitez directement l&apos;un de nos showrooms
            </p>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div>
                <p className="font-semibold mb-1 text-sm uppercase tracking-wider">Showroom SUD</p>
                <a href="tel:+262262350679" className="text-teak-light hover:text-off-white transition-colors">
                  0262 35 06 79
                </a>
              </div>
              <div>
                <p className="font-semibold mb-1 text-sm uppercase tracking-wider">Showroom NORD</p>
                <a href="tel:+262262203030" className="text-teak-light hover:text-off-white transition-colors">
                  0262 20 30 30
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}

export default function DevisPage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen bg-off-white flex items-center justify-center">
        <p className="text-gray-500 text-sm uppercase tracking-wider">Chargement...</p>
      </div>
    }>
      <DevisContent />
    </Suspense>
  );
}
