import { Metadata } from 'next';
import Breadcrumb from '@/src/components/Breadcrumb';

export const metadata: Metadata = {
  title: 'CGU - DIMEXOI',
  description: 'Conditions g\u00e9n\u00e9rales d\'utilisation du site DIMEXOI.',
};

export default function CGUPage() {
  return (
    <main className="min-h-screen bg-off-white">
      <div className="bg-dark-olive text-off-white py-14">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <Breadcrumb items={[{ label: 'Accueil', href: '/' }, { label: 'CGU' }]} />
          <h1 className="text-4xl font-serif font-bold mt-3">Conditions g&eacute;n&eacute;rales d&apos;utilisation</h1>
        </div>
      </div>

      <div className="max-w-3xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
        <div className="space-y-10 text-gray-700 text-sm leading-relaxed">
          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Objet
            </h2>
            <p className="mt-6">
              Les pr&eacute;sentes conditions g&eacute;n&eacute;rales d&apos;utilisation (CGU) r&eacute;gissent l&apos;acc&egrave;s et l&apos;utilisation du site dimexoi.re (ci-apr&egrave;s &quot;le Site&quot;), &eacute;dit&eacute; par la soci&eacute;t&eacute; DIMEXOI. En acc&eacute;dant au Site, vous acceptez sans r&eacute;serve les pr&eacute;sentes CGU.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Acc&egrave;s au site
            </h2>
            <p className="mt-6">
              Le Site est accessible gratuitement &agrave; tout utilisateur disposant d&apos;un acc&egrave;s &agrave; internet. DIMEXOI se r&eacute;serve le droit de suspendre ou d&apos;interrompre l&apos;acc&egrave;s au Site pour des raisons de maintenance ou de mise &agrave; jour.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Services propos&eacute;s
            </h2>
            <p className="mt-6">
              Le Site pr&eacute;sente le catalogue de mobilier en teck de DIMEXOI et permet aux utilisateurs de demander des devis personnalis&eacute;s et de contacter l&apos;&eacute;quipe DIMEXOI. Les prix ne sont pas affich&eacute;s en ligne et sont communiqu&eacute;s sur devis. Les photographies des produits sont donn&eacute;es &agrave; titre illustratif.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Demande de devis
            </h2>
            <p className="mt-6">
              Les demandes de devis effectu&eacute;es via le Site ne constituent pas un engagement d&apos;achat. DIMEXOI s&apos;engage &agrave; r&eacute;pondre dans les meilleurs d&eacute;lais. Les devis sont valables 30 jours &agrave; compter de leur &eacute;mission, sauf mention contraire.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Propri&eacute;t&eacute; intellectuelle
            </h2>
            <p className="mt-6">
              L&apos;ensemble des &eacute;l&eacute;ments du Site (textes, images, logos, marques, design) est prot&eacute;g&eacute; par le droit de la propri&eacute;t&eacute; intellectuelle. Toute reproduction ou utilisation non autoris&eacute;e est strictement interdite.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Modification des CGU
            </h2>
            <p className="mt-6">
              DIMEXOI se r&eacute;serve le droit de modifier les pr&eacute;sentes CGU &agrave; tout moment. Les modifications prennent effet d&egrave;s leur publication sur le Site. Il est recommand&eacute; de consulter r&eacute;guli&egrave;rement cette page.
            </p>
          </section>

          <section>
            <h2 className="font-serif font-bold text-2xl text-dark-olive mb-4 section-heading-left">
              Droit applicable
            </h2>
            <p className="mt-6">
              Les pr&eacute;sentes CGU sont soumises au droit fran&ccedil;ais. Tout litige sera port&eacute; devant les juridictions comp&eacute;tentes de Saint-Pierre de La R&eacute;union.
            </p>
          </section>
        </div>
      </div>
    </main>
  );
}
