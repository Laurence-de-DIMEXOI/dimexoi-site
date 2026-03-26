'use client';

import Image from 'next/image';
import Link from 'next/link';
import ProductCard from '@/src/components/ProductCard';
import { products } from '@/src/lib/products';
import { useState, useEffect } from 'react';

const categoryImages: Record<string, string> = {
  'Chambre': 'https://lh3.googleusercontent.com/d/1kQwn1zIMOqDjqHLMG8weJPyQvKlIFr3K=w800',
  'Salon': 'https://lh3.googleusercontent.com/d/1E7-BN2ad8z0tB6nED_MwOdOQ1xIOGIQr=w800',
  'Salle à manger': 'https://lh3.googleusercontent.com/d/1hyKRB2FsLBUe-xJ5_uOfMNab1V4Ghb7n=w800',
  'Entrée': 'https://lh3.googleusercontent.com/d/1_XSN7w57OQntEfJ7H38eE6o8Ely2wB5s=w800',
  'Salle de bains': 'https://lh3.googleusercontent.com/d/1UWP-2Y6I5rDyks9MlrbmjQ-DQpQ7Ue7n=w800',
  'Extérieur': 'https://lh3.googleusercontent.com/d/1G-8Pcws2HaeM_Gx_fMUsGtGspkVmMKos=w800',
  'Sur-mesure': 'https://lh3.googleusercontent.com/d/1_dOM2NzRQ4HtK0ae_jhBVb7QQ2lKOpDy=w800',
};

function shuffleArray<T>(array: T[]): T[] {
  const shuffled = [...array];
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  return shuffled;
}

