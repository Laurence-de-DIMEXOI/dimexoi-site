'use client';

import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import Image from 'next/image';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import { useDevisCart, FINISHES } from '@/src/components/DevisCartProvider';
import { getProductBySlug } from '@/src/lib/products';
import { useState } from 'react';

const SHOWROOM_MAP: Record<string, string> = {
  sud: 'SUD - Saint-Pierre',
  nord: 'NORD - Saint-Denis',
  both: 'Pas de préférence',
};

const BUDGET_MAP: Record<string, string> = {
  'moins-1000': 'Moins de 1 000€',
  '1000-3000': '1 000€ - 3 000€',
  '3000-5000': '3 000€ - 5 000€',
  '5000-10000': '5 000€ - 10 000€',
  'plus-10000': 'Plus de 10 000€',
};

function DevisContent() {
  const searchParams = useSearchParams();
  const productSlug = searchParams.get('product');
  const product = productSlug ? getProductBySlug(productSlug) : null;
  const { items, removeItem, updateQuantity, updateFinish, clearCart } = useDevisCart();

  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);
  const [consentOffers, setConsentOffers] = useState(false);
  const [consentNewsletter, setConsentNewsletter] = useState(false);
  const [consentInvitation, setConsentInvitation] = useState(false);
  const [consentRgpdEmail, setConsentRgpdEmail] = useState(false);
  const [consentRgpdSms, setConsentRgpdSms] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!consentRgpdEmail) {
      setError('Veuillez accepter le traitement de vos données personnelles par email.');
      return;
    }
    setIsLoading(true);
    setError('');

    const formData = new FormData(e.currentTarget);

    // Build articles array for CRM
    const articles = items.map(item => ({
      nom: item.name,
      categorie: item.subcategory || item.category,
      finition: FINISHES.find(f => f.value === item.finish)?.label || item.finish,
      quantite: item.quantity,
    }));

    if (product && articles.length === 0) {
      articles.push({
        nom: product.name,
        categorie: product.subcategory || product.category,
        finition: 'Miel',
        quantite: 1,
      });
    }

    const showroomKey = formData.get('showroom') as string;
    const budgetKey = formData.get('budget') as string;

    const data = {
      nom: formData.get('nom'),
      prenom: formData.get('prenom'),
      email: formData.get('email'),
      telephone: formData.get('telephone'),
      showroom: SHOWROOM_MAP[showroomKey] || showroomKey,
      budget: BUDGET_MAP[budgetKey] || budgetKey || '',
      message: formData.get('message') || '',
      source: 'site-web-v2',
      articles,
      consentements: {
        offre: consentOffers,
        newsletter: consentNewsletter,
        invitation: consentInvitation,
        devis: true,
        rgpdEmail: consentRgpdEmail,
        rgpdSms: consentRgpdSms,
      },
    };

    try {
      const response = await fetch('https://kokpit-kappa.vercel.app/api/webhooks/demande', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      const result = await response.json().catch(() => null);

      if (!result?.success) {
        throw new Error(result?.error || 'Erreur lors de l\'envoi du formulaire');
      }

      setSuccess(true);
      clearCart();
      (e.target as HTMLFormElement).reset();
      setConsentOffers(false);
      setConsentNewsletter(false);
      setConsentInvitation(false);
      setConsentRgpdEmail(false);
      setConsentRgpdSms(false);
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
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
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

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
        <div className="max-w-3xl mx-auto">
          <div className="text-center mb-12">
            <p className="text-gray-600 leading-relaxed">
              Remplissez ce formulaire pour recevoir un devis personnalisé de nos experts
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
                            <span className="text-xs text-gray-400">Qté:</span>
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
            <h2 className="font-serif font-bold text-lg text-dark-charcoal mb-8">Vos coordonnées</h2>

            <form onSubmit={handleSubmit} className="space-y-6">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label htmlFor="nom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Nom *
                  </label>
                  <input type="text" id="nom" name="nom" required className="form-input" />
                </div>
                <div>
                  <label htmlFor="prenom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Prénom *
                  </label>
                  <input type="text" id="prenom" name="prenom" required className="form-input" />
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label htmlFor="email" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Email *
                  </label>
                  <input type="email" id="email" name="email" required className="form-input" />
                </div>
                <div>
                  <label htmlFor="telephone" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Téléphone *
                  </label>
                  <input type="tel" id="telephone" name="telephone" required className="form-input" />
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label htmlFor="showroom" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Showroom préféré *
                  </label>
                  <select id="showroom" name="showroom" required className="form-input">
                    <option value="">Sélectionnez un showroom</option>
                    <option value="sud">SUD - Saint-Pierre</option>
                    <option value="nord">NORD - Saint-Denis</option>
                    <option value="both">Pas de préférence</option>
                  </select>
                </div>
                <div>
                  <label htmlFor="budget" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                    Budget estimé
                  </label>
                  <select id="budget" name="budget" className="form-input">
                    <option value="">Sélectionnez un budget</option>
                    <option value="moins-1000">Moins de 1 000 €</option>
                    <option value="1000-3000">1 000 € - 3 000 €</option>
                    <option value="3000-5000">3 000 € - 5 000 €</option>
                    <option value="5000-10000">5 000 € - 10 000 €</option>
                    <option value="plus-10000">Plus de 10 000 €</option>
                  </select>
                </div>
              </div>

              <div>
                <label htmlFor="message" className="block text-xs font-semibold uppercase tracking-wider text-gray-600 mb-2">
                  Message ou précisions
                </label>
                <textarea
                  id="message"
                  name="message"
                  placeholder="Décrivez votre projet, vos préférences de finition, délais souhaités..."
                  className="form-input resize-none"
                  rows={5}
                ></textarea>
              </div>

              {/* Mailing list subscriptions */}
              <div className="border-t border-gray-100 pt-6">
                <p className="text-xs font-semibold uppercase tracking-wider text-gray-600 mb-4">Je souhaite recevoir (optionnel)</p>
                <div className="space-y-3">
                  <label className="flex items-start gap-3 cursor-pointer group">
                    <input type="checkbox" checked={consentOffers} onChange={(e) => setConsentOffers(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
                    <div>
                      <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Offres et promotions</span>
                      <p className="text-xs text-gray-400">Offres exclusives et réductions sur nos meubles</p>
                    </div>
                  </label>
                  <label className="flex items-start gap-3 cursor-pointer group">
                    <input type="checkbox" checked={consentNewsletter} onChange={(e) => setConsentNewsletter(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
                    <div>
                      <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Newsletter</span>
                      <p className="text-xs text-gray-400">Nouvelles collections, conseils déco et actualités</p>
                    </div>
                  </label>
                  <label className="flex items-start gap-3 cursor-pointer group">
                    <input type="checkbox" checked={consentInvitation} onChange={(e) => setConsentInvitation(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
                    <div>
                      <span className="text-sm text-dark-charcoal group-hover:text-dark-olive transition-colors">Événements</span>
                      <p className="text-xs text-gray-400">Invitations aux ventes privées et événements showroom</p>
                    </div>
                  </label>
                </div>
              </div>

              {/* RGPD Consent */}
              <div className="border-t border-gray-100 pt-6">
                <div className="space-y-3">
                  <label className="flex items-start gap-3 cursor-pointer">
                    <input type="checkbox" checked={consentRgpdEmail} onChange={(e) => setConsentRgpdEmail(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" required />
                    <span className="text-xs text-gray-500 leading-relaxed">
                      J&apos;accepte que mes données personnelles soient traitées par DIMEXOI dans le cadre de ma demande de devis et d&apos;être contacté(e) par email, conformément à la{' '}
                      <Link href="/confidentialite" className="text-teak-brown underline hover:text-dark-olive transition-colors">politique de confidentialité</Link>. *
                    </span>
                  </label>
                  <label className="flex items-start gap-3 cursor-pointer">
                    <input type="checkbox" checked={consentRgpdSms} onChange={(e) => setConsentRgpdSms(e.target.checked)} className="mt-0.5 w-4 h-4 border-gray-300 text-teak-brown focus:ring-teak-brown rounded-sm" />
                    <span className="text-xs text-gray-500 leading-relaxed">
                      J&apos;accepte d&apos;être contacté(e) par SMS pour le suivi de ma demande.
                    </span>
                  </label>
                </div>
              </div>

              {error && (
                <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 text-sm">
                  {error}
                </div>
              )}

              {success && (
                <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 text-sm">
                  Merci ! Votre demande de devis a été envoyée. Nous vous recontacterons très bientôt.
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
              Préférez le contact direct ?
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
