import Link from 'next/link';

export default function NotFound() {
  return (
    <main className="min-h-screen bg-off-white flex items-center justify-center">
      <div className="text-center px-4">
        <p className="text-8xl font-serif font-bold text-dark-olive mb-4">404</p>
        <h1 className="text-3xl font-serif font-bold text-dark-charcoal mb-4">
          Page introuvable
        </h1>
        <p className="text-gray-600 mb-8 max-w-md mx-auto">
          D&eacute;sol&eacute;, la page que vous recherchez n&apos;existe pas ou a &eacute;t&eacute; d&eacute;plac&eacute;e.
        </p>
        <div className="flex flex-col sm:flex-row gap-4 justify-center">
          <Link href="/" className="btn-primary">
            Retour &agrave; l&apos;accueil
          </Link>
          <Link href="/catalogue" className="btn-outline">
            Voir le catalogue
          </Link>
        </div>
      </div>
    </main>
  );
}
