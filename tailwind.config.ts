import type { Config } from 'tailwindcss'

const config: Config = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      colors: {
        // LUXURY BLACK & WHITE BASE
        'dark-olive': '#111111',
        'dark-olive-light': '#222222',
        'off-white': '#FFFFFF',
        'dark-charcoal': '#0D0D0D',
        // WARM ACCENTS (palette)
        'teak-brown': '#C4661F',
        'teak-light': '#B99470',
        'warm-beige': '#F9EBC7',
        'cream': '#FEFAE0',
        'russet': '#783D19',
        // FOREST TOUCHES
        'forest-green': '#5F6F52',
        'laurel': '#A9B388',
      },
      fontFamily: {
        serif: ['Playfair Display', 'serif'],
        sans: ['Inter', 'sans-serif'],
      },
      fontSize: {
        'xs': ['0.75rem', { lineHeight: '1rem' }],
        'sm': ['0.875rem', { lineHeight: '1.25rem' }],
        'base': ['1rem', { lineHeight: '1.5rem' }],
        'lg': ['1.125rem', { lineHeight: '1.75rem' }],
        'xl': ['1.25rem', { lineHeight: '1.75rem' }],
        '2xl': ['1.5rem', { lineHeight: '2rem' }],
        '3xl': ['1.875rem', { lineHeight: '2.25rem' }],
        '4xl': ['2.25rem', { lineHeight: '2.5rem' }],
        '5xl': ['3rem', { lineHeight: '1.1' }],
        '6xl': ['3.75rem', { lineHeight: '1' }],
      },
      boxShadow: {
        'product': '0 15px 35px rgba(74, 93, 35, 0.08)',
        'product-hover': '0 25px 50px rgba(74, 93, 35, 0.15)',
        'card': '0 4px 15px rgba(0, 0, 0, 0.05)',
        'card-hover': '0 15px 40px rgba(0, 0, 0, 0.1)',
        'nav': '0 2px 20px rgba(0, 0, 0, 0.06)',
      },
      letterSpacing: {
        'widest-plus': '0.2em',
      },
      transitionDuration: {
        '400': '400ms',
      },
      animation: {
        'fade-in': 'fadeIn 0.6s ease-out',
        'slide-up': 'slideUp 0.6s ease-out',
        'slide-in-right': 'slideInRight 0.3s ease-out',
        'scale-in': 'scaleIn 0.3s ease-out',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideUp: {
          '0%': { opacity: '0', transform: 'translateY(30px)' },
          '100%': { opacity: '1', transform: 'translateY(0)' },
        },
        slideInRight: {
          '0%': { transform: 'translateX(100%)' },
          '100%': { transform: 'translateX(0)' },
        },
        scaleIn: {
          '0%': { opacity: '0', transform: 'scale(0.95)' },
          '100%': { opacity: '1', transform: 'scale(1)' },
        },
      },
    },
  },
  plugins: [],
}
export default config
