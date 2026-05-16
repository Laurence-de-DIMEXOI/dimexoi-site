'use client';

import { useState, useEffect, useRef, useCallback } from 'react';
import Link from 'next/link';

// ── PRIX À METTRE À JOUR AVANT LE LANCEMENT ─────────────────────────────────
// ── Photos : /public/stock-mai-2026/{slug}.png ───────────────────────────────
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

const INTERVAL = 5500;

function prixRemise(prix: number) { return Math.round(prix * 0.7); }
function eur(n: number) { return n.toLocaleString('fr-FR') + ' €'; }

// ── Image avec fallback png → jpg → placeholder ───────────────────────────────
function ProductImage({ slug, nom, active }: { slug: string; nom: string; active: boolean }) {
  const [ext, setExt] = useState<'png' | 'jpg' | 'none'>('png');

  return (
    <div style={{
      position: 'absolute', inset: 0,
      opacity: active ? 1 : 0,
      transition: 'opacity 0.8s ease',
      background: '#111111',
    }}>
      {ext !== 'none' ? (
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={"/stock-mai-2026/" + slug + "." + ext}
          alt={nom}
          onError={() => {
            if (ext === 'png') setExt('jpg');
            else setExt('none');
          }}
          style={{ width: '100%', height: '100%', objectFit: 'cover', display: 'block' }}
        />
      ) : (
        <div style={{
          width: '100%', height: '100%',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontFamily: "'Playfair Display', serif",
          fontSize: 'clamp(1.5rem, 4vw, 2.5rem)',
          color: 'rgba(255,255,255,0.2)',
          letterSpacing: '0.06em',
          fontStyle: 'italic',
        }}>
          {nom}
        </div>
      )}
    </div>
  );
}

