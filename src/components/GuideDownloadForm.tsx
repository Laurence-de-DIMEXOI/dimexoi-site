'use client';

import { useState } from 'react';
import GuideMockup from './GuideMockup';
import { trackGuideDownload } from '@/src/lib/tracking';
import CalendlyWidget from './CalendlyWidget';

interface GuideDownloadFormProps {
  variant?: 'compact' | 'full' | 'banner';
  source?: string;
  className?: string;
}

export default function GuideDownloadForm({
  variant = 'compact',
  source = 'blog_sdb',
  className = '',
}: GuideDownloadFormProps) {
  const [prenom, setPrenom] = useState('');
  const [email, setEmail] = useState('');
  const [telephone, setTelephone] = useState('');
  const [piece, setPiece] = useState('');
  const [showroom, setShowroom] = useState('');
  const [consentRGPD, setConsentRGPD] = useState(false);
  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);
  const [downloadUrl, setDownloadUrl] = useState('');
  const [error, setError] = useState('');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!consentRGPD) {
      setError('Veuillez accepter les communications DIMEXOI pour recevoir le guide.');
      return;
    }
    setLoading(true);
    setError('');

    try {
      const res = await fetch('/api/guide-download', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ prenom, email, telephone, piece, showroom, consentRGPD, source }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Erreur serveur');
      setDownloadUrl(data.downloadUrl);
      setSuccess(true);

      // Tracking complet : Meta Pixel Lead + GTM + Google Ads conversion
      trackGuideDownload({
        guideName: 'salle_de_bain_teck',
        showroom: showroom || undefined,
        piece: piece || undefined,
        source,
      });
    } catch {
      setError('Une erreur est survenue. Réessayez ou contactez-nous directement.');
    } finally {
      setLoading(false);
    }
  }

  if (success) {
    return (
      <div className={`rounded-2xl p-6 text-center ${className}`} style={{ background: '#f0faf8', border: '1px solid #0E6973' }}>
        <div className="text-4xl mb-3">✓</div>
        <h3 className="text-lg font-bold mb-1" style={{ color: '#0E6973' }}>Votre guide est en route !</h3>
        <p className="text-gray-600 text-sm mb-4">
          Merci {prenom} ! Consultez votre boîte email dans les prochaines minutes.<br />
          En attendant, téléchargez-le directement :
        </p>
        <a
          href={downloadUrl}
          download
          onClick={() => {
            if (typeof window !== 'undefined' && typeof window.gtag === 'function') {
              window.gtag('event', 'guide_sdb_pdf_click', { source });
            }
          }}
          className="inline-flex items-center gap-2 text-white font-semibold px-6 py-3 rounded-xl transition-opacity hover:opacity-90"
          style={{ background: '#0E6973' }}
        >
          <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
          </svg>
          Télécharger le guide PDF
        </a>
        <p className="mt-4">
          <a
            href="/catalogue?category=salle-de-bains"
            className="text-sm font-medium hover:underline"
            style={{ color: '#0E6973' }}
          >
            Découvrir notre collection salle de bain &rarr;
          </a>
        </p>

        {/* CTA Calendly post-soumission */}
        <div className="mt-6 pt-6 border-t border-gray-200">
          <p className="text-gray-700 text-sm font-medium mb-3">Un projet salle de bain sur mesure ?</p>
          <p className="text-gray-500 text-xs mb-3">R&eacute;servez un cr&eacute;neau avec notre dessinateur 3D pour concevoir votre meuble.</p>
          <CalendlyWidget
            mode="popup"
            pageSource="guide_sdb"
            buttonText="RDV dessinateur 3D gratuit"
            buttonClassName="inline-flex items-center gap-2 py-2.5 px-5 bg-teak-brown text-white text-sm font-semibold rounded-xl transition-opacity hover:opacity-90"
          />
        </div>
      </div>
    );
  }

  if (variant === 'banner') {
    return (
      <form onSubmit={handleSubmit} className={`${className}`}>
        <div className="flex flex-col sm:flex-row gap-3 items-start sm:items-end">
          <input
            type="text"
            placeholder="Votre prénom"
            value={prenom}
            onChange={e => setPrenom(e.target.value)}
            required
            className="flex-1 border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent"
            style={{ '--tw-ring-color': '#0E6973' } as React.CSSProperties}
          />
          <input
            type="email"
            placeholder="Votre adresse email"
            value={email}
            onChange={e => setEmail(e.target.value)}
            required
            className="flex-1 border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent"
          />
          <button
            type="submit"
            disabled={loading}
            className="whitespace-nowrap text-white font-semibold px-5 py-3 rounded-xl text-sm transition-opacity hover:opacity-90 disabled:opacity-60"
            style={{ background: '#0E6973' }}
          >
            {loading ? 'Envoi...' : 'Recevoir le guide'}
          </button>
        </div>
        <label className="flex items-start gap-2 mt-3 cursor-pointer">
          <input
            type="checkbox"
            checked={consentRGPD}
            onChange={e => setConsentRGPD(e.target.checked)}
            className="mt-0.5 accent-teal-700"
          />
          <span className="text-xs text-gray-500">J&apos;accepte de recevoir des communications de DIMEXOI</span>
        </label>
        {error && <p className="text-red-500 text-xs mt-2">{error}</p>}
      </form>
    );
  }

  return (
    <form onSubmit={handleSubmit} className={`space-y-4 ${className}`}>
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Prénom *</label>
          <input
            type="text"
            placeholder="Votre prénom"
            value={prenom}
            onChange={e => setPrenom(e.target.value)}
            required
            className="w-full border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent"
          />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Email *</label>
          <input
            type="email"
            placeholder="Votre adresse email"
            value={email}
            onChange={e => setEmail(e.target.value)}
            required
            className="w-full border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent"
          />
        </div>
      </div>

      {variant === 'full' && (
        <>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Téléphone</label>
            <input
              type="tel"
              placeholder="06 92..."
              value={telephone}
              onChange={e => setTelephone(e.target.value)}
              className="w-full border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Quelle pièce vous intéresse ?</label>
            <select
              value={piece}
              onChange={e => setPiece(e.target.value)}
              className="w-full border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent bg-white"
            >
              <option value="">Sélectionnez...</option>
              <option value="Salle de bain">Salle de bain</option>
              <option value="Chambre">Chambre</option>
              <option value="Salon">Salon</option>
              <option value="Cuisine">Cuisine</option>
              <option value="Autre">Autre</option>
            </select>
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Votre showroom préféré</label>
            <select
              value={showroom}
              onChange={e => setShowroom(e.target.value)}
              className="w-full border border-gray-200 rounded-xl px-4 py-3 text-sm focus:outline-none focus:ring-2 focus:border-transparent bg-white"
            >
              <option value="">Sélectionnez...</option>
              <option value="SUD">Saint-Pierre (Sud)</option>
              <option value="NORD">Saint-Denis (Nord)</option>
            </select>
          </div>
        </>
      )}

      <label className="flex items-start gap-3 cursor-pointer">
        <input
          type="checkbox"
          checked={consentRGPD}
          onChange={e => setConsentRGPD(e.target.checked)}
          className="mt-0.5 accent-teal-700 w-4 h-4 flex-shrink-0"
        />
        <span className="text-xs text-gray-500 leading-relaxed">
          J&apos;accepte de recevoir des communications de DIMEXOI (conseils, offres, actualités). Désinscription possible à tout moment.
        </span>
      </label>

      {error && <p className="text-red-500 text-sm">{error}</p>}

      <button
        type="submit"
        disabled={loading}
        className="w-full text-white font-semibold px-6 py-3.5 rounded-xl transition-opacity hover:opacity-90 disabled:opacity-60 flex items-center justify-center gap-2"
        style={{ background: '#0E6973' }}
      >
        {loading ? (
          <>
            <svg className="animate-spin w-4 h-4" fill="none" viewBox="0 0 24 24">
              <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" />
              <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
            </svg>
            Envoi en cours...
          </>
        ) : (
          <>
            <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 10v6m0 0l-3-3m3 3l3-3M3 17V7a2 2 0 012-2h6l2 2h6a2 2 0 012 2v8a2 2 0 01-2 2H5a2 2 0 01-2-2z" />
            </svg>
            Recevoir le guide gratuit
          </>
        )}
      </button>
    </form>
  );
}

