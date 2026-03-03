import Link from 'next/link';

export default function Footer() {
  return (
    <footer className="bg-dark-charcoal text-gray-300">
      <div className="container mx-auto py-16">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10 mb-12">
          {/* Brand */}
          <div>
            <Link href="/" className="inline-block mb-6">
              <span className="text-xl font-serif font-bold text-off-white border-2 border-off-white px-3 py-1 tracking-wide">
                DIMEXOI
              </span>
            </Link>
            <p className="text-sm leading-relaxed mb-4">
              Mobilier en teck d&apos;exception depuis 1995. Savoir-faire artisanal, 100% teck massif Tectona Grandis.
            </p>
            <p className="text-xs text-gray-500 uppercase tracking-wider">
              BOIS.d&apos;Orient by DIMEXOI
            </p>
          </div>

          {/* Showroom Sud */}
          <div>
            <h4 className="text-off-white font-sans font-semibold text-xs uppercase tracking-widest mb-6">
              Showroom SUD
            </h4>
            <div className="space-y-2 text-sm">
              <p>8 rue Benjamin Hoareau</p>
              <p>ZI n&deg;3, 97410 Saint-Pierre</p>
              <p className="pt-2">
                <a href="tel:+262262350679" className="text-teak-brown hover:text-off-white transition-colors font-medium">
                  0262 35 06 79
                </a>
              </p>
              <p>
                <a href="mailto:contact@dimexoi.fr" className="hover:text-off-white transition-colors">
                  contact@dimexoi.fr
                </a>
              </p>
              <p className="text-xs text-gray-500 pt-2">Mar - Sam : 9h - 17h</p>
            </div>
          </div>

          {/* Showroom Nord */}
          <div>
            <h4 className="text-off-white font-sans font-semibold text-xs uppercase tracking-widest mb-6">
              Showroom NORD
            </h4>
            <div className="space-y-2 text-sm">
              <p>43 rue Tourette</p>
              <p>97400 Saint-Denis</p>
              <p className="pt-2">
                <a href="tel:+262262203030" className="text-teak-brown hover:text-off-white transition-colors font-medium">
                  0262 20 30 30
                </a>
              </p>
              <p>
                <a href="mailto:bernard.runasia@gmail.com" className="hover:text-off-white transition-colors">
                  bernard.runasia@gmail.com
                </a>
              </p>
              <p className="text-xs text-gray-500 pt-2">Mar - Sam : 10h-13h &amp; 14h-18h</p>
            </div>
          </div>

          {/* Navigation */}
          <div>
            <h4 className="text-off-white font-sans font-semibold text-xs uppercase tracking-widest mb-6">
              Navigation
            </h4>
            <ul className="space-y-2 text-sm">
              {[
                { href: '/catalogue', label: 'Catalogue' },
                { href: '/collections', label: 'Collections' },
                { href: '/devis', label: 'Demander un devis' },
                { href: '/a-propos', label: 'Notre histoire' },
                { href: '/contact', label: 'Contact' },
              ].map((link) => (
                <li key={link.href}>
                  <Link href={link.href} className="hover:text-teak-brown transition-colors">
                    {link.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>
        </div>

        {/* Newsletter */}
        <div className="border-t border-gray-700 pt-10 mb-10">
          <div className="max-w-md">
            <h4 className="text-off-white font-serif text-lg font-bold mb-2">Restez informe</h4>
            <p className="text-sm mb-4">Recevez nos dernieres collections et actualites</p>
            <form className="flex">
              <input
                type="email"
                placeholder="Votre email"
                className="flex-1 px-4 py-3 bg-white bg-opacity-10 border border-gray-600 text-off-white text-sm placeholder-gray-500 focus:outline-none focus:border-teak-brown transition-colors"
                required
              />
              <button
                type="submit"
                className="bg-teak-brown text-off-white px-6 py-3 font-semibold text-sm uppercase tracking-wider hover:bg-teak-light transition-colors"
              >
                OK
              </button>
            </form>
          </div>
        </div>

        {/* Bottom */}
        <div className="border-t border-gray-700 pt-8 flex flex-col md:flex-row justify-between items-center text-gray-500 text-xs">
          <p>&copy; {new Date().getFullYear()} DIMEXOI. Tous droits reserves.</p>
          <div className="flex gap-6 mt-4 md:mt-0">
            <Link href="#" className="hover:text-teak-brown transition-colors">Mentions legales</Link>
            <Link href="#" className="hover:text-teak-brown transition-colors">Confidentialite</Link>
            <Link href="#" className="hover:text-teak-brown transition-colors">CGU</Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