export default function Home() {
  const [featuredProducts, setFeaturedProducts] = useState(products.slice(0, 8));

  useEffect(() => {
    setFeaturedProducts(shuffleArray(products).slice(0, 8));
  }, []);

  const categories = Array.from(
    new Map(products.map(p => [p.category, p.category])).values()
  ).map(cat => ({
    name: cat,
    count: products.filter(p => p.category === cat).length,
    image: categoryImages[cat] || 'https://lh3.googleusercontent.com/d/1E7-BN2ad8z0tB6nED_MwOdOQ1xIOGIQr=w800',
  }));

  return (
    <>
      {/* Hero Section */}
      <section className="relative h-[85vh] min-h-[600px] bg-dark-charcoal overflow-hidden flex items-center">
        <Image
          src="/images/hero-chambre.jpg"
          alt="Mobilier en teck DIMEXOI"
          fill
          sizes="100vw"
          className="object-cover"
          priority
        />
        <div className="hero-overlay absolute inset-0"></div>
        <div className="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="max-w-2xl">
            <p className="text-gray-300 font-semibold text-sm uppercase tracking-widest mb-4">
              Depuis 1995 à La Réunion
            </p>
            <h1 className="text-5xl md:text-6xl lg:text-7xl font-serif font-bold text-off-white mb-6 leading-tight">
              Mobilier en <em className="not-italic">teck</em><br />
              <span className="text-off-white italic">d&apos;exception</span>
            </h1>
            <p className="text-lg text-gray-200 mb-10 max-w-lg leading-relaxed">
              Découvrez notre collection de meubles <em className="italic">artisanaux</em> en teck massif.
              Qualité, durabilité et élégance <em className="italic">intemporelle</em>.
            </p>
            <div className="flex flex-col sm:flex-row gap-4">
              <Link href="/catalogue" className="btn-primary">
                Découvrir le catalogue
              </Link>
              <Link href="/devis" className="btn-secondary">
                Demander un devis
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Trust Bar */}
      <section className="bg-dark-olive text-off-white py-10">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
            {[
              { value: '31 ans', label: 'de savoir-faire', icon: 'M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z' },
              { value: '100% Teck', label: 'massif certifié', icon: 'M5 13l4 4L19 7' },
              { value: 'Sur-mesure', label: 'disponible', icon: 'M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z' },
              { value: '2 Showrooms', label: 'à La Réunion', icon: 'M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z' },
            ].map((item, idx) => (
              <div key={idx} className="flex flex-col items-center">
                <div className="w-10 h-10 flex items-center justify-center rounded-full bg-white bg-opacity-10 mb-3">
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d={item.icon} />
                  </svg>
                </div>
                <p className="font-serif font-bold text-lg">{item.value}</p>
                <p className="text-xs opacity-80 tracking-wider uppercase">{item.label}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Categories Section  - Mosaic Layout */}
      <section className="py-20 bg-off-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-14">
            <h2 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive section-heading">
              Nos <em className="italic">univers</em>
            </h2>
            <p className="text-gray-600 mt-8">
              Trouvez le meuble parfait pour chaque pièce
            </p>
          </div>

          {/* Row 1: 2 large cards */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
            {categories.slice(0, 2).map((cat) => (
              <Link key={cat.name} href={`/catalogue?category=${encodeURIComponent(cat.name)}`}>
                <div className="relative h-72 md:h-96 cursor-pointer group overflow-hidden">
                  <Image src={cat.image} alt={cat.name} fill className="object-cover transition-transform duration-700 group-hover:scale-105" sizes="(max-width: 768px) 100vw, 50vw" unoptimized />
                  <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                  <div className="absolute inset-0 flex flex-col justify-end p-8">
                    <h3 className="font-serif text-3xl font-bold text-off-white mb-1">{cat.name}</h3>
                    <p className="text-sm text-gray-300 tracking-wider">{cat.count} produits</p>
                  </div>
                </div>
              </Link>
            ))}
          </div>

          {/* Row 2: 3 medium cards */}
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-4">
            {categories.slice(2, 5).map((cat) => (
              <Link key={cat.name} href={`/catalogue?category=${encodeURIComponent(cat.name)}`}>
                <div className="relative h-56 md:h-72 cursor-pointer group overflow-hidden">
                  <Image src={cat.image} alt={cat.name} fill className="object-cover transition-transform duration-700 group-hover:scale-105" sizes="(max-width: 768px) 100vw, 33vw" unoptimized />
                  <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                  <div className="absolute inset-0 flex flex-col justify-end p-6">
                    <h3 className="font-serif text-2xl font-bold text-off-white mb-1">{cat.name}</h3>
                    <p className="text-sm text-gray-300 tracking-wider">{cat.count} produits</p>
                  </div>
                </div>
              </Link>
            ))}
          </div>

          {/* Row 3: remaining cards */}
          {categories.length > 5 && (
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {categories.slice(5).map((cat) => (
                <Link key={cat.name} href={`/catalogue?category=${encodeURIComponent(cat.name)}`}>
                  <div className="relative h-56 md:h-72 cursor-pointer group overflow-hidden">
                    <Image src={cat.image} alt={cat.name} fill className="object-cover transition-transform duration-700 group-hover:scale-105" sizes="(max-width: 768px) 100vw, 50vw" unoptimized />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                    <div className="absolute inset-0 flex flex-col justify-end p-6">
                      <h3 className="font-serif text-2xl font-bold text-off-white mb-1">{cat.name}</h3>
                      <p className="text-sm text-gray-300 tracking-wider">{cat.count} produits</p>
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          )}
        </div>
      </section>

      {/* Featured Products */}
      <section className="py-20 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex flex-col md:flex-row md:items-end md:justify-between mb-14">
            <div>
              <h2 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive section-heading-left">
                Sélection de <em className="italic">meubles</em>
              </h2>
              <p className="text-gray-600 mt-8">
                Découvrez nos créations <em className="italic">artisanales</em> en teck massif
              </p>
            </div>
            <Link href="/catalogue" className="mt-6 md:mt-0 btn-outline">
              Voir tout le catalogue
            </Link>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
            {featuredProducts.map((product) => (
              <ProductCard key={product.id} {...product} />
            ))}
          </div>
        </div>
      </section>

      {/* About Section */}
      <section className="py-20 bg-warm-beige">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
            <div className="relative">
              <Image
                src="/images/restaurant-geraniums.jpg"
                alt="Restaurant Les Géraniums - Mobilier DIMEXOI"
                width={600}
                height={500}
                className="w-full h-auto object-cover"
                             />
              <div className="absolute -bottom-4 -right-4 w-full h-full border-2 border-teak-brown -z-10 hidden lg:block"></div>
            </div>
            <div>
              <p className="text-teak-brown font-semibold text-sm uppercase tracking-widest mb-4">Notre histoire</p>
              <h2 className="text-4xl font-serif font-bold text-dark-olive section-heading-left">
                DIMEXOI &amp; <em className="italic">Bois d&apos;Orient</em>
              </h2>
              <p className="text-gray-700 mb-4 leading-relaxed mt-8">
                Depuis 1995, DIMEXOI propose du mobilier en teck massif d&apos;exception à La Réunion. Notre engagement : acheter moins, mais <em className="italic">mieux</em>.
              </p>
              <p className="text-gray-700 mb-8 leading-relaxed">
                Chaque pièce est façonnée à la main par des artisans en Indonésie, héritiers d&apos;un savoir-faire <em className="italic">ancestral</em>. Notre équipe passionnée à La Réunion vous accueille dans nos deux showrooms.
              </p>
              <div className="grid grid-cols-2 gap-8 mb-10">
                {[
                  { value: '31', label: "années d'expertise" },
                  { value: '2', label: 'showrooms à La Réunion' },
                  { value: '4.9/5', label: 'Note sur Meta' },
                  { value: '100%', label: 'Teck massif' },
                ].map((stat, idx) => (
                  <div key={idx}>
                    <p className="text-3xl font-serif font-bold text-teak-brown">{stat.value}</p>
                    <p className="text-sm text-gray-600">{stat.label}</p>
                  </div>
                ))}
              </div>
              <Link href="/a-propos" className="btn-outline">
                En savoir plus
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Club Tectona */}
      <section className="py-20 bg-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex flex-col md:flex-row items-center gap-12 md:gap-16">
            {/* Card flip */}
            <div className="w-full max-w-[380px] flex-shrink-0">
              <div
                className="cursor-pointer"
                style={{ perspective: '1200px', aspectRatio: '460 / 326' }}
                onMouseEnter={(e) => {
                  const inner = e.currentTarget.firstElementChild as HTMLElement;
                  if (inner) inner.style.transform = 'rotateY(180deg)';
                }}
                onMouseLeave={(e) => {
                  const inner = e.currentTarget.firstElementChild as HTMLElement;
                  if (inner) inner.style.transform = 'rotateY(0deg)';
                }}
              >
                <div
                  className="relative w-full h-full"
                  style={{
                    transformStyle: 'preserve-3d',
                    transition: 'transform 0.9s cubic-bezier(0.4, 0.2, 0.2, 1)',
                  }}
                >
                  <div className="absolute inset-0 rounded-2xl overflow-hidden shadow-lg" style={{ backfaceVisibility: 'hidden' }}>
                    <img src="/images/carte-fid/recto.png" alt="Carte Club Tectona" className="w-full h-full object-cover" />
                  </div>
                  <div className="absolute inset-0 rounded-2xl overflow-hidden shadow-lg" style={{ backfaceVisibility: 'hidden', transform: 'rotateY(180deg)' }}>
                    <img src="/images/carte-fid/verso.png" alt="Carte Club Tectona - verso" className="w-full h-full object-cover" />
                  </div>
                </div>
              </div>
            </div>

            {/* Text */}
            <div className="text-center md:text-left">
              <p className="text-teak-brown font-semibold text-sm uppercase tracking-widest mb-4">Programme de fidélité</p>
              <h2 className="text-4xl font-serif font-bold text-dark-olive section-heading-left">
                Club <em className="italic">Tectona</em>
              </h2>
              <p className="text-gray-700 mb-4 leading-relaxed mt-6">
                Cinq niveaux de fidélité inspirés du teck. Des remises exclusives sur les meubles en teck, jusqu&apos;à <strong>25 % à vie</strong>.
              </p>
              <p className="text-gray-500 text-sm mb-8">
                Votre niveau évolue à chaque achat. Automatiquement.
              </p>
              <Link href="/club-grandis" className="btn-outline">
                Découvrir le Club Tectona →
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Showroom CTA */}
      <section className="py-20 bg-dark-olive text-off-white">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-14">
            <h2 className="text-4xl md:text-5xl font-serif font-bold section-heading">
              Venez voir et <em className="italic">toucher</em> nos meubles
            </h2>
            <p className="text-lg opacity-80 mt-8">
              Visitez nos deux showrooms à La Réunion
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mb-12 max-w-4xl mx-auto">
            <div className="bg-white bg-opacity-5 border border-white border-opacity-10 p-8">
              <h3 className="text-2xl font-serif font-bold mb-4">Showroom SUD</h3>
              <p className="opacity-80 mb-2 text-sm">8 rue Benjamin Hoareau</p>
              <p className="opacity-80 mb-4 text-sm">ZI n°3, 97410 Saint-Pierre</p>
              <p className="font-semibold mb-2">
                <a href="tel:+262262350679" className="text-off-white hover:text-gray-300 transition-colors">0262 35 06 79</a>
              </p>
              <p className="text-sm opacity-80 mb-4">
                <a href="mailto:contact@dimexoi.fr" className="hover:text-off-white transition-colors">contact@dimexoi.fr</a>
              </p>
              <p className="text-xs opacity-60 uppercase tracking-wider">Mar - Sam : 9h - 17h</p>
            </div>
            <div className="bg-white bg-opacity-5 border border-white border-opacity-10 p-8">
              <h3 className="text-2xl font-serif font-bold mb-4">Showroom NORD</h3>
              <p className="opacity-80 mb-2 text-sm">43 rue Tourette</p>
              <p className="opacity-80 mb-4 text-sm">97400 Saint-Denis</p>
              <p className="font-semibold mb-2">
                <a href="tel:+262262203030" className="text-off-white hover:text-gray-300 transition-colors">0262 20 30 30</a>
              </p>
              <p className="text-sm opacity-80 mb-4">
                <a href="mailto:bernard@dimexoi.fr" className="hover:text-off-white transition-colors">bernard@dimexoi.fr</a>
              </p>
              <p className="text-xs opacity-60 uppercase tracking-wider">Mar - Sam : 10h-13h &amp; 14h-18h</p>
            </div>
          </div>

          <div className="text-center">
            <Link href="/contact" className="btn-teak">
              Nous contacter
            </Link>
          </div>
        </div>
      </section>

      {/* Newsletter */}
      <section className="py-16 bg-warm-beige">
        <div className="max-w-xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive section-heading">
            Restez informé
          </h2>
          <p className="text-gray-600 mb-8 mt-8">
            Recevez nos dernières collections et actualités
          </p>
          <form className="flex">
            <input
              type="email"
              placeholder="Votre email"
              className="flex-1 px-4 py-3 border border-gray-300 text-dark-charcoal text-sm focus:outline-none focus:border-dark-olive transition-colors"
              required
            />
            <button
              type="submit"
              className="bg-dark-olive text-off-white px-8 py-3 font-semibold text-sm uppercase tracking-wider hover:bg-dark-olive-light transition-colors"
            >
              S&apos;abonner
            </button>
          </form>
        </div>
      </section>
    </>
  );
}
