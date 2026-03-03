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
    <main className="min-h-screen bg-off-white py-8">
      <div className="container mx-auto px-4">
        <Breadcrumb
          items={[
            { label: 'Accueil', href: '/' },
            { label: 'Demander un devis' },
          ]}
        />

        <div className="max-w-2xl mx-auto">
          <div className="text-center mb-12">
            <h1 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive mb-4">
              Demander un devis
            </h1>
            <p className="text-gray-600 text-lg">
              Remplissez ce formulaire pour recevoir un devis personnalisé de nos experts
            </p>
          </div>

          {product && (
            <div className="bg-warm-beige p-6 rounded-lg mb-8 border-l-4 border-teak-brown">
              <p className="text-sm text-gray-600 mb-2">Produit sélectionné :</p>
              <p className="font-serif font-bold text-lg text-dark-olive">{product.name}</p>
            </div>
          )}

          <div className="bg-white rounded-lg p-8 border border-warm-beige">
            <QuoteForm productSlug={product?.slug} productName={product?.name} />
          </div>

          <div className="mt-12 bg-dark-olive text-off-white p-8 rounded-lg text-center">
            <h3 className="font-serif font-bold text-xl mb-4">
              Préférez le contact direct ?
            </h3>
            <p className="mb-6">
              Appelez-nous ou visitez directement l&apos;un de nos showrooms
            </p>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div>
                <p className="font-semibold mb-2">Showroom SUD</p>
                <a href="tel:+262262350679" className="text-teak-brown hover:text-off-white transition-colors">
                  0262 35 06 79
                </a>
              </div>
              <div>
                <p className="font-semibold mb-2">Showroom NORD</p>
                <a href="tel:+262262203030" className="text-teak-brown hover:text-off-white transition-colors">
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
        <p className="text-gray-500">Chargement...</p>
      </div>
    }>
      <DevisContent />
    </Suspense>
  );
}
