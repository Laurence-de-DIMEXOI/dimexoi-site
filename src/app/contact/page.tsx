import { Metadata } from 'next';
import Breadcrumb from '@/src/components/Breadcrumb';
import ContactForm from '@/src/components/ContactForm';

export const metadata: Metadata = {
  title: 'Contact - DIMEXOI',
  description: 'Contactez DIMEXOI. Nos deux showrooms à Saint-Pierre et Saint-Denis sont à votre service.',
};

export default function ContactPage() {
  return (
    <main className="min-h-screen bg-off-white py-8">
      <div className="container mx-auto px-4">
        <Breadcrumb
          items={[
            { label: 'Accueil', href: '/' },
            { label: 'Contact' },
          ]}
        />

        <h1 className="text-4xl md:text-5xl font-serif font-bold text-dark-olive mb-12 text-center">
          Contactez-nous
        </h1>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 mb-16">
          {/* Contact Form */}
          <div className="bg-white rounded-lg p-8 border border-warm-beige">
            <h2 className="text-2xl font-serif font-bold text-dark-olive mb-6">
              Envoyez-nous un message
            </h2>
            <ContactForm />
          </div>

          {/* Showrooms Info */}
          <div className="space-y-8">
            {/* Showroom SUD */}
            <div className="bg-white rounded-lg p-8 border border-warm-beige">
              <h3 className="text-2xl font-serif font-bold text-dark-olive mb-4">
                Showroom SUD
              </h3>
              <div className="space-y-3 mb-6">
                <div>
                  <p className="text-sm text-gray-600 mb-1">Adresse</p>
                  <p className="font-semibold text-gray-800">
                    8 rue Benjamin Hoareau<br />
                    ZI n°3, 97410 Saint-Pierre
                  </p>
                </div>
                <div>
                  <p className="text-sm text-gray-600 mb-1">Téléphone</p>
                  <a href="tel:+262262350679" className="font-semibold text-teak-brown hover:text-dark-olive">
                    0262 35 06 79
                  </a>
                </div>
                <div>
                  <p className="text-sm text-gray-600 mb-1">Email</p>
                  <a href="mailto:contact@dimexoi.fr" className="font-semibold text-teak-brown hover:text-dark-olive">
                    contact@dimexoi.fr
                  </a>
                </div>
                <div>
                  <p className="text-sm text-gray-600 mb-1">Horaires</p>
                  <p className="font-semibold text-gray-800">
                    Mardi - Samedi<br />
                    9h00 - 17h00
                  </p>
                </div>
              </div>
              <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3752.2649048697543!2d55.4750587!3d-21.3391803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2481dca06d6a6faf%3A0x5a4d6c8f1234567!2s8%20Rue%20Benjamin%20Hoareau%2C%2097410%20Saint-Pierre!5e0!3m2!1sfr!2sfr!4v1234567890"
                width="100%"
                height="250"
                style={{ border: 0 }}
                allowFullScreen
                loading="lazy"
                className="rounded"
              ></iframe>
            </div>

            {/* Showroom NORD */}
            <div className="bg-white rounded-lg p-8 border border-warm-beige">
              <h3 className="text-2xl font-serif font-bold text-dark-olive mb-4">
                Showroom NORD
              </h3>
              <div className="space-y-3 mb-6">
                <div>
                  <p className="text-sm text-gray-600 mb-1">Adresse</p>
                  <p className="font-semibold text-gray-800">
                    43 rue Tourette<br />
                    97400 Saint-Denis
                  </p>
                </div>
                <div>
                  <p className="text-sm text-gray-600 mb-1">Téléphone</p>
                  <a href="tel:+262262203030" className="font-semibold text-teak-brown hover:text-dark-olive">
                    0262 20 30 30
                  </a>
                </div>
                <div>
                  <p className="text-sm text-gray-600 mb-1">Email</p>
                  <a href="mailto:bernard.runasia@gmail.com" className="font-semibold text-teak-brown hover:text-dark-olive">
                    bernard.runasia@gmail.com
                  </a>
                </div>
                <div>
                  <p className="text-sm text-gray-600 mb-1">Horaires</p>
                  <p className="font-semibold text-gray-800">
                    Mardi - Samedi<br />
                    10h00 - 13h00 & 14h00 - 18h00
                  </p>
                </div>
              </div>
              <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3753.1234567890!2d55.4567890!3d-20.8765432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2481f2c1234567!2s43%20Rue%20Tourette%2C%2097400%20Saint-Denis!5e0!3m2!1sfr!2sfr!4v1234567890"
                width="100%"
                height="250"
                style={{ border: 0 }}
                allowFullScreen
                loading="lazy"
                className="rounded"
              ></iframe>
            </div>
          </div>
        </div>

        {/* Info Section */}
        <div className="bg-dark-olive text-off-white rounded-lg p-8 mb-12">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            <div>
              <h3 className="font-serif font-bold text-xl mb-2">Réponse rapide</h3>
              <p className="opacity-90">
                Nous répondons à vos demandes dans les 24 heures
              </p>
            </div>
            <div>
              <h3 className="font-serif font-bold text-xl mb-2">Expertise</h3>
              <p className="opacity-90">
                Une équipe de 8 experts à votre service
              </p>
            </div>
            <div>
              <h3 className="font-serif font-bold text-xl mb-2">Sur-mesure</h3>
              <p className="opacity-90">
                Adaptez chaque meuble à vos besoins
              </p>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
