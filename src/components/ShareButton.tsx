'use client';

import { useState } from 'react';

interface ShareButtonProps {
  productName: string;
  productSlug: string;
}

export default function ShareButton({ productName, productSlug }: ShareButtonProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [copied, setCopied] = useState(false);

  const url = typeof window !== 'undefined'
    ? `${window.location.origin}/catalogue/${productSlug}`
    : `https://dimexoi.fr/catalogue/${productSlug}`;

  const text = `Regarde ce meuble : ${productName} chez Dimexoi`;

  const handleCopy = async () => {
    try {
      await navigator.clipboard.writeText(url);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      // Fallback
    }
  };

  return (
    <div className="relative">
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="flex items-center gap-2 text-xs text-teak-brown hover:text-russet transition-colors"
        aria-label="Partager ce meuble"
      >
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
          <circle cx="18" cy="5" r="3"/><circle cx="6" cy="12" r="3"/><circle cx="18" cy="19" r="3"/><line x1="8.59" y1="13.51" x2="15.42" y2="17.49"/><line x1="15.41" y1="6.51" x2="8.59" y2="10.49"/>
        </svg>
        Partager ce meuble
      </button>

      {isOpen && (
        <div className="absolute top-8 left-0 bg-white border border-gray-200 rounded-lg shadow-card-hover py-2 z-20 animate-fade-in min-w-[200px]">
          <a
            href={`https://wa.me/?text=${encodeURIComponent(`${text}\n${url}`)}`}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-3 px-4 py-2.5 text-sm text-dark-olive hover:bg-warm-beige/50 transition-colors"
          >
            <span className="text-base">💬</span> WhatsApp
          </a>
          <a
            href={`mailto:?subject=${encodeURIComponent(text)}&body=${encodeURIComponent(`${text}\n\n${url}`)}`}
            className="flex items-center gap-3 px-4 py-2.5 text-sm text-dark-olive hover:bg-warm-beige/50 transition-colors"
          >
            <span className="text-base">✉️</span> Email
          </a>
          <button
            onClick={handleCopy}
            className="flex items-center gap-3 px-4 py-2.5 text-sm text-dark-olive hover:bg-warm-beige/50 transition-colors w-full text-left"
          >
            <span className="text-base">{copied ? '✅' : '🔗'}</span>
            {copied ? 'Lien copié !' : 'Copier le lien'}
          </button>
        </div>
      )}
    </div>
  );
}
