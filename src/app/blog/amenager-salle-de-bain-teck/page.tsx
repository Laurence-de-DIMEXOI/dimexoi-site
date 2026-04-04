import type { Metadata } from 'next';
import Link from 'next/link';
import Image from 'next/image';
import { guideSdbMeta } from '@/src/data/guide-sdb-content';
import { GuideDownloadBlock } from '@/src/components/GuideDownloadForm';

export const metadata: Metadata = {
  title: 'Meuble de salle de bain en teck : le guide complet pour bien choisir | Dimexoi',
  description: '12 conseils d\'experts pour aménager votre salle de bain en teck. Finitions, dimensions, entretien, sur mesure - tout ce qu\'il faut savoir avant d\'acheter. Guide PDF gratuit.',
  keywords: ['meuble salle de bain teck', 'salle de bain bois', 'meuble vasque teck', 'teck La Réunion', 'meuble bois massif salle de bain'],
  openGraph: {
    title: 'Aménager sa salle de bain en teck - 12 conseils d\'experts',
    description: 'Guide complet + PDF gratuit. Par DIMEXOI, spécialiste du teck à La Réunion.',
    type: 'article',
    images: [{ url: '/images/blog/guide-sdb-cover.png', width: 1200, height: 630 }],
  },
  alternates: { canonical: 'https://dimexoi.fr/blog/amenager-salle-de-bain-teck' },
};

const articleSchema = {
  '@context': 'https://schema.org',
  '@type': 'Article',
  headline: 'Aménager sa salle de bain en teck - 12 conseils pour un résultat durable et élégant',
  author: { '@type': 'Organization', name: 'DIMEXOI' },
  publisher: {
    '@type': 'Organization',
    name: 'DIMEXOI',
    logo: { '@type': 'ImageObject', url: 'https://dimexoi.fr/logo.png' },
  },
  datePublished: '2026-04-04',
  dateModified: '2026-04-04',
  description: 'Guide complet : 12 conseils pour aménager votre salle de bain en teck.',
  mainEntityOfPage: 'https://dimexoi.fr/blog/amenager-salle-de-bain-teck',
  image: 'https://dimexoi.fr/images/blog/guide-sdb-cover.png',
};

const conseils = [
  {
    number: 1,
    title: 'Le teck résiste naturellement à l\'eau',
    teaser: 'Pourquoi le teck surpasse tous les autres bois en milieu humide : et ce que cela change concrètement pour votre salle de bain.',
  },
  {
    number: 2,
    title: 'Choisissez la finition qui vous ressemble',
    teaser: 'Miel, cérusé ou brut : trois univers très différents. La photo ne rend pas justice à la réalité : voici comment choisir.',
  },
  {
    number: 3,
    title: 'Vasque simple ou double : la vraie question',
    teaser: 'Ce n\'est pas une question de taille de salle de bain. C\'est une question de mode de vie.',
  },
  {
    number: 4,
    title: 'Les 3 mesures à prendre avant d\'aller en showroom',
    teaser: '3 dimensions précises à relever chez vous. Sans elles, impossible de choisir le bon meuble ni d\'envisager du sur-mesure.',
  },
  {
    number: 5,
    title: 'Le sur-mesure n\'est pas un luxe',
    teaser: 'Chez DIMEXOI, le sur-mesure est une option accessible. Dimensions exactes, finition choisie, rangements intégrés.',
  },
  {
    number: 6,
    title: 'Ne négligez pas la colonne et le miroir',
    teaser: 'Deux éléments qui font passer une salle de bain du fonctionnel à l\'exceptionnel. Pensez ensemble, pas pièce par pièce.',
  },
  {
    number: 7,
    title: 'L\'entretien est plus simple que vous ne croyez',
    teaser: '15 minutes par an. C\'est vraiment tout ce qu\'il faut : et ce qu\'il ne faut surtout pas faire.',
  },
  {
    number: 8,
    title: 'Les 5 erreurs à éviter absolument',
    teaser: 'L\'erreur n°1 est commise par la majorité des acheteurs. Vous la faites peut-être déjà sans le savoir.',
  },
  {
    number: 9,
    title: 'Le teck et La Réunion : un mariage naturel',
    teaser: 'Le climat réunionnais est exactement celui dans lequel le teck prospère. Chaleur, humidité, embruns : il adore.',
  },
  {
    number: 10,
    title: 'Préparez votre visite en showroom',
    teaser: 'Ce qu\'il faut apporter pour repartir avec un vrai projet : et pas juste des idées vagues.',
  },
  {
    number: 11,
    title: 'Le bon moment pour aménager',
    teaser: 'Il n\'y a pas de mauvais moment : mais il y en a des plus malins. Découvrez lesquels.',
  },
  {
    number: 12,
    title: 'Faites-vous accompagner (c\'est gratuit)',
    teaser: 'Le conseil est gratuit. Le devis est gratuit. La visite est sans engagement. Ne restez pas seul avec votre projet.',
  },
];