// Bloc complet avec mockup (pour intégration dans article)
export function GuideDownloadBlock({
  source = 'blog_sdb',
  variant = 'compact',
  title = 'Téléchargez le guide complet',
  subtitle = '12 conseils en PDF, gratuit et sans engagement',
}: {
  source?: string;
  variant?: 'compact' | 'full';
  title?: string;
  subtitle?: string;
}) {
  return (
    <div
      className="rounded-3xl overflow-hidden my-10"
      style={{ background: 'linear-gradient(135deg, #faf7f2 0%, #f0faf8 100%)', border: '1px solid rgba(14,105,115,0.15)' }}
    >
      <div className="grid grid-cols-1 md:grid-cols-2 gap-0">
        {/* Côté mockup */}
        <div
          className="flex items-center justify-center p-8 md:p-12"
          style={{ background: 'linear-gradient(135deg, #1a3a3e 0%, #0E6973 100%)' }}
        >
          <GuideMockup className="w-full max-w-[240px]" />
        </div>

        {/* Côté formulaire */}
        <div className="p-8 md:p-10 flex flex-col justify-center">
          <div className="inline-flex items-center gap-2 text-xs font-semibold uppercase tracking-wider mb-3 px-3 py-1 rounded-full w-fit" style={{ background: 'rgba(14,105,115,0.1)', color: '#0E6973' }}>
            <svg className="w-3.5 h-3.5" fill="currentColor" viewBox="0 0 20 20">
              <path d="M9 2a1 1 0 000 2h2a1 1 0 100-2H9z" />
              <path fillRule="evenodd" d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm3 4a1 1 0 000 2h.01a1 1 0 100-2H7zm3 0a1 1 0 000 2h3a1 1 0 100-2h-3zm-3 4a1 1 0 100 2h.01a1 1 0 100-2H7zm3 0a1 1 0 100 2h3a1 1 0 000-2h-3z" clipRule="evenodd" />
            </svg>
            Guide PDF gratuit
          </div>
          <h3 className="text-xl md:text-2xl font-bold text-gray-900 mb-1" style={{ fontFamily: 'var(--font-playfair, serif)' }}>
            {title}
          </h3>
          <p className="text-gray-500 text-sm mb-6">{subtitle}</p>
          <GuideDownloadForm variant={variant} source={source} />
        </div>
      </div>
    </div>
  );
}
