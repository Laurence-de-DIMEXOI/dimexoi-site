import Image from 'next/image';

type Size = 'lg' | 'md' | 'sm' | 'xs';

const SIZES: Record<Size, number> = { lg: 220, md: 150, sm: 100, xs: 70 };

type Props = {
  size?: Size;
  rotation?: number;
  className?: string;
  /** Hint contextuel pour fondre le bord (couleur du fond derrière le sticker). Default = crème. */
  blendBg?: 'cream' | 'cream-warm' | 'cream-light' | 'transparent';
};

export default function TeckPromoSticker({
  size = 'md',
  rotation = -8,
  className = '',
  blendBg = 'cream',
}: Props) {
  const px = SIZES[size];
  return (
    <div
      className={`td-sticker-img ${className}`}
      data-blend={blendBg}
      style={{
        width: px,
        height: px,
        transform: `rotate(${rotation}deg)`,
        filter: 'drop-shadow(2px 4px 6px rgba(0,0,0,0.18))',
      }}
      aria-label="-30% sur tout le teck"
      role="img"
    >
      <Image
        src="/teck-days/assets/sticker-30.png"
        alt=""
        width={600}
        height={400}
        priority={size === 'lg'}
        style={{ width: '100%', height: '100%', objectFit: 'cover' }}
      />
    </div>
  );
}
