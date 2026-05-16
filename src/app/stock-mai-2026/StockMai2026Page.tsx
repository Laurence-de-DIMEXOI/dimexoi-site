'use client';

import { useState, useRef } from 'react';
import Link from 'next/link';

// ── PRIX À METTRE À JOUR AVANT LE LANCEMENT ─────────────────────────────────
const PRODUITS = [
  { slug: 'sofia',       nom: 'Sofia',       categorie: 'Living',         prix: 4389 },
  { slug: 'baya',        nom: 'Baya',        categorie: 'Salle de bains', prix: 1879 },
  { slug: 'goa',         nom: 'Goa',         categorie: 'Salle de bains', prix: 729  },
  { slug: 'uluwatu',     nom: 'Uluwatu',     categorie: 'Salle de bains', prix: 629  },
  { slug: 'lemani',      nom: 'Lemani',      categorie: 'Dressing',       prix: 3279 },
  { slug: 'cassandre',   nom: 'Cassandre',   categorie: 'Salle de bains', prix: 1089 },
  { slug: 'evolia-wavy', nom: 'Evolia Wavy', categorie: 'Buffet',         prix: 2659 },
] as const;

type Produit = (typeof PRODUITS)[number];

function prixRemise(prix: number) { return Math.round(prix * 0.7); }
function eur(n: number) { return n.toLocaleString('fr-FR') + ' €'; }

// ── Image produit ─────────────────────────────────────────────────────────────
function ProductImage({ slug, nom }: { slug: string; nom: string }) {
  const [ext, setExt] = useState<'png' | 'jpg' | 'none'>('png');
  if (ext === 'none') {
    return (
      <div style={{
        position: 'absolute', inset: 0, background: '#1A1A1A',
        display: 'flex', alignItems: 'center', justifyContent: 'center',
        fontFamily: "'Playfair Display', serif",
        fontSize: 13, color: 'rgba(255,255,255,0.15)', fontStyle: 'italic',
      }}>
        {nom}
      </div>
    );
  }
  return (
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={"/stock-mai-2026/" + slug + "." + ext}
      alt={nom}
      onError={() => ext === 'png' ? setExt('jpg') : setExt('none')}
      style={{ position: 'absolute', inset: 0, width: '100%', height: '100%', objectFit: 'cover' }}
    />
  );
}

// ── Carte produit ─────────────────────────────────────────────────────────────
function ProductCard({ produit, selected, onSelect }: {
  produit: Produit; selected: boolean; onSelect: () => void;
}) {
  return (
    <div
      onClick={onSelect}
      style={{
        position: 'relative', aspectRatio: '3 / 4',
        overflow: 'hidden', cursor: 'pointer',
        background: '#1A1A1A',
        outline: selected ? '3px solid #C4661F' : '3px solid transparent',
        outlineOffset: '-3px',
        transition: 'outline 0.15s',
        WebkitTapHighlightColor: 'transparent',
      }}
    >
      <ProductImage slug={produit.slug} nom={produit.nom} />

      {/* Gradient */}
      <div style={{
        position: 'absolute', inset: 0, zIndex: 1,
        background: 'linear-gradient(to top, rgba(0,0,0,0.82) 0%, transparent 50%)',
      }} />

      {/* Badge −30% */}
      <div style={{
        position: 'absolute', top: 8, left: 8, zIndex: 3,
        background: '#C4661F', color: '#fff',
        fontFamily: "'Inter', sans-serif",
        fontSize: 10, fontWeight: 800,
        padding: '3px 8px', letterSpacing: '0.04em',
        animation: 'pulseDiscount 1.8s ease-in-out infinite',
      }}>
        &minus;30&nbsp;%
      </div>

      {/* ✓ */}
      {selected && (
        <div style={{
          position: 'absolute', top: 8, right: 8, zIndex: 3,
          width: 26, height: 26, borderRadius: '50%',
          background: '#C4661F', color: '#fff',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 13, fontWeight: 700,
        }}>
          &#10003;
        </div>
      )}

      {/* Infos bas */}
      <div style={{ position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 2, padding: '0.6rem 0.7rem' }}>
        <p style={{
          fontFamily: "'Inter', sans-serif", fontSize: 9,
          color: 'rgba(255,255,255,0.5)', fontWeight: 600,
          letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: 3,
        }}>
          {produit.categorie}
        </p>
        <p style={{
          fontFamily: "'Playfair Display', serif",
          fontSize: 13, color: '#fff', fontStyle: 'italic',
          fontWeight: 600, lineHeight: 1.2, marginBottom: 4,
        }}>
          {produit.nom}
        </p>
        <div style={{ display: 'flex', alignItems: 'baseline', gap: 5, flexWrap: 'wrap' }}>
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 13, fontWeight: 700, color: '#F9EBC7' }}>
            {eur(prixRemise(produit.prix))}
          </span>
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 10, color: 'rgba(255,255,255,0.3)', textDecoration: 'line-through' }}>
            {eur(produit.prix)}
          </span>
        </div>
      </div>
    </div>
  );
}

