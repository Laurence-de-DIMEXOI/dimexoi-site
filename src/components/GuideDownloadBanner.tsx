'use client';

import { GuideDownloadBlock } from './GuideDownloadForm';

interface GuideDownloadBannerProps {
  source?: string;
  className?: string;
}

export default function GuideDownloadBanner({ source = 'blog_sdb', className = '' }: GuideDownloadBannerProps) {
  return (
    <div className={className}>
      <GuideDownloadBlock
        source={source}
        variant="compact"
        title="Guide gratuit : 12 conseils pour votre SDB en teck"
        subtitle="Téléchargez-le maintenant, lisez-le avant de venir en showroom."
      />
    </div>
  );
}
