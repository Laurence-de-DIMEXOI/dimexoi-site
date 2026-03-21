export default function ClubManifeste() {
  return (
    <section className="py-20 md:py-28 px-6">
      <div className="max-w-xl mx-auto text-center">
        <h2
          className="text-2xl md:text-3xl mb-10"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
        >
          Le bois se mérite. Votre fidélité aussi.
        </h2>
        <div className="space-y-6 text-base leading-relaxed" style={{ fontFamily: 'Inter, sans-serif', color: '#515712' }}>
          <p>
            <em>Tectona Grandis</em> - c&apos;est le nom scientifique du teck, ce bois
            d&apos;exception qui voyage d&apos;Indonésie jusqu&apos;à La Réunion pour prendre sa place
            dans votre intérieur. Le Club Tectona porte son nom parce que notre histoire
            commence là : dans la noblesse du matériau.
          </p>
          <p className="mb-2">Chaque palier s&apos;inspire de l&apos;arbre lui-même :</p>
          <ul className="text-left max-w-sm mx-auto space-y-1.5 text-sm">
            <li><strong>L&apos;Écorce</strong> - la première couche protectrice</li>
            <li><strong>L&apos;Aubier</strong> - le bois vivant sous l&apos;écorce</li>
            <li><strong>Le Cœur</strong> - le duramen, la partie la plus précieuse</li>
            <li><strong>Le Grain</strong> - la texture qui fait la signature de chaque pièce</li>
            <li><strong>Le Tectona Grandis</strong> - l&apos;arbre entier, pour ceux qui font partie de l&apos;histoire Dimexoi</li>
          </ul>
          <p>
            Cinq niveaux. Des remises nominatives sur les meubles en teck.
            Jusqu&apos;à 25&nbsp;% à vie pour nos membres les plus fidèles.
          </p>
        </div>
      </div>
    </section>
  );
}