// ── Page principale ───────────────────────────────────────────────────────────
export default function StockMai2026Page() {
  const [selectedSlug, setSelectedSlug] = useState<string | null>(null);
  const [form, setForm] = useState({ prenom: '', nom: '', email: '', telephone: '', showroom: '', rgpd: false });
  const [status, setStatus] = useState<'idle' | 'loading' | 'success' | 'error'>('idle');
  const [errorMsg, setErrorMsg] = useState('');
  const [submittedProduit, setSubmittedProduit] = useState<Produit | null>(null);
  const formRef = useRef<HTMLDivElement>(null);

  const selectedProduit = PRODUITS.find(p => p.slug === selectedSlug) ?? null;

  function handleSelect(slug: string) {
    const next = slug === selectedSlug ? null : slug;
    setSelectedSlug(next);
    if (status === 'success') setStatus('idle');
    if (next) {
      setTimeout(() => formRef.current?.scrollIntoView({ behavior: 'smooth', block: 'start' }), 100);
    }
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!selectedProduit) return;
    setStatus('loading');
    setErrorMsg('');
    try {
      const res = await fetch('/api/leads/stock-mai-2026', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          prenom: form.prenom, nom: form.nom,
          email: form.email, telephone: form.telephone,
          showroom: form.showroom, rgpd: form.rgpd,
          meuble: selectedProduit.nom, meubleSlug: selectedProduit.slug,
        }),
      });
      if (!res.ok) throw new Error('Erreur serveur');
      setStatus('success');
      setSubmittedProduit(selectedProduit);
    } catch {
      setStatus('error');
      setErrorMsg("Une erreur s'est produite. Veuillez réessayer.");
    }
  }

  return (
    <>
      <style>{`
        @keyframes pulseDiscount {
          0%, 100% { opacity: 1; transform: scale(1); }
          50%       { opacity: 0.82; transform: scale(1.09); }
        }
        @keyframes ticker {
          from { transform: translateX(0); }
          to   { transform: translateX(-50%); }
        }
        body { overflow-y: auto !important; }

        .sm26-input {
          width: 100%;
          padding: 0.75rem 1rem;
          border: 1.5px solid #E5E5E5;
          border-radius: 0;
          font-size: 16px;
          font-family: 'Inter', sans-serif;
          background: #FFF;
          color: #0D0D0D;
          transition: border-color 0.2s;
          box-sizing: border-box;
          -webkit-appearance: none;
        }
        .sm26-input:focus { outline: none; border-color: #111; }
        .sm26-input::placeholder { color: #C0C0C0; }

        .sm26-grid {
          display: grid;
          grid-template-columns: repeat(7, 1fr);
          gap: 3px;
          background: #0D0D0D;
        }
        @media (max-width: 900px) {
          .sm26-grid { grid-template-columns: repeat(4, 1fr); }
        }
        @media (max-width: 560px) {
          .sm26-grid { grid-template-columns: repeat(2, 1fr); gap: 2px; }
        }

        .sm26-form-grid {
          display: grid;
          grid-template-columns: 1fr 1fr;
          gap: 0.75rem;
        }
        @media (max-width: 480px) {
          .sm26-form-grid { grid-template-columns: 1fr; }
        }
      `}</style>

      <div style={{ fontFamily: "'Inter', sans-serif", color: '#0D0D0D', background: '#0D0D0D', minHeight: '100vh' }}>

        {/* ── Header ── */}
        <div style={{
          background: '#111', padding: '0.85rem 1.5rem',
          display: 'flex', alignItems: 'center', justifyContent: 'space-between',
          position: 'sticky', top: 0, zIndex: 50,
        }}>
          <Link href="/" style={{ color: '#FFF', textDecoration: 'none', fontFamily: "'Playfair Display', serif", fontSize: 18, fontWeight: 600, letterSpacing: '0.14em', textTransform: 'uppercase' }}>
            DIMEXOI
          </Link>
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 11, color: '#C4661F', fontWeight: 600, letterSpacing: '0.08em', textTransform: 'uppercase' }}>
            Teck Days &middot; &minus;30&nbsp;%
          </span>
        </div>

        {/* ── Ticker ── */}
        <div style={{ background: '#C4661F', overflow: 'hidden', whiteSpace: 'nowrap', padding: '0.4rem 0' }}>
          <span style={{
            display: 'inline-block',
            animation: 'ticker 24s linear infinite',
            fontFamily: "'Inter', sans-serif",
            fontSize: 10, fontWeight: 700, color: '#FFF',
            letterSpacing: '0.14em', textTransform: 'uppercase',
          }}>
            {'  —  ⚡ EN STOCK  ·  STOCK ULTRA LIMITÉ  ·  −30 %  ·  31 MAI 2026  ·  TECK MASSIF  ·  2 SHOWROOMS  '.repeat(8)}
          </span>
        </div>

        {/* ── Galerie pleine largeur ── */}
        <div className="sm26-grid">
          {PRODUITS.map(p => (
            <ProductCard
              key={p.slug}
              produit={p}
              selected={selectedSlug === p.slug}
              onSelect={() => handleSelect(p.slug)}
            />
          ))}
        </div>

        {/* ── Formulaire ── */}
        <div ref={formRef} style={{ background: '#FFF', borderTop: '3px solid #C4661F' }}>
          <div style={{ maxWidth: 680, margin: '0 auto', padding: 'clamp(2rem, 6vw, 3.5rem) clamp(1.25rem, 5vw, 2rem)' }}>

            {status === 'success' && submittedProduit ? (
              /* Succès */
              <div style={{ textAlign: 'center', padding: '2rem 0' }}>
                <div style={{ width: 60, height: 60, borderRadius: '50%', border: '2px solid #C4661F', display: 'flex', alignItems: 'center', justifyContent: 'center', fontSize: 26, color: '#C4661F', margin: '0 auto 1.5rem' }}>
                  &#10003;
                </div>
                <h2 style={{ fontFamily: "'Playfair Display', serif", fontSize: 24, color: '#0D0D0D', fontStyle: 'italic', fontWeight: 600, marginBottom: '0.6rem' }}>
                  R&eacute;servation enregistr&eacute;e
                </h2>
                <p style={{ color: '#666', lineHeight: 1.8, fontSize: 15 }}>
                  Notre &eacute;quipe vous contacte sous <strong style={{ color: '#0D0D0D' }}>24h ouvr&eacute;es</strong>.<br />
                  <span style={{ color: '#AAA', fontSize: 14 }}>{submittedProduit.nom} &mdash; {eur(prixRemise(submittedProduit.prix))}</span>
                </p>
              </div>
            ) : (
              <>
                {/* En-tête formulaire */}
                <div style={{ marginBottom: '2rem' }}>
                  <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 11, color: '#C4661F', fontWeight: 600, letterSpacing: '0.14em', textTransform: 'uppercase', marginBottom: '0.4rem' }}>
                    &minus;30&nbsp;% · Stock Mai 2026
                  </p>
                  <h2 style={{ fontFamily: "'Playfair Display', serif", fontSize: 'clamp(1.4rem, 3vw, 1.8rem)', color: '#0D0D0D', fontWeight: 600, fontStyle: 'italic', marginBottom: '1rem' }}>
                    R&eacute;server ce meuble
                  </h2>

                  {/* Produit sélectionné */}
                  {selectedProduit ? (
                    <div style={{ borderLeft: '3px solid #C4661F', paddingLeft: '1rem', background: '#FAFAFA', padding: '0.75rem 1rem' }}>
                      <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 10, color: '#AAA', fontWeight: 600, letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: 4 }}>
                        S&eacute;lectionn&eacute;
                      </p>
                      <p style={{ fontFamily: "'Playfair Display', serif", fontSize: 17, color: '#0D0D0D', fontStyle: 'italic', display: 'flex', alignItems: 'baseline', gap: '0.6rem', flexWrap: 'wrap' }}>
                        {selectedProduit.nom}
                        <span style={{ fontFamily: "'Inter', sans-serif", fontStyle: 'normal', fontWeight: 700, color: '#C4661F', fontSize: 15 }}>
                          {eur(prixRemise(selectedProduit.prix))}
                        </span>
                        <span style={{ fontFamily: "'Inter', sans-serif", fontStyle: 'normal', fontSize: 12, color: '#CCC', textDecoration: 'line-through' }}>
                          {eur(selectedProduit.prix)}
                        </span>
                      </p>
                    </div>
                  ) : (
                    <div style={{ padding: '0.8rem 1rem', background: '#F7F7F7', border: '1px dashed #DDD', textAlign: 'center' }}>
                      <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 13, color: '#BBB' }}>
                        &#8593; Cliquez sur un meuble ci-dessus pour le s&eacute;lectionner
                      </p>
                    </div>
                  )}
                </div>

                {/* Champs */}
                <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1rem' }}>
                  <div className="sm26-form-grid">
                    <div>
                      <label style={labelStyle}>Pr&eacute;nom *</label>
                      <input type="text" required className="sm26-input" placeholder="Jean" value={form.prenom} onChange={e => setForm(f => ({ ...f, prenom: e.target.value }))} />
                    </div>
                    <div>
                      <label style={labelStyle}>Nom</label>
                      <input type="text" className="sm26-input" placeholder="Dupont" value={form.nom} onChange={e => setForm(f => ({ ...f, nom: e.target.value }))} />
                    </div>
                  </div>

                  <div>
                    <label style={labelStyle}>Email *</label>
                    <input type="email" required className="sm26-input" placeholder="jean.dupont@email.com" value={form.email} onChange={e => setForm(f => ({ ...f, email: e.target.value }))} />
                  </div>

                  <div>
                    <label style={labelStyle}>T&eacute;l&eacute;phone</label>
                    <input type="tel" className="sm26-input" placeholder="0692 XX XX XX" value={form.telephone} onChange={e => setForm(f => ({ ...f, telephone: e.target.value }))} />
                  </div>

                  <div>
                    <label style={labelStyle}>Showroom *</label>
                    <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.6rem', marginTop: '0.4rem' }}>
                      {([
                        { code: 'SAINT_PIERRE', label: 'Saint-Pierre (Sud)' },
                        { code: 'SAINT_DENIS',  label: 'Saint-Denis (Nord)'  },
                      ] as const).map(({ code, label }) => (
                        <label key={code} style={{
                          display: 'flex', alignItems: 'center', gap: '0.6rem',
                          padding: '0.75rem 1rem', cursor: 'pointer', minHeight: 48,
                          border: form.showroom === code ? '1.5px solid #111' : '1.5px solid #E5E5E5',
                          background: form.showroom === code ? '#111' : '#FFF',
                          fontFamily: "'Inter', sans-serif", fontSize: 14,
                          color: form.showroom === code ? '#FFF' : '#444',
                          fontWeight: form.showroom === code ? 600 : 400,
                          transition: 'all 0.15s',
                        }}>
                          <input type="radio" name="showroom" value={code} required checked={form.showroom === code} onChange={e => setForm(f => ({ ...f, showroom: e.target.value }))} style={{ accentColor: '#C4661F', width: 16, height: 16 }} />
                          {label}
                        </label>
                      ))}
                    </div>
                  </div>

                  <label style={{ display: 'flex', alignItems: 'flex-start', gap: '0.65rem', cursor: 'pointer', minHeight: 44 }}>
                    <input type="checkbox" required checked={form.rgpd} onChange={e => setForm(f => ({ ...f, rgpd: e.target.checked }))} style={{ marginTop: 4, accentColor: '#C4661F', flexShrink: 0, width: 16, height: 16 }} />
                    <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 12, color: '#999', lineHeight: 1.6 }}>
                      J&apos;accepte que DIMEXOI utilise mes coordonn&eacute;es pour me recontacter au sujet de ma demande.
                    </span>
                  </label>

                  {status === 'error' && errorMsg && (
                    <p style={{ color: '#C4661F', fontSize: 13, padding: '0.75rem', background: '#FFF8F4', border: '1px solid #F9EBC7', fontFamily: "'Inter', sans-serif" }}>
                      {errorMsg}
                    </p>
                  )}

                  <button
                    type="submit"
                    disabled={!selectedProduit || status === 'loading'}
                    className="btn-primary"
                    style={{
                      width: '100%', justifyContent: 'center', minHeight: 52, fontSize: 14,
                      opacity: (!selectedProduit || status === 'loading') ? 0.45 : 1,
                      cursor: (!selectedProduit || status === 'loading') ? 'not-allowed' : 'pointer',
                    }}
                  >
                    {status === 'loading' ? 'Envoi en cours...' : "Réserver ce meuble →"}
                  </button>

                  <p style={{ textAlign: 'center', fontSize: 11, color: '#BBB', fontFamily: "'Inter', sans-serif" }}>
                    Stock limit&eacute; &bull; Rappel sous 24h &bull; Offre jusqu&apos;au 31 mai 2026
                  </p>
                </form>
              </>
            )}
          </div>
        </div>

        {/* ── Footer ── */}
        <div style={{ background: '#111', color: 'rgba(255,255,255,0.35)', textAlign: 'center', padding: '1.25rem 1rem', fontFamily: "'Inter', sans-serif", fontSize: 12 }}>
          DIMEXOI &middot; Mobilier en teck depuis 1995 &middot; La R&eacute;union &nbsp;&middot;&nbsp;
          <Link href="/" style={{ color: 'rgba(255,255,255,0.35)', textDecoration: 'underline' }}>dimexoi.fr</Link>
        </div>
      </div>
    </>
  );
}

const labelStyle: React.CSSProperties = {
  display: 'block',
  fontFamily: "'Inter', sans-serif",
  fontSize: 12, fontWeight: 500, color: '#555',
  marginBottom: '0.35rem',
};
