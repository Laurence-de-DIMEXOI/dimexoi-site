import Link from 'next/link';

export default function Footer() {
  return (
    <footer className="bg-dark-charcoal text-off-white">
      <div className="container mx-auto px-4 py-12">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8">
          {/* Brand */}
          <div>
            <h3 className="text-2xl font-serif font-bold mb-4">DIMEXOI</h3>
            <p className="text-gray-300 text-sm mb-4">
              Mobilier en teck d'exception depuis 1995. Savoir-faire artisanal, 100% teck massif.
            </p>
            <p className="text-xs text-gray-400">BOIS.d'Orient by DIMEXOI</p>
          </div>

          {/* Showroom Sud */}
          <div>
            <h4 className="font-serif font-bold mb-4">Showroom SUD</h4>
            <p className="text-gray-300 text-sm mb-2">
              8 rue Benjamin Hoareau<br />
              ZI n°3, 97410 Saint-Pierre
            </p>
            <p className="text-gray-300 text-sm mb-2">
              <a href="tel:+262262350679" className="hover:text-teak-brown">
                0262 35 06 79
              </a>
            </p>
            <p className="text-gray-300 text-sm mb-2">
              <a href="mailto:contact@dimexoi.fr" className="hover:text-teak-brown">
                contact@dimexoi.fr
              </a>
            </p>
            <p className="text-gray-400 text-xs">
              Mar - Sam : 9h - 17h
            </p>
          </div>

          {/* Showroom Nord */}
          <div>
            <h4 className="font-serif font-bold mb-4">Showroom NORD</h4>
            <p className="text-gray-300 text-sm mb-2">
              43 rue Tourette<br />
              97400 Saint-Denis
            </p>
            <p className="text-gray-300 text-sm mb-2">
              <a href="tel:+262262203030" className="hover:text-teak-brown">
                0262 20 30 30
              </a>
            </p>
            <p className="text-gray-300 text-sm mb-2">
              <a href="mailto:bernard.runasia@gmail.com" className="hover:text-teak-brown">
                bernard.runasia@gmail.com
              </a>
            </p>
            <p className="text-gray-400 text-xs">
              Mar - Sam : 10h - 13h & 14h - 18h
            </p>
          </div>

          {/* Quick Links */}
          <div>
            <h4 className="font-serif font-bold mb-4">Navigation</h4>
            <ul className="text-gray-300 text-sm space-y-2">
              <li>
                <Link href="/catalogue" className="hover:text-teak-brown">
                  Catalogue
                </Link>
              </li>
              <li>
                <Link href="/collections" className="hover:text-teak-brown">
                  Collections
                </Link>
              </li>
              <li>
                <Link href="/devis" className="hover:text-teak-brown">
                  Demander un devis
                </Link>
              </li>
              <li>
                <Link href="/a-propos" className="hover:text-teak-brown">
                  À propos
                </Link>
              </li>
              <li>
                <Link href="/contact" className="hover:text-teak-brown">
                  Contact
                </Link>
              </li>
            </ul>
          </div>
        </div>

        {/* Newsletter */}
        <div className="border-t border-gray-700 py-8 mb-8">
          <h4 className="font-serif font-bold mb-4">Restez informé</h4>
          <p className="text-gray-300 text-sm mb-4">
            Recevez nos dernières collections et actualités
          </p>
          <form className="flex gap-2">
            <input
              type="email"
              placeholder="Votre email"
              className="flex-1 px-4 py-2 rounded text-dark-charcoal text-sm"
              required
            />
            <button
              type="submit"
              className="bg-teak-brown text-off-white px-6 py-2 rounded font-semibold hover:bg-dark-olive transition-colors text-sm"
            >
              S'abonner
            </button>
          </form>
        </div>

        {/* Bottom */}
        <div className="border-t border-gray-700 pt-8 flex flex-col md:flex-row justify-between items-center text-gray-400 text-xs">
          <p>&copy; 2024 DIMEXOI. Tous droits réservés.</p>
          <div className="flex gap-6 mt-4 md:mt-0">
            <Link href="#" className="hover:text-teak-brown">
              Mentions légales
            </Link>
            <Link href="#" className="hover:text-teak-brown">
              Confidentialité
            </Link>
            <Link href="#" className="hover:text-teak-brown">
              CGU
            </Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