// ── Panneau carousel (gauche) ─────────────────────────────────────────────────
function CarouselPanel({ current, onNav }: { current: number; onNav: (i: number) => void }) {
  const p = PRODUITS[current];

  return (
    <div style={{ position: 'relative', width: '100%', height: '100%', background: '#0D0D0D', overflow: 'hidden' }}>

      {/* Images en fondu */}
      {PRODUITS.map((prod, i) => (
        <ProductImage key={prod.slug} slug={prod.slug} nom={prod.nom} active={i === current} />
      ))}

      {/* Gradient bas */}
      <div style={{
        position: 'absolute', inset: 0, zIndex: 1,
        background: 'linear-gradient(to top, rgba(0,0,0,0.88) 0%, rgba(0,0,0,0.25) 50%, transparent 72%)',
      }} />
      {/* Gradient haut léger */}
      <div style={{
        position: 'absolute', inset: 0, zIndex: 1,
        background: 'linear-gradient(to bottom, rgba(0,0,0,0.4) 0%, transparent 20%)',
      }} />

      {/* Badge −30% */}
      <div style={{
        position: 'absolute', top: 20, left: 20, zIndex: 3,
        background: '#C4661F',
        color: '#FFFFFF',
        fontFamily: "'Inter', sans-serif",
        fontSize: 13, fontWeight: 700,
        padding: '6px 14px',
        letterSpacing: '0.08em',
        textTransform: 'uppercase',
        animation: 'pulseDiscount 2s ease-in-out infinite',
      }}>
        &minus;30&nbsp;%
      </div>

      {/* Badge En stock */}
      <div style={{
        position: 'absolute', top: 20, left: 20, zIndex: 3,
        marginLeft: 86,
        background: 'rgba(255,255,255,0.12)',
        backdropFilter: 'blur(6px)',
        color: 'rgba(255,255,255,0.85)',
        fontFamily: "'Inter', sans-serif",
        fontSize: 11, fontWeight: 500,
        padding: '6px 12px',
        letterSpacing: '0.06em',
        textTransform: 'uppercase',
        border: '1px solid rgba(255,255,255,0.18)',
      }}>
        En stock &middot; La R&eacute;union
      </div>

      {/* Infos produit en bas */}
      <div style={{
        position: 'absolute', bottom: 0, left: 0, right: 0, zIndex: 2,
        padding: 'clamp(1.25rem, 3vw, 2rem)',
      }}>
        <p style={{
          fontFamily: "'Inter', sans-serif",
          fontSize: 11, color: '#C4661F',
          fontWeight: 600, letterSpacing: '0.14em',
          textTransform: 'uppercase', marginBottom: '0.35rem',
        }}>
          {p.categorie}
        </p>

        <h2 style={{
          fontFamily: "'Playfair Display', serif",
          fontSize: 'clamp(1.8rem, 3.5vw, 2.6rem)',
          color: '#FFFFFF', fontWeight: 600,
          fontStyle: 'italic',
          marginBottom: '0.6rem', lineHeight: 1.1,
        }}>
          {p.nom}
        </h2>

        <div style={{ display: 'flex', alignItems: 'baseline', gap: '0.75rem', marginBottom: '1.5rem' }}>
          <span style={{
            fontFamily: "'Inter', sans-serif",
            fontSize: 'clamp(1.3rem, 2.5vw, 1.8rem)',
            color: '#F9EBC7', fontWeight: 700,
          }}>
            {eur(prixRemise(p.prix))}
          </span>
          <span style={{
            fontFamily: "'Inter', sans-serif",
            fontSize: 15, color: 'rgba(255,255,255,0.38)',
            textDecoration: 'line-through',
          }}>
            {eur(p.prix)}
          </span>
        </div>

        {/* Dots + compteur */}
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.4rem' }}>
          {PRODUITS.map((_, i) => (
            <button
              key={i}
              type="button"
              onClick={() => onNav(i)}
              aria-label={"Produit " + (i + 1)}
              style={{
                border: 'none', cursor: 'pointer', padding: 0,
                borderRadius: '999px',
                width: i === current ? 24 : 6,
                height: 6,
                background: i === current ? '#C4661F' : 'rgba(255,255,255,0.28)',
                transition: 'all 0.35s',
              }}
            />
          ))}
          <span style={{
            marginLeft: '0.6rem',
            fontFamily: "'Inter', sans-serif", fontSize: 11,
            color: 'rgba(255,255,255,0.28)',
            letterSpacing: '0.05em',
          }}>
            {String(current + 1).padStart(2, '0')}&thinsp;/&thinsp;{String(PRODUITS.length).padStart(2, '0')}
          </span>
        </div>
      </div>

      {/* Flèches */}
      {(['prev', 'next'] as const).map(dir => (
        <button
          key={dir}
          type="button"
          onClick={() => onNav(dir === 'prev'
            ? (current - 1 + PRODUITS.length) % PRODUITS.length
            : (current + 1) % PRODUITS.length
          )}
          aria-label={dir === 'prev' ? 'Précédent' : 'Suivant'}
          style={{
            position: 'absolute',
            [dir === 'prev' ? 'left' : 'right']: 14,
            top: '44%', transform: 'translateY(-50%)',
            zIndex: 3, width: 40, height: 40,
            borderRadius: '50%',
            background: 'rgba(255,255,255,0.08)',
            border: '1px solid rgba(255,255,255,0.15)',
            color: 'white', cursor: 'pointer',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
            backdropFilter: 'blur(4px)',
            transition: 'background 0.2s',
          }}
        >
          <svg width="15" height="15" fill="none" stroke="currentColor" strokeWidth={2} viewBox="0 0 24 24">
            {dir === 'prev'
              ? <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
              : <path strokeLinecap="round" strokeLinejoin="round" d="M9 5l7 7-7 7" />
            }
          </svg>
        </button>
      ))}
    </div>
  );
}

