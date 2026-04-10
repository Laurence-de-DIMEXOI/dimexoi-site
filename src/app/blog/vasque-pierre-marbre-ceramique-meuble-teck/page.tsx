import type { Metadata } from 'next';
import Link from 'next/link';
import Image from 'next/image';

export const metadata: Metadata = {
  title: 'Vasque pierre, marbre ou céramique avec un meuble teck : le comparatif | Dimexoi La Réunion',
  description: 'Pierre naturelle, marbre ou céramique : quel matériau choisir pour votre vasque sur meuble en teck ? Comparatif complet entretien, prix, esthétique. Par DIMEXOI, showrooms Saint-Pierre et Saint-Denis.',
  keywords: ['vasque pierre naturelle', 'vasque marbre', 'vasque céramique', 'meuble vasque teck', 'salle de bain teck La Réunion', 'vasque salle de bain Réunion', 'choisir vasque meuble bois'],
  openGraph: {
    title: 'Vasque pierre, marbre ou céramique avec un meuble teck ?',
    description: 'Comparatif complet par DIMEXOI, spécialiste du teck à La Réunion depuis 1995.',
    type: 'article',
    publishedTime: '2026-04-12',
    authors: ['DIMEXOI'],
    images: [{ url: 'https://www.dimexoi.fr/images/blog/imagevasque.png', width: 1200, height: 630 }],
  },
  alternates: { canonical: 'https://dimexoi.fr/blog/vasque-pierre-marbre-ceramique-meuble-teck' },
};

const articleSchema = {
  '@context': 'https://schema.org',
  '@type': 'Article',
  headline: 'Vasque en pierre, marbre ou céramique : laquelle choisir avec un meuble teck ?',
  description: 'Comparatif complet des vasques pierre naturelle, marbre et céramique pour un meuble en teck. Entretien, prix, accord esthétique, durabilité.',
  author: { '@type': 'Organization', name: 'DIMEXOI', url: 'https://dimexoi.fr' },
  publisher: {
    '@type': 'Organization',
    name: 'DIMEXOI',
    logo: { '@type': 'ImageObject', url: 'https://dimexoi.fr/favicon.svg' },
  },
  datePublished: '2026-04-12',
  dateModified: '2026-04-12',
  mainEntityOfPage: { '@type': 'WebPage', '@id': 'https://dimexoi.fr/blog/vasque-pierre-marbre-ceramique-meuble-teck' },
  image: 'https://dimexoi.fr/images/blog/imagevasque.png',
  about: [
    { '@type': 'Thing', name: 'Vasque en pierre naturelle' },
    { '@type': 'Thing', name: 'Vasque en marbre' },
    { '@type': 'Thing', name: 'Vasque en céramique' },
    { '@type': 'Thing', name: 'Meuble salle de bain teck' },
  ],
  speakable: {
    '@type': 'SpeakableSpecification',
    cssSelector: ['h1', 'h2', '.speakable'],
  },
};

const faqSchema = {
  '@context': 'https://schema.org',
  '@type': 'FAQPage',
  mainEntity: [
    {
      '@type': 'Question',
      name: 'Quelle vasque choisir avec un meuble en teck ?',
      acceptedAnswer: {
        '@type': 'Answer',
        text: 'La vasque en pierre naturelle ou en marbre s\'accorde le mieux avec un meuble en teck, car ces deux matières nobles partagent un caractère authentique et une durabilité exceptionnelle. La céramique est une alternative pratique et économique pour les usages intensifs.',
      },
    },
    {
      '@type': 'Question',
      name: 'Comment entretenir une vasque en pierre naturelle ?',
      acceptedAnswer: {
        '@type': 'Answer',
        text: 'Une vasque en pierre naturelle se nettoie à l\'eau savonneuse et se protège avec une huile spécifique tous les 6 mois environ. Il faut éviter les produits acides (vinaigre, citron, détartrants) qui peuvent attaquer la surface.',
      },
    },
    {
      '@type': 'Question',
      name: 'Le marbre convient-il à une salle de bain à La Réunion ?',
      acceptedAnswer: {
        '@type': 'Answer',
        text: 'Oui. Le marbre est naturellement frais au toucher, ce qui est un atout dans le climat chaud et humide de La Réunion. Il faut juste éviter les produits acides et essuyer régulièrement les éclaboussures pour préserver son éclat.',
      },
    },
    {
      '@type': 'Question',
      name: 'Quelle est la différence entre une vasque en pierre et une vasque en marbre ?',
      acceptedAnswer: {
        '@type': 'Answer',
        text: 'La vasque en pierre naturelle est généralement non polie, avec une surface texturée et brute. Elle est légèrement poreuse et demande un huilage périodique. Le marbre, lui, est poli pour révéler ses veinages, plus imperméable naturellement, mais sensible aux acides. La pierre apporte un caractère plus rustique, le marbre une élégance plus raffinée.',
      },
    },
    {
      '@type': 'Question',
      name: 'Peut-on poser une vasque en pierre sur un meuble en teck ?',
      acceptedAnswer: {
        '@type': 'Answer',
        text: 'Oui, tout à fait. Le meuble en teck massif est solide et stable, conçu pour supporter le poids de vasques en pierre (20 à 50 kg) ou en marbre (15 à 40 kg). C\'est d\'ailleurs l\'association la plus courante dans notre collection DIMEXOI.',
      },
    },
  ],
};

