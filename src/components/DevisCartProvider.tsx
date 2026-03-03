'use client';

import { createContext, useContext, useState, useCallback, ReactNode } from 'react';

export interface DevisItem {
  slug: string;
  name: string;
  category: string;
  subcategory: string;
  image: string;
  finish: string;
  quantity: number;
}

interface DevisCartContextType {
  items: DevisItem[];
  addItem: (item: Omit<DevisItem, 'quantity'>) => void;
  removeItem: (slug: string) => void;
  updateQuantity: (slug: string, quantity: number) => void;
  updateFinish: (slug: string, finish: string) => void;
  clearCart: () => void;
  itemCount: number;
  isOpen: boolean;
  toggleCart: () => void;
  closeCart: () => void;
}

const DevisCartContext = createContext<DevisCartContextType | undefined>(undefined);

export const FINISHES = [
  { value: 'miel', label: 'Miel', color: '#B99470', image: 'https://lh3.googleusercontent.com/d/1GIWB7l1NH8Dtw3mM_WS1o4gLQH18vg30=w100' },
  { value: 'brut', label: 'Brut', color: '#C4A882', image: 'https://lh3.googleusercontent.com/d/1IdnUyKCOxCpHI-xWNrBzAoDEXVnfpT2m=w100' },
  { value: 'ceruse-blanc', label: 'Cérusé blanc', color: '#E8E0D4', image: 'https://lh3.googleusercontent.com/d/15hovUqUCpI_P8leUohXFGgBYcZ8tYJ3A=w100' },
  { value: 'ceruse-noir', label: 'Cérusé noir', color: '#3A3A3A', image: 'https://lh3.googleusercontent.com/d/1EwLJiaztdob-5jNtvFzueOw3qB6mlZg8=w100' },
  { value: 'antique', label: 'Antique', color: '#783D19', image: '' },
];

export function DevisCartProvider({ children }: { children: ReactNode }) {
  const [items, setItems] = useState<DevisItem[]>([]);
  const [isOpen, setIsOpen] = useState(false);

  const addItem = useCallback((newItem: Omit<DevisItem, 'quantity'>) => {
    setItems(prev => {
      const existing = prev.find(i => i.slug === newItem.slug && i.finish === newItem.finish);
      if (existing) {
        return prev.map(i =>
          i.slug === newItem.slug && i.finish === newItem.finish
            ? { ...i, quantity: i.quantity + 1 }
            : i
        );
      }
      return [...prev, { ...newItem, quantity: 1 }];
    });
    setIsOpen(true);
  }, []);

  const removeItem = useCallback((slug: string) => {
    setItems(prev => prev.filter(i => i.slug !== slug));
  }, []);

  const updateQuantity = useCallback((slug: string, quantity: number) => {
    if (quantity <= 0) {
      setItems(prev => prev.filter(i => i.slug !== slug));
    } else {
      setItems(prev => prev.map(i => i.slug === slug ? { ...i, quantity } : i));
    }
  }, []);

  const updateFinish = useCallback((slug: string, finish: string) => {
    setItems(prev => prev.map(i => i.slug === slug ? { ...i, finish } : i));
  }, []);

  const clearCart = useCallback(() => {
    setItems([]);
  }, []);

  const toggleCart = useCallback(() => setIsOpen(prev => !prev), []);
  const closeCart = useCallback(() => setIsOpen(false), []);

  const itemCount = items.reduce((sum, item) => sum + item.quantity, 0);

  return (
    <DevisCartContext.Provider value={{
      items, addItem, removeItem, updateQuantity, updateFinish,
      clearCart, itemCount, isOpen, toggleCart, closeCart
    }}>
      {children}
    </DevisCartContext.Provider>
  );
}

export function useDevisCart() {
  const context = useContext(DevisCartContext);
  if (!context) {
    throw new Error('useDevisCart must be used within a DevisCartProvider');
  }
  return context;
}
