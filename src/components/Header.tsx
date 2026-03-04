'use client';

import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { useState, useEffect, useRef } from 'react';
import { useDevisCart } from './DevisCartProvider';

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const [scrolled, setScrolled] = useState(false);
  const { itemCount, toggleCart } = useDevisCart();
  const router = useRouter();
  const searchInputRef = useRef<HTMLInputElement>(null);

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

  useEffect(() => {
    if (searchOpen && searchInputRef.current) {
      searchInputRef.current.focus();
    }
  }, [searchOpen]);

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    if (searchQuery.trim()) {
      router.push(`/catalogue?search=${encodeURIComponent(searchQuery.trim())}`);
      setSearchQuery('');
      setSearchOpen(false);
      setIsOpen(false);
    }
  };

  const navLinks = [
    { href: '/catalogue', label: 'Catalogue' },
    { href: '/collections', label: 'Collections' },
    { href: '/a-propos', label: 'Notre histoire' },
    { href: '/contact', label: 'Contact' },
  ];

  return (
    <>
      {/* Top Bar - Desktop only */}
      <div className="bg-dark-charcoal text-gray-300 text-xs hidden md:block">
        <div className="container mx-auto py-3 px-6 flex justify-between items-center">
          <div className="flex items-center gap-8">
            <a href="tel:+262262350679" className="hover:text-off-white transition-colors flex items-center gap-2">
              <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" /></svg>
              0262 35 06 79
            </a>
            <a href="mailto:contact@dimexoi.fr" className="hover:text-off-white transition-colors flex items-center gap-2">
              <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /></svg>
              contact@dimexoi.fr
            </a>
          </div>
          <div className="flex items-center gap-8">
            <span className="flex items-center gap-2">
              <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
              Mar - Sam : 9h - 17h
            </span>
            <span className="text-teak-brown font-medium">2 Showrooms &middot; La R&eacute;union</span>
          </div>
        </div>
      </div>

      {/* Main Navigation */}
      <header className={`sticky top-0 z-50 bg-off-white transition-all duration-300 ${scrolled ? 'shadow-nav' : 'border-b border-warm-beige'}`}>
        <div className="container mx-auto px-4 md:px-6">
          <div className="flex items-center justify-between h-16 md:h-20">
            {/* Left: Hamburger (mobile) */}
            <div className="flex items-center gap-2 lg:hidden">
              <button
                className="w-10 h-10 flex flex-col items-center justify-center text-dark-olive"
                onClick={() => setIsOpen(!isOpen)}
                aria-label="Menu"
              >
                {isOpen ? (
                  <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" /></svg>
                ) : (
                  <>
                    <span className="block w-5 h-0.5 bg-dark-olive mb-1"></span>
                    <span className="block w-5 h-0.5 bg-dark-olive mb-1"></span>
                    <span className="block w-5 h-0.5 bg-dark-olive"></span>
                  </>
                )}
                <span className="text-[9px] font-semibold uppercase tracking-wider mt-0.5">Menu</span>
              </button>
            </div>

            {/* Center: Logo */}
            <Link href="/" className="flex items-center gap-3 group absolute left-1/2 -translate-x-1/2 lg:static lg:translate-x-0">
              <span className="text-xl md:text-2xl font-serif font-bold text-dark-olive border-2 border-dark-olive px-2.5 py-0.5 md:px-3 md:py-1 tracking-wide group-hover:bg-dark-olive group-hover:text-off-white transition-all duration-300">
                DIMEXOI
              </span>
              <div className="hidden sm:flex flex-col items-start leading-none">
                <span className="text-[10px] font-bold text-dark-olive uppercase tracking-[0.2em]">BOIS.d&apos;Orient</span>
                <span className="text-[8px] text-gray-400 uppercase tracking-[0.15em]">by DIMEXOI</span>
              </div>
            </Link>

            {/* Desktop Navigation */}
            <nav className="hidden lg:flex items-center gap-10">
              {navLinks.map((link) => (
                <Link
                  key={link.href}
                  href={link.href}
                  className="text-dark-charcoal hover:text-dark-olive font-medium text-sm uppercase tracking-wider transition-colors relative after:absolute after:bottom-0 after:left-0 after:w-0 after:h-0.5 after:bg-teak-brown after:transition-all after:duration-300 hover:after:w-full py-2"
                >
                  {link.label}
                </Link>
              ))}
            </nav>

            {/* Right: Icons */}
            <div className="flex items-center gap-1 md:gap-3">
              {/* Search Icon */}
              <button
                onClick={() => setSearchOpen(!searchOpen)}
                className="w-10 h-10 flex items-center justify-center text-dark-olive hover:text-teak-brown transition-colors"
                aria-label="Rechercher"
              >
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
              </button>

              {/* Devis Cart Icon */}
              <button
                onClick={toggleCart}
                className="relative w-10 h-10 flex items-center justify-center text-dark-olive hover:text-teak-brown transition-colors"
                aria-label="Mon devis"
              >
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4" />
                </svg>
                {itemCount > 0 && (
                  <span className="absolute -top-0.5 -right-0.5 bg-teak-brown text-off-white text-[10px] font-bold w-5 h-5 rounded-full flex items-center justify-center">
                    {itemCount > 9 ? '9+' : itemCount}
                  </span>
                )}
              </button>

              {/* Desktop CTA */}
              <Link href="/devis" className="hidden md:inline-flex btn-primary text-sm ml-2">
                Demander un devis
              </Link>
            </div>
          </div>
        </div>

        {/* Search Bar - slides down */}
        {searchOpen && (
          <div className="border-t border-gray-100 bg-off-white">
            <div className="container mx-auto px-4 md:px-6 py-3">
              <form onSubmit={handleSearch} className="relative max-w-2xl mx-auto">
                <svg className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
                <input
                  ref={searchInputRef}
                  type="text"
                  placeholder="Rechercher un produit, une collection..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="w-full pl-12 pr-12 py-3 bg-gray-50 border border-gray-200 text-dark-charcoal text-sm placeholder-gray-400 focus:outline-none focus:border-teak-brown focus:bg-white transition-all rounded-sm"
                />
                <button
                  type="button"
                  onClick={() => { setSearchOpen(false); setSearchQuery(''); }}
                  className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-dark-charcoal"
                >
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" /></svg>
                </button>
              </form>
            </div>
          </div>
        )}
      </header>

      {/* Mobile Menu - Fullscreen overlay */}
      {isOpen && (
        <div className="fixed inset-0 z-[60] lg:hidden">
          {/* Backdrop */}
          <div className="absolute inset-0 bg-black bg-opacity-50" onClick={() => setIsOpen(false)} />

          {/* Slide-in Panel */}
          <div className="absolute left-0 top-0 h-full w-80 max-w-[85vw] bg-off-white shadow-2xl overflow-y-auto" style={{ animation: 'slideInLeft 0.3s ease-out' }}>
            {/* Header */}
            <div className="flex items-center justify-between p-5 border-b border-warm-beige">
              <Link href="/" onClick={() => setIsOpen(false)} className="flex items-center gap-3">
                <span className="text-lg font-serif font-bold text-dark-olive border-2 border-dark-olive px-2 py-0.5 tracking-wide">
                  DIMEXOI
                </span>
                <div className="flex flex-col leading-none">
                  <span className="text-[9px] font-bold text-dark-olive uppercase tracking-[0.15em]">BOIS.d&apos;Orient</span>
                  <span className="text-[7px] text-gray-400 uppercase tracking-[0.1em]">by DIMEXOI</span>
                </div>
              </Link>
              <button onClick={() => setIsOpen(false)} className="w-10 h-10 flex items-center justify-center text-dark-charcoal hover:text-dark-olive">
                <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>

            {/* Mobile Search */}
            <div className="p-5 border-b border-gray-100">
              <form onSubmit={handleSearch} className="relative">
                <svg className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
                <input
                  type="text"
                  placeholder="Rechercher un produit..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="w-full pl-10 pr-4 py-2.5 bg-gray-50 border border-gray-200 text-sm text-dark-charcoal placeholder-gray-400 focus:outline-none focus:border-teak-brown rounded-sm"
                />
              </form>
            </div>

            {/* Navigation Links */}
            <nav className="p-3">
              {navLinks.map((link) => (
                <Link
                  key={link.href}
                  href={link.href}
                  onClick={() => setIsOpen(false)}
                  className="flex items-center justify-between py-4 px-4 text-dark-charcoal hover:text-dark-olive hover:bg-warm-beige font-medium text-sm uppercase tracking-wider transition-all border-b border-gray-50"
                >
                  {link.label}
                  <svg className="w-4 h-4 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" /></svg>
                </Link>
              ))}
            </nav>

            {/* CTA */}
            <div className="px-5 pt-4">
              <Link href="/devis" onClick={() => setIsOpen(false)} className="block text-center btn-primary w-full">
                Demander un devis
              </Link>
            </div>

            {/* Contact Info */}
            <div className="p-5 mt-4 border-t border-warm-beige space-y-4">
              <p className="text-[9px] font-semibold uppercase tracking-widest text-gray-400">Nos showrooms</p>
              <div className="space-y-3 text-sm text-gray-600">
                <a href="tel:+262262350679" className="flex items-center gap-3 hover:text-dark-olive">
                  <svg className="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" /></svg>
                  <div>
                    <span className="block text-dark-olive font-medium">SUD - Saint-Pierre</span>
                    <span>0262 35 06 79</span>
                  </div>
                </a>
                <a href="tel:+262262203030" className="flex items-center gap-3 hover:text-dark-olive">
                  <svg className="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" /></svg>
                  <div>
                    <span className="block text-dark-olive font-medium">NORD - Saint-Denis</span>
                    <span>0262 20 30 30</span>
                  </div>
                </a>
                <a href="mailto:contact@dimexoi.fr" className="flex items-center gap-3 hover:text-dark-olive">
                  <svg className="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /></svg>
                  contact@dimexoi.fr
                </a>
              </div>
              <p className="text-xs text-gray-400 pt-2">Mar - Sam : 9h - 17h</p>
            </div>
          </div>
        </div>
      )}

      {/* Slide-in animation */}
      <style jsx>{`
        @keyframes slideInLeft {
          from { transform: translateX(-100%); }
          to { transform: translateX(0); }
        }
      `}</style>
    </>
  );
}
