import { Metadata } from 'next';
import Breadcrumb from '@/src/components/Breadcrumb';

export const metadata: Metadata = {
  title: 'Mentions L\u00e9gales - DIMEXOI',
  description: 'Mentions l\u00e9gales du site DIMEXOI, mobilier en teck \u00e0 La R\u00e9union.',
};

export default function MentionsLegalesPage() {
  return (
    <main className="min-h-screen bg-off-white">
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb items={[{ label: 'Accueil', href: '/' }, { label: 'Mentions l\u00e9gales' }]} />
          <h1 className="text-4xl font-serif font-bold mt-3">Mentions l&eacute;gales</h1>
        </div>
      </div>

      <div className="max-w-3xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        <div className="space-y-10 text-gray-700 text-sm leading-relaxed">
          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              &Eacute;diteur du site
            </h2>
            <div className="mt-6 space-y-2">
              <p><strong>Raison sociale :</strong> DIMEXOI</p>
              <p><strong>Forme juridique :</strong> SARL</p>
              <p><strong>Si&egrave;ge social :</strong> 8 rue Benjamin Hoareau, ZI n&deg;3, 97410 Saint-Pierre, La R&eacute;union</p>
              <p><strong>T&eacute;l&eacute;phone :</strong> 0262 35 06 79</p>
              <p><strong>Email :</strong> contact@dimexoi.fr</p>
              <p><strong>SIRET :</strong> 402 268 247 00010</p>
              <p><strong>TVA intracommunautaire :</strong> FR11 402 268 247</p>
              <p><strong>Directeur de la publication :</strong> Laurence Payet</p>
            </div>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              H&eacute;bergeur
            </h2>
            <div className="mt-6 space-y-2">
              <p><strong>Nom :</strong> Vercel Inc.</p>
              <p><strong>Adresse :</strong> 440 N Barranca Ave #4133, Covina, CA 91723, USA</p>
              <p><strong>Site web :</strong> vercel.com</p>
            </div>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Propri&eacute;t&eacute; intellectuelle
            </h2>
            <p className="mt-6">
              L&apos;ensemble du contenu de ce site (textes, images, vid&eacute;os, logos, marques) est la propri&eacute;t&eacute; exclusive de DIMEXOI ou de ses partenaires. Toute reproduction, repr&eacute;sentation, modification, publication ou adaptation totale ou partielle est interdite sans l&apos;autorisation &eacute;crite pr&eacute;alable de DIMEXOI.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Responsabilit&eacute;
            </h2>
            <p className="mt-6">
              DIMEXOI met tout en &oelig;uvre pour fournir des informations exactes et &agrave; jour sur ce site. Toutefois, DIMEXOI ne saurait garantir l&apos;exactitude, la compl&eacute;tude ou l&apos;actualit&eacute; des informations diffus&eacute;es. Les photos des produits sont donn&eacute;es &agrave; titre indicatif et n&apos;ont pas de valeur contractuelle.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Droit applicable
            </h2>
            <p className="mt-6">
              Les pr&eacute;sentes mentions l&eacute;gales sont soumises au droit fran&ccedil;ais. En cas de litige, les tribunaux de Saint-Pierre de La R&eacute;union seront seuls comp&eacute;tents.
            </p>
          </section>
        </div>
      </div>
    </main>
  );
}
