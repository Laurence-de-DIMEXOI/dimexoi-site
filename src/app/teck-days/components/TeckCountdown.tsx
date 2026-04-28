'use client';

import { useEffect, useState } from 'react';

type Props = {
  endDate: string; // ISO
  className?: string;
};

function diff(target: number) {
  const now = Date.now();
  let s = Math.max(0, Math.floor((target - now) / 1000));
  const days = Math.floor(s / 86400); s -= days * 86400;
  const hours = Math.floor(s / 3600); s -= hours * 3600;
  const minutes = Math.floor(s / 60); s -= minutes * 60;
  return { days, hours, minutes, seconds: s, done: target - now <= 0 };
}

export default function TeckCountdown({ endDate, className = '' }: Props) {
  const target = new Date(endDate).getTime();
  const [t, setT] = useState(() => diff(target));
  const [mounted, setMounted] = useState(false);

  useEffect(() => {
    setMounted(true);
    setT(diff(target));
    const id = setInterval(() => setT(diff(target)), 1000);
    return () => clearInterval(id);
  }, [target]);

  if (!mounted) {
    return <div className={className} style={{ minHeight: 60 }} aria-hidden />;
  }

  if (t.done) {
    return (
      <div className={className} style={{ fontFamily: 'var(--td-font-titles)', fontSize: 28, color: 'var(--td-teck-dark)' }}>
        Les Teck Days sont terminés.
      </div>
    );
  }

  const cell = (val: number, label: string) => (
    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', minWidth: 64 }}>
      <span style={{
        fontFamily: 'var(--td-font-titles)',
        fontSize: 'clamp(28px, 6vw, 44px)',
        color: 'var(--td-teck-dark)',
        lineHeight: 1,
      }}>{String(val).padStart(2, '0')}</span>
      <span style={{
        fontFamily: 'var(--td-font-body)',
        fontSize: 11,
        textTransform: 'uppercase',
        letterSpacing: '0.12em',
        color: 'var(--td-green-dark)',
        marginTop: 4,
      }}>{label}</span>
    </div>
  );

  return (
    <div
      className={className}
      style={{ display: 'flex', gap: '0.75rem', alignItems: 'center', justifyContent: 'center', flexWrap: 'wrap' }}
      aria-live="polite"
    >
      {cell(t.days, 'jours')}
      <span style={{ fontFamily: 'var(--td-font-titles)', fontSize: 32, color: 'var(--td-teck-light)' }}>:</span>
      {cell(t.hours, 'heures')}
      <span style={{ fontFamily: 'var(--td-font-titles)', fontSize: 32, color: 'var(--td-teck-light)' }}>:</span>
      {cell(t.minutes, 'min')}
      <span style={{ fontFamily: 'var(--td-font-titles)', fontSize: 32, color: 'var(--td-teck-light)' }}>:</span>
      {cell(t.seconds, 'sec')}
    </div>
  );
}
