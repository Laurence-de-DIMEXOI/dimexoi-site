import { Metadata } from 'next';
import Breadcrumb from '@/src/components/Breadcrumb';
import ContactForm from '@/src/components/ContactForm';

export const metadata: Metadata = {
  title: 'Contact - DIMEXOI',
  description: 'Contactez DIMEXOI. Nos deux showrooms \u00e0 Saint-Pierre et Saint-Denis sont \u00e0 votre service.',
};

export default function ContactPage() {
  return (
    <main className="min-h-screen bg-off-white">
      {/* Page Header */}
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb
            items={[
              { label: 'Accueil', href: '/' },
              { label: 'Contact' },
            ]}
          />
          <h1 className="text-4xl md:text-5xl font-serif font-bold mt-3">
            Contactez-nous
          </h1>
          <p className="text-sm opacity-80 mt-3 uppercase tracking-wider">
            Nous sommes &agrave; votre &eacute;coute
          </p>
        </div>
      </div>

      <div className="max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 mb-16">
          {/* Contact Form */}
          <div className="bg-white p-8 border border-gray-100">
            <h2 className="text-2xl font-serif font-bold text-dark-olive mb-2 section-heading-left">
              Envoyez-nous un message
            </h2>
            <p className="text-sm text-gray-500 mb-8 mt-6">
              Remplissez le formulaire ci-dessous et nous vous r&eacute;pondrons sous 48h
            </p>
            <ContactForm />
          </div>

          {/* Showrooms Info */}
          <div className="space-y-6">
            {[
              {
                name: 'Showroom SUD',
                address: '8 rue Benjamin Hoareau\nZI n\u00b03, 97410 Saint-Pierre',
                phone: '0262 35 06 79',
                phoneLink: '+262262350679',
                email: 'contact@dimexoi.fr',
                hours: 'Mardi - Samedi\n9h00 - 17h00',
                mapSrc: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3752.2649048697543!2d55.4750587!3d-21.3391803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2481dca06d6a6faf%3A0x5a4d6c8f1234567!2s8%20Rue%20Benjamin%20Hoareau%2C%2097410%20Saint-Pierre!5e0!3m2!1sfr!2sfr!4v1234567890',
              },
              {
                name: 'Showroom NORD',
                address: '43 rue Tourette\n97400 Saint-Denis',
                phone: '0262 20 30 30',
                phoneLink: '+262262203030',
                email: 'bernard@dimexoi.fr',
                hours: 'Mardi - Samedi\n10h00 - 13h00 & 14h00 - 18h00',
                mapSrc: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3753.1234567890!2d55.4567890!3d-20.8765432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2481f2c1234567!2s43%20Rue%20Tourette%2C%2097400%20Saint-Denis!5e0!3m2!1sfr!2sfr!4v1234567890',
              },
            ].map((showroom) => (
              <div key={showroom.name} className="bg-white p-8 border border-gray-100">
                <h3 className="text-2xl font-serif font-bold text-dark-olive mb-4">
                  {showroom.name}
                </h3>
                <div className="grid grid-cols-2 gap-4 mb-6 text-sm">
                  <div>
                    <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">Adresse</p>
                    <p className="font-medium text-dark-charcoal whitespace-pre-line">{showroom.address}</p>
                  </div>
                  <div>
                    <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">Horaires</p>
                    <p className="font-medium text-dark-charcoal whitespace-pre-line">{showroom.hours}</p>
                  </div>
                  <div>
                    <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">T&eacute;l&eacute;phone</p>
                    <a href={`tel:${showroom.phoneLink}`} className="font-semibold text-teak-brown hover:text-dark-olive transition-colors">
                      {showroom.phone}
                    </a>
                  </div>
                  <div>
                    <p className="text-xs text-gray-500 uppercase tracking-wider mb-1">Email</p>
                    <a href={`mailto:${showroom.email}`} className="font-medium text-teak-brown hover:text-dark-olive transition-colors text-sm">
                      {showroom.email}
                    </a>
                  </div>
                </div>
                <iframe
                  src={showroom.mapSrc}
                  width="100%"
                  height="200"
                  style={{ border: 0 }}
                  allowFullScreen
                  loading="lazy"
                ></iframe>
              </div>
            ))}
          </div>
        </div>

        {/* Info Banner */}
        <div className="bg-dark-olive text-off-white p-10">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            {[
              { title: 'R\u00e9ponse rapide', desc: 'Nous r\u00e9pondons dans les 48 heures', icon: 'M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z' },
              { title: 'Expertise', desc: '8 experts \u00e0 votre service', icon: 'M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z' },
              { title: 'Sur-mesure', desc: 'Adaptez chaque meuble', icon: 'M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z' },
            ].map((item, idx) => (
              <div key={idx}>
                <div className="w-12 h-12 flex items-center justify-center bg-white bg-opacity-10 rounded-full mx-auto mb-4">
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d={item.icon} />
                  </svg>
                </div>
                <h3 className="font-serif font-bold text-lg mb-2">{item.title}</h3>
                <p className="opacity-80 text-sm">{item.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </div>
    </main>
  );
}
