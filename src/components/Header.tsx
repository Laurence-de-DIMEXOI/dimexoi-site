'use client';

import Link from 'next/link';
import { useState, useEffect } from 'react';

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setScrolled(window.scrollY > 20);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  useEffect(() => {
    if (isOpen) {
      document.body.style.overflow = 'hidden';
    } else {
      document.body.style.overflow = '';
    }
    return () => { document.body.style.overflow = ''; };
  }, [isOpen]);

  return (
    <>
      {/* Top Bar */}
      <div className="bg-dark-charcoal text-gray-300 text-xs hidden md:block">
        <div className="container mx-auto py-2 flex justify-between items-center">
          <div className="flex items-center gap-6">
            <a href="tel:+262262350679" className="hover:text-off-white transition-colors flex items-center gap-1.5">
              <svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" /></svg>
              0262 35 06 79
            </a>
            <a href="mailto:contact@dimexoi.fr" className="hover:text-off-white transition-colors flex items-center gap-1.5">
              <svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /></svg>
              contact@dimexoi.fr
            </a>
          </div>
          <div className="flex items-center gap-6">
            <span className="flex items-center gap-1.5">
              <svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
              Mar - Sam : 9h - 17h
            </span>
            <span className="text-teak-brown font-medium">2 Showrooms &middot; La Reunion</span>
          </div>
        </div>
      </div>

      {/* Main Navigation */}
      <header className={`sticky top-0 z-50 bg-off-white transition-all duration-300 ${scrolled ? 'shadow-nav' : 'border-b border-warm-beige'}`}>
        <div className="container mx-auto">
          <div className="flex items-center justify-between h-20">
            {/* Logo */}
            <Link href="/" className="flex items-center group">
              <span className="text-2xl font-serif font-bold text-dark-olive border-2 border-dark-olive px-3 py-1 tracking-wide group-hover:bg-dark-olive group-hover:text-off-white transition-all duration-300">
                DIMEXOI
              </span>
            </Link>

            {/* Desktop Navigation */}
            <nav className="hidden lg:flex items-center gap-10">
              {[
                { href: '/catalogue', label: 'Catalogue' },
                { href: '/collections', label: 'Collections' },
                { href: '/a-propos', label: 'Notre histoire' },
                { href: '/contact', label: 'Contact' },
              ].map((link) => (
                <Link
                  key={link.href}
                  href={link.href}
                  className="text-dark-charcoal hover:text-dark-olive font-medium text-sm uppercase tracking-wider transition-colors relative after:absolute after:bottom-0 after:left-0 after:w-0 after:h-0.5 after:bg-teak-brown after:transition-all after:duration-300 hover:after:w-full py-2"
                >
                  {link.label}
                </Link>
              ))}
            </nav>

            {/* CTA + Mobile Toggle */}
            <div className="flex items-center gap-4">
              <Link href="/devis" className="hidden md:inline-flex btn-primary">
                Demander un devis
              </Link>

              <button
                className="lg:hidden w-10 h-10 flex items-center justify-center text-dark-olive"
                onClick={() => setIsOpen(!isOpen)}
                aria-label="Menu"
              >
                {isOpen ? (
                  <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" /></svg>
                ) : (
                  <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" /></svg>
                )}
              </button>
            </div>
          </div>
        </div>
      </header>

      {/* Mobile Menu Slide-in */}
      {isOpen && (
        <div className="fixed inset-0 z-[60] lg:hidden">
          <div className="mobile-menu-overlay absolute inset-0" onClick={() => setIsOpen(false)} />
          <div className="absolute right-0 top-0 h-full w-80 max-w-[85vw] bg-off-white shadow-2xl animate-slide-in-right">
            <div className="flex items-center justify-between p-6 border-b border-warm-beige">
              <span className="font-serif font-bold text-lg text-dark-olive">Menu</span>
              <button onClick={() => setIsOpen(false)} className="text-dark-charcoal">
                <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>
            <nav className="p-6">
              <div className="space-y-1">
                {[
                  { href: '/catalogue', label: 'Catalogue' },
                  { href: '/collections', label: 'Collections' },
                  { href: '/a-propos', label: 'Notre histoire' },
                  { href: '/contact', label: 'Contact' },
                ].map((link) => (
                  <Link key={link.href} href={link.href} onClick={() => setIsOpen(false)} className="block py-3 px-4 text-dark-charcoal hover:text-dark-olive hover:bg-warm-beige font-medium text-sm uppercase tracking-wider transition-all">
                    {link.label}
                  </Link>
                ))}
              </div>
              <div className="mt-8 pt-6 border-t border-warm-beige">
                <Link href="/devis" onClick={() => setIsOpen(false)} className="block text-center btn-primary w-full">
                  Demander un devis
                </Link>
              </div>
              <div className="mt-8 pt-6 border-t border-warm-beige space-y-3 text-sm text-gray-600">
                <a href="tel:+262262350679" className="flex items-center gap-2 hover:text-dark-olive">
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" /></svg>
                  0262 35 06 79
                </a>
                <a href="mailto:contact@dimexoi.fr" className="flex items-center gap-2 hover:text-dark-olive">
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /></svg>
                  contact@dimexoi.fr
                </a>
              </div>
            </nav>
          </div>
        </div>
      )}
    </>
  );
}
