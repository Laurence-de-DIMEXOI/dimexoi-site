import { CLUB_NIVEAUX } from '@/src/data/club-grandis';

export default function ClubNiveaux() {
  return (
    <section id="les-cinq-cercles" className="py-20 md:py-28 px-6">
      <div className="max-w-6xl mx-auto">
        <h2
          className="text-2xl md:text-3xl text-center mb-16"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
        >
          Les cinq cercles
        </h2>

        {/* Desktop : grille 3 + 2 centré */}
        <div className="hidden md:grid md:grid-cols-3 gap-6 mb-6">
          {CLUB_NIVEAUX.slice(0, 3).map((n) => (
            <Card key={n.niveau} n={n} />
          ))}
        </div>
        <div className="hidden md:grid md:grid-cols-2 gap-6 max-w-[calc(66.666%+0.75rem)] mx-auto">
          {CLUB_NIVEAUX.slice(3).map((n) => (
            <Card key={n.niveau} n={n} />
          ))}
        </div>

        {/* Mobile : liste verticale */}
        <div className="md:hidden space-y-4">
          {CLUB_NIVEAUX.map((n) => (
            <Card key={n.niveau} n={n} />
          ))}
        </div>
      </div>
    </section>
  );
}

function Card({ n }: { n: typeof CLUB_NIVEAUX[number] }) {
  return (
    <div
      className="border p-6 md:p-8 flex flex-col h-full"
      style={{ borderColor: 'rgba(81,87,18,0.3)' }}
    >
      {/* En-tête */}
      <div className="flex items-baseline gap-4 mb-1">
        <span
          className="text-3xl md:text-4xl leading-none"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: 'rgba(81,87,18,0.85)' }}
        >
          {n.rom}
        </span>
        <span
          className="text-lg md:text-xl"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", letterSpacing: '0.08em', color: '#515712' }}
        >
          {n.nom}
        </span>
      </div>

      {/* Seuil */}
      <p className="text-xs mb-5" style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.45)' }}>
        {n.seuil}
      </p>

      {/* Remise */}
      <div className="mb-5">
        <span
          className="text-3xl md:text-4xl font-normal"
          style={{ fontFamily: "'Perandory', 'Cormorant Garamond', serif", color: '#515712' }}
        >
          −{n.remise}&nbsp;%
        </span>
        <p className="text-xs mt-1" style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.5)' }}>
          {n.remiseDetail}
        </p>
      </div>

      {/* Séparateur */}
      <div className="w-8 h-px mb-5" style={{ backgroundColor: 'rgba(81,87,18,0.2)' }} />

      {/* Avantages */}
      <ul className="space-y-2 flex-1">
        {n.avantages.map((a, j) => (
          <li
            key={j}
            className="text-sm flex items-start gap-2"
            style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.7)' }}
          >
            <span className="mt-1.5 w-1 h-1 rounded-full flex-shrink-0" style={{ backgroundColor: '#515712' }} />
            {a}
          </li>
        ))}
      </ul>
      {'note' in n && n.note && (
        <p className="text-[10px] mt-3" style={{ fontFamily: 'Inter, sans-serif', color: 'rgba(81,87,18,0.35)' }}>
          {n.note}
        </p>
      )}
    </div>
  );
}
