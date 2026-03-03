'use client';

import Link from 'next/link';
import { useState } from 'react';

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <header className="sticky top-0 z-50 bg-off-white border-b border-warm-beige">
      <div className="container mx-auto px-4 py-4">
        <div className="flex items-center justify-between">
          {/* Logo */}
          <Link href="/" className="text-2xl font-serif font-bold text-dark-olive">
            DIMEXOI
          </Link>

          {/* Desktop Navigation */}
          <nav className="hidden md:flex items-center gap-8">
            <Link href="/catalogue" className="text-dark-charcoal hover:text-dark-olive font-medium transition-colors">
              Catalogue
            </Link>
            <Link href="/collections" className="text-dark-charcoal hover:text-dark-olive font-medium transition-colors">
              Collections
            </Link>
            <Link href="/a-propos" className="text-dark-charcoal hover:text-dark-olive font-medium transition-colors">
              À propos
            </Link>
            <Link href="/contact" className="text-dark-charcoal hover:text-dark-olive font-medium transition-colors">
              Contact
            </Link>
          </nav>

          {/* CTA Button */}
          <div className="hidden md:flex gap-4 items-center">
            <Link
              href="/devis"
              className="btn-primary"
            >
              Demander un devis
            </Link>
          </div>

          {/* Mobile Menu Button */}
          <button
            className="md:hidden text-dark-olive"
            onClick={() => setIsOpen(!isOpen)}
          >
            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
            </svg>
          </button>
        </div>

        {/* Mobile Navigation */}
        {isOpen && (
          <nav className="md:hidden mt-4 pb-4 border-t border-warm-beige pt-4">
            <Link href="/catalogue" className="block py-2 text-dark-charcoal hover:text-dark-olive">
              Catalogue
            </Link>
            <Link href="/collections" className="block py-2 text-dark-charcoal hover:text-dark-olive">
              Collections
            </Link>
            <Link href="/a-propos" className="block py-2 text-dark-charcoal hover:text-dark-olive">
              À propos
            </Link>
            <Link href="/contact" className="block py-2 text-dark-charcoal hover:text-dark-olive">
              Contact
            </Link>
            <Link href="/devis" className="block mt-4 btn-primary text-center">
              Demander un devis
            </Link>
          </nav>
        )}
      </div>
    </header>
  );
}
