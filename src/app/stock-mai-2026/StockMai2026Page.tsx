'use client';

import { useState } from 'react';
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

// ── Image avec fallback png → jpg ─────────────────────────────────────────────
function ProductImage({ slug, nom }: { slug: string; nom: string }) {
  const [ext, setExt] = useState<'png' | 'jpg' | 'none'>('png');
  if (ext === 'none') {
    return (
      <div style={{
        position: 'absolute', inset: 0,
        display: 'flex', alignItems: 'center', justifyContent: 'center',
        background: '#1A1A1A',
        fontFamily: "'Playfair Display', serif",
        fontSize: 14, color: 'rgba(255,255,255,0.18)', fontStyle: 'italic',
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

// ── Carte galerie ─────────────────────────────────────────────────────────────
function GalleryCard({ produit, selected, onSelect }: {
  produit: Produit; selected: boolean; onSelect: () => void;
}) {
  return (
    <div
      onClick={onSelect}
      style={{
        position: 'relative',
        aspectRatio: '3 / 4',
        overflow: 'hidden',
        cursor: 'pointer',
        background: '#1A1A1A',
        outline: selected ? '3px solid #C4661F' : '3px solid transparent',
        outlineOffset: '-3px',
        transition: 'outline 0.15s',
        WebkitTapHighlightColor: 'transparent',
      }}
    >
      <ProductImage slug={produit.slug} nom={produit.nom} />

      {/* Gradient bas */}
      <div style={{
        position: 'absolute', inset: 0,
        background: selected
          ? 'linear-gradient(to top, rgba(0,0,0,0.85) 0%, rgba(196,102,31,0.1) 55%, transparent 100%)'
          : 'linear-gradient(to top, rgba(0,0,0,0.80) 0%, transparent 52%)',
        transition: 'background 0.2s',
        zIndex: 1,
      }} />

      {/* Badge −30% */}
      <div style={{
        position: 'absolute', top: 8, left: 8, zIndex: 3,
        background: '#C4661F', color: '#fff',
        fontFamily: "'Inter', sans-serif",
        fontSize: 10, fontWeight: 800,
        padding: '3px 8px', letterSpacing: '0.05em',
        animation: 'pulseDiscount 1.8s ease-in-out infinite',
      }}>
        &minus;30&nbsp;%
      </div>

      {/* ✓ sélectionné */}
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

      {/* Infos */}
      <div style={{ position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 2, padding: '0.6rem 0.7rem' }}>
        <p style={{
          fontFamily: "'Inter', sans-serif",
          fontSize: 9, color: 'rgba(255,255,255,0.5)',
          fontWeight: 600, letterSpacing: '0.1em',
          textTransform: 'uppercase', marginBottom: 3,
        }}>
          {produit.categorie}
        </p>
        <p style={{
          fontFamily: "'Playfair Display', serif",
          fontSize: 13, color: '#fff',
          fontStyle: 'italic', fontWeight: 600,
          lineHeight: 1.2, marginBottom: 4,
        }}>
          {produit.nom}
        </p>
        <div style={{ display: 'flex', alignItems: 'baseline', gap: 5, flexWrap: 'wrap' }}>
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 13, fontWeight: 700, color: '#F9EBC7' }}>
            {eur(prixRemise(produit.prix))}
          </span>
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 10, color: 'rgba(255,255,255,0.32)', textDecoration: 'line-through' }}>
            {eur(produit.prix)}
          </span>
        </div>
      </div>
    </div>
  );
}

// ── Formulaire ────────────────────────────────────────────────────────────────
interface FormPanelProps {
  produit: Produit | null;
  form: { prenom: string; nom: string; email: string; telephone: string; showroom: string; rgpd: boolean };
  setForm: React.Dispatch<React.SetStateAction<FormPanelProps['form']>>;
  status: 'idle' | 'loading' | 'success' | 'error';
  errorMsg: string;
  submittedProduit: Produit | null;
  onSubmit: (e: React.FormEvent) => void;
}

function FormPanel({ produit, form, setForm, status, errorMsg, submittedProduit, onSubmit }: FormPanelProps) {
  if (status === 'success' && submittedProduit) {
    return (
      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', minHeight: 400, padding: '2.5rem 2rem', textAlign: 'center' }}>
        <div style={{ width: 56, height: 56, borderRadius: '50%', border: '2px solid #C4661F', display: 'flex', alignItems: 'center', justifyContent: 'center', fontSize: 24, color: '#C4661F', marginBottom: '1.5rem' }}>
          &#10003;
        </div>
        <h2 style={{ fontFamily: "'Playfair Display', serif", fontSize: 22, color: '#0D0D0D', marginBottom: '0.6rem', fontWeight: 600, fontStyle: 'italic' }}>
          R&eacute;servation enregistr&eacute;e
        </h2>
        <p style={{ color: '#666', lineHeight: 1.75, fontSize: 14, maxWidth: 260 }}>
          Notre &eacute;quipe vous contacte sous <strong style={{ color: '#0D0D0D' }}>24h ouvr&eacute;es</strong>.<br />
          <span style={{ color: '#AAA', fontSize: 13 }}>{submittedProduit.nom} &mdash; {eur(prixRemise(submittedProduit.prix))}</span>
        </p>
        <p style={{ marginTop: '1.5rem', fontSize: 11, color: '#CCC' }}>
          Cliquez sur un autre meuble pour une nouvelle demande
        </p>
      </div>
    );
  }

  return (
    <div style={{ padding: 'clamp(1.25rem, 5vw, 2rem)', position: 'relative', overflow: 'hidden' }}>

      {/* Watermark */}
      <div aria-hidden style={{
        position: 'absolute', top: '50%', left: '50%',
        transform: 'translate(-50%, -50%) rotate(-25deg)',
        fontFamily: "'Playfair Display', serif",
        fontSize: 'clamp(5rem, 18vw, 11rem)',
        fontWeight: 700, fontStyle: 'italic',
        color: '#C4661F', opacity: 0.04,
        pointerEvents: 'none', userSelect: 'none',
        whiteSpace: 'nowrap', zIndex: 0,
      }}>
        &minus;30%
      </div>

      {/* Bandeau urgence */}
      <div style={{
        position: 'relative', zIndex: 1,
        background: '#111', color: '#fff',
        padding: '0.5rem 1rem',
        display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 8, flexWrap: 'wrap',
        marginLeft: 'calc(-1 * clamp(1.25rem, 5vw, 2rem))',
        marginRight: 'calc(-1 * clamp(1.25rem, 5vw, 2rem))',
        marginTop: 'calc(-1 * clamp(1.25rem, 5vw, 2rem))',
        marginBottom: '1.25rem',
      }}>
        <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 10, fontWeight: 700, letterSpacing: '0.12em', textTransform: 'uppercase', color: '#C4661F' }}>
          &#9889; STOCK ULTRA LIMIT&Eacute;
        </span>
        <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 10, fontWeight: 700, letterSpacing: '0.1em', textTransform: 'uppercase', color: 'rgba(255,255,255,0.75)' }}>
          &minus;30&nbsp;% &middot; 31 MAI
        </span>
      </div>

      {/* Titre */}
      <div style={{ marginBottom: '1.25rem', position: 'relative', zIndex: 1 }}>
        <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 10, color: '#C4661F', fontWeight: 600, letterSpacing: '0.14em', textTransform: 'uppercase', marginBottom: '0.35rem' }}>
          &minus;30&nbsp;% · Stock Mai 2026
        </p>
        <h2 style={{ fontFamily: "'Playfair Display', serif", fontSize: 'clamp(1.25rem, 4vw, 1.6rem)', color: '#0D0D0D', fontWeight: 600, fontStyle: 'italic', marginBottom: '0.9rem' }}>
          R&eacute;server ce meuble
        </h2>

        {produit ? (
          <div style={{ borderLeft: '3px solid #C4661F', paddingLeft: '0.8rem' }}>
            <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 9, color: '#AAA', fontWeight: 600, letterSpacing: '0.1em', textTransform: 'uppercase', marginBottom: 3 }}>
              S&eacute;lectionn&eacute;
            </p>
            <p style={{ fontFamily: "'Playfair Display', serif", fontSize: 15, color: '#0D0D0D', fontStyle: 'italic', lineHeight: 1.4 }}>
              {produit.nom}
              {' '}
              <span style={{ fontFamily: "'Inter', sans-serif", fontStyle: 'normal', fontWeight: 700, color: '#C4661F', fontSize: 13 }}>
                {eur(prixRemise(produit.prix))}
              </span>
              {' '}
              <span style={{ fontFamily: "'Inter', sans-serif", fontStyle: 'normal', fontSize: 11, color: '#CCC', textDecoration: 'line-through' }}>
                {eur(produit.prix)}
              </span>
            </p>
          </div>
        ) : (
          <div style={{ padding: '0.65rem 0.9rem', background: '#F7F7F7', border: '1px dashed #DDD' }}>
            <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 12, color: '#BBB', textAlign: 'center' }}>
              &#8592; S&eacute;lectionnez un meuble
            </p>
          </div>
        )}
      </div>

      {/* Form */}
      <form onSubmit={onSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '0.85rem', position: 'relative', zIndex: 1 }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.65rem' }}>
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
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.5rem', marginTop: '0.35rem' }}>
            {([
              { code: 'SAINT_PIERRE', label: 'Saint-Pierre' },
              { code: 'SAINT_DENIS',  label: 'Saint-Denis'  },
            ] as const).map(({ code, label }) => (
              <label key={code} style={{
                display: 'flex', alignItems: 'center', gap: '0.5rem',
                padding: '0.6rem 0.75rem', cursor: 'pointer',
                border: form.showroom === code ? '1.5px solid #111' : '1.5px solid #E5E5E5',
                background: form.showroom === code ? '#111' : '#FFF',
                fontFamily: "'Inter', sans-serif", fontSize: 13,
                color: form.showroom === code ? '#FFF' : '#444',
                fontWeight: form.showroom === code ? 600 : 400,
                transition: 'all 0.15s',
                minHeight: 44,
              }}>
                <input type="radio" name="showroom" value={code} required checked={form.showroom === code} onChange={e => setForm(f => ({ ...f, showroom: e.target.value }))} style={{ accentColor: '#C4661F' }} />
                {label}
              </label>
            ))}
          </div>
        </div>

        <label style={{ display: 'flex', alignItems: 'flex-start', gap: '0.6rem', cursor: 'pointer', minHeight: 44 }}>
          <input type="checkbox" required checked={form.rgpd} onChange={e => setForm(f => ({ ...f, rgpd: e.target.checked }))} style={{ marginTop: 4, accentColor: '#C4661F', flexShrink: 0, width: 16, height: 16 }} />
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 11, color: '#999', lineHeight: 1.55 }}>
            J&apos;accepte que DIMEXOI utilise mes coordonn&eacute;es pour me recontacter.
          </span>
        </label>

        {status === 'error' && errorMsg && (
          <p style={{ color: '#C4661F', fontSize: 12, padding: '0.6rem', background: '#FFF8F4', border: '1px solid #F9EBC7', fontFamily: "'Inter', sans-serif" }}>
            {errorMsg}
          </p>
        )}

        <button
          type="submit"
          disabled={!produit || status === 'loading'}
          className="btn-primary"
          style={{
            width: '100%', justifyContent: 'center',
            minHeight: 48,
            fontSize: 13,
            opacity: (!produit || status === 'loading') ? 0.45 : 1,
            cursor: (!produit || status === 'loading') ? 'not-allowed' : 'pointer',
          }}
        >
          {status === 'loading' ? 'Envoi...' : "Réserver ce meuble →"}
        </button>

        <p style={{ textAlign: 'center', fontSize: 10, color: '#CCC', fontFamily: "'Inter', sans-serif", lineHeight: 1.5 }}>
          Stock limit&eacute; &bull; Offre jusqu&apos;au 31 mai 2026
        </p>
      </form>
    </div>
  );
}