// ── Panneau formulaire (droite) ───────────────────────────────────────────────
interface FormPanelProps {
  produit: Produit;
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
      <div style={{
        display: 'flex', flexDirection: 'column',
        alignItems: 'center', justifyContent: 'center',
        minHeight: '100%', padding: '3rem 2.5rem', textAlign: 'center',
      }}>
        <div style={{
          width: 64, height: 64,
          border: '2px solid #C4661F',
          borderRadius: '50%',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 28, color: '#C4661F',
          marginBottom: '2rem',
        }}>
          &#10003;
        </div>
        <h2 style={{
          fontFamily: "'Playfair Display', serif",
          fontSize: 28, color: '#0D0D0D',
          marginBottom: '0.75rem', fontWeight: 600,
          fontStyle: 'italic',
        }}>
          R&eacute;servation enregistr&eacute;e
        </h2>
        <p style={{ color: '#555', lineHeight: 1.8, fontSize: 15, maxWidth: 300 }}>
          Notre &eacute;quipe vous contacte sous{' '}
          <strong style={{ color: '#0D0D0D' }}>24h ouvr&eacute;es</strong>.<br />
          <span style={{ color: '#888', fontSize: 14 }}>
            {submittedProduit.nom}&ensp;&mdash;&ensp;{eur(prixRemise(submittedProduit.prix))}
          </span>
        </p>
        <p style={{ marginTop: '2rem', fontSize: 12, color: '#CCC', fontFamily: "'Inter', sans-serif" }}>
          Naviguez pour voir d&apos;autres meubles
        </p>
      </div>
    );
  }

  return (
    <div style={{ padding: 'clamp(2rem, 5vw, 3rem)', boxSizing: 'border-box' }}>

      {/* Titre */}
      <div style={{ marginBottom: '2rem' }}>
        <p style={{
          fontFamily: "'Inter', sans-serif",
          fontSize: 11, color: '#C4661F', fontWeight: 600,
          letterSpacing: '0.14em', textTransform: 'uppercase',
          marginBottom: '0.5rem',
        }}>
          Stock Mai 2026 &middot; &minus;30&nbsp;%
        </p>
        <h2 style={{
          fontFamily: "'Playfair Display', serif",
          fontSize: 'clamp(1.4rem, 2.8vw, 1.9rem)',
          color: '#0D0D0D', fontWeight: 600,
          fontStyle: 'italic', marginBottom: '0.4rem',
        }}>
          R&eacute;server ce meuble
        </h2>
        <p style={{
          fontFamily: "'Inter', sans-serif",
          fontSize: 13, color: '#999', lineHeight: 1.55,
        }}>
          Un conseiller DIMEXOI vous contacte sous 24h ouvr&eacute;es
        </p>
      </div>

      {/* Produit sélectionné */}
      <div style={{
        borderLeft: '3px solid #C4661F',
        paddingLeft: '1rem',
        marginBottom: '2rem',
      }}>
        <p style={{
          fontFamily: "'Inter', sans-serif",
          fontSize: 11, color: '#999', fontWeight: 500,
          letterSpacing: '0.08em', textTransform: 'uppercase',
          marginBottom: '0.25rem',
        }}>
          S&eacute;lectionn&eacute; dans le carousel
        </p>
        <p style={{
          fontFamily: "'Playfair Display', serif",
          fontSize: 18, color: '#0D0D0D', fontStyle: 'italic',
        }}>
          {produit.nom}
          <span style={{
            fontFamily: "'Inter', sans-serif",
            fontStyle: 'normal', fontWeight: 700,
            color: '#C4661F', marginLeft: '0.75rem', fontSize: 16,
          }}>
            {eur(prixRemise(produit.prix))}
          </span>
          <span style={{
            fontFamily: "'Inter', sans-serif",
            fontStyle: 'normal', fontSize: 13,
            color: '#CCC', textDecoration: 'line-through',
            marginLeft: '0.4rem',
          }}>
            {eur(produit.prix)}
          </span>
        </p>
      </div>

      {/* Formulaire */}
      <form onSubmit={onSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.1rem' }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.9rem' }}>
          <div>
            <label style={labelStyle}>Pr&eacute;nom *</label>
            <input type="text" required className="sm26-input" placeholder="Jean"
              value={form.prenom} onChange={e => setForm(f => ({ ...f, prenom: e.target.value }))} />
          </div>
          <div>
            <label style={labelStyle}>Nom</label>
            <input type="text" className="sm26-input" placeholder="Dupont"
              value={form.nom} onChange={e => setForm(f => ({ ...f, nom: e.target.value }))} />
          </div>
        </div>

        <div>
          <label style={labelStyle}>Email *</label>
          <input type="email" required className="sm26-input" placeholder="jean.dupont@email.com"
            value={form.email} onChange={e => setForm(f => ({ ...f, email: e.target.value }))} />
        </div>

        <div>
          <label style={labelStyle}>T&eacute;l&eacute;phone</label>
          <input type="tel" className="sm26-input" placeholder="0692 XX XX XX"
            value={form.telephone} onChange={e => setForm(f => ({ ...f, telephone: e.target.value }))} />
        </div>

        <div>
          <label style={labelStyle}>Showroom *</label>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.6rem', marginTop: '0.5rem' }}>
            {([
              { code: 'SAINT_PIERRE', label: 'Saint-Pierre' },
              { code: 'SAINT_DENIS',  label: 'Saint-Denis' },
            ] as const).map(({ code, label }) => (
              <label key={code} style={{
                display: 'flex', alignItems: 'center', gap: '0.55rem',
                padding: '0.65rem 0.85rem',
                border: form.showroom === code ? '1.5px solid #111111' : '1.5px solid #E5E5E5',
                cursor: 'pointer',
                background: form.showroom === code ? '#111111' : '#FFFFFF',
                fontFamily: "'Inter', sans-serif", fontSize: 13,
                color: form.showroom === code ? '#FFFFFF' : '#333',
                fontWeight: form.showroom === code ? 600 : 400,
                transition: 'all 0.2s',
              }}>
                <input
                  type="radio" name="showroom" value={code} required
                  checked={form.showroom === code}
                  onChange={e => setForm(f => ({ ...f, showroom: e.target.value }))}
                  style={{ accentColor: '#C4661F' }}
                />
                {label}
              </label>
            ))}
          </div>
        </div>

        <label style={{ display: 'flex', alignItems: 'flex-start', gap: '0.6rem', cursor: 'pointer' }}>
          <input type="checkbox" required checked={form.rgpd}
            onChange={e => setForm(f => ({ ...f, rgpd: e.target.checked }))}
            style={{ marginTop: 3, accentColor: '#C4661F', flexShrink: 0 }} />
          <span style={{ fontFamily: "'Inter', sans-serif", fontSize: 12, color: '#999', lineHeight: 1.55 }}>
            J&apos;accepte que DIMEXOI utilise mes coordonn&eacute;es pour me recontacter.
          </span>
        </label>

        {status === 'error' && errorMsg && (
          <p style={{
            color: '#C4661F', fontSize: 13,
            fontFamily: "'Inter', sans-serif",
            padding: '0.75rem', background: '#FFF8F4',
            border: '1px solid #F9EBC7',
          }}>
            {errorMsg}
          </p>
        )}

        <button
          type="submit"
          disabled={status === 'loading'}
          className="btn-primary"
          style={{
            width: '100%',
            justifyContent: 'center',
            marginTop: '0.25rem',
            opacity: status === 'loading' ? 0.65 : 1,
            cursor: status === 'loading' ? 'wait' : 'pointer',
          }}
        >
          {status === 'loading' ? 'Envoi...' : "Réserver ce meuble →"}
        </button>

        <p style={{
          textAlign: 'center', fontSize: 11, color: '#CCC',
          fontFamily: "'Inter', sans-serif",
        }}>
          Stock limit&eacute; &bull; Offre jusqu&apos;au 31 mai 2026
        </p>
      </form>
    </div>
  );
}

