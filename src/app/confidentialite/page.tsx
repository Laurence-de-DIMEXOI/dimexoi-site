import { Metadata } from 'next';
import Breadcrumb from '@/src/components/Breadcrumb';

export const metadata: Metadata = {
  title: 'Politique de confidentialit\u00e9 - DIMEXOI',
  description: 'Politique de confidentialit\u00e9 et protection des donn\u00e9es personnelles du site DIMEXOI.',
};

export default function ConfidentialitePage() {
  return (
    <main className="min-h-screen bg-off-white">
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb items={[{ label: 'Accueil', href: '/' }, { label: 'Confidentialit\u00e9' }]} />
          <h1 className="text-4xl font-serif font-bold mt-3">Politique de confidentialit&eacute;</h1>
        </div>
      </div>

      <div className="max-w-3xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        <div className="space-y-10 text-gray-700 text-sm leading-relaxed">
          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Collecte des donn&eacute;es
            </h2>
            <p className="mt-6">
              DIMEXOI collecte les donn&eacute;es personnelles que vous nous transmettez volontairement via nos formulaires de contact et de demande de devis : nom, pr&eacute;nom, adresse email, num&eacute;ro de t&eacute;l&eacute;phone et message.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Finalit&eacute; du traitement
            </h2>
            <div className="mt-6 space-y-2">
              <p>Vos donn&eacute;es sont collect&eacute;es pour :</p>
              <ul className="list-disc list-inside space-y-1 mt-2 ml-4">
                <li>R&eacute;pondre &agrave; vos demandes de contact et de devis</li>
                <li>Vous envoyer des informations commerciales (si vous y avez consenti)</li>
                <li>Am&eacute;liorer nos services et votre exp&eacute;rience sur le site</li>
                <li>Analyser le trafic du site de mani&egrave;re anonyme</li>
              </ul>
            </div>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Dur&eacute;e de conservation
            </h2>
            <p className="mt-6">
              Vos donn&eacute;es personnelles sont conserv&eacute;es pendant une dur&eacute;e maximale de 3 ans &agrave; compter de votre dernier contact avec DIMEXOI, sauf obligation l&eacute;gale de conservation plus longue.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Vos droits (RGPD)
            </h2>
            <div className="mt-6 space-y-2">
              <p>Conform&eacute;ment au R&egrave;glement G&eacute;n&eacute;ral sur la Protection des Donn&eacute;es (RGPD), vous disposez des droits suivants :</p>
              <ul className="list-disc list-inside space-y-1 mt-2 ml-4">
                <li><strong>Droit d&apos;acc&egrave;s</strong> : obtenir une copie de vos donn&eacute;es</li>
                <li><strong>Droit de rectification</strong> : corriger vos donn&eacute;es</li>
                <li><strong>Droit &agrave; l&apos;effacement</strong> : supprimer vos donn&eacute;es</li>
                <li><strong>Droit &agrave; la portabilit&eacute;</strong> : r&eacute;cup&eacute;rer vos donn&eacute;es</li>
                <li><strong>Droit d&apos;opposition</strong> : vous opposer au traitement</li>
              </ul>
              <p className="mt-4">
                Pour exercer ces droits, contactez-nous &agrave; : <a href="mailto:contact@dimexoi.fr" className="text-teak-brown hover:text-dark-olive">contact@dimexoi.fr</a>
              </p>
            </div>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Cookies
            </h2>
            <div className="mt-6 space-y-2">
              <p>Ce site utilise des cookies pour :</p>
              <ul className="list-disc list-inside space-y-1 mt-2 ml-4">
                <li><strong>Cookies essentiels</strong> : fonctionnement du site (pr&eacute;f&eacute;rences de cookies)</li>
                <li><strong>Cookies analytiques</strong> : mesure d&apos;audience via Google Analytics (anonymis&eacute;)</li>
              </ul>
              <p className="mt-2">
                Vous pouvez g&eacute;rer vos pr&eacute;f&eacute;rences de cookies via le bandeau affich&eacute; lors de votre premi&egrave;re visite.
              </p>
            </div>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Contact DPO
            </h2>
            <p className="mt-6">
              Pour toute question relative &agrave; la protection de vos donn&eacute;es, contactez-nous &agrave; :<br />
              <strong>DIMEXOI</strong> - 8 rue Benjamin Hoareau, ZI n&deg;3, 97410 Saint-Pierre<br />
              Email : <a href="mailto:contact@dimexoi.fr" className="text-teak-brown hover:text-dark-olive">contact@dimexoi.fr</a>
            </p>
          </section>
        </div>
      </div>
    </main>
  );
}
