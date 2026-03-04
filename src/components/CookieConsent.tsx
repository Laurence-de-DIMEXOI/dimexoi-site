'use client';

import { useState, useEffect } from 'react';

export default function CookieConsent() {
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const consent = localStorage.getItem('dimexoi-cookie-consent');
    if (!consent) {
      const timer = setTimeout(() => setVisible(true), 1500);
      return () => clearTimeout(timer);
    }
    return undefined;
  }, []);

  const handleAccept = () => {
    localStorage.setItem('dimexoi-cookie-consent', 'accepted');
    setVisible(false);
  };

  const handleDecline = () => {
    localStorage.setItem('dimexoi-cookie-consent', 'declined');
    setVisible(false);
  };

  if (!visible) return null;

  return (
    <div className="fixed bottom-0 left-0 right-0 z-[70] bg-dark-charcoal text-off-white p-4 md:p-6 shadow-2xl">
      <div className="container mx-auto flex flex-col md:flex-row items-center justify-between gap-4">
        <div className="flex-1">
          <p className="text-sm leading-relaxed">
            Nous utilisons des cookies pour am&eacute;liorer votre exp&eacute;rience sur notre site et analyser le trafic.
            En poursuivant votre navigation, vous acceptez notre{' '}
            <a href="/confidentialite" className="text-teak-light underline hover:text-off-white transition-colors">
              politique de confidentialit&eacute;
            </a>.
          </p>
        </div>
        <div className="flex gap-3 flex-shrink-0">
          <button
            onClick={handleDecline}
            className="px-5 py-2 text-xs font-semibold uppercase tracking-wider border border-gray-500 text-gray-300 hover:text-off-white hover:border-off-white transition-all"
          >
            Refuser
          </button>
          <button
            onClick={handleAccept}
            className="px-5 py-2 text-xs font-semibold uppercase tracking-wider bg-teak-brown text-off-white hover:bg-teak-light transition-all"
          >
            Accepter
          </button>
        </div>
      </div>
    </div>
  );
}
