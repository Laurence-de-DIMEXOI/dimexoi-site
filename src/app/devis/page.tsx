'use client';

import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import Image from 'next/image';
import Breadcrumb from '@/src/components/Breadcrumb';
import { useDevisCart, FINISHES } from '@/src/components/DevisCartProvider';
import { getProductBySlug } from '@/src/lib/products';
import { useState } from 'react';

function DevisContent() {
  const searchParams = useSearchParams();
  const productSlug = searchParams.get('product');
  const product = productSlug ? getProductBySlug(productSlug) : null;
  const { items, removeItem, updateQuantity, updateFinish, clearCart } = useDevisCart();

  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setIsLoading(true);
    setError('');

    const formData = new FormData(e.currentTarget);

    const devisItems = items.map(item => ({
      slug: item.slug,
      name: item.name,
      category: item.category,
      subcategory: item.subcategory,
      finish: item.finish,
      finishLabel: FINISHES.find(f => f.value === item.finish)?.label || item.finish,
      quantity: item.quantity,
    }));

    if (product && devisItems.length === 0) {
      devisItems.push({
        slug: product.slug,
        name: product.name,
        category: product.category,
        subcategory: product.subcategory,
        finish: 'miel',
        finishLabel: 'Miel',
        quantity: 1,
      });
    }

    const data = {
      type: 'devis',
      name: formData.get('name'),
      email: formData.get('email'),
      phone: formData.get('phone'),
      projectType: formData.get('projectType'),
      showroom: formData.get('showroom'),
      message: formData.get('message'),
      items: devisItems,
      createdAt: new Date().toISOString(),
    };

    try {
      const crmUrl = process.env.NEXT_PUBLIC_CRM_URL;
      const response = await fetch(`${crmUrl}api/submissions`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        throw new Error('Erreur lors de l\'envoi du formulaire');
      }

      setSuccess(true);
      clearCart();
      (e.target as HTMLFormElement).reset();
      setTimeout(() => setSuccess(false), 5000);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Une erreur s\'est produite');
    } finally {
      setIsLoading(false);
    }
  };

  const allItems = [...items];
  if (product && !items.find(i => i.slug === product.slug)) {
    allItems.unshift({
      slug: product.slug,
      name: product.name,
      category: product.category,
      subcategory: product.subcategory,
      image: product.images?.[0] || '',
      finish: 'miel',
      quantity: 1,
    });
  }

  return (
    <main className="min-h-screen bg-off-white">
      <div className="bg-dark-olive text-off-white py-14">
        <div className="container mx-auto px-6">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Demander un devis' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-3">
            Demander un devis
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            Réponse sous 48h
          </p>
        </div>
      </div>

      <div className="container mx-auto px-6 py-16">
        <div className="max-w-3xl mx-auto">
          <div className="text-center mb-12">
            <p className="text-gray-600 leading-relaxed">
              Remplissez ce formulaire pour recevoir un devis personnalis&eacute; de nos experts
            </p>
          </div>

          {/* Cart Items Summary */}
          {allItems.length > 0 && (
            <div className="bg-white border border-gray-100 mb-10">
              <div className="px-6 py-5 border-b border-gray-100">
                <h2 className="font-serif font-bold text-lg text-dark-charcoal">
                  Articles dans votre devis ({allItems.length})
                </h2>
              </div>
              <div className="divide-y divide-gray-50">
                {allItems.map((item) => {
                  const isFromCart = items.find(i => i.slug === item.slug && i.finish === item.finish);
                  return (
                    <div key={`${item.slug}-${item.finish}`} className="px-6 py-5 flex gap-5">
                      <div className="w-20 h-20 bg-warm-beige flex-shrink-0 relative overflow-hidden">
                        {item.image ? (
                          <Image src={item.image} alt={item.name} fill className="object-cover" sizes="80px" unoptimized />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center text-gray-300">
                            <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                            </svg>
                          </div>
                        )}
                      </div>

                      <div className="flex-1 min-w-0">
                        <h3 className="font-serif font-bold text-sm text-dark-charcoal">{item.name}</h3>
                        <p className="text-xs text-gray-500 mb-3">{item.subcategory}</p>

                        <div className="flex flex-wrap items-center gap-4">
                          <div className="flex items-center gap-1.5">
                            <span className="text-xs text-gray-400">Finition:</span>
                            <select
                              value={item.finish}
                              onChange={(e) => isFromCart && updateFinish(item.slug, e.target.value)}
                              className="text-xs border border-gray-200 px-2 py-1 bg-white text-dark-charcoal focus:outline-none focus:border-teak-brown"
                            >
                              {FINISHES.map(f => (
                                <option key={f.value} value={f.value}>{f.label}</option>
                              ))}
                            </select>
                          </div>

                          <div className="flex items-center gap-2">
                            <span className="text-xs text-gray-400">Qt&eacute;:</span>
                            {isFromCart ? (
                              <>
                                <button
                                  onClick={() => updateQuantity(item.slug, item.quantity - 1)}
                                  className="w-7 h-7 flex items-center justify-center border border-gray-200 text-gray-500 hover:border-dark-charcoal text-xs transition-colors"
                                >
                                  &minus;
                                </button>
                                <span className="text-sm font-medium w-6 text-center">{item.quantity}</span>
                                <button
                                  onClick={() => updateQuantity(item.slug, item.quantity + 1)}
                                  className="w-7 h-7 flex items-center justify-center border border-gray-200 text-gray-500 hover:border-dark-charcoal text-xs transition-colors"
                                >
                                  +
                                </button>
                              </>
                            ) : (
                              <span className="text-sm font-medium">{item.quantity}</span>
                            )}
                          </div>

                          {isFromCart && (
                            <button
                              onClick={() => removeItem(item.slug)}
                              className="ml-auto text-gray-300 hover:text-red-500 transition-colors text-xs flex items-center gap-1"
                            >
                              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                              </svg>
                              Retirer
                            </button>
                          )}
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          )}

          {/* Quote Form */}
          <div className="bg-white p-8 md:p-10 border border-gray-100">
            <h2 className="font-serif font-bold text-lg text-dark-charcoal mb-8">Vos coordonn&eacute;es</h2>

            <form onSubmit={handleSubmit} className="space-y-6">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label htmlFor="name" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Nom et Pr&eacute;nom *
                  </label>
                  <input type="text" id="name" name="name" required className="form-input" />
                </div>
                <div>
                  <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Email *
                  </label>
                  <input type="email" id="email" name="email" required className="form-input" />
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label htmlFor="phone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    T&eacute;l&eacute;phone *
                  </label>
                  <input type="tel" id="phone" name="phone" required className="form-input" />
                </div>
                <div>
                  <label htmlFor="projectType" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Type de projet *
                  </label>
                  <select id="projectType" name="projectType" required className="form-input">
                    <option value="">S&eacute;lectionnez un type</option>
                    <option value="renovation">R&eacute;novation</option>
                    <option value="demenagement">Emm&eacute;nagement</option>
                    <option value="professionnel">Projet professionnel</option>
                    <option value="other">Autre</option>
                  </select>
                </div>
              </div>

              <div>
                <label htmlFor="showroom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                  Showroom pr&eacute;f&eacute;r&eacute; *
                </label>
                <select id="showroom" name="showroom" required className="form-input">
                  <option value="">S&eacute;lectionnez un showroom</option>
                  <option value="sud">SUD - Saint-Pierre</option>
                  <option value="nord">NORD - Saint-Denis</option>
                  <option value="both">Pas de pr&eacute;f&eacute;rence</option>
                </select>
              </div>

              <div>
                <label htmlFor="message" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                  Message ou pr&eacute;cisions
                </label>
                <textarea
                  id="message"
                  name="message"
                  placeholder="D&eacute;crivez votre projet, vos pr&eacute;f&eacute;rences de finition, d&eacute;lais souhait&eacute;s..."
                  className="form-input resize-none"
                  rows={5}
                ></textarea>
              </div>

              {error && (
                <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 text-sm">
                  {error}
                </div>
              )}

              {success && (
                <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 text-sm">
                  Merci ! Votre demande de devis a &eacute;t&eacute; envoy&eacute;e. Nous vous recontacterons tr&egrave;s bient&ocirc;t.
                </div>
              )}

              <button
                type="submit"
                disabled={isLoading}
                className="w-full btn-primary disabled:opacity-50 disabled:cursor-not-allowed"
              >
                {isLoading ? 'Envoi en cours...' : `Envoyer ma demande${allItems.length > 0 ? ` (${allItems.length} article${allItems.length > 1 ? 's' : ''})` : ''}`}
              </button>

              <p className="text-xs text-gray-500 text-center mt-4">* Champs obligatoires</p>
            </form>
          </div>

          {/* Contact alternative */}
          <div className="mt-14 bg-dark-olive text-off-white p-10 text-center">
            <h3 className="font-serif font-bold text-xl mb-4">
              Pr&eacute;f&eacute;rez le contact direct ?
            </h3>
            <p className="text-sm opacity-80 mb-8">
              Appelez-nous ou visitez directement l&apos;un de nos showrooms
            </p>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
              <div>
                <p className="font-semibold mb-2 text-sm uppercase tracking-wider">Showroom SUD</p>
                <a href="tel:+262262350679" className="text-teak-light hover:text-off-white transition-colors">
                  0262 35 06 79
                </a>
              </div>
              <div>
                <p className="font-semibold mb-2 text-sm uppercase tracking-wider">Showroom NORD</p>
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