export default function ArticleVasqueTeck() {
  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(articleSchema) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(faqSchema) }}
      />

      <main className="min-h-screen bg-white">
        {/* Breadcrumb */}
        <div className="max-w-4xl mx-auto px-4 pt-6">
          <nav className="flex items-center gap-2 text-sm text-gray-500" aria-label="Fil d'Ariane">
            <Link href="/" className="hover:text-gray-700">Accueil</Link>
            <span>/</span>
            <Link href="/blog" className="hover:text-gray-700">Blog</Link>
            <span>/</span>
            <span className="text-gray-800">Vasque teck : pierre, marbre ou céramique ?</span>
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
            <span className="text-gray-400 text-sm">8 min de lecture</span>
            <span className="text-gray-400 text-sm">·</span>
            <span className="text-gray-400 text-sm">Avril 2026</span>
          </div>

          <h1
            className="text-3xl md:text-5xl font-bold text-gray-900 leading-tight mb-4 speakable"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Vasque en pierre, marbre ou céramique
          </h1>
          <p className="text-lg text-gray-500 mb-8">
            Laquelle choisir avec un meuble en teck ? Le comparatif honnête par DIMEXOI.
          </p>

          <div className="relative w-full aspect-[16/7] rounded-3xl overflow-hidden mb-10">
            <Image
              src="/images/blog/imagevasque.png"
              alt="Vasque en pierre naturelle posée sur un meuble sous vasque en teck massif - DIMEXOI La Réunion"
              fill
              className="object-cover object-center"
              priority
              sizes="(max-width: 768px) 100vw, 896px"
            />
            <div className="absolute inset-0" style={{ background: 'linear-gradient(to top, rgba(0,0,0,0.3) 0%, transparent 60%)' }} />
            <div className="absolute bottom-4 left-6 text-white text-sm font-medium">
              DIMEXOI x Bois d&apos;Orient : showrooms La Réunion
            </div>
          </div>
        </div>

        {/* Contenu */}
        <div className="max-w-4xl mx-auto px-4">

          {/* Sommaire */}
          <nav
            className="rounded-2xl px-7 py-6 mb-10"
            style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.25)' }}
            aria-label="Sommaire"
          >
            <div className="text-xs font-bold uppercase tracking-widest mb-4" style={{ color: '#C9A96E' }}>
              Dans cet article
            </div>
            <ol className="space-y-2 text-sm text-gray-600">
              {[
                { href: '#pourquoi', label: 'Pourquoi le choix de la vasque est aussi important que celui du meuble ?' },
                { href: '#pierre', label: 'La vasque en pierre naturelle : l\'authentique' },
                { href: '#marbre', label: 'La vasque en marbre : l\'élégance intemporelle' },
                { href: '#fossile', label: 'La vasque en pierre fossile : la rareté absolue' },
                { href: '#ceramique', label: 'La vasque en céramique : la praticité avant tout' },
                { href: '#comparatif', label: 'Tableau comparatif : pierre, marbre, céramique' },
                { href: '#choisir', label: 'Comment choisir selon votre projet ?' },
                { href: '#selection', label: 'Notre sélection en showroom à La Réunion' },
                { href: '#faq', label: 'Questions fréquentes' },
              ].map((item, i) => (
                <li key={item.href} className="flex gap-3 items-baseline">
                  <span className="text-xs font-semibold flex-shrink-0" style={{ color: '#C9A96E' }}>{String(i + 1).padStart(2, '0')}</span>
                  <a href={item.href} className="hover:underline transition-colors" style={{ color: '#0E6973' }}>
                    {item.label}
                  </a>
                </li>
              ))}
            </ol>
          </nav>

          {/* Intro */}
          <div className="mb-10 speakable">
            <p className="text-gray-600 leading-relaxed text-lg mb-4">
              Vous avez choisi votre meuble vasque en teck. Bonne nouvelle, la moitié du travail est faite. Reste à lui trouver la vasque qui va le mettre en valeur, résister à votre quotidien et durer aussi longtemps que le bois qui la porte.
            </p>
            <p className="text-gray-600 leading-relaxed mb-4">
              Trois grandes familles s&apos;offrent à vous : la pierre naturelle, le marbre et la céramique. Chacune a ses forces, ses limites et son caractère. Ce n&apos;est pas qu&apos;une question d&apos;esthétique : c&apos;est aussi une question d&apos;usage, d&apos;entretien et de budget.
            </p>
            <p className="text-gray-600 leading-relaxed">
              Dans cet article, on vous explique les vraies différences entre ces trois matériaux, comment chacun s&apos;accorde avec un meuble en teck, et lequel choisir selon votre projet. Sans jargon, sans préjugé.
            </p>
          </div>

          {/* Encadré DIMEXOI */}
          <div
            className="px-8 py-6 mb-12 rounded-2xl"
            style={{ background: 'rgba(14,105,115,0.06)', border: '1px solid rgba(14,105,115,0.15)' }}
          >
            <p className="text-gray-700 text-base leading-relaxed">
              <strong className="text-dark-charcoal">Chez DIMEXOI</strong>, nous proposons les deux : le meuble en teck et la vasque assortie. Ce guide vous donne les clés pour choisir la combinaison qui vous ressemble, pas celle qui se vend le plus facilement. Nos showrooms de Saint-Pierre et Saint-Denis vous permettent de comparer les matières en conditions réelles.
            </p>
          </div>

          {/* Pourquoi le choix de la vasque compte */}
          <h2
            id="pourquoi"
            className="text-2xl md:text-3xl font-bold text-gray-900 mb-4"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Pourquoi le choix de la vasque est aussi important que celui du meuble ?
          </h2>
          <p className="text-gray-600 leading-relaxed mb-4">
            On a tendance à concentrer toute l&apos;attention sur le meuble vasque. C&apos;est compréhensible. Mais la vasque, c&apos;est ce que vous touchez chaque matin et chaque soir. C&apos;est ce que vos invités remarquent en premier. C&apos;est ce qui donne le ton final à votre salle de bain.
          </p>
          <p className="text-gray-600 leading-relaxed mb-4">
            Une belle vasque sur un meuble ordinaire, ça fonctionne. Un meuble magnifique avec une vasque mal choisie, ça ne marche jamais. Le secret, c&apos;est l&apos;équilibre entre les deux.
          </p>
          <p className="text-gray-600 leading-relaxed mb-12">
            Avec un meuble en teck, vous avez déjà une matière noble, chaude et vivante. Votre vasque doit soit dialoguer avec cette chaleur, soit créer un contraste fort. Les deux approches fonctionnent. Mais il faut les choisir consciemment.
          </p>

          {/* === PIERRE === */}
          <div
            id="pierre"
            className="rounded-3xl overflow-hidden mb-10"
            style={{ border: '1px solid rgba(201,169,110,0.2)' }}
          >
            <div
              className="px-8 py-5 flex items-center gap-3"
              style={{ background: 'linear-gradient(135deg, #1a3a3e 0%, #0E6973 100%)' }}
            >
              <span className="text-white/70 text-2xl" aria-hidden="true">🪨</span>
              <h2
                className="text-xl md:text-2xl font-bold text-white"
                style={{ fontFamily: 'var(--font-playfair, serif)' }}
              >
                La vasque en pierre naturelle : l&apos;authentique
              </h2>
            </div>

            <div className="px-8 py-8">
              <p className="text-gray-600 leading-relaxed mb-6">
                Les vasques en pierre naturelle sont sculptées dans une roche brute non polie : pierre de rivière, pierre volcanique, travertin ou pierre martelée à la main. Chaque pièce est unique. Aucune n&apos;a exactement la même couleur, la même texture, le même grain. C&apos;est ce qui fait son charme. Et son prix.
              </p>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#f0faf4', border: '1px solid rgba(34,197,94,0.2)' }}
                >
                  <div className="text-sm font-bold text-green-700 uppercase tracking-wider mb-3">Avantages</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Unicité absolue : aucune vasque identique dans le monde</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Accord parfait et naturel avec le teck massif</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Durabilité exceptionnelle : des décennies, voire des siècles</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Geste artisanal visible, matière vivante et texturée</li>
                  </ul>
                </div>
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#fef9f0', border: '1px solid rgba(251,146,60,0.2)' }}
                >
                  <div className="text-sm font-bold text-orange-700 uppercase tracking-wider mb-3">Points d&apos;attention</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Poids : 20 à 50 kg (le meuble en teck massif supporte sans problème)</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Légèrement poreuse : huilage protecteur tous les 6 mois</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Variations entre pièces : on ne commande pas « la même » en double</li>
                  </ul>
                </div>
              </div>

              <div
                className="px-6 py-4 rounded-xl text-sm text-gray-700"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <strong>Pour qui :</strong> ceux qui cherchent une salle de bain qui raconte une histoire. Ceux qui aiment les matières authentiques et veulent une pièce qui leur ressemble. Notre choix préféré pour les projets où l&apos;on cherche l&apos;âme plutôt que la perfection.
              </div>
            </div>
          </div>

          {/* === MARBRE === */}
          <div
            id="marbre"
            className="rounded-3xl overflow-hidden mb-10"
            style={{ border: '1px solid rgba(201,169,110,0.2)' }}
          >
            <div
              className="px-8 py-5 flex items-center gap-3"
              style={{ background: 'linear-gradient(135deg, #2d1b69 0%, #5b3fa0 100%)' }}
            >
              <span className="text-white/70 text-2xl" aria-hidden="true">✨</span>
              <h2
                className="text-xl md:text-2xl font-bold text-white"
                style={{ fontFamily: 'var(--font-playfair, serif)' }}
              >
                La vasque en marbre : l&apos;élégance intemporelle
              </h2>
            </div>

            <div className="px-8 py-8">
              <p className="text-gray-600 leading-relaxed mb-6">
                Le marbre est une roche métamorphique sculptée dans un bloc, puis polie pour révéler ses veinages caractéristiques. Marbre blanc style Carrare, marbre noir à l&apos;effet miroir, marbre veiné aux motifs naturels uniques : chaque vasque porte une signature minérale irréproductible. À La Réunion, la fraîcheur naturelle du marbre au toucher est un avantage supplémentaire non négligeable.
              </p>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#f0faf4', border: '1px solid rgba(34,197,94,0.2)' }}
                >
                  <div className="text-sm font-bold text-green-700 uppercase tracking-wider mb-3">Avantages</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Élégance pure et intemporelle</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Contraste lumineux avec la teinte chaude du teck miel</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Fraîcheur naturelle au toucher : précieux sous le climat réunionnais</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Veinages uniques, matière vivante</li>
                  </ul>
                </div>
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#fef9f0', border: '1px solid rgba(251,146,60,0.2)' }}
                >
                  <div className="text-sm font-bold text-orange-700 uppercase tracking-wider mb-3">Points d&apos;attention</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Sensible aux acides : éviter citron, vinaigre et détartrants</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Essuyer les éclaboussures rapidement pour préserver l&apos;éclat</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Prix plus élevé que la céramique</li>
                  </ul>
                </div>
              </div>

              <div
                className="px-6 py-4 rounded-xl text-sm text-gray-700"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <strong>Pour qui :</strong> ceux qui veulent une salle de bain élégante, intemporelle, qui impressionne sans ostentation. Le marbre s&apos;adresse à ceux qui apprécient les matières nobles et qui sont prêts à les entretenir avec un minimum d&apos;attention.
              </div>
            </div>
          </div>

          {/* === PIERRE FOSSILE === */}
          <div
            id="fossile"
            className="rounded-3xl overflow-hidden mb-10"
            style={{ border: '1px solid rgba(201,169,110,0.2)' }}
          >
            <div
              className="px-8 py-5 flex items-center gap-3"
              style={{ background: 'linear-gradient(135deg, #4a3520 0%, #8B6340 100%)' }}
            >
              <span className="text-white/70 text-2xl" aria-hidden="true">🦴</span>
              <h2
                className="text-xl md:text-2xl font-bold text-white"
                style={{ fontFamily: 'var(--font-playfair, serif)' }}
              >
                La vasque en pierre fossile : la rareté absolue
              </h2>
            </div>

            <div className="px-8 py-8">
              <p className="text-gray-600 leading-relaxed mb-6">
                La pierre fossile est une roche sédimentaire contenant des fossiles marins — coraux, coquillages, ammonites — datant de plusieurs millions d&apos;années. Chaque vasque révèle des motifs organiques uniques, figés dans la matière. C&apos;est le matériau le plus rare de notre collection et, pour beaucoup de nos clients, le coup de cœur inattendu en showroom.
              </p>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#f0faf4', border: '1px solid rgba(34,197,94,0.2)' }}
                >
                  <div className="text-sm font-bold text-green-700 uppercase tracking-wider mb-3">Avantages</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Pièce unique et authentique : motifs fossiles non reproductibles</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Conversation piece : aucun invité ne passe devant sans remarquer</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Accord spectaculaire avec le teck : deux matières naturelles et vivantes</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Durabilité maximale, matière dense et robuste</li>
                  </ul>
                </div>
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#fef9f0', border: '1px solid rgba(251,146,60,0.2)' }}
                >
                  <div className="text-sm font-bold text-orange-700 uppercase tracking-wider mb-3">Points d&apos;attention</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Surface légèrement irrégulière : à voir et à toucher en showroom</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Entretien similaire à la pierre : huilage tous les 6 mois</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Stock limité : chaque pièce est unique et non remplaçable à l&apos;identique</li>
                  </ul>
                </div>
              </div>

              <div
                className="px-6 py-4 rounded-xl text-sm text-gray-700"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <strong>Pour qui :</strong> ceux qui veulent quelque chose que personne d&apos;autre n&apos;a. Une vasque en pierre fossile sur un meuble en teck, c&apos;est une salle de bain dont on parle. Disponible en quantité limitée dans nos showrooms.
              </div>
            </div>
          </div>

          {/* === CÉRAMIQUE === */}
          <div
            id="ceramique"
            className="rounded-3xl overflow-hidden mb-12"
            style={{ border: '1px solid rgba(201,169,110,0.2)' }}
          >
            <div
              className="px-8 py-5 flex items-center gap-3"
              style={{ background: 'linear-gradient(135deg, #374151 0%, #6b7280 100%)' }}
            >
              <span className="text-white/70 text-2xl" aria-hidden="true">⬜</span>
              <h2
                className="text-xl md:text-2xl font-bold text-white"
                style={{ fontFamily: 'var(--font-playfair, serif)' }}
              >
                La vasque en céramique : la praticité avant tout
              </h2>
            </div>

            <div className="px-8 py-8">
              <p className="text-gray-600 leading-relaxed mb-6">
                La céramique sanitaire est cuite à très haute température puis recouverte d&apos;un émail vitrifié qui la rend totalement imperméable. C&apos;est le matériau standard de la quasi-totalité des salles de bain modernes. Sa résistance et son entretien minimal en font le choix naturel pour les usages intensifs.
              </p>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#f0faf4', border: '1px solid rgba(34,197,94,0.2)' }}
                >
                  <div className="text-sm font-bold text-green-700 uppercase tracking-wider mb-3">Avantages</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Entretien minimal : un coup d&apos;éponge suffit</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Résistance parfaite aux taches et aux produits ménagers</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Prix accessible : budget préservé pour le meuble teck</li>
                    <li className="flex gap-2"><span className="text-green-500 mt-0.5">✓</span> Formes très précises, designs contemporains épurés</li>
                  </ul>
                </div>
                <div
                  className="rounded-2xl p-6"
                  style={{ background: '#fef9f0', border: '1px solid rgba(251,146,60,0.2)' }}
                >
                  <div className="text-sm font-bold text-orange-700 uppercase tracking-wider mb-3">Points d&apos;attention</div>
                  <ul className="space-y-2 text-sm text-gray-600">
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Moins de caractère qu&apos;une vasque en pierre ou en marbre</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Dure mais cassante sous les chocs violents</li>
                    <li className="flex gap-2"><span className="text-orange-400 mt-0.5">!</span> Production en série : aucune unicité</li>
                  </ul>
                </div>
              </div>

              <div
                className="px-6 py-4 rounded-xl text-sm text-gray-700"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <strong>Pour qui :</strong> ceux qui privilégient la praticité, les familles avec de jeunes enfants, les résidences locatives ou les budgets plus serrés. Avec un meuble en teck bien choisi, le résultat reste élégant : le bois apporte l&apos;âme, la vasque assure le service.
              </div>
            </div>
          </div>

          {/* Tableau comparatif */}
          <h2
            id="comparatif"
            className="text-2xl md:text-3xl font-bold text-gray-900 mb-2"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Tableau comparatif : pierre, marbre, céramique
          </h2>
          <p className="text-gray-500 text-sm mb-6">Un résumé visuel pour décider en un coup d&apos;œil.</p>

          <div className="overflow-x-auto mb-12 rounded-2xl" style={{ border: '1px solid rgba(201,169,110,0.2)' }}>
            <table className="w-full text-sm">
              <thead>
                <tr style={{ background: '#faf7f2', borderBottom: '2px solid rgba(201,169,110,0.3)' }}>
                  <th className="text-left px-5 py-4 font-semibold text-gray-700">Critère</th>
                  <th className="text-center px-4 py-4 font-semibold" style={{ color: '#0E6973' }}>Pierre naturelle</th>
                  <th className="text-center px-4 py-4 font-semibold" style={{ color: '#5b3fa0' }}>Marbre</th>
                  <th className="text-center px-4 py-4 font-semibold text-gray-500">Céramique</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-100">
                {[
                  { label: 'Esthétique', pierre: 'Brute, authentique', marbre: 'Élégante, intemporelle', ceramique: 'Épurée, contemporaine' },
                  { label: 'Unicité', pierre: 'Chaque pièce unique', marbre: 'Veinages uniques', ceramique: 'Production en série' },
                  { label: 'Entretien', pierre: 'Huilage tous les 6 mois', marbre: 'Éviter les acides', ceramique: 'Aucune précaution' },
                  { label: 'Résistance aux taches', pierre: 'Moyenne (poreuse)', marbre: 'Bonne (sauf acides)', ceramique: 'Excellente' },
                  { label: 'Accord avec le teck', pierre: 'Excellent (organique)', marbre: 'Excellent (élégant)', ceramique: 'Bon (fonctionnel)' },
                  { label: 'Budget', pierre: '€€€', marbre: '€€€', ceramique: '€' },
                  { label: 'Durabilité', pierre: 'Très longue', marbre: 'Très longue', ceramique: 'Longue' },
                ].map((row) => (
                  <tr key={row.label} className="hover:bg-gray-50/50 transition-colors">
                    <td className="px-5 py-3 font-medium text-gray-700">{row.label}</td>
                    <td className="px-4 py-3 text-center text-gray-600">{row.pierre}</td>
                    <td className="px-4 py-3 text-center text-gray-600">{row.marbre}</td>
                    <td className="px-4 py-3 text-center text-gray-600">{row.ceramique}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          {/* Comment choisir */}
          <h2
            id="choisir"
            className="text-2xl md:text-3xl font-bold text-gray-900 mb-6"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Comment choisir selon votre projet ?
          </h2>

          <div className="space-y-4 mb-12">
            {[
              {
                label: 'Pour une salle de bain qui a du caractère',
                text: 'Optez pour la pierre naturelle. C\'est le choix qui crée le plus d\'émotion, qui s\'accorde le mieux avec le bois massif, et qui transforme une salle de bain fonctionnelle en véritable pièce de vie.',
                color: '#0E6973',
                bg: 'rgba(14,105,115,0.06)',
              },
              {
                label: 'Pour une élégance qui traverse les modes',
                text: 'Choisissez le marbre. C\'est le choix raffiné par excellence, celui qui ne se démode jamais et qui met en valeur un meuble en teck haut de gamme. Évitez simplement les produits acides.',
                color: '#5b3fa0',
                bg: 'rgba(91,63,160,0.06)',
              },
              {
                label: 'Pour la praticité au quotidien',
                text: 'Partez sur la céramique. C\'est le choix le plus simple, le plus pratique et le plus accessible. Le meuble en teck apporte l\'âme, la vasque assure le service.',
                color: '#6b7280',
                bg: 'rgba(107,114,128,0.06)',
              },
            ].map((item) => (
              <div
                key={item.label}
                className="rounded-2xl p-6"
                style={{ background: item.bg, border: `1px solid ${item.color}30` }}
              >
                <div
                  className="text-sm font-bold uppercase tracking-wider mb-2"
                  style={{ color: item.color }}
                >
                  {item.label}
                </div>
                <p className="text-gray-600 text-sm leading-relaxed">{item.text}</p>
              </div>
            ))}
          </div>

          {/* Notre sélection */}
          <h2
            id="selection"
            className="text-2xl md:text-3xl font-bold text-gray-900 mb-4"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Notre sélection en showroom à La Réunion
          </h2>
          <p className="text-gray-600 leading-relaxed mb-6">
            Dans nos showrooms de Saint-Pierre et Saint-Denis, nous proposons trois familles de vasques qui s&apos;accordent parfaitement avec nos meubles en teck massif : la pierre naturelle, le marbre et la pierre fossile.
          </p>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 mb-4">
            {[
              'Vasques en marbre blanc poli (forme bowl ronde, finition miroir)',
              'Vasques en marbre noir (contraste saisissant avec le teck miel)',
              'Vasques en pierre martelée blanche (geste artisanal visible)',
              'Vasques baskom ovales en marbre (formes traditionnelles)',
              'Vasques en pierre fossile (motifs organiques uniques, chaque pièce figée dans le temps)',
              'Vasques sculptées en pierre aux formes uniques (Donat, Erosi, Batu Durian)',
            ].map((item) => (
              <div
                key={item}
                className="flex items-start gap-3 p-4 rounded-xl"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <span className="text-base mt-0.5" style={{ color: '#C9A96E' }}>→</span>
                <span className="text-sm text-gray-600">{item}</span>
              </div>
            ))}
          </div>

          <div
            className="px-6 py-5 rounded-2xl mb-12"
            style={{ background: 'rgba(14,105,115,0.06)', border: '1px solid rgba(14,105,115,0.15)' }}
          >
            <p className="text-gray-700 text-sm leading-relaxed">
              <strong className="text-dark-charcoal">Toutes nos vasques sont disponibles en stock à La Réunion.</strong> Vous pouvez les voir, les soulever et comparer les matières côte à côte avec nos meubles en teck. La photo ne rend jamais justice au poids, à la fraîcheur et à la texture d&apos;une pierre véritable.
            </p>
          </div>

          {/* FAQ */}
          <h2
            id="faq"
            className="text-2xl md:text-3xl font-bold text-gray-900 mb-6"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            Questions fréquentes
          </h2>

          <div className="space-y-4 mb-12">
            {[
              {
                q: 'Quelle vasque s\'accorde le mieux avec un meuble en teck ?',
                a: 'La vasque en pierre naturelle ou en marbre s\'accorde le mieux avec un meuble en teck. Ces deux matières nobles partagent un caractère authentique et une durabilité comparable. La céramique reste une alternative fonctionnelle et économique pour les usages intensifs.',
              },
              {
                q: 'Peut-on poser une vasque en pierre lourde sur un meuble en teck ?',
                a: 'Oui. Le meuble en teck massif est particulièrement solide et stable. Il supporte sans difficulté le poids des vasques en pierre naturelle (20 à 50 kg) ou en marbre (15 à 40 kg). C\'est d\'ailleurs l\'association la plus courante dans notre collection.',
              },
              {
                q: 'Comment entretenir une vasque en pierre naturelle dans une salle de bain ?',
                a: 'Nettoyage à l\'eau savonneuse au quotidien et application d\'une huile protectrice spécifique tous les 6 mois. Évitez les produits acides (vinaigre, citron, détartrants) qui peuvent altérer la surface.',
              },
              {
                q: 'Le marbre convient-il à une salle de bain à La Réunion ?',
                a: 'Parfaitement. Le marbre est naturellement frais au toucher, ce qui est un atout dans le climat chaud de La Réunion. Il faut simplement éviter les produits acides et essuyer les éclaboussures régulièrement pour conserver son éclat.',
              },
            ].map((item) => (
              <div
                key={item.q}
                className="rounded-2xl p-6"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <div className="font-semibold text-gray-800 mb-2 text-sm">{item.q}</div>
                <p className="text-gray-600 text-sm leading-relaxed">{item.a}</p>
              </div>
            ))}
          </div>

          {/* Conclusion */}
          <h2
            className="text-2xl md:text-3xl font-bold text-gray-900 mb-4"
            style={{ fontFamily: 'var(--font-playfair, serif)' }}
          >
            La vasque qui vous ressemble
          </h2>
          <p className="text-gray-600 leading-relaxed mb-4">
            Il n&apos;y a pas de « meilleur » matériau dans l&apos;absolu. Il y a celui qui correspond à votre projet, à votre quotidien et à vos goûts.
          </p>
          <p className="text-gray-600 leading-relaxed mb-12">
            Notre conseil : ne choisissez pas votre vasque sur écran. Venez en showroom, posez les mains sur les différentes matières, visualisez-les sur votre meuble. En cinq minutes de comparaison physique, vous saurez. Le corps choisit toujours plus vite que la tête.
          </p>

          {/* CTA guide */}
          <div
            className="rounded-3xl p-8 mb-10"
            style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.3)' }}
          >
            <div className="flex flex-col md:flex-row items-start md:items-center gap-6">
              <div className="flex-1">
                <div className="text-xs font-bold uppercase tracking-widest mb-2" style={{ color: '#C9A96E' }}>Guide gratuit</div>
                <p className="font-semibold text-gray-800 mb-1" style={{ fontFamily: 'var(--font-playfair, serif)' }}>
                  12 conseils pour aménager votre salle de bain en teck
                </p>
                <p className="text-sm text-gray-500">Finitions, dimensions, entretien, sur-mesure. PDF gratuit à télécharger.</p>
              </div>
              <Link
                href="/blog/amenager-salle-de-bain-teck"
                className="inline-flex items-center justify-center gap-2 font-semibold px-6 py-3 rounded-xl text-sm text-white whitespace-nowrap transition-opacity hover:opacity-90"
                style={{ background: 'linear-gradient(135deg, #1a3a3e 0%, #0E6973 100%)' }}
              >
                Télécharger le guide
              </Link>
            </div>
          </div>

          {/* CTA showroom */}
          <div
            className="rounded-3xl p-8 md:p-12 text-center mb-16"
            style={{ background: 'linear-gradient(135deg, #1a3a3e 0%, #0E6973 100%)' }}
          >
            <h2
              className="text-2xl md:text-3xl font-bold text-white mb-3"
              style={{ fontFamily: 'var(--font-playfair, serif)' }}
            >
              Venez comparer les matières en showroom
            </h2>
            <p className="text-white/70 mb-8 max-w-md mx-auto">
              Pierre, marbre, céramique : toutes nos vasques sont disponibles à voir et à toucher à Saint-Pierre et Saint-Denis. Conseil gratuit, sans engagement.
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
                href="/blog/amenager-salle-de-bain-teck"
                className="rounded-2xl p-5 hover:shadow-md transition-shadow"
                style={{ background: '#faf7f2', border: '1px solid rgba(201,169,110,0.2)' }}
              >
                <div className="text-xs font-semibold uppercase tracking-wider mb-2" style={{ color: '#C9A96E' }}>Guide PDF gratuit</div>
                <div className="font-semibold text-gray-800 text-sm leading-snug">
                  12 conseils pour aménager votre salle de bain en teck
                </div>
              </Link>
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
            </div>
          </div>
        </div>
      </main>
    </>
  );
}