const labelStyle: React.CSSProperties = {
  display: 'block',
  fontFamily: "'Inter', sans-serif",
  fontSize: 11, fontWeight: 500, color: '#555',
  marginBottom: '0.3rem',
};

// ── Page principale ───────────────────────────────────────────────────────────
export default function StockMai2026Page() {
  const [selectedSlug, setSelectedSlug] = useState<string | null>(null);
  const [form, setForm] = useState({ prenom: '', nom: '', email: '', telephone: '', showroom: '', rgpd: false });
  const [status, setStatus] = useState<'idle' | 'loading' | 'success' | 'error'>('idle');
  const [errorMsg, setErrorMsg] = useState('');
  const [submittedProduit, setSubmittedProduit] = useState<Produit | null>(null);

  const selectedProduit = PRODUITS.find(p => p.slug === selectedSlug) ?? null;

  function handleSelect(slug: string) {
    setSelectedSlug(prev => prev === slug ? null : slug);
    if (status === 'success') setStatus('idle');
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

        /* Reset scroll pour cette page */
        body { overflow-y: auto !important; }

        .sm26-input {
          width: 100%;
          padding: 0.75rem 0.9rem;
          border: 1.5px solid #E5E5E5;
          border-radius: 0;
          font-size: 16px; /* 16px évite le zoom auto sur iOS */
          font-family: 'Inter', sans-serif;
          background: #FFF;
          color: #0D0D0D;
          transition: border-color 0.2s;
          box-sizing: border-box;
          -webkit-appearance: none;
          appearance: none;
        }
        .sm26-input:focus { outline: none; border-color: #111; }
        .sm26-input::placeholder { color: #BBB; }

        /* ── Layout ── */
        .sm26-page {
          font-family: 'Inter', sans-serif;
          color: #0D0D0D;
          background: #0D0D0D;
          min-height: 100vh;
        }
        .sm26-body {
          display: flex;
          align-items: flex-start;
        }
        .sm26-gallery {
          flex: 0 0 58%;
          display: grid;
          grid-template-columns: repeat(4, 1fr);
          gap: 3px;
          background: #0D0D0D;
        }
        .sm26-right {
          flex: 1;
          background: #FFF;
          position: sticky;
          top: 0;
          max-height: 100vh;
          overflow-y: auto;
          border-left: 1px solid #EEE;
        }

        /* ── Mobile ── */
        @media (max-width: 720px) {
          .sm26-body { flex-direction: column; }

          .sm26-gallery {
            flex: none;
            width: 100%;
            grid-template-columns: repeat(2, 1fr);
            gap: 2px;
          }
          /* Masque la 8e cellule CTA sur mobile */
          .sm26-gallery-cta { display: none; }

          .sm26-right {
            flex: none;
            width: 100%;
            position: static;
            max-height: none;
            overflow-y: visible;
            border-left: none;
            border-top: 3px solid #C4661F;
          }
        }
      `}</style>

      <div className="sm26-page">
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

        {/* ── Corps ── */}
        <div className="sm26-body">

          {/* Galerie */}
          <div className="sm26-gallery">
            {PRODUITS.map(p => (
              <GalleryCard
                key={p.slug}
                produit={p}
                selected={selectedSlug === p.slug}
                onSelect={() => handleSelect(p.slug)}
              />
            ))}
            {/* 8e cellule */}
            <div className="sm26-gallery-cta" style={{
              aspectRatio: '3 / 4',
              background: '#111',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
            }}>
              <p style={{ fontFamily: "'Inter', sans-serif", fontSize: 9, color: 'rgba(255,255,255,0.2)', textAlign: 'center', letterSpacing: '0.08em', textTransform: 'uppercase', lineHeight: 1.7 }}>
                Cliquez sur<br />un meuble
              </p>
            </div>
          </div>

          {/* Formulaire */}
          <div className="sm26-right">
            <FormPanel
              produit={selectedProduit}
              form={form}
              setForm={setForm}
              status={status}
              errorMsg={errorMsg}
              submittedProduit={submittedProduit}
              onSubmit={handleSubmit}
            />
          </div>
        </div>
      </div>
    </>
  );
}
