import ClubHero from '@/src/components/club/ClubHero';
import ClubManifeste from '@/src/components/club/ClubManifeste';
import ClubNiveaux from '@/src/components/club/ClubNiveaux';
import ClubCarte from '@/src/components/club/ClubCarte';
import ClubRejoindre from '@/src/components/club/ClubRejoindre';
import ClubFaq from '@/src/components/club/ClubFaq';
import ClubFooter from '@/src/components/club/ClubFooter';

export default function ClubGrandisPage() {
  return (
    <div className="bg-white text-[#515712]">
      <ClubHero />
      <ClubManifeste />
      <ClubNiveaux />
      <ClubCarte />
      <ClubRejoindre />
      <ClubFaq />
      <ClubFooter />
    </div>
  );
}
