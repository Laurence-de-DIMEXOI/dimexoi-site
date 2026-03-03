import { Metadata } from 'next';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';
import { products, getCollections } from '@/src/lib/products';

export const metadata: Metadata = {
  title: 'Collections - DIMEXOI',
  description: 'Explorez toutes les collections de meubles en teck DIMEXOI. 17 collections artisanales.',
};

export default function CollectionsPage() {
  const collections = getCollections();

  // Get product count for each collection
  const collectionsWithCount = collections.map(collection => ({
    name: collection,
    count: products.filter(p => p.collection === collection).length,
  })).filter(c => c.count > 0);

  return (
    <main className="min-h-screen bg-off-white">
      <div className="container mx-auto px-4 py-8">
        <Breadcrumb
          items={[
            { label: 'Accueil', href: '/' },
            { label: 'Collections' },
          ]}
        />

        <div className="text-center mb-12">
          <h1 className="text-5xl font-serif font-bold text-dark-olive mb-4">
            Collections
          </h1>
          <p className="text-lg text-gray-600">
            Découvrez nos {collectionsWithCount.length} collections artisanales
          </p>
        </div>

        {collectionsWithCount.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-12">
            {collectionsWithCount.map(collection => (
              <Link
                key={collection.name}
                href={`/catalogue?collection=${encodeURIComponent(collection.name)}`}
              >
                <div className="bg-white rounded-lg p-6 border border-warm-beige hover:shadow-lg transition-shadow cursor-pointer h-full">
                  <h3 className="font-serif font-bold text-xl text-dark-olive mb-2">
                    {collection.name}
                  </h3>
                  <p className="text-teak-brown font-medium">
                    {collection.count} produit{collection.count !== 1 ? 's' : ''}
                  </p>
                  <p className="text-sm text-gray-600 mt-4 hover:text-dark-olive">
                    Voir la collection →
                  </p>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          <div className="text-center py-12 bg-white rounded-lg border border-warm-beige">
            <p className="text-gray-600 mb-4">
              Aucune collection n'est actuellement disponible.
            </p>
            <Link href="/catalogue" className="text-dark-olive font-semibold hover:text-teak-brown">
              Consulter le catalogue complet
            </Link>
          </div>
        )}

        {/* Info Section */}
        <div className="mt-16 bg-warm-beige rounded-lg p-8 border border-gray-200">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-6 text-center">
            À la découverte de nos collections
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div>
              <h3 className="font-serif font-bold text-lg text-dark-olive mb-3">
                Qualité garantie
              </h3>
              <p className="text-gray-700">
                Chaque collection est composée de meubles en teck massif 100% Tectona Grandis, sélectionnés pour leur qualité exceptionnelle et leur durabilité.
              </p>
            </div>
            <div>
              <h3 className="font-serif font-bold text-lg text-dark-olive mb-3">
                Sur-mesure disponible
              </h3>
              <p className="text-gray-700">
                Vous pouvez adapter les dimensions et finitions de la plupart de nos meubles selon vos besoins spécifiques. Contactez-nous pour plus d'informations.
              </p>
            </div>
            <div>
              <h3 className="font-serif font-bold text-lg text-dark-olive mb-3">
                Conseil personnalisé
              </h3>
              <p className="text-gray-700">
                Notre équipe d'experts vous accompagne dans le choix de votre collection et vous conseille sur l'agencement de votre intérieur.
              </p>
            </div>
            <div>
              <h3 className="font-serif font-bold text-lg text-dark-olive mb-3">
                Livraison et montage
              </h3>
              <p className="text-gray-700">
                Nous assurons la livraison et le montage sur place de tous nos meubles, sous condition d'accessibilité des lieux.
              </p>
            </div>
          </div>
        </div>

        {/* CTA Section */}
        <div className="mt-12 text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-4">
            Intéressé par une collection ?
          </h2>
          <p className="text-gray-600 mb-8">
            Demandez un devis ou visitez nos showrooms pour découvrir toute notre sélection
          </p>
          <Link href="/devis" className="inline-block btn-primary">
            Demander un devis
          </Link>
        </div>
      </div>
    </main>
  );
}