const labelStyle: React.CSSProperties = {
  display: 'block',
  fontFamily: "'Inter', sans-serif",
  fontSize: 12, fontWeight: 500, color: '#555',
  marginBottom: '0.35rem',
  letterSpacing: '0.02em',
};

// ── Page principale ───────────────────────────────────────────────────────────
export default function StockMai2026Page() {
  const [current, setCurrent] = useState(0);
  const pausedRef = useRef(false);
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  const [form, setForm] = useState({
    prenom: '', nom: '', email: '', telephone: '', showroom: '', rgpd: false,
  });
  const [status, setStatus] = useState<'idle' | 'loading' | 'success' | 'error'>('idle');
  const [errorMsg, setErrorMsg] = useState('');
  const [submittedProduit, setSubmittedProduit] = useState<Produit | null>(null);

  const startTimer = useCallback(() => {
    if (timerRef.current) clearInterval(timerRef.current);
    timerRef.current = setInterval(() => {
      if (!pausedRef.current) setCurrent(c => (c + 1) % PRODUITS.length);
    }, INTERVAL);
  }, []);

  useEffect(() => {
    startTimer();
    return () => { if (timerRef.current) clearInterval(timerRef.current); };
  }, [startTimer]);

  function handleNav(i: number) {
    setCurrent(i);
    startTimer();
    if (status === 'success') setStatus('idle');
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const produit = PRODUITS[current];
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
          meuble: produit.nom, meubleSlug: produit.slug,
        }),
      });
      if (!res.ok) throw new Error('Erreur serveur');
      setStatus('success');
      setSubmittedProduit(produit);
    } catch {
      setStatus('error');
      setErrorMsg("Une erreur s'est produite. Veuillez réessayer.");
    }
  }

  const produit = PRODUITS[current];

  return (
    <div style={{
      fontFamily: "'Inter', sans-serif",
      color: '#0D0D0D',
      display: 'flex',
      flexDirection: 'column',
      height: '100vh',
      background: '#0D0D0D',
      overflow: 'hidden',
    }}>
      <style>{`
        @keyframes pulseDiscount {
          0%, 100% { opacity: 1; }
          50%       { opacity: 0.75; }
        }

        .sm26-input {
          width: 100%;
          padding: 0.7rem 0.9rem;
          border: 1.5px solid #E5E5E5;
          border-radius: 0;
          font-size: 14px;
          font-family: 'Inter', sans-serif;
          background: #FFFFFF;
          color: #0D0D0D;
          transition: border-color 0.2s;
          box-sizing: border-box;
        }
        .sm26-input:focus {
          outline: none;
          border-color: #111111;
        }
        .sm26-input::placeholder {
          color: #BBBBBB;
        }

        .sm26-body {
          display: flex;
          flex: 1;
          overflow: hidden;
          min-height: 0;
        }
        .sm26-left {
          flex: 0 0 55%;
          position: relative;
        }
        .sm26-right {
          flex: 1;
          background: #FFFFFF;
          overflow-y: auto;
          display: flex;
          flex-direction: column;
          justify-content: center;
          border-left: 1px solid #EEEEEE;
        }

        @media (max-width: 720px) {
          html, body { overflow: auto !important; }
          .sm26-body {
            flex-direction: column;
            overflow: visible;
            height: auto;
          }
          .sm26-left {
            flex: none;
            height: 60vmax;
            min-height: 280px;
            max-height: 500px;
          }
          .sm26-right {
            flex: none;
            overflow-y: visible;
            height: auto;
            justify-content: flex-start;
          }
        }
      `}</style>

      {/* ── Header ──────────────────────────────────────────────────────── */}
      <div style={{
        background: '#111111',
        padding: '1rem 1.75rem',
        display: 'flex', alignItems: 'center', justifyContent: 'space-between',
        flexShrink: 0,
      }}>
        <Link href="/" style={{
          color: '#FFFFFF', textDecoration: 'none',
          fontFamily: "'Playfair Display', serif",
          fontSize: 20, fontWeight: 600,
          letterSpacing: '0.15em',
          textTransform: 'uppercase',
        }}>
          DIMEXOI
        </Link>
        <span style={{
          fontFamily: "'Inter', sans-serif",
          fontSize: 12, color: '#C4661F',
          fontWeight: 500, letterSpacing: '0.08em',
          textTransform: 'uppercase',
        }}>
          Teck Days &middot; &minus;30&nbsp;% jusqu&apos;au 31 mai
        </span>
      </div>

      {/* ── Corps ───────────────────────────────────────────────────────── */}
      <div
        className="sm26-body"
        onMouseEnter={() => { pausedRef.current = true; }}
        onMouseLeave={() => { pausedRef.current = false; }}
      >
        <div className="sm26-left">
          <CarouselPanel current={current} onNav={handleNav} />
        </div>
        <div className="sm26-right">
          <FormPanel
            produit={produit}
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
  );
}
