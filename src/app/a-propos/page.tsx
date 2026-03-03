import { Metadata } from 'next';
import Image from 'next/image';
import Link from 'next/link';
import Breadcrumb from '@/src/components/Breadcrumb';

export const metadata: Metadata = {
  title: 'À Propos - DIMEXOI',
  description: 'DIMEXOI, mobilier en teck d\'exception depuis 1995. Découvrez notre histoire, nos valeurs et notre engagement.',
};

export default function AboutPage() {
  return (
    <main className="min-h-screen bg-off-white">
      <div className="container mx-auto px-4 py-8">
        <Breadcrumb
          items={[
            { label: 'Accueil', href: '/' },
            { label: 'À propos' },
          ]}
        />

        {/* Hero Section */}
        <div className="text-center mb-16">
          <h1 className="text-5xl font-serif font-bold text-dark-olive mb-4">
            DIMEXOI
          </h1>
          <p className="text-2xl text-teak-brown font-medium mb-2">
            Mobilier en teck d'exception
          </p>
          <p className="text-gray-600 text-lg">
            Depuis 1995, nous créons des meubles intemporels à La Réunion
          </p>
        </div>

        {/* Story Section */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center mb-16 bg-white rounded-lg p-8 border border-warm-beige">
          <div>
            <h2 className="text-4xl font-serif font-bold text-dark-olive mb-6">
              Notre histoire
            </h2>
            <p className="text-gray-700 leading-relaxed mb-4">
              Depuis 1995, DIMEXOI crée des meubles en teck massif d'exception à La Réunion. Notre engagement envers l'excellence artisanale et la durabilité a fait notre renommée auprès de clients exigeants.
            </p>
            <p className="text-gray-700 leading-relaxed mb-4">
              Chaque meuble est une création unique, façonnée par l'expertise de notre équipe de 8 collaborateurs passionnés. Nous sélectionnons uniquement le meilleur teck Tectona Grandis pour garantir la qualité et la longévité de nos créations.
            </p>
            <p className="text-gray-700 leading-relaxed">
              Notre philosophie : acheter moins, mais mieux. Nous privilégions la qualité, la durabilité et l'esthétique intemporelle plutôt que la production de masse.
            </p>
          </div>
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
        </div>

        {/* Values Section */}
        <div className="mb-16">
          <h2 className="text-4xl font-serif font-bold text-dark-olive mb-12 text-center">
            Nos valeurs
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="bg-white p-8 rounded-lg border border-warm-beige text-center">
              <div className="text-4xl mb-4">♻️</div>
              <h3 className="font-serif font-bold text-xl text-dark-olive mb-4">
                Durabilité
              </h3>
              <p className="text-gray-700">
                Nous créons des meubles conçus pour durer générations. Le teck massif résiste au temps et aux intempéries de l'océan Indien.
              </p>
            </div>
            <div className="bg-white p-8 rounded-lg border border-warm-beige text-center">
              <div className="text-4xl mb-4">🛠️</div>
              <h3 className="font-serif font-bold text-xl text-dark-olive mb-4">
                Artisanat
              </h3>
              <p className="text-gray-700">
                Chaque meuble est travaillé avec soin et expertise. Nous privilégions les savoir-faire traditionnels et le travail artisanal.
              </p>
            </div>
            <div className="bg-white p-8 rounded-lg border border-warm-beige text-center">
              <div className="text-4xl mb-4">👥</div>
              <h3 className="font-serif font-bold text-xl text-dark-olive mb-4">
                Conseil personnalisé
              </h3>
              <p className="text-gray-700">
                Notre équipe vous accompagne dans chaque étape de votre projet. Sur-mesure et adaptations sont notre spécialité.
              </p>
            </div>
          </div>
        </div>

        {/* Numbers Section */}
        <div className="bg-dark-olive text-off-white rounded-lg p-12 mb-16">
          <h2 className="text-3xl font-serif font-bold mb-12 text-center">
            En chiffres
          </h2>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
            <div>
              <p className="text-5xl font-serif font-bold mb-2">31</p>
              <p className="text-lg opacity-90">années d'expertise</p>
            </div>
            <div>
              <p className="text-5xl font-serif font-bold mb-2">8</p>
              <p className="text-lg opacity-90">collaborateurs</p>
            </div>
            <div>
              <p className="text-5xl font-serif font-bold mb-2">2</p>
              <p className="text-lg opacity-90">showrooms</p>
            </div>
            <div>
              <p className="text-5xl font-serif font-bold mb-2">4.9/5</p>
              <p className="text-lg opacity-90">note Meta</p>
            </div>
          </div>
        </div>

        {/* Team Section */}
        <div className="mb-16">
          <h2 className="text-4xl font-serif font-bold text-dark-olive mb-8 text-center">
            Une équipe à votre écoute
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div className="bg-white p-8 rounded-lg border border-warm-beige">
              <h3 className="text-2xl font-serif font-bold text-dark-olive mb-2">
                Showroom SUD
              </h3>
              <p className="text-gray-600 mb-4">
                8 rue Benjamin Hoareau, ZI n°3<br />
                97410 Saint-Pierre
              </p>
              <p className="text-gray-700 mb-2 font-semibold">
                <a href="tel:+262262350679" className="hover:text-teak-brown">
                  0262 35 06 79
                </a>
              </p>
              <p className="text-gray-700 mb-4">
                <a href="mailto:contact@dimexoi.fr" className="hover:text-teak-brown">
                  contact@dimexoi.fr
                </a>
              </p>
              <p className="text-sm text-gray-600">
                Mardi - Samedi : 9h00 - 17h00
              </p>
            </div>
            <div className="bg-white p-8 rounded-lg border border-warm-beige">
              <h3 className="text-2xl font-serif font-bold text-dark-olive mb-2">
                Showroom NORD
              </h3>
              <p className="text-gray-600 mb-4">
                43 rue Tourette<br />
                97400 Saint-Denis
              </p>
              <p className="text-gray-700 mb-2 font-semibold">
                <a href="tel:+262262203030" className="hover:text-teak-brown">
                  0262 20 30 30
                </a>
              </p>
              <p className="text-gray-700 mb-4">
                <a href="mailto:bernard.runasia@gmail.com" className="hover:text-teak-brown">
                  bernard.runasia@gmail.com
                </a>
              </p>
              <p className="text-sm text-gray-600">
                Mardi - Samedi : 10h00 - 13h00 & 14h00 - 18h00
              </p>
            </div>
          </div>
        </div>

        {/* Certifications Section */}
        <div className="bg-warm-beige rounded-lg p-8 mb-16 text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-8">
            Nos engagements
          </h2>
          <div className="space-y-4">
            <p className="flex items-center justify-center gap-3 text-gray-700">
              <span className="text-teak-brown font-bold">✓</span>
              100% teck massif Tectona Grandis
            </p>
            <p className="flex items-center justify-center gap-3 text-gray-700">
              <span className="text-teak-brown font-bold">✓</span>
              Meubles sans assemblage - montage sur place
            </p>
            <p className="flex items-center justify-center gap-3 text-gray-700">
              <span className="text-teak-brown font-bold">✓</span>
              Adaptation sur mesure possible
            </p>
            <p className="flex items-center justify-center gap-3 text-gray-700">
              <span className="text-teak-brown font-bold">✓</span>
              Conseil personnalisé et accompagnement
            </p>
            <p className="flex items-center justify-center gap-3 text-gray-700">
              <span className="text-teak-brown font-bold">✓</span>
              Livraison sous condition d'accessibilité
            </p>
          </div>
        </div>

        {/* CTA Section */}
        <div className="text-center">
          <h2 className="text-3xl font-serif font-bold text-dark-olive mb-6">
            Prêt à transformer votre intérieur ?
          </h2>
          <p className="text-gray-600 mb-8 text-lg">
            Visitez nos showrooms ou demandez un devis personnalisé
          </p>
          <div className="flex flex-col md:flex-row gap-4 justify-center">
            <Link href="/catalogue" className="inline-block btn-primary">
              Découvrir le catalogue
            </Link>
            <Link href="/devis" className="inline-block btn-secondary">
              Demander un devis
            </Link>
          </div>
        </div>
      </div>
    </main>
  );
}
