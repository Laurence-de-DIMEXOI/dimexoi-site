import Image from 'next/image';
import Link from 'next/link';
import ProductCard from '@/src/components/ProductCard';
import CategoryCard from '@/src/components/CategoryCard';
import { products } from '@/src/lib/products';

const categoryImages: Record<string, string> = {
  'Chambre': 'https://images.unsplash.com/photo-1540932424986-bd8b50f8dbca?w=800&h=600&fit=crop',
  'Salon': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800&h=600&fit=crop',
  'Salle à manger': 'https://images.unsplash.com/photo-1567521464027-f127ff144326?w=800&h=600&fit=crop',
  'Entrée': 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=800&h=600&fit=crop',
  'Salle de bains': 'https://images.unsplash.com/photo-1552321554-5fefe8c9ef14?w=800&h=600&fit=crop',
  'Extérieur': 'https://images.unsplash.com/photo-1564078516533-13f6855d1840?w=800&h=600&fit=crop',
};

export default function Home() {
  // Get featured products (first 8)
  const featuredProducts = products.slice(0, 8);

  // Calculate category counts
  const categories = Array.from(
    new Map(
      products.map(p => [p.category, p.category])
    ).values()
  ).map(cat => ({
    name: cat,
    count: products.filter(p => p.category === cat).length,
    image: categoryImages[cat] || 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800&h=600&fit=crop',
  }));

  return (
    <>
      {/* Hero Section */}
      <section className="relative h-screen bg-dark-charcoal overflow-hidden flex items-center justify-center">
        <Image
          src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=1920&h=1080&fit=crop"
          alt="Mobilier en teck DIMEXOI"
          fill
          className="object-cover"
          priority
          unoptimized
        />
        <div className="hero-overlay absolute inset-0"></div>
        <div className="relative z-10 text-center text-off-white max-w-2xl mx-auto px-6">
          <h1 className="text-5xl md:text-6xl font-serif font-bold mb-4">
            Mobilier en teck d'exception
          </h1>
          <p className="text-lg md:text-xl mb-8 opacity-90">
            À La Réunion depuis 1995
          </p>
          <div className="flex flex-col md:flex-row gap-4 justify-center">
            <Link href="/catalogue" className="btn-primary">
              Découvrir nos collections
            </Link>
            <Link href="/devis" className="btn-secondary">
              Demander un devis
            </Link>
          </div>
        </div>
      </section>

      {/* Trust Bar */}
      <section className="bg-dark-olive text-off-white py-6">
        <div className="container mx-auto px-4">
          <div className="grid grid-cols-2 md:grid-cols-4 gap-6 text-center text-sm md:text-base">
            <div>
              <p className="font-serif font-bold text-lg">31 ans</p>
              <p className="text-xs md:text-sm opacity-90">de savoir-faire</p>
            </div>
            <div>
              <p className="font-serif font-bold text-lg">100% Teck</p>
              <p className="text-xs md:text-sm opacity-90">massif</p>
            </div>
            <div>
              <p className="font-serif font-bold text-lg">Sur-mesure</p>
              <p className="text-xs md:text-sm opacity-90">disponible</p>
            </div>
            <div>
              <p className="font-serif font-bold text-lg">2 Showrooms</p>
              <p className="text-xs md:text-sm opacity-90">à La Réunion</p>
            </div>
          </div>
        </div>
      </section>

      {/* Categories Section */}
      <section className="py-16 bg-off-white">
        <div className="container mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive mb-4">
              Nos univers
            </h2>
            <p className="text-gray-600 text-lg">
              Trouvez le meuble parfait pour chaque pièce
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {categories.map((category) => (
              <CategoryCard
                key={category.name}
                name={category.name}
                count={category.count}
                imageUrl={category.image}
              />
            ))}
          </div>
        </div>
      </section>

      {/* Featured Products Section */}
      <section className="py-16 bg-white">
        <div className="container mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive mb-4">
              Sélection de meubles
            </h2>
            <p className="text-gray-600 text-lg mb-8">
              Découvrez nos créations artisanales en teck massif
            </p>
            <Link href="/catalogue" className="inline-block btn-outline">
              Voir tout le catalogue
            </Link>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mt-12">
            {featuredProducts.map((product) => (
              <ProductCard key={product.id} {...product} />
            ))}
          </div>
        </div>
      </section>

      {/* About Section */}
      <section className="py-16 bg-warm-beige">
        <div className="container mx-auto px-4">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
            <div>
              <Image
                src="https://images.unsplash.com/photo-1567521464027-f127ff144326?w=600&h=400&fit=crop"
                alt="DIMEXOI showroom"
                width={600}
                height={400}
                className="rounded-lg"
                unoptimized
              />
            </div>
            <div>
              <h2 className="text-4xl font-serif font-bold text-dark-olive mb-6">
                DIMEXOI
              </h2>
              <p className="text-gray-700 mb-4 leading-relaxed">
                Depuis 1995, DIMEXOI crée des meubles en teck massif d'exception à La Réunion. Notre engagement : acheter moins, mais mieux.
              </p>
              <p className="text-gray-700 mb-4 leading-relaxed">
                Chaque pièce est sélectionnée pour sa qualité, sa durabilité et son esthétique intemporelle. Notre équipe de 8 experts accompagne chaque client dans son projet.
              </p>
              <div className="grid grid-cols-2 gap-6 mt-8">
                <div>
                  <p className="text-3xl font-serif font-bold text-teak-brown">31</p>
                  <p className="text-sm text-gray-600">années d'expertise</p>
                </div>
                <div>
                  <p className="text-3xl font-serif font-bold text-teak-brown">8</p>
                  <p className="text-sm text-gray-600">collaborateurs passionnés</p>
                </div>
                <div>
                  <p className="text-3xl font-serif font-bold text-teak-brown">4.9/5</p>
                  <p className="text-sm text-gray-600">Note sur Meta</p>
                </div>
                <div>
                  <p className="text-3xl font-serif font-bold text-teak-brown">100%</p>
                  <p className="text-sm text-gray-600">Teck massif</p>
                </div>
              </div>
              <Link href="/a-propos" className="inline-block mt-8 btn-primary">
                En savoir plus
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Showroom CTA Section */}
      <section className="py-16 bg-dark-olive text-off-white">
        <div className="container mx-auto px-4">
          <h2 className="text-4xl md:text-5xl font-serif font-bold text-center mb-4">
            Venez voir et toucher nos meubles
          </h2>
          <p className="text-center text-lg opacity-90 mb-12">
            Visitez nos deux showrooms à La Réunion pour découvrir toute notre collection
          </p>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 mb-12">
            {/* Showroom SUD */}
            <div className="bg-dark-charcoal bg-opacity-50 p-8 rounded-lg">
              <h3 className="text-2xl font-serif font-bold mb-4">Showroom SUD</h3>
              <p className="opacity-90 mb-2">8 rue Benjamin Hoareau</p>
              <p className="opacity-90 mb-4">ZI n°3, 97410 Saint-Pierre</p>
              <p className="font-semibold mb-2">
                <a href="tel:+262262350679" className="hover:text-teak-brown">
                  0262 35 06 79
                </a>
              </p>
              <p className="opacity-90 mb-4">
                <a href="mailto:contact@dimexoi.fr" className="hover:text-teak-brown">
                  contact@dimexoi.fr
                </a>
              </p>
              <p className="text-sm opacity-75">
                Mardi - Samedi<br />
                9h00 - 17h00
              </p>
            </div>

            {/* Showroom NORD */}
            <div className="bg-dark-charcoal bg-opacity-50 p-8 rounded-lg">
              <h3 className="text-2xl font-serif font-bold mb-4">Showroom NORD</h3>
              <p className="opacity-90 mb-2">43 rue Tourette</p>
              <p className="opacity-90 mb-4">97400 Saint-Denis</p>
              <p className="font-semibold mb-2">
                <a href="tel:+262262203030" className="hover:text-teak-brown">
                  0262 20 30 30
                </a>
              </p>
              <p className="opacity-90 mb-4">
                <a href="mailto:bernard.runasia@gmail.com" className="hover:text-teak-brown">
                  bernard.runasia@gmail.com
                </a>
              </p>
              <p className="text-sm opacity-75">
                Mardi - Samedi<br />
                10h00 - 13h00 & 14h00 - 18h00
              </p>
            </div>
          </div>

          <div className="text-center">
            <Link href="/contact" className="inline-block bg-teak-brown text-off-white px-8 py-3 rounded-lg font-semibold hover:bg-off-white hover:text-dark-olive transition-colors">
              Nous contacter
            </Link>
          </div>
        </div>
      </section>

      {/* Newsletter Section */}
      <section className="py-12 bg-warm-beige">
        <div className="container mx-auto px-4 max-w-2xl">
          <h2 className="text-3xl font-serif font-bold text-center text-dark-olive mb-4">
            Restez informé
          </h2>
          <p className="text-center text-gray-700 mb-6">
            Recevez nos dernières collections et actualités
          </p>
          <form className="flex gap-2">
            <input
              type="email"
              placeholder="Votre email"
              className="flex-1 px-4 py-3 rounded text-dark-charcoal"
              required
            />
            <button
              type="submit"
              className="bg-dark-olive text-off-white px-6 py-3 rounded font-semibold hover:bg-teak-brown transition-colors"
            >
              S'abonner
            </button>
          </form>
        </div>
      </section>
    </>
  );
}
