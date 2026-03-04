import { Metadata } from 'next';
import Image from 'next/image';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';

export const metadata: Metadata = {
  title: '\u00c0 Propos - DIMEXOI',
  description: 'DIMEXOI, mobilier en teck d\'exception depuis 1995. D\u00e9couvrez notre histoire, nos valeurs et notre engagement.',
};

export default function AboutPage() {
  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: '\u00c0 propos' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-3">
            Notre histoire
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            Depuis 1995 &agrave; La R&eacute;union
          </p>
        </div>
      </div>

      <div className="max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        {/* Story Section */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center mb-20">
          <div>
            <p className="text-teak-brown font-semibold text-sm uppercase tracking-widest mb-4">Qui sommes-nous</p>
            <h2 className="text-4xl font-serif font-bold text-dark-olive section-heading-left">
              DIMEXOI
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4 mt-8">
              Depuis 1995, DIMEXOI cr&eacute;e des meubles en teck massif d&apos;exception &agrave; La R&eacute;union. Notre engagement envers l&apos;excellence artisanale et la durabilit&eacute; a fait notre renomm&eacute;e aupr&egrave;s de clients exigeants.
            </p>
            <p className="text-gray-700 leading-relaxed mb-4">
              Chaque pi&egrave;ce est fa&ccedil;onn&eacute;e &agrave; la main par notre &eacute;quipe de 8 artisans en Indon&eacute;sie, h&eacute;ritiers d&apos;un savoir-faire ancestral. Nous s&eacute;lectionnons uniquement le meilleur teck Tectona Grandis.
            </p>
            <p className="text-gray-700 leading-relaxed">
              Notre philosophie : acheter moins, mais mieux. Nous privil&eacute;gions la qualit&eacute;, la durabilit&eacute; et l&apos;esth&eacute;tique intemporelle.
            </p>
          </div>
          <div className="relative">
            <Image
              src="https://images.unsplash.com/photo-1567521464027-f127ff144326?w=600&h=400&fit=crop"
              alt="DIMEXOI showroom"
              width={600}
              height={400}
              className="w-full h-auto object-cover"
              unoptimized
            />
            <div className="absolute -bottom-4 -right-4 w-full h-full border-2 border-teak-brown -z-10 hidden lg:block"></div>
          </div>
        </div>

        {/* Values Section */}
        <div className="mb-20">
          <div className="text-center mb-12">
            <h2 className="text-4xl font-serif font-bold text-dark-olive section-heading">
              Nos valeurs
            </h2>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mt-10">
            {[
              {
                title: 'Durabilit\u00e9',
                desc: 'Nous cr\u00e9ons des meubles con\u00e7us pour durer des g\u00e9n\u00e9rations. Le teck massif r\u00e9siste au temps et aux intemp\u00e9ries de l\u2019oc\u00e9an Indien.',
                icon: 'M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15',
              },
              {
                title: 'Artisanat',
                desc: 'Chaque meuble est travaill\u00e9 avec soin et expertise. Nous privil\u00e9gions les savoir-faire traditionnels et le travail artisanal.',
                icon: 'M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z',
              },
              {
                title: 'Conseil personnalis\u00e9',
                desc: 'Notre \u00e9quipe vous accompagne dans chaque \u00e9tape de votre projet. Sur-mesure et adaptations sont notre sp\u00e9cialit\u00e9.',
                icon: 'M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z',
              },
            ].map((value, idx) => (
              <div key={idx} className="bg-white p-8 border border-gray-100 text-center">
                <div className="w-14 h-14 flex items-center justify-center bg-warm-beige rounded-full mx-auto mb-5">
                  <svg className="w-6 h-6 text-dark-olive" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d={value.icon} />
                  </svg>
                </div>
                <h3 className="font-serif font-bold text-xl text-dark-olive mb-4">{value.title}</h3>
                <p className="text-gray-600 text-sm leading-relaxed">{value.desc}</p>
              </div>
            ))}
          </div>
        </div>

        {/* Numbers Section */}
        <div className="bg-dark-olive text-off-white p-12 mb-20">
          <h2 className="text-3xl font-serif font-bold mb-10 text-center section-heading">En chiffres</h2>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-8 text-center mt-10">
            {[
              { value: '31', label: "ann\u00e9es d'expertise" },
              { value: '8', label: 'artisans en Indonésie' },
              { value: '2', label: 'showrooms' },
              { value: '4.9/5', label: 'note Meta' },
            ].map((stat, idx) => (
              <div key={idx}>
                <p className="text-5xl font-serif font-bold mb-2">{stat.value}</p>
                <p className="text-sm opacity-80">{stat.label}</p>
              </div>
            ))}
          </div>
        </div>

        {/* Team Section */}
        <div className="mb-20">
          <div className="text-center mb-10">
            <h2 className="text-4xl font-serif font-bold text-dark-olive section-heading">
              Une &eacute;quipe &agrave; votre &eacute;coute
            </h2>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mt-10">
            {[
              {
                name: 'Showroom SUD',
                address: '8 rue Benjamin Hoareau, ZI n\u00b03\n97410 Saint-Pierre',
                phone: '0262 35 06 79',
                phoneLink: '+262262350679',
                email: 'contact@dimexoi.fr',
                hours: 'Mardi - Samedi : 9h00 - 17h00',
              },
              {
                name: 'Showroom NORD',
                address: '43 rue Tourette\n97400 Saint-Denis',
                phone: '0262 20 30 30',
                phoneLink: '+262262203030',
                email: 'bernard@dimexoi.fr',
                hours: 'Mardi - Samedi : 10h00 - 13h00 & 14h00 - 18h00',
              },
            ].map((showroom) => (
              <div key={showroom.name} className="bg-white p-8 border border-gray-100">
                <h3 className="text-2xl font-serif font-bold text-dark-olive mb-4">{showroom.name}</h3>
                <p className="text-gray-600 mb-4 text-sm whitespace-pre-line">{showroom.address}</p>
                <p className="font-semibold mb-2">
                  <a href={`tel:${showroom.phoneLink}`} className="text-teak-brown hover:text-dark-olive transition-colors">
                    {showroom.phone}
                  </a>
                </p>
                <p className="text-sm mb-4">
                  <a href={`mailto:${showroom.email}`} className="text-gray-600 hover:text-teak-brown transition-colors">
                    {showroom.email}
                  </a>
                </p>
                <p className="text-xs text-gray-500 uppercase tracking-wider">{showroom.hours}</p>
              </div>
            ))}
          </div>
        </div>

        {/* Engagements */}
        <div className="bg-warm-beige p-10 mb-20">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-8 text-center section-heading">
            Nos engagements
          </h2>
          <div className="max-w-2xl mx-auto space-y-3 mt-10">
            {[
              '100% teck massif Tectona Grandis',
              'Meubles sans assemblage - montage sur place',
              'Adaptation sur mesure possible',
              'Conseil personnalis\u00e9 et accompagnement',
              'Livraison sous condition d\'accessibilit\u00e9',
            ].map((item, idx) => (
              <p key={idx} className="flex items-center gap-3 text-gray-700">
                <span className="w-6 h-6 flex items-center justify-center bg-dark-olive text-off-white text-xs rounded-full flex-shrink-0">✓</span>
                {item}
              </p>
            ))}
          </div>
        </div>

        {/* CTA */}
        <div className="text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-4 section-heading">
            Pr&ecirc;t &agrave; transformer votre int&eacute;rieur ?
          </h2>
          <p className="text-gray-600 mb-8 mt-8">
            Visitez nos showrooms ou demandez un devis personnalis&eacute;
          </p>
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link href="/catalogue" className="btn-primary">
              D&eacute;couvrir le catalogue
            </Link>
            <Link href="/devis" className="btn-outline">
              Demander un devis
            </Link>
          </div>
        </div>
      </div>
    </main>
  );
}
