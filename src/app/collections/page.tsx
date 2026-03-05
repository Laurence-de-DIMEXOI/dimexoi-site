import { Metadata } from 'next';
import Link from 'next/link';
import Image from 'next/image';
import Breadcrumb from '@/src/components/Breadcrumb';
import { products, getCollections } from '@/src/lib/products';

export const metadata: Metadata = {
  title: 'Collections - DIMEXOI',
  description: 'Explorez toutes les collections de meubles en teck DIMEXOI. 17 collections artisanales.',
};

const collectionImages: Record<string, string> = {
  'Cassandre': 'https://lh3.googleusercontent.com/d/1J-vz6TcQLMN7q7-mljzIqQlab9bxQyPT=w800',
  'Evolia': 'https://lh3.googleusercontent.com/d/1E5IVmcmAx3z_fOKuogw-fbezJiVfmwFb=w800',
  'Hampton': 'https://lh3.googleusercontent.com/d/1LJpkY0ZU4gpFlTk1ICeczbMIXKj5qVpO=w800',
  'Jaya': 'https://lh3.googleusercontent.com/d/155e_AFMLJHxkOmob2R1XVcnqCmY2eflp=w800',
  'Krepyak': 'https://lh3.googleusercontent.com/d/1O-yj5yPxRql2nPD2xSbZSzruuOQe5bKy=w800',
  'Kuta': 'https://lh3.googleusercontent.com/d/1dsEw2phCEXxjhDnOcdOso9I5E0Fthg_n=w800',
  'Mikha': 'https://lh3.googleusercontent.com/d/1M4zt4zJiOq9--I14h7jt6xKeQB7yz8La=w800',
  'Minimalis': 'https://lh3.googleusercontent.com/d/1VOT5EJBx7hdbb61VB2QpO7PBKVp5V0nG=w800',
  'Oasis': 'https://lh3.googleusercontent.com/d/1fk_Z6ZFaQ0k9NvyS6dJ3TatEBb8THtsI=w800',
  'Olanda': 'https://lh3.googleusercontent.com/d/1_tSQy_dfBosdFssjOlCKoO1LWmzBBvtu=w800',
  'Sherry': 'https://lh3.googleusercontent.com/d/1jo71jvIBfjHUsycM2s-jdBUu5VTPEp-r=w800',
  'Slats': 'https://lh3.googleusercontent.com/d/1TKoCAAyU4hTrdg9kAsm7h_CCWhJ5Cr-P=w800',
  'Ubud': 'https://lh3.googleusercontent.com/d/1sfXxnD4HMkr_BSK-Zssk1leiuTP6Zjbt=w800',
  'Coiffeuse': 'https://lh3.googleusercontent.com/d/1OkZXtpOGiXc92yf2uqIs6MoC3npxDy_O=w800',
  'Rotin': 'https://lh3.googleusercontent.com/d/15YYssymuyp3TvDkdOazRuMJUFBbDYTny=w800',
  'Natural Shape': 'https://lh3.googleusercontent.com/d/1u02LZYErbukNEhllmRlvAI3KTFZ1CT_l=w800',
};

export default function CollectionsPage() {
  const collections = getCollections();

  const collectionsWithCount = collections.map(collection => ({
    name: collection,
    count: products.filter(p => p.collection === collection).length,
    image: collectionImages[collection] || null,
  })).filter(c => c.count > 0);

  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Collections' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-3">
            Collections
          </h1>
          <p className="text-sm opacity-80 mt-2 uppercase tracking-wider">
            {collectionsWithCount.length} collections artisanales
          </p>
        </div>
      </div>

      <div className="max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        {collectionsWithCount.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-16">
            {collectionsWithCount.map(collection => (
              <Link
                key={collection.name}
                href={`/catalogue?collection=${encodeURIComponent(collection.name)}`}
              >
                <div className="bg-white border border-gray-100 hover:shadow-card-hover transition-all duration-300 cursor-pointer h-full group overflow-hidden">
                  {/* Image */}
                  <div className="relative h-56 overflow-hidden bg-warm-beige">
                    {collection.image ? (
                      <Image
                        src={collection.image}
                        alt={`Collection ${collection.name} - DIMEXOI`}
                        fill
                        className="object-cover group-hover:scale-105 transition-transform duration-500"
                        sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
                        unoptimized
                      />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center">
                        <svg className="w-12 h-12 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
                        </svg>
                      </div>
                    )}
                  </div>
                  {/* Content */}
                  <div className="p-6">
                    <h3 className="font-serif font-bold text-xl text-dark-olive mb-1 group-hover:text-dark-charcoal transition-colors">
                      {collection.name}
                    </h3>
                    <p className="text-gray-500 font-medium text-sm mb-3">
                      {collection.count} produit{collection.count !== 1 ? 's' : ''}
                    </p>
                    <p className="text-xs text-dark-olive font-semibold uppercase tracking-wider group-hover:text-dark-charcoal transition-colors">
                      Voir la collection &rarr;
                    </p>
                  </div>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-20 bg-white border border-gray-100">
            <p className="text-gray-500 mb-4">Aucune collection n&apos;est actuellement disponible.</p>
            <Link href="/catalogue" className="btn-outline">
              Consulter le catalogue complet
            </Link>
          </div>
        )}

        {/* Info Section */}
        <div className="bg-warm-beige p-10 mb-16">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-8 text-center section-heading">
            &Agrave; la d&eacute;couverte de nos collections
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mt-10">
            {[
              { title: 'Qualité garantie', desc: 'Chaque collection est composée de meubles en teck massif 100% Tectona Grandis, sélectionnés pour leur qualité exceptionnelle.' },
              { title: 'Sur-mesure disponible', desc: 'Vous pouvez adapter les dimensions et finitions de la plupart de nos meubles selon vos besoins spécifiques.' },
              { title: 'Conseil personnalisé', desc: 'Notre équipe d\'experts vous accompagne dans le choix de votre collection et vous conseille sur l\'agencement.' },
              { title: 'Livraison et montage', desc: 'Nous assurons la livraison et le montage sur place de tous nos meubles, sous condition d\'accessibilité.' },
            ].map((item, idx) => (
              <div key={idx}>
                <h3 className="font-serif font-bold text-lg text-dark-olive mb-3">{item.title}</h3>
                <p className="text-gray-700 text-sm leading-relaxed">{item.desc}</p>
              </div>
            ))}
          </div>
        </div>

        {/* CTA */}
        <div className="text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-4 section-heading">
            Int&eacute;ress&eacute; par une collection ?
          </h2>
          <p className="text-gray-600 mb-8 mt-8">
            Demandez un devis ou visitez nos showrooms
          </p>
          <Link href="/devis" className="btn-primary">
            Demander un devis
          </Link>
        </div>
      </div>
    </main>
  );
}
