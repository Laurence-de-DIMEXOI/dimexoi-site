'use client';

import Link from 'next/link';
import { useState } from 'react';

export default function Footer() {
  const [nlEmail, setNlEmail] = useState('');
  const [nlLoading, setNlLoading] = useState(false);
  const [nlSuccess, setNlSuccess] = useState(false);
  const [nlError, setNlError] = useState('');

  const handleNewsletter = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!nlEmail) return;
    setNlLoading(true);
    setNlError('');

    try {
      const response = await fetch('https://kokpit-kappa.vercel.app/api/webhooks/newsletter', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: nlEmail, nom: '', prenom: '', source: 'footer-site' }),
      });

      const result = await response.json().catch(() => null);
      if (!result?.success) {
        throw new Error('Erreur');
      }

      setNlSuccess(true);
      setNlEmail('');
      setTimeout(() => setNlSuccess(false), 5000);
    } catch {
      setNlError('Une erreur s\'est produite. Réessayez.');
      setTimeout(() => setNlError(''), 5000);
    } finally {
      setNlLoading(false);
    }
  };

  return (
    <footer className="bg-dark-olive text-gray-400">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 sm:py-20">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12 mb-14">
          {/* Brand */}
          <div>
            <Link href="/" className="inline-block mb-4">
              <span className="text-xl font-serif font-bold text-off-white border-2 border-off-white px-3 py-1 tracking-wide">
                DIMEXOI
              </span>
            </Link>
            <p className="text-sm leading-relaxed mb-4">
              Mobilier en teck d&apos;exception depuis 1995. Savoir-faire artisanal, 100% teck massif Tectona Grandis.
            </p>
            <p className="text-xs text-gray-500 uppercase tracking-widest mb-6 font-medium">
              BOIS.d&apos;Orient <span className="text-gray-600">by</span> DIMEXOI
            </p>
            <div className="flex gap-3">
              <a href="https://www.facebook.com/dimexoi" target="_blank" rel="noopener noreferrer" className="w-9 h-9 flex items-center justify-center border border-gray-700 text-gray-500 hover:text-off-white hover:border-teak-brown transition-all" aria-label="Facebook">
                <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M18.77,7.46H14.5v-1.9c0-.9.6-1.1,1-1.1h3V.5h-4.33C10.24.5,9.5,3.44,9.5,5.32v2.15h-3v4h3v12h5v-12h3.85l.42-4Z"/></svg>
              </a>
              <a href="https://www.instagram.com/dimexoi" target="_blank" rel="noopener noreferrer" className="w-9 h-9 flex items-center justify-center border border-gray-700 text-gray-500 hover:text-off-white hover:border-teak-brown transition-all" aria-label="Instagram">
                <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 24 24"><path d="M12,2.16c3.2,0,3.58.01,4.85.07,3.25.15,4.77,1.69,4.92,4.92.06,1.27.07,1.65.07,4.85s-.01,3.58-.07,4.85c-.15,3.23-1.66,4.77-4.92,4.92-1.27.06-1.65.07-4.85.07s-3.58-.01-4.85-.07c-3.26-.15-4.77-1.7-4.92-4.92-.06-1.27-.07-1.65-.07-4.85s.01-3.58.07-4.85C2.38,3.92,3.9,2.38,7.15,2.23,8.42,2.17,8.8,2.16,12,2.16ZM12,0C8.74,0,8.33.01,7.05.07,2.7.27.27,2.7.07,7.05.01,8.33,0,8.74,0,12s.01,3.67.07,4.95c.2,4.36,2.62,6.78,6.98,6.98C8.33,23.99,8.74,24,12,24s3.67-.01,4.95-.07c4.35-.2,6.78-2.62,6.98-6.98.06-1.28.07-1.69.07-4.95s-.01-3.67-.07-4.95c-.2-4.35-2.62-6.78-6.98-6.98C15.67.01,15.26,0,12,0Zm0,5.84A6.16,6.16,0,1,0,18.16,12,6.16,6.16,0,0,0,12,5.84ZM12,16a4,4,0,1,1,4-4A4,4,0,0,1,12,16ZM18.41,4.15a1.44,1.44,0,1,0,1.44,1.44A1.44,1.44,0,0,0,18.41,4.15Z"/></svg>
              </a>
            </div>
          </div>

          {/* Showroom Sud */}
          <div>
            <h4 className="text-off-white font-sans font-semibold text-xs uppercase tracking-widest mb-6">Showroom SUD</h4>
            <div className="space-y-2 text-sm">
              <p>8 rue Benjamin Hoareau</p>
              <p>ZI n°3, 97410 Saint-Pierre</p>
              <p className="pt-2"><a href="tel:+262262350679" className="text-teak-brown hover:text-off-white transition-colors font-medium">0262 35 06 79</a></p>
              <p><a href="mailto:contact@dimexoi.fr" className="hover:text-off-white transition-colors">contact@dimexoi.fr</a></p>
              <p className="text-xs text-gray-600 pt-2">Mar - Sam : 9h - 17h</p>
            </div>
          </div>

          {/* Showroom Nord */}
          <div>
            <h4 className="text-off-white font-sans font-semibold text-xs uppercase tracking-widest mb-6">Showroom NORD</h4>
            <div className="space-y-2 text-sm">
              <p>43 rue Tourette</p>
              <p>97400 Saint-Denis</p>
              <p className="pt-2"><a href="tel:+262262203030" className="text-teak-brown hover:text-off-white transition-colors font-medium">0262 20 30 30</a></p>
              <p><a href="mailto:bernard@dimexoi.fr" className="hover:text-off-white transition-colors">bernard@dimexoi.fr</a></p>
              <p className="text-xs text-gray-600 pt-2">Mar - Sam : 10h-13h &amp; 14h-18h</p>
            </div>
          </div>

          {/* Navigation */}
          <div>
            <h4 className="text-off-white font-sans font-semibold text-xs uppercase tracking-widest mb-6">Navigation</h4>
            <ul className="space-y-3 text-sm">
              {[
                { href: '/catalogue', label: 'Catalogue' },
                { href: '/collections', label: 'Collections' },
                { href: '/devis', label: 'Demander un devis' },
                { href: '/a-propos', label: 'Notre histoire' },
                { href: '/contact', label: 'Contact' },
              ].map((link) => (
                <li key={link.href}>
                  <Link href={link.href} className="hover:text-teak-brown transition-colors">{link.label}</Link>
                </li>
              ))}
            </ul>
          </div>
        </div>

        {/* Newsletter */}
        <div className="border-t border-gray-800 pt-12 mb-12">
          <div className="max-w-md">
            <h4 className="text-off-white font-serif text-lg font-bold mb-2">Restez informé</h4>
            <p className="text-sm mb-4">Recevez nos dernières collections et actualités</p>
            {nlSuccess ? (
              <div className="bg-green-900 bg-opacity-30 border border-green-700 text-green-300 px-4 py-3 text-sm">
                Merci ! Vous êtes inscrit(e) à notre newsletter.
              </div>
            ) : (
              <form onSubmit={handleNewsletter} className="flex">
                <input
                  type="email"
                  placeholder="Votre email"
                  value={nlEmail}
                  onChange={(e) => setNlEmail(e.target.value)}
                  className="flex-1 px-4 py-3 bg-white bg-opacity-5 border border-gray-700 text-off-white text-sm placeholder-gray-600 focus:outline-none focus:border-teak-brown transition-colors"
                  required
                />
                <button
                  type="submit"
                  disabled={nlLoading}
                  className="bg-teak-brown text-off-white px-6 py-3 font-semibold text-sm uppercase tracking-wider hover:bg-teak-light transition-colors disabled:opacity-50"
                >
                  {nlLoading ? '...' : 'OK'}
                </button>
              </form>
            )}
            {nlError && (
              <p className="text-red-400 text-xs mt-2">{nlError}</p>
            )}
          </div>
        </div>

        {/* Bottom */}
        <div className="border-t border-gray-800 pt-8 flex flex-col md:flex-row justify-between items-center text-gray-600 text-xs gap-4">
          <p>&copy; {new Date().getFullYear()} DIMEXOI. Tous droits réservés.</p>
          <div className="flex gap-6">
            <Link href="/mentions-legales" className="hover:text-teak-brown transition-colors">Mentions légales</Link>
            <Link href="/confidentialite" className="hover:text-teak-brown transition-colors">Confidentialité</Link>
            <Link href="/cgu" className="hover:text-teak-brown transition-colors">CGU</Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