export default function ArticleGuideSDB() {
  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(articleSchema) }}
      />

      <main className="min-h-screen bg-white">
        {/* Breadcrumb */}
        <div className="max-w-4xl mx-auto px-4 pt-6">
          <nav className="flex items-center gap-2 text-sm text-gray-500">
            <Link href="/" className="hover:text-gray-700">Accueil</Link>
            <span>/</span>
            <Link href="/blog" className="hover:text-gray-700">Blog</Link>
            <span>/</span>
            <span className="text-gray-800">Guide SDB teck</span>
          </nav>
        </div>

        {/* Hero */}
        <div className="max-w-4xl mx-auto px-4 pt-8 pb-6">
          <div className="flex items-center gap-2 mb-4">
            <span
              className="text-xs font-semibold uppercase tracking-widest px-3 py-1 rounded-full"
              style={{ background: 'rgba(14,105,115,0.1)', color: '#0E6973' }}
            >
              Guides
            </span>
            <span className="text-gray-400 text-sm">12 min de lecture</span>
            <span className="text-gray-400 text-sm">·</span>
            <span className="text-gray-400 text-sm">Avril 2026</span>
          </div>

          <h1
            className="text-3xl md:text-5xl font-bold text-gray-900 leading-tight mb-4"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Aménager sa salle de bain en teck
          </h1>
          <p className="text-lg text-gray-500 mb-8">
            12 conseils d&apos;experts pour un résultat durable et élégant
          </p>

          {/* Image hero */}
          <div className="relative w-full aspect-[16/7] rounded-3xl overflow-hidden mb-10">
            <Image
              src={guideSdbMeta.coverImage}
              alt="Salle de bain en teck DIMEXOI"
              fill
              className="object-cover object-top"
              priority
              sizes="(max-width: 768px) 100vw, 896px"
            />
            <div className="absolute inset-0" style={{ background: 'linear-gradient(to top, rgba(0,0,0,0.3) 0%, transparent 60%)' }} />
            <div className="absolute bottom-4 left-6 text-white text-sm font-medium">
              DIMEXOI x Bois d&apos;Orient : Showrooms La Réunion
            </div>
          </div>
        </div>

        <div className="max-w-4xl mx-auto px-4">
          {/* Intro */}
          <div className="mb-8">
            <p className="text-gray-600 leading-relaxed text-lg mb-4">
              Le teck est le bois le plus adapté aux pièces humides. Mais entre les finitions, les dimensions, l&apos;entretien et les idées reçues, il n&apos;est pas toujours simple de s&apos;y retrouver.
            </p>
            <p className="text-gray-600 leading-relaxed">
              On a rassemblé dans ce guide les <strong>12 questions que nos clients nous posent le plus souvent en showroom</strong>. Pas de jargon, pas de discours commercial : juste ce qu&apos;il faut savoir pour faire le bon choix.
            </p>
          </div>

          {/* Formulaire haut de page */}
          <GuideDownloadBlock
            source="blog_sdb_top"
            variant="compact"
            title="Téléchargez le guide complet en PDF"
            subtitle="Les 12 conseils détaillés, les tableaux finitions, les astuces showroom : gratuit."
          />

          {/* Liste des 12 conseils : teasers */}
          <div className="mt-12 mb-4">
            <h2
              className="text-2xl font-bold text-gray-900 mb-2"
              style={{ fontFamily: 'var(--font-playfair, serif)' }}
            >
              Ce que vous allez découvrir
            </h2>
            <p className="text-gray-500 text-sm mb-8">Aperçu des 12 conseils : le détail complet est dans le guide PDF.</p>
          </div>

          <div className="space-y-3 mb-12">
            {conseils.map((c) => (
              <div
                key={c.number}
                className="flex gap-4 rounded-2xl p-5 group"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.15)' }}
              >
                <span
                  className="inline-flex items-center justify-center w-8 h-8 rounded-full text-white text-sm font-bold flex-shrink-0 mt-0.5"
                  style={{ background: '#0E6973' }}
                >
                  {c.number}
                </span>
                <div>
                  <div className="font-semibold text-gray-800 mb-1">{c.title}</div>
                  <p className="text-sm text-gray-500 leading-relaxed">{c.teaser}</p>
                </div>
              </div>
            ))}
          </div>

          {/* Formulaire bas */}
          <GuideDownloadBlock
            source="blog_sdb_bottom"
            variant="full"
            title="Le guide complet est gratuit"
            subtitle="Recevez les 12 conseils détaillés, les tableaux de finitions et les dimensions à connaître."
          />

          {/* CTA final */}
          <div
            className="rounded-3xl p-8 md:p-12 text-center mb-16 mt-10"
            style={{ background: 'linear-gradient(135deg, #1a3a3e 0%, #0E6973 100%)' }}
          >
            <h2
              className="text-2xl md:text-3xl font-bold text-white mb-3"
              style={{ fontFamily: 'var(--font-playfair, serif)' }}
            >
              Prêt à commencer votre projet ?
            </h2>
            <p className="text-white/70 mb-8 max-w-md mx-auto">
              Venez voir et toucher les finitions en showroom. Conseil gratuit, devis gratuit, sans engagement.
            </p>
            <div className="flex flex-col sm:flex-row gap-3 justify-center">
              <Link
                href="/contact"
                className="inline-flex items-center justify-center gap-2 bg-white font-semibold px-6 py-3 rounded-xl text-sm hover:bg-gray-100 transition-colors"
                style={{ color: '#0E6973' }}
              >
                Prendre rendez-vous
              </Link>
              <Link
                href="/devis"
                className="inline-flex items-center justify-center gap-2 border border-white/40 text-white font-semibold px-6 py-3 rounded-xl text-sm hover:bg-white/10 transition-colors"
              >
                Demander un devis
              </Link>
            </div>
          </div>

          {/* Showrooms */}
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-16">
            {[
              {
                name: 'Showroom SUD',
                address: '8 rue Benjamin Hoareau, ZI n°3, 97410 Saint-Pierre',
                phone: '0692 35 06 79',
                email: 'contact@dimexoi.fr',
                hours: 'Mar-Sam : 9h-17h',
              },
              {
                name: 'Showroom NORD',
                address: '43 rue Tourette, 97400 Saint-Denis',
                phone: '0282 20 30 30',
                email: 'bernard@dimexoi.fr',
                hours: 'Mar-Sam : 10h-13h & 14h-18h',
              },
            ].map((showroom) => (
              <div
                key={showroom.name}
                className="rounded-2xl p-6"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <div className="font-bold text-gray-800 mb-3">{showroom.name}</div>
                <div className="space-y-1.5 text-sm text-gray-600">
                  <div>{showroom.address}</div>
                  <div>
                    <a href={`tel:${showroom.phone.replace(/\s/g, '')}`} style={{ color: '#0E6973' }}>
                      {showroom.phone}
                    </a>
                  </div>
                  <div>
                    <a href={`mailto:${showroom.email}`} style={{ color: '#0E6973' }}>
                      {showroom.email}
                    </a>
                  </div>
                  <div className="text-gray-500">{showroom.hours}</div>
                </div>
              </div>
            ))}
          </div>

          {/* Articles liés */}
          <div className="border-t border-gray-100 pt-10 mb-16">
            <h2 className="text-xl font-bold text-gray-800 mb-6" style={{ fontFamily: 'var(--font-playfair, serif)' }}>
              Articles liés
            </h2>
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <Link
                href="/blog/meuble-salle-de-bain-teck-guide-complet"
                className="rounded-2xl p-5 hover:shadow-md transition-shadow"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <div className="text-xs font-semibold uppercase tracking-wider mb-2" style={{ color: '#C9A96E' }}>Guide</div>
                <div className="font-semibold text-gray-800 text-sm leading-snug">
                  Meuble salle de bain en teck : le guide complet pour bien choisir
                </div>
              </Link>
              <Link
                href="/blog/entretien-meuble-bois-exotique-reunion"
                className="rounded-2xl p-5 hover:shadow-md transition-shadow"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <div className="text-xs font-semibold uppercase tracking-wider mb-2" style={{ color: '#C9A96E' }}>Entretien</div>
                <div className="font-semibold text-gray-800 text-sm leading-snug">
                  Entretien meuble bois exotique à La Réunion : le guide pratique
                </div>
              </Link>
            </div>
          </div>
        </div>
      </main>
    </>
  );
}
