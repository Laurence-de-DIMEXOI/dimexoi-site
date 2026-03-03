#!/bin/bash
# DIMEXOI - Script de téléchargement des images produits
# Exécuter depuis le dossier dimexoi-site/
# Usage: chmod +x download-images.sh && ./download-images.sh

echo "=== Téléchargement des images DIMEXOI ==="
echo "737 images à télécharger..."
echo ""

# Créer le dossier images
mkdir -p public/images/products

TOTAL=0
SUCCESS=0
FAIL=0

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-eddy_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-eddy_1.jpg" "https://drive.google.com/uc?export=download&id=1M136TZcAGpZY64p3qi-Qanw32CcWnWTF" 2>/dev/null
  if [ -s "public/images/products/bureau-eddy_1.jpg" ] && file "public/images/products/bureau-eddy_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-eddy_1.jpg"
    curl -sL -o "public/images/products/bureau-eddy_1.jpg" "https://lh3.googleusercontent.com/d/1M136TZcAGpZY64p3qi-Qanw32CcWnWTF" 2>/dev/null
    if [ -s "public/images/products/bureau-eddy_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-eddy_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-eddy_2.jpg" "https://drive.google.com/uc?export=download&id=1yMBFBzqvTVdZd8RzsIRR9QVSyzPVpK_J" 2>/dev/null
  if [ -s "public/images/products/bureau-eddy_2.jpg" ] && file "public/images/products/bureau-eddy_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-eddy_2.jpg"
    curl -sL -o "public/images/products/bureau-eddy_2.jpg" "https://lh3.googleusercontent.com/d/1yMBFBzqvTVdZd8RzsIRR9QVSyzPVpK_J" 2>/dev/null
    if [ -s "public/images/products/bureau-eddy_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-eddy_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-eddy_3.jpg" "https://drive.google.com/uc?export=download&id=1SFGuVpzV6xyPDccoVF8QY4sIYU7rIUlu" 2>/dev/null
  if [ -s "public/images/products/bureau-eddy_3.jpg" ] && file "public/images/products/bureau-eddy_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-eddy_3.jpg"
    curl -sL -o "public/images/products/bureau-eddy_3.jpg" "https://lh3.googleusercontent.com/d/1SFGuVpzV6xyPDccoVF8QY4sIYU7rIUlu" 2>/dev/null
    if [ -s "public/images/products/bureau-eddy_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-eddy_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-eddy_4.jpg" "https://drive.google.com/uc?export=download&id=1Qse4O6SyofbicdwCpD8nBTSqCGH1j9Fn" 2>/dev/null
  if [ -s "public/images/products/bureau-eddy_4.jpg" ] && file "public/images/products/bureau-eddy_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-eddy_4.jpg"
    curl -sL -o "public/images/products/bureau-eddy_4.jpg" "https://lh3.googleusercontent.com/d/1Qse4O6SyofbicdwCpD8nBTSqCGH1j9Fn" 2>/dev/null
    if [ -s "public/images/products/bureau-eddy_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-informatique_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-informatique_1.jpg" "https://drive.google.com/uc?export=download&id=1vRbFLYDW6SaiTUp_0ib3uvTWMcSdwdYo" 2>/dev/null
  if [ -s "public/images/products/bureau-informatique_1.jpg" ] && file "public/images/products/bureau-informatique_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-informatique_1.jpg"
    curl -sL -o "public/images/products/bureau-informatique_1.jpg" "https://lh3.googleusercontent.com/d/1vRbFLYDW6SaiTUp_0ib3uvTWMcSdwdYo" 2>/dev/null
    if [ -s "public/images/products/bureau-informatique_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-informatique_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-informatique_2.jpg" "https://drive.google.com/uc?export=download&id=1__BCmmwevRgZqpkbMVFHnCQi1gZ-Uzw2" 2>/dev/null
  if [ -s "public/images/products/bureau-informatique_2.jpg" ] && file "public/images/products/bureau-informatique_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-informatique_2.jpg"
    curl -sL -o "public/images/products/bureau-informatique_2.jpg" "https://lh3.googleusercontent.com/d/1__BCmmwevRgZqpkbMVFHnCQi1gZ-Uzw2" 2>/dev/null
    if [ -s "public/images/products/bureau-informatique_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-informatique_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-informatique_3.jpg" "https://drive.google.com/uc?export=download&id=1rIPG9niMkLOfBJEgyuWH2kCX3F1s13Gr" 2>/dev/null
  if [ -s "public/images/products/bureau-informatique_3.jpg" ] && file "public/images/products/bureau-informatique_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-informatique_3.jpg"
    curl -sL -o "public/images/products/bureau-informatique_3.jpg" "https://lh3.googleusercontent.com/d/1rIPG9niMkLOfBJEgyuWH2kCX3F1s13Gr" 2>/dev/null
    if [ -s "public/images/products/bureau-informatique_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-informatique_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-informatique_4.jpg" "https://drive.google.com/uc?export=download&id=1qgiad8iserR2XYetvINNK7fq4HTskqa3" 2>/dev/null
  if [ -s "public/images/products/bureau-informatique_4.jpg" ] && file "public/images/products/bureau-informatique_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-informatique_4.jpg"
    curl -sL -o "public/images/products/bureau-informatique_4.jpg" "https://lh3.googleusercontent.com/d/1qgiad8iserR2XYetvINNK7fq4HTskqa3" 2>/dev/null
    if [ -s "public/images/products/bureau-informatique_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-nabul_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-nabul_1.jpg" "https://drive.google.com/uc?export=download&id=1XtmKge31WHxbPfoQFlu57RUGZjJ1tpwb" 2>/dev/null
  if [ -s "public/images/products/bureau-nabul_1.jpg" ] && file "public/images/products/bureau-nabul_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-nabul_1.jpg"
    curl -sL -o "public/images/products/bureau-nabul_1.jpg" "https://lh3.googleusercontent.com/d/1XtmKge31WHxbPfoQFlu57RUGZjJ1tpwb" 2>/dev/null
    if [ -s "public/images/products/bureau-nabul_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-nabul_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-nabul_2.jpg" "https://drive.google.com/uc?export=download&id=1bnzV_8paUcmlDkxkax9ln7FpGCF50sfe" 2>/dev/null
  if [ -s "public/images/products/bureau-nabul_2.jpg" ] && file "public/images/products/bureau-nabul_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-nabul_2.jpg"
    curl -sL -o "public/images/products/bureau-nabul_2.jpg" "https://lh3.googleusercontent.com/d/1bnzV_8paUcmlDkxkax9ln7FpGCF50sfe" 2>/dev/null
    if [ -s "public/images/products/bureau-nabul_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-nabul_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-nabul_3.jpg" "https://drive.google.com/uc?export=download&id=1nmJNfG0f1pSrYumigOKvxqM93Z-EF4DM" 2>/dev/null
  if [ -s "public/images/products/bureau-nabul_3.jpg" ] && file "public/images/products/bureau-nabul_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-nabul_3.jpg"
    curl -sL -o "public/images/products/bureau-nabul_3.jpg" "https://lh3.googleusercontent.com/d/1nmJNfG0f1pSrYumigOKvxqM93Z-EF4DM" 2>/dev/null
    if [ -s "public/images/products/bureau-nabul_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-nabul_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-nabul_4.jpg" "https://drive.google.com/uc?export=download&id=18wwqrnAu-BZIqYybpYBE_Ab35_Rmy12r" 2>/dev/null
  if [ -s "public/images/products/bureau-nabul_4.jpg" ] && file "public/images/products/bureau-nabul_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-nabul_4.jpg"
    curl -sL -o "public/images/products/bureau-nabul_4.jpg" "https://lh3.googleusercontent.com/d/18wwqrnAu-BZIqYybpYBE_Ab35_Rmy12r" 2>/dev/null
    if [ -s "public/images/products/bureau-nabul_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-penderie_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-penderie_1.jpg" "https://drive.google.com/uc?export=download&id=10KubqATL8Yzrl6asoe_XgIxtrzVrlaiB" 2>/dev/null
  if [ -s "public/images/products/bureau-penderie_1.jpg" ] && file "public/images/products/bureau-penderie_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-penderie_1.jpg"
    curl -sL -o "public/images/products/bureau-penderie_1.jpg" "https://lh3.googleusercontent.com/d/10KubqATL8Yzrl6asoe_XgIxtrzVrlaiB" 2>/dev/null
    if [ -s "public/images/products/bureau-penderie_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-penderie_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-penderie_2.jpg" "https://drive.google.com/uc?export=download&id=1nMYjtPzbcp-He5A5Z8YlG4j7wSw1Snnm" 2>/dev/null
  if [ -s "public/images/products/bureau-penderie_2.jpg" ] && file "public/images/products/bureau-penderie_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-penderie_2.jpg"
    curl -sL -o "public/images/products/bureau-penderie_2.jpg" "https://lh3.googleusercontent.com/d/1nMYjtPzbcp-He5A5Z8YlG4j7wSw1Snnm" 2>/dev/null
    if [ -s "public/images/products/bureau-penderie_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-penderie_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-penderie_3.jpg" "https://drive.google.com/uc?export=download&id=1cLumaw4xBqr50ahqCuw3ZcCTq7vOHXSn" 2>/dev/null
  if [ -s "public/images/products/bureau-penderie_3.jpg" ] && file "public/images/products/bureau-penderie_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-penderie_3.jpg"
    curl -sL -o "public/images/products/bureau-penderie_3.jpg" "https://lh3.googleusercontent.com/d/1cLumaw4xBqr50ahqCuw3ZcCTq7vOHXSn" 2>/dev/null
    if [ -s "public/images/products/bureau-penderie_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-penderie_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-penderie_4.jpg" "https://drive.google.com/uc?export=download&id=1Xl9ItxegKWl9qtHafNHMQFsfTjn0kjm7" 2>/dev/null
  if [ -s "public/images/products/bureau-penderie_4.jpg" ] && file "public/images/products/bureau-penderie_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-penderie_4.jpg"
    curl -sL -o "public/images/products/bureau-penderie_4.jpg" "https://lh3.googleusercontent.com/d/1Xl9ItxegKWl9qtHafNHMQFsfTjn0kjm7" 2>/dev/null
    if [ -s "public/images/products/bureau-penderie_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-pinter_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-pinter_1.jpg" "https://drive.google.com/uc?export=download&id=1uzjdrFaOZNpaWDwefDcUoL-iCOiCxraL" 2>/dev/null
  if [ -s "public/images/products/bureau-pinter_1.jpg" ] && file "public/images/products/bureau-pinter_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-pinter_1.jpg"
    curl -sL -o "public/images/products/bureau-pinter_1.jpg" "https://lh3.googleusercontent.com/d/1uzjdrFaOZNpaWDwefDcUoL-iCOiCxraL" 2>/dev/null
    if [ -s "public/images/products/bureau-pinter_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-pinter_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-pinter_2.jpg" "https://drive.google.com/uc?export=download&id=1Yuw3Qky0MRsCwp3XX-gYEG6OqDCO_Hms" 2>/dev/null
  if [ -s "public/images/products/bureau-pinter_2.jpg" ] && file "public/images/products/bureau-pinter_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-pinter_2.jpg"
    curl -sL -o "public/images/products/bureau-pinter_2.jpg" "https://lh3.googleusercontent.com/d/1Yuw3Qky0MRsCwp3XX-gYEG6OqDCO_Hms" 2>/dev/null
    if [ -s "public/images/products/bureau-pinter_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-pinter_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-pinter_3.jpg" "https://drive.google.com/uc?export=download&id=1rMorWzAFHrLaGyPGWbu3-6icwr2m_y64" 2>/dev/null
  if [ -s "public/images/products/bureau-pinter_3.jpg" ] && file "public/images/products/bureau-pinter_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-pinter_3.jpg"
    curl -sL -o "public/images/products/bureau-pinter_3.jpg" "https://lh3.googleusercontent.com/d/1rMorWzAFHrLaGyPGWbu3-6icwr2m_y64" 2>/dev/null
    if [ -s "public/images/products/bureau-pinter_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-pinter_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-pinter_4.jpg" "https://drive.google.com/uc?export=download&id=1qT32FcUXNp-yZ7suRoxLiCy_wo7Y4a56" 2>/dev/null
  if [ -s "public/images/products/bureau-pinter_4.jpg" ] && file "public/images/products/bureau-pinter_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-pinter_4.jpg"
    curl -sL -o "public/images/products/bureau-pinter_4.jpg" "https://lh3.googleusercontent.com/d/1qT32FcUXNp-yZ7suRoxLiCy_wo7Y4a56" 2>/dev/null
    if [ -s "public/images/products/bureau-pinter_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-seko_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-seko_1.jpg" "https://drive.google.com/uc?export=download&id=1kBa-lbwJ38MWyI43uT5oE0McbScJ-Ahm" 2>/dev/null
  if [ -s "public/images/products/bureau-seko_1.jpg" ] && file "public/images/products/bureau-seko_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-seko_1.jpg"
    curl -sL -o "public/images/products/bureau-seko_1.jpg" "https://lh3.googleusercontent.com/d/1kBa-lbwJ38MWyI43uT5oE0McbScJ-Ahm" 2>/dev/null
    if [ -s "public/images/products/bureau-seko_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-seko_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-seko_2.jpg" "https://drive.google.com/uc?export=download&id=1bmfIMuGU7AFuyPacnhoSeZGA3jKlRxyX" 2>/dev/null
  if [ -s "public/images/products/bureau-seko_2.jpg" ] && file "public/images/products/bureau-seko_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-seko_2.jpg"
    curl -sL -o "public/images/products/bureau-seko_2.jpg" "https://lh3.googleusercontent.com/d/1bmfIMuGU7AFuyPacnhoSeZGA3jKlRxyX" 2>/dev/null
    if [ -s "public/images/products/bureau-seko_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-seko_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-seko_3.jpg" "https://drive.google.com/uc?export=download&id=1A3xojBh7Bm6ZzlnjAqtgfFudyff4ToUF" 2>/dev/null
  if [ -s "public/images/products/bureau-seko_3.jpg" ] && file "public/images/products/bureau-seko_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-seko_3.jpg"
    curl -sL -o "public/images/products/bureau-seko_3.jpg" "https://lh3.googleusercontent.com/d/1A3xojBh7Bm6ZzlnjAqtgfFudyff4ToUF" 2>/dev/null
    if [ -s "public/images/products/bureau-seko_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-seko_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-seko_4.jpg" "https://drive.google.com/uc?export=download&id=15M7YECcHhfPmCI_io3jKLYkv5KZYYFku" 2>/dev/null
  if [ -s "public/images/products/bureau-seko_4.jpg" ] && file "public/images/products/bureau-seko_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-seko_4.jpg"
    curl -sL -o "public/images/products/bureau-seko_4.jpg" "https://lh3.googleusercontent.com/d/15M7YECcHhfPmCI_io3jKLYkv5KZYYFku" 2>/dev/null
    if [ -s "public/images/products/bureau-seko_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-db-33_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-db-33_1.jpg" "https://drive.google.com/uc?export=download&id=1PjpxnVB7ehbWZyOuYkMmOhtV159H2hNn" 2>/dev/null
  if [ -s "public/images/products/bureau-db-33_1.jpg" ] && file "public/images/products/bureau-db-33_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-db-33_1.jpg"
    curl -sL -o "public/images/products/bureau-db-33_1.jpg" "https://lh3.googleusercontent.com/d/1PjpxnVB7ehbWZyOuYkMmOhtV159H2hNn" 2>/dev/null
    if [ -s "public/images/products/bureau-db-33_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-db-33_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-db-33_2.jpg" "https://drive.google.com/uc?export=download&id=1IMuZ93GOUpWbWMajzRfmAaL8NnrYA0XB" 2>/dev/null
  if [ -s "public/images/products/bureau-db-33_2.jpg" ] && file "public/images/products/bureau-db-33_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-db-33_2.jpg"
    curl -sL -o "public/images/products/bureau-db-33_2.jpg" "https://lh3.googleusercontent.com/d/1IMuZ93GOUpWbWMajzRfmAaL8NnrYA0XB" 2>/dev/null
    if [ -s "public/images/products/bureau-db-33_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-db-33_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-db-33_3.jpg" "https://drive.google.com/uc?export=download&id=1MZQgj1hWCCtIAevCANLckkPQdZpMYNfm" 2>/dev/null
  if [ -s "public/images/products/bureau-db-33_3.jpg" ] && file "public/images/products/bureau-db-33_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-db-33_3.jpg"
    curl -sL -o "public/images/products/bureau-db-33_3.jpg" "https://lh3.googleusercontent.com/d/1MZQgj1hWCCtIAevCANLckkPQdZpMYNfm" 2>/dev/null
    if [ -s "public/images/products/bureau-db-33_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-db-33_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-db-33_4.jpg" "https://drive.google.com/uc?export=download&id=1VHcZfbox8QH7sX7s1ihedBqRJdzV2n_n" 2>/dev/null
  if [ -s "public/images/products/bureau-db-33_4.jpg" ] && file "public/images/products/bureau-db-33_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-db-33_4.jpg"
    curl -sL -o "public/images/products/bureau-db-33_4.jpg" "https://lh3.googleusercontent.com/d/1VHcZfbox8QH7sX7s1ihedBqRJdzV2n_n" 2>/dev/null
    if [ -s "public/images/products/bureau-db-33_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-block_1.jpg" ]; then
  curl -sL -o "public/images/products/armoire-block_1.jpg" "https://drive.google.com/uc?export=download&id=1KJ9GHUQ9XFLG7sKgrdHyvKdzrYzIA4Kj" 2>/dev/null
  if [ -s "public/images/products/armoire-block_1.jpg" ] && file "public/images/products/armoire-block_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-block_1.jpg"
    curl -sL -o "public/images/products/armoire-block_1.jpg" "https://lh3.googleusercontent.com/d/1KJ9GHUQ9XFLG7sKgrdHyvKdzrYzIA4Kj" 2>/dev/null
    if [ -s "public/images/products/armoire-block_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-block_2.jpg" ]; then
  curl -sL -o "public/images/products/armoire-block_2.jpg" "https://drive.google.com/uc?export=download&id=1unrdxJCZ4Nwv1rvd4zUSEEb_4zhQj-bP" 2>/dev/null
  if [ -s "public/images/products/armoire-block_2.jpg" ] && file "public/images/products/armoire-block_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-block_2.jpg"
    curl -sL -o "public/images/products/armoire-block_2.jpg" "https://lh3.googleusercontent.com/d/1unrdxJCZ4Nwv1rvd4zUSEEb_4zhQj-bP" 2>/dev/null
    if [ -s "public/images/products/armoire-block_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-block_3.jpg" ]; then
  curl -sL -o "public/images/products/armoire-block_3.jpg" "https://drive.google.com/uc?export=download&id=1Ui1tWekvr74Ad12G7GQuqgbiiuJOSmL7" 2>/dev/null
  if [ -s "public/images/products/armoire-block_3.jpg" ] && file "public/images/products/armoire-block_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-block_3.jpg"
    curl -sL -o "public/images/products/armoire-block_3.jpg" "https://lh3.googleusercontent.com/d/1Ui1tWekvr74Ad12G7GQuqgbiiuJOSmL7" 2>/dev/null
    if [ -s "public/images/products/armoire-block_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-block_4.jpg" ]; then
  curl -sL -o "public/images/products/armoire-block_4.jpg" "https://drive.google.com/uc?export=download&id=1SD24wx6XwaDOWmnOAm10c8Zlf1xVNcbB" 2>/dev/null
  if [ -s "public/images/products/armoire-block_4.jpg" ] && file "public/images/products/armoire-block_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-block_4.jpg"
    curl -sL -o "public/images/products/armoire-block_4.jpg" "https://lh3.googleusercontent.com/d/1SD24wx6XwaDOWmnOAm10c8Zlf1xVNcbB" 2>/dev/null
    if [ -s "public/images/products/armoire-block_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/armoire-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=19voxW6CFwAV2sljvXjs9i9Z0HuSIH2xg" 2>/dev/null
  if [ -s "public/images/products/armoire-krepyak_1.jpg" ] && file "public/images/products/armoire-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-krepyak_1.jpg"
    curl -sL -o "public/images/products/armoire-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/19voxW6CFwAV2sljvXjs9i9Z0HuSIH2xg" 2>/dev/null
    if [ -s "public/images/products/armoire-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/armoire-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=1yD5CWavzcH9rmOJ9GetiDU0zqBuEog7E" 2>/dev/null
  if [ -s "public/images/products/armoire-krepyak_2.jpg" ] && file "public/images/products/armoire-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-krepyak_2.jpg"
    curl -sL -o "public/images/products/armoire-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/1yD5CWavzcH9rmOJ9GetiDU0zqBuEog7E" 2>/dev/null
    if [ -s "public/images/products/armoire-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/armoire-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=1C_QRKMOr7DooznM0ehdlFDTLWltCowK9" 2>/dev/null
  if [ -s "public/images/products/armoire-krepyak_3.jpg" ] && file "public/images/products/armoire-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-krepyak_3.jpg"
    curl -sL -o "public/images/products/armoire-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/1C_QRKMOr7DooznM0ehdlFDTLWltCowK9" 2>/dev/null
    if [ -s "public/images/products/armoire-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/armoire-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1mxwY5juF38XrRtILSdlVar1cVta61Ch4" 2>/dev/null
  if [ -s "public/images/products/armoire-krepyak_4.jpg" ] && file "public/images/products/armoire-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-krepyak_4.jpg"
    curl -sL -o "public/images/products/armoire-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1mxwY5juF38XrRtILSdlVar1cVta61Ch4" 2>/dev/null
    if [ -s "public/images/products/armoire-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-rosa_1.jpg" ]; then
  curl -sL -o "public/images/products/armoire-rosa_1.jpg" "https://drive.google.com/uc?export=download&id=1LElEJbN4x4_u1WEj0XV28wHYKJ-29xkf" 2>/dev/null
  if [ -s "public/images/products/armoire-rosa_1.jpg" ] && file "public/images/products/armoire-rosa_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-rosa_1.jpg"
    curl -sL -o "public/images/products/armoire-rosa_1.jpg" "https://lh3.googleusercontent.com/d/1LElEJbN4x4_u1WEj0XV28wHYKJ-29xkf" 2>/dev/null
    if [ -s "public/images/products/armoire-rosa_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-rosa_2.jpg" ]; then
  curl -sL -o "public/images/products/armoire-rosa_2.jpg" "https://drive.google.com/uc?export=download&id=1slHx-6t5JZL9MlQru07qoabuKEaT_oEP" 2>/dev/null
  if [ -s "public/images/products/armoire-rosa_2.jpg" ] && file "public/images/products/armoire-rosa_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-rosa_2.jpg"
    curl -sL -o "public/images/products/armoire-rosa_2.jpg" "https://lh3.googleusercontent.com/d/1slHx-6t5JZL9MlQru07qoabuKEaT_oEP" 2>/dev/null
    if [ -s "public/images/products/armoire-rosa_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-rosa_3.jpg" ]; then
  curl -sL -o "public/images/products/armoire-rosa_3.jpg" "https://drive.google.com/uc?export=download&id=1Xon0wMbyIaScJS-_aaywbuolR-I4WcRU" 2>/dev/null
  if [ -s "public/images/products/armoire-rosa_3.jpg" ] && file "public/images/products/armoire-rosa_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-rosa_3.jpg"
    curl -sL -o "public/images/products/armoire-rosa_3.jpg" "https://lh3.googleusercontent.com/d/1Xon0wMbyIaScJS-_aaywbuolR-I4WcRU" 2>/dev/null
    if [ -s "public/images/products/armoire-rosa_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-rosa_4.jpg" ]; then
  curl -sL -o "public/images/products/armoire-rosa_4.jpg" "https://drive.google.com/uc?export=download&id=1_o54AdPG8BGwAUB6LQE_ztbVCfQesWhR" 2>/dev/null
  if [ -s "public/images/products/armoire-rosa_4.jpg" ] && file "public/images/products/armoire-rosa_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-rosa_4.jpg"
    curl -sL -o "public/images/products/armoire-rosa_4.jpg" "https://lh3.googleusercontent.com/d/1_o54AdPG8BGwAUB6LQE_ztbVCfQesWhR" 2>/dev/null
    if [ -s "public/images/products/armoire-rosa_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-sherry_1.jpg" ]; then
  curl -sL -o "public/images/products/armoire-sherry_1.jpg" "https://drive.google.com/uc?export=download&id=1-l1nfj8vRyPwQ4w5_JyjXVpvIvfMrKs3" 2>/dev/null
  if [ -s "public/images/products/armoire-sherry_1.jpg" ] && file "public/images/products/armoire-sherry_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-sherry_1.jpg"
    curl -sL -o "public/images/products/armoire-sherry_1.jpg" "https://lh3.googleusercontent.com/d/1-l1nfj8vRyPwQ4w5_JyjXVpvIvfMrKs3" 2>/dev/null
    if [ -s "public/images/products/armoire-sherry_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-sherry_2.jpg" ]; then
  curl -sL -o "public/images/products/armoire-sherry_2.jpg" "https://drive.google.com/uc?export=download&id=1NStkzBGEr53dDX6Df1fWFsYKdrITe8mY" 2>/dev/null
  if [ -s "public/images/products/armoire-sherry_2.jpg" ] && file "public/images/products/armoire-sherry_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-sherry_2.jpg"
    curl -sL -o "public/images/products/armoire-sherry_2.jpg" "https://lh3.googleusercontent.com/d/1NStkzBGEr53dDX6Df1fWFsYKdrITe8mY" 2>/dev/null
    if [ -s "public/images/products/armoire-sherry_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-sherry_3.jpg" ]; then
  curl -sL -o "public/images/products/armoire-sherry_3.jpg" "https://drive.google.com/uc?export=download&id=1nrgUp4IJOlb0dvWnJ8L-fxGbvQM6jnye" 2>/dev/null
  if [ -s "public/images/products/armoire-sherry_3.jpg" ] && file "public/images/products/armoire-sherry_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-sherry_3.jpg"
    curl -sL -o "public/images/products/armoire-sherry_3.jpg" "https://lh3.googleusercontent.com/d/1nrgUp4IJOlb0dvWnJ8L-fxGbvQM6jnye" 2>/dev/null
    if [ -s "public/images/products/armoire-sherry_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-sherry_4.jpg" ]; then
  curl -sL -o "public/images/products/armoire-sherry_4.jpg" "https://drive.google.com/uc?export=download&id=1pBLlE6TlW3o-FCuP2nTf7nFBWvWMVrum" 2>/dev/null
  if [ -s "public/images/products/armoire-sherry_4.jpg" ] && file "public/images/products/armoire-sherry_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-sherry_4.jpg"
    curl -sL -o "public/images/products/armoire-sherry_4.jpg" "https://lh3.googleusercontent.com/d/1pBLlE6TlW3o-FCuP2nTf7nFBWvWMVrum" 2>/dev/null
    if [ -s "public/images/products/armoire-sherry_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-isabelle-minimalis_1.jpg" ]; then
  curl -sL -o "public/images/products/armoire-isabelle-minimalis_1.jpg" "https://drive.google.com/uc?export=download&id=1jbHjtOghrXLoE6oXFliUrUVsLzfmgkO8" 2>/dev/null
  if [ -s "public/images/products/armoire-isabelle-minimalis_1.jpg" ] && file "public/images/products/armoire-isabelle-minimalis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-isabelle-minimalis_1.jpg"
    curl -sL -o "public/images/products/armoire-isabelle-minimalis_1.jpg" "https://lh3.googleusercontent.com/d/1jbHjtOghrXLoE6oXFliUrUVsLzfmgkO8" 2>/dev/null
    if [ -s "public/images/products/armoire-isabelle-minimalis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-isabelle-minimalis_2.jpg" ]; then
  curl -sL -o "public/images/products/armoire-isabelle-minimalis_2.jpg" "https://drive.google.com/uc?export=download&id=1MIn02RhYHiCjR5WXcEJTOd4LBCibL2ee" 2>/dev/null
  if [ -s "public/images/products/armoire-isabelle-minimalis_2.jpg" ] && file "public/images/products/armoire-isabelle-minimalis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-isabelle-minimalis_2.jpg"
    curl -sL -o "public/images/products/armoire-isabelle-minimalis_2.jpg" "https://lh3.googleusercontent.com/d/1MIn02RhYHiCjR5WXcEJTOd4LBCibL2ee" 2>/dev/null
    if [ -s "public/images/products/armoire-isabelle-minimalis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-isabelle-minimalis_3.jpg" ]; then
  curl -sL -o "public/images/products/armoire-isabelle-minimalis_3.jpg" "https://drive.google.com/uc?export=download&id=14EE1lNYkCdwR4b-gHXQBkv3o2SkBuf0P" 2>/dev/null
  if [ -s "public/images/products/armoire-isabelle-minimalis_3.jpg" ] && file "public/images/products/armoire-isabelle-minimalis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-isabelle-minimalis_3.jpg"
    curl -sL -o "public/images/products/armoire-isabelle-minimalis_3.jpg" "https://lh3.googleusercontent.com/d/14EE1lNYkCdwR4b-gHXQBkv3o2SkBuf0P" 2>/dev/null
    if [ -s "public/images/products/armoire-isabelle-minimalis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/armoire-isabelle-minimalis_4.jpg" ]; then
  curl -sL -o "public/images/products/armoire-isabelle-minimalis_4.jpg" "https://drive.google.com/uc?export=download&id=14EE1lNYkCdwR4b-gHXQBkv3o2SkBuf0P" 2>/dev/null
  if [ -s "public/images/products/armoire-isabelle-minimalis_4.jpg" ] && file "public/images/products/armoire-isabelle-minimalis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/armoire-isabelle-minimalis_4.jpg"
    curl -sL -o "public/images/products/armoire-isabelle-minimalis_4.jpg" "https://lh3.googleusercontent.com/d/14EE1lNYkCdwR4b-gHXQBkv3o2SkBuf0P" 2>/dev/null
    if [ -s "public/images/products/armoire-isabelle-minimalis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-canggu_1.jpg" ]; then
  curl -sL -o "public/images/products/lit-canggu_1.jpg" "https://drive.google.com/uc?export=download&id=1aG2P1bJR8J5TVQAA7R_9DQaY9iSVmgZs" 2>/dev/null
  if [ -s "public/images/products/lit-canggu_1.jpg" ] && file "public/images/products/lit-canggu_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-canggu_1.jpg"
    curl -sL -o "public/images/products/lit-canggu_1.jpg" "https://lh3.googleusercontent.com/d/1aG2P1bJR8J5TVQAA7R_9DQaY9iSVmgZs" 2>/dev/null
    if [ -s "public/images/products/lit-canggu_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-canggu_2.jpg" ]; then
  curl -sL -o "public/images/products/lit-canggu_2.jpg" "https://drive.google.com/uc?export=download&id=1tiBq1KimFv1R80-WkoMDFNjKpu5oJbXa" 2>/dev/null
  if [ -s "public/images/products/lit-canggu_2.jpg" ] && file "public/images/products/lit-canggu_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-canggu_2.jpg"
    curl -sL -o "public/images/products/lit-canggu_2.jpg" "https://lh3.googleusercontent.com/d/1tiBq1KimFv1R80-WkoMDFNjKpu5oJbXa" 2>/dev/null
    if [ -s "public/images/products/lit-canggu_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-canggu_3.jpg" ]; then
  curl -sL -o "public/images/products/lit-canggu_3.jpg" "https://drive.google.com/uc?export=download&id=1JINaLI0qdF6fO3f2RwJt70QScSyZRQpc" 2>/dev/null
  if [ -s "public/images/products/lit-canggu_3.jpg" ] && file "public/images/products/lit-canggu_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-canggu_3.jpg"
    curl -sL -o "public/images/products/lit-canggu_3.jpg" "https://lh3.googleusercontent.com/d/1JINaLI0qdF6fO3f2RwJt70QScSyZRQpc" 2>/dev/null
    if [ -s "public/images/products/lit-canggu_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-canggu_4.jpg" ]; then
  curl -sL -o "public/images/products/lit-canggu_4.jpg" "https://drive.google.com/uc?export=download&id=1x6olUFafazoWyH64NuzEzy9q7qr_m-rM" 2>/dev/null
  if [ -s "public/images/products/lit-canggu_4.jpg" ] && file "public/images/products/lit-canggu_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-canggu_4.jpg"
    curl -sL -o "public/images/products/lit-canggu_4.jpg" "https://lh3.googleusercontent.com/d/1x6olUFafazoWyH64NuzEzy9q7qr_m-rM" 2>/dev/null
    if [ -s "public/images/products/lit-canggu_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coffeuse-kauwage_1.jpg" ]; then
  curl -sL -o "public/images/products/coffeuse-kauwage_1.jpg" "https://drive.google.com/uc?export=download&id=14r2iS4fPGX-WfiCibSKvwsSxKXrP9hZP" 2>/dev/null
  if [ -s "public/images/products/coffeuse-kauwage_1.jpg" ] && file "public/images/products/coffeuse-kauwage_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coffeuse-kauwage_1.jpg"
    curl -sL -o "public/images/products/coffeuse-kauwage_1.jpg" "https://lh3.googleusercontent.com/d/14r2iS4fPGX-WfiCibSKvwsSxKXrP9hZP" 2>/dev/null
    if [ -s "public/images/products/coffeuse-kauwage_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coffeuse-kauwage_2.jpg" ]; then
  curl -sL -o "public/images/products/coffeuse-kauwage_2.jpg" "https://drive.google.com/uc?export=download&id=1H0rpb2tT_GPFLV_jZ4vnMHdYRvul7tSW" 2>/dev/null
  if [ -s "public/images/products/coffeuse-kauwage_2.jpg" ] && file "public/images/products/coffeuse-kauwage_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coffeuse-kauwage_2.jpg"
    curl -sL -o "public/images/products/coffeuse-kauwage_2.jpg" "https://lh3.googleusercontent.com/d/1H0rpb2tT_GPFLV_jZ4vnMHdYRvul7tSW" 2>/dev/null
    if [ -s "public/images/products/coffeuse-kauwage_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coffeuse-kauwage_3.jpg" ]; then
  curl -sL -o "public/images/products/coffeuse-kauwage_3.jpg" "https://drive.google.com/uc?export=download&id=1CzWthFLVUdl_rjtxO0IP2k1rgtQzJJfC" 2>/dev/null
  if [ -s "public/images/products/coffeuse-kauwage_3.jpg" ] && file "public/images/products/coffeuse-kauwage_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coffeuse-kauwage_3.jpg"
    curl -sL -o "public/images/products/coffeuse-kauwage_3.jpg" "https://lh3.googleusercontent.com/d/1CzWthFLVUdl_rjtxO0IP2k1rgtQzJJfC" 2>/dev/null
    if [ -s "public/images/products/coffeuse-kauwage_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coffeuse-kauwage_4.jpg" ]; then
  curl -sL -o "public/images/products/coffeuse-kauwage_4.jpg" "https://drive.google.com/uc?export=download&id=1HYFn3bpRYjOQM3Vg4IheUCSEYNx7Y93K" 2>/dev/null
  if [ -s "public/images/products/coffeuse-kauwage_4.jpg" ] && file "public/images/products/coffeuse-kauwage_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coffeuse-kauwage_4.jpg"
    curl -sL -o "public/images/products/coffeuse-kauwage_4.jpg" "https://lh3.googleusercontent.com/d/1HYFn3bpRYjOQM3Vg4IheUCSEYNx7Y93K" 2>/dev/null
    if [ -s "public/images/products/coffeuse-kauwage_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coiffeuse-yogy_1.jpg" ]; then
  curl -sL -o "public/images/products/coiffeuse-yogy_1.jpg" "https://drive.google.com/uc?export=download&id=1hN264MT-BBUwAuYWNK-ufYU8CCXiJpjQ" 2>/dev/null
  if [ -s "public/images/products/coiffeuse-yogy_1.jpg" ] && file "public/images/products/coiffeuse-yogy_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coiffeuse-yogy_1.jpg"
    curl -sL -o "public/images/products/coiffeuse-yogy_1.jpg" "https://lh3.googleusercontent.com/d/1hN264MT-BBUwAuYWNK-ufYU8CCXiJpjQ" 2>/dev/null
    if [ -s "public/images/products/coiffeuse-yogy_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coiffeuse-yogy_2.jpg" ]; then
  curl -sL -o "public/images/products/coiffeuse-yogy_2.jpg" "https://drive.google.com/uc?export=download&id=165e-POm3LfB3RVv7F_YMJKbQH5EJOzQm" 2>/dev/null
  if [ -s "public/images/products/coiffeuse-yogy_2.jpg" ] && file "public/images/products/coiffeuse-yogy_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coiffeuse-yogy_2.jpg"
    curl -sL -o "public/images/products/coiffeuse-yogy_2.jpg" "https://lh3.googleusercontent.com/d/165e-POm3LfB3RVv7F_YMJKbQH5EJOzQm" 2>/dev/null
    if [ -s "public/images/products/coiffeuse-yogy_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/coiffeuse-yogy_3.jpg" ]; then
  curl -sL -o "public/images/products/coiffeuse-yogy_3.jpg" "https://drive.google.com/uc?export=download&id=1Ht6MwD1cAL96wz8CJO-8lxdWEgi1Ekcv" 2>/dev/null
  if [ -s "public/images/products/coiffeuse-yogy_3.jpg" ] && file "public/images/products/coiffeuse-yogy_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/coiffeuse-yogy_3.jpg"
    curl -sL -o "public/images/products/coiffeuse-yogy_3.jpg" "https://lh3.googleusercontent.com/d/1Ht6MwD1cAL96wz8CJO-8lxdWEgi1Ekcv" 2>/dev/null
    if [ -s "public/images/products/coiffeuse-yogy_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-7-tiroirs_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-7-tiroirs_1.jpg" "https://drive.google.com/uc?export=download&id=1M58bxUq4tusr8sjp-vRjPWRWRdDirKUc" 2>/dev/null
  if [ -s "public/images/products/commode-7-tiroirs_1.jpg" ] && file "public/images/products/commode-7-tiroirs_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-7-tiroirs_1.jpg"
    curl -sL -o "public/images/products/commode-7-tiroirs_1.jpg" "https://lh3.googleusercontent.com/d/1M58bxUq4tusr8sjp-vRjPWRWRdDirKUc" 2>/dev/null
    if [ -s "public/images/products/commode-7-tiroirs_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-7-tiroirs_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-7-tiroirs_2.jpg" "https://drive.google.com/uc?export=download&id=1UrXltHeza-XaZ2Z5-wNJy8HqmIpugQGq" 2>/dev/null
  if [ -s "public/images/products/commode-7-tiroirs_2.jpg" ] && file "public/images/products/commode-7-tiroirs_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-7-tiroirs_2.jpg"
    curl -sL -o "public/images/products/commode-7-tiroirs_2.jpg" "https://lh3.googleusercontent.com/d/1UrXltHeza-XaZ2Z5-wNJy8HqmIpugQGq" 2>/dev/null
    if [ -s "public/images/products/commode-7-tiroirs_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-7-tiroirs_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-7-tiroirs_3.jpg" "https://drive.google.com/uc?export=download&id=1ZEokN9xK4Hepgy45RcyiBFFpQObUbYUN" 2>/dev/null
  if [ -s "public/images/products/commode-7-tiroirs_3.jpg" ] && file "public/images/products/commode-7-tiroirs_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-7-tiroirs_3.jpg"
    curl -sL -o "public/images/products/commode-7-tiroirs_3.jpg" "https://lh3.googleusercontent.com/d/1ZEokN9xK4Hepgy45RcyiBFFpQObUbYUN" 2>/dev/null
    if [ -s "public/images/products/commode-7-tiroirs_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-7-tiroirs_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-7-tiroirs_4.jpg" "https://drive.google.com/uc?export=download&id=1LGPh3Cwgqy9-MlN70vnJn6b2GQYCbITG" 2>/dev/null
  if [ -s "public/images/products/commode-7-tiroirs_4.jpg" ] && file "public/images/products/commode-7-tiroirs_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-7-tiroirs_4.jpg"
    curl -sL -o "public/images/products/commode-7-tiroirs_4.jpg" "https://lh3.googleusercontent.com/d/1LGPh3Cwgqy9-MlN70vnJn6b2GQYCbITG" 2>/dev/null
    if [ -s "public/images/products/commode-7-tiroirs_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-chevron_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-chevron_1.jpg" "https://drive.google.com/uc?export=download&id=15i5jdmfCgCv8OxF0jMIPbaIsa4gUwH3D" 2>/dev/null
  if [ -s "public/images/products/commode-chevron_1.jpg" ] && file "public/images/products/commode-chevron_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-chevron_1.jpg"
    curl -sL -o "public/images/products/commode-chevron_1.jpg" "https://lh3.googleusercontent.com/d/15i5jdmfCgCv8OxF0jMIPbaIsa4gUwH3D" 2>/dev/null
    if [ -s "public/images/products/commode-chevron_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-chevron_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-chevron_2.jpg" "https://drive.google.com/uc?export=download&id=12MpOALLzBaetM54ulJe5LCh_CcQHUHlc" 2>/dev/null
  if [ -s "public/images/products/commode-chevron_2.jpg" ] && file "public/images/products/commode-chevron_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-chevron_2.jpg"
    curl -sL -o "public/images/products/commode-chevron_2.jpg" "https://lh3.googleusercontent.com/d/12MpOALLzBaetM54ulJe5LCh_CcQHUHlc" 2>/dev/null
    if [ -s "public/images/products/commode-chevron_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-chevron_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-chevron_3.jpg" "https://drive.google.com/uc?export=download&id=1Jix5BQ72z3TAacKt_HmNrXlXIxJmodAD" 2>/dev/null
  if [ -s "public/images/products/commode-chevron_3.jpg" ] && file "public/images/products/commode-chevron_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-chevron_3.jpg"
    curl -sL -o "public/images/products/commode-chevron_3.jpg" "https://lh3.googleusercontent.com/d/1Jix5BQ72z3TAacKt_HmNrXlXIxJmodAD" 2>/dev/null
    if [ -s "public/images/products/commode-chevron_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-chevron_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-chevron_4.jpg" "https://drive.google.com/uc?export=download&id=1dgDHzvcf-I77Hti-cXqdTx3CEwhSqJj8" 2>/dev/null
  if [ -s "public/images/products/commode-chevron_4.jpg" ] && file "public/images/products/commode-chevron_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-chevron_4.jpg"
    curl -sL -o "public/images/products/commode-chevron_4.jpg" "https://lh3.googleusercontent.com/d/1dgDHzvcf-I77Hti-cXqdTx3CEwhSqJj8" 2>/dev/null
    if [ -s "public/images/products/commode-chevron_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-damier_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-damier_1.jpg" "https://drive.google.com/uc?export=download&id=1yiU70tL6tRRIVzi16NfK_vKGD1iKGGhq" 2>/dev/null
  if [ -s "public/images/products/commode-damier_1.jpg" ] && file "public/images/products/commode-damier_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-damier_1.jpg"
    curl -sL -o "public/images/products/commode-damier_1.jpg" "https://lh3.googleusercontent.com/d/1yiU70tL6tRRIVzi16NfK_vKGD1iKGGhq" 2>/dev/null
    if [ -s "public/images/products/commode-damier_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-damier_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-damier_2.jpg" "https://drive.google.com/uc?export=download&id=1-vdIlTGZZStxfOS4MaX2oZWnolbNB4Nk" 2>/dev/null
  if [ -s "public/images/products/commode-damier_2.jpg" ] && file "public/images/products/commode-damier_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-damier_2.jpg"
    curl -sL -o "public/images/products/commode-damier_2.jpg" "https://lh3.googleusercontent.com/d/1-vdIlTGZZStxfOS4MaX2oZWnolbNB4Nk" 2>/dev/null
    if [ -s "public/images/products/commode-damier_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-damier_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-damier_3.jpg" "https://drive.google.com/uc?export=download&id=18Xza9tbzbC2ZLKTjrNZkHFTGyPN_dbIN" 2>/dev/null
  if [ -s "public/images/products/commode-damier_3.jpg" ] && file "public/images/products/commode-damier_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-damier_3.jpg"
    curl -sL -o "public/images/products/commode-damier_3.jpg" "https://lh3.googleusercontent.com/d/18Xza9tbzbC2ZLKTjrNZkHFTGyPN_dbIN" 2>/dev/null
    if [ -s "public/images/products/commode-damier_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-damier_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-damier_4.jpg" "https://drive.google.com/uc?export=download&id=1pjNg110i6m5sbd6i3nSTT5BPuHSbz1tw" 2>/dev/null
  if [ -s "public/images/products/commode-damier_4.jpg" ] && file "public/images/products/commode-damier_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-damier_4.jpg"
    curl -sL -o "public/images/products/commode-damier_4.jpg" "https://lh3.googleusercontent.com/d/1pjNg110i6m5sbd6i3nSTT5BPuHSbz1tw" 2>/dev/null
    if [ -s "public/images/products/commode-damier_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-new_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-new_1.jpg" "https://drive.google.com/uc?export=download&id=1UTa3XYYIirNsi8tNSI4KNoIl4Q8unrtA" 2>/dev/null
  if [ -s "public/images/products/commode-new_1.jpg" ] && file "public/images/products/commode-new_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-new_1.jpg"
    curl -sL -o "public/images/products/commode-new_1.jpg" "https://lh3.googleusercontent.com/d/1UTa3XYYIirNsi8tNSI4KNoIl4Q8unrtA" 2>/dev/null
    if [ -s "public/images/products/commode-new_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-new_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-new_2.jpg" "https://drive.google.com/uc?export=download&id=1CETmpadNEYqkpm_HxolLHru2bNnM3vP6" 2>/dev/null
  if [ -s "public/images/products/commode-new_2.jpg" ] && file "public/images/products/commode-new_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-new_2.jpg"
    curl -sL -o "public/images/products/commode-new_2.jpg" "https://lh3.googleusercontent.com/d/1CETmpadNEYqkpm_HxolLHru2bNnM3vP6" 2>/dev/null
    if [ -s "public/images/products/commode-new_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-new_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-new_3.jpg" "https://drive.google.com/uc?export=download&id=1x-cbGBiFpaxFvSw9eFMBWt2lXuDpmCOl" 2>/dev/null
  if [ -s "public/images/products/commode-new_3.jpg" ] && file "public/images/products/commode-new_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-new_3.jpg"
    curl -sL -o "public/images/products/commode-new_3.jpg" "https://lh3.googleusercontent.com/d/1x-cbGBiFpaxFvSw9eFMBWt2lXuDpmCOl" 2>/dev/null
    if [ -s "public/images/products/commode-new_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-petite-evolia_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-petite-evolia_1.jpg" "https://drive.google.com/uc?export=download&id=1Wwu3lATjGqr-559I3VOBopRLjTbb1Rc6" 2>/dev/null
  if [ -s "public/images/products/commode-petite-evolia_1.jpg" ] && file "public/images/products/commode-petite-evolia_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-petite-evolia_1.jpg"
    curl -sL -o "public/images/products/commode-petite-evolia_1.jpg" "https://lh3.googleusercontent.com/d/1Wwu3lATjGqr-559I3VOBopRLjTbb1Rc6" 2>/dev/null
    if [ -s "public/images/products/commode-petite-evolia_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-petite-evolia_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-petite-evolia_2.jpg" "https://drive.google.com/uc?export=download&id=14cbLFI6Zo5LPzMX5fQuH2rrwkdP_NMWr" 2>/dev/null
  if [ -s "public/images/products/commode-petite-evolia_2.jpg" ] && file "public/images/products/commode-petite-evolia_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-petite-evolia_2.jpg"
    curl -sL -o "public/images/products/commode-petite-evolia_2.jpg" "https://lh3.googleusercontent.com/d/14cbLFI6Zo5LPzMX5fQuH2rrwkdP_NMWr" 2>/dev/null
    if [ -s "public/images/products/commode-petite-evolia_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-petite-evolia_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-petite-evolia_3.jpg" "https://drive.google.com/uc?export=download&id=1IsxCcX_WrQXSZEz_6RSBeAT8tuiQcaXp" 2>/dev/null
  if [ -s "public/images/products/commode-petite-evolia_3.jpg" ] && file "public/images/products/commode-petite-evolia_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-petite-evolia_3.jpg"
    curl -sL -o "public/images/products/commode-petite-evolia_3.jpg" "https://lh3.googleusercontent.com/d/1IsxCcX_WrQXSZEz_6RSBeAT8tuiQcaXp" 2>/dev/null
    if [ -s "public/images/products/commode-petite-evolia_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-petite-evolia_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-petite-evolia_4.jpg" "https://drive.google.com/uc?export=download&id=1p4ukqq0LRyPn2VxQguypQkDYShNgjKLG" 2>/dev/null
  if [ -s "public/images/products/commode-petite-evolia_4.jpg" ] && file "public/images/products/commode-petite-evolia_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-petite-evolia_4.jpg"
    curl -sL -o "public/images/products/commode-petite-evolia_4.jpg" "https://lh3.googleusercontent.com/d/1p4ukqq0LRyPn2VxQguypQkDYShNgjKLG" 2>/dev/null
    if [ -s "public/images/products/commode-petite-evolia_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sculpt-e_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-sculpt-e_1.jpg" "https://drive.google.com/uc?export=download&id=1A04h0Dn0MoZikbOu2QZWOJcqSGkle6VJ" 2>/dev/null
  if [ -s "public/images/products/commode-sculpt-e_1.jpg" ] && file "public/images/products/commode-sculpt-e_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sculpt-e_1.jpg"
    curl -sL -o "public/images/products/commode-sculpt-e_1.jpg" "https://lh3.googleusercontent.com/d/1A04h0Dn0MoZikbOu2QZWOJcqSGkle6VJ" 2>/dev/null
    if [ -s "public/images/products/commode-sculpt-e_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sculpt-e_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-sculpt-e_2.jpg" "https://drive.google.com/uc?export=download&id=1LHk2il-sKFM8M29HF4yASWWWKZtBqogj" 2>/dev/null
  if [ -s "public/images/products/commode-sculpt-e_2.jpg" ] && file "public/images/products/commode-sculpt-e_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sculpt-e_2.jpg"
    curl -sL -o "public/images/products/commode-sculpt-e_2.jpg" "https://lh3.googleusercontent.com/d/1LHk2il-sKFM8M29HF4yASWWWKZtBqogj" 2>/dev/null
    if [ -s "public/images/products/commode-sculpt-e_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sculpt-e_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-sculpt-e_3.jpg" "https://drive.google.com/uc?export=download&id=1BRm97VvUoPoXFgEplj2PDMPbWzFROsPl" 2>/dev/null
  if [ -s "public/images/products/commode-sculpt-e_3.jpg" ] && file "public/images/products/commode-sculpt-e_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sculpt-e_3.jpg"
    curl -sL -o "public/images/products/commode-sculpt-e_3.jpg" "https://lh3.googleusercontent.com/d/1BRm97VvUoPoXFgEplj2PDMPbWzFROsPl" 2>/dev/null
    if [ -s "public/images/products/commode-sculpt-e_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sculpt-e_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-sculpt-e_4.jpg" "https://drive.google.com/uc?export=download&id=1E8Pv1Kdlh51x3Q1pcR28xJ_V0RLd8Nwy" 2>/dev/null
  if [ -s "public/images/products/commode-sculpt-e_4.jpg" ] && file "public/images/products/commode-sculpt-e_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sculpt-e_4.jpg"
    curl -sL -o "public/images/products/commode-sculpt-e_4.jpg" "https://lh3.googleusercontent.com/d/1E8Pv1Kdlh51x3Q1pcR28xJ_V0RLd8Nwy" 2>/dev/null
    if [ -s "public/images/products/commode-sculpt-e_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sherry_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-sherry_1.jpg" "https://drive.google.com/uc?export=download&id=1WYgKicb-W34nsqC_Zgg_4pUicCwfzibZ" 2>/dev/null
  if [ -s "public/images/products/commode-sherry_1.jpg" ] && file "public/images/products/commode-sherry_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sherry_1.jpg"
    curl -sL -o "public/images/products/commode-sherry_1.jpg" "https://lh3.googleusercontent.com/d/1WYgKicb-W34nsqC_Zgg_4pUicCwfzibZ" 2>/dev/null
    if [ -s "public/images/products/commode-sherry_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sherry_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-sherry_2.jpg" "https://drive.google.com/uc?export=download&id=1-gtfBYlDyBffPv_NxnSfS3PWIg6cfGpf" 2>/dev/null
  if [ -s "public/images/products/commode-sherry_2.jpg" ] && file "public/images/products/commode-sherry_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sherry_2.jpg"
    curl -sL -o "public/images/products/commode-sherry_2.jpg" "https://lh3.googleusercontent.com/d/1-gtfBYlDyBffPv_NxnSfS3PWIg6cfGpf" 2>/dev/null
    if [ -s "public/images/products/commode-sherry_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sherry_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-sherry_3.jpg" "https://drive.google.com/uc?export=download&id=10ew--8VtXvcKfYVuv41000lQzgSZzM_O" 2>/dev/null
  if [ -s "public/images/products/commode-sherry_3.jpg" ] && file "public/images/products/commode-sherry_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sherry_3.jpg"
    curl -sL -o "public/images/products/commode-sherry_3.jpg" "https://lh3.googleusercontent.com/d/10ew--8VtXvcKfYVuv41000lQzgSZzM_O" 2>/dev/null
    if [ -s "public/images/products/commode-sherry_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-sherry_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-sherry_4.jpg" "https://drive.google.com/uc?export=download&id=1y2nvlV5s9c2qMNogIZJMkzho1UkNnMrB" 2>/dev/null
  if [ -s "public/images/products/commode-sherry_4.jpg" ] && file "public/images/products/commode-sherry_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-sherry_4.jpg"
    curl -sL -o "public/images/products/commode-sherry_4.jpg" "https://lh3.googleusercontent.com/d/1y2nvlV5s9c2qMNogIZJMkzho1UkNnMrB" 2>/dev/null
    if [ -s "public/images/products/commode-sherry_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-vintage_1.jpg" ]; then
  curl -sL -o "public/images/products/commode-vintage_1.jpg" "https://drive.google.com/uc?export=download&id=17WaAY24xB7OYesCZjSbIAGtMMmcwLEHa" 2>/dev/null
  if [ -s "public/images/products/commode-vintage_1.jpg" ] && file "public/images/products/commode-vintage_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-vintage_1.jpg"
    curl -sL -o "public/images/products/commode-vintage_1.jpg" "https://lh3.googleusercontent.com/d/17WaAY24xB7OYesCZjSbIAGtMMmcwLEHa" 2>/dev/null
    if [ -s "public/images/products/commode-vintage_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-vintage_2.jpg" ]; then
  curl -sL -o "public/images/products/commode-vintage_2.jpg" "https://drive.google.com/uc?export=download&id=1sRJEDR8YMcb62m_jcYFmJ-z-ZyAMVwoj" 2>/dev/null
  if [ -s "public/images/products/commode-vintage_2.jpg" ] && file "public/images/products/commode-vintage_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-vintage_2.jpg"
    curl -sL -o "public/images/products/commode-vintage_2.jpg" "https://lh3.googleusercontent.com/d/1sRJEDR8YMcb62m_jcYFmJ-z-ZyAMVwoj" 2>/dev/null
    if [ -s "public/images/products/commode-vintage_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-vintage_3.jpg" ]; then
  curl -sL -o "public/images/products/commode-vintage_3.jpg" "https://drive.google.com/uc?export=download&id=1PFFLHKhGdyUKs66ohvqmNO8b32_eoWcn" 2>/dev/null
  if [ -s "public/images/products/commode-vintage_3.jpg" ] && file "public/images/products/commode-vintage_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-vintage_3.jpg"
    curl -sL -o "public/images/products/commode-vintage_3.jpg" "https://lh3.googleusercontent.com/d/1PFFLHKhGdyUKs66ohvqmNO8b32_eoWcn" 2>/dev/null
    if [ -s "public/images/products/commode-vintage_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/commode-vintage_4.jpg" ]; then
  curl -sL -o "public/images/products/commode-vintage_4.jpg" "https://drive.google.com/uc?export=download&id=1myZGUSrEqtDU16N_ibu732HMXLRp4M-3" 2>/dev/null
  if [ -s "public/images/products/commode-vintage_4.jpg" ] && file "public/images/products/commode-vintage_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/commode-vintage_4.jpg"
    curl -sL -o "public/images/products/commode-vintage_4.jpg" "https://lh3.googleusercontent.com/d/1myZGUSrEqtDU16N_ibu732HMXLRp4M-3" 2>/dev/null
    if [ -s "public/images/products/commode-vintage_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-cordoba_1.jpg" ]; then
  curl -sL -o "public/images/products/lit-cordoba_1.jpg" "https://drive.google.com/uc?export=download&id=18SvQ-R-2DgjVt5MtNwuW4sbgh1daaH21" 2>/dev/null
  if [ -s "public/images/products/lit-cordoba_1.jpg" ] && file "public/images/products/lit-cordoba_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-cordoba_1.jpg"
    curl -sL -o "public/images/products/lit-cordoba_1.jpg" "https://lh3.googleusercontent.com/d/18SvQ-R-2DgjVt5MtNwuW4sbgh1daaH21" 2>/dev/null
    if [ -s "public/images/products/lit-cordoba_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-cordoba_2.jpg" ]; then
  curl -sL -o "public/images/products/lit-cordoba_2.jpg" "https://drive.google.com/uc?export=download&id=17Om9-0a9IkRjNHxKYP5ndF7Bov-5RR5y" 2>/dev/null
  if [ -s "public/images/products/lit-cordoba_2.jpg" ] && file "public/images/products/lit-cordoba_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-cordoba_2.jpg"
    curl -sL -o "public/images/products/lit-cordoba_2.jpg" "https://lh3.googleusercontent.com/d/17Om9-0a9IkRjNHxKYP5ndF7Bov-5RR5y" 2>/dev/null
    if [ -s "public/images/products/lit-cordoba_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-cordoba_3.jpg" ]; then
  curl -sL -o "public/images/products/lit-cordoba_3.jpg" "https://drive.google.com/uc?export=download&id=1ki_OfZS3n2uECVdSTz4arIZoH8ONRlBQ" 2>/dev/null
  if [ -s "public/images/products/lit-cordoba_3.jpg" ] && file "public/images/products/lit-cordoba_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-cordoba_3.jpg"
    curl -sL -o "public/images/products/lit-cordoba_3.jpg" "https://lh3.googleusercontent.com/d/1ki_OfZS3n2uECVdSTz4arIZoH8ONRlBQ" 2>/dev/null
    if [ -s "public/images/products/lit-cordoba_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-cordoba_4.jpg" ]; then
  curl -sL -o "public/images/products/lit-cordoba_4.jpg" "https://drive.google.com/uc?export=download&id=1rHj7d38gxz7eMMxOEnCN9VIk3OqVuU-e" 2>/dev/null
  if [ -s "public/images/products/lit-cordoba_4.jpg" ] && file "public/images/products/lit-cordoba_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-cordoba_4.jpg"
    curl -sL -o "public/images/products/lit-cordoba_4.jpg" "https://lh3.googleusercontent.com/d/1rHj7d38gxz7eMMxOEnCN9VIk3OqVuU-e" 2>/dev/null
    if [ -s "public/images/products/lit-cordoba_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/dressing-sur-mesure_1.jpg" ]; then
  curl -sL -o "public/images/products/dressing-sur-mesure_1.jpg" "https://drive.google.com/uc?export=download&id=1dN0qpju42Y19-vzqstDEea1leJQkVeZH" 2>/dev/null
  if [ -s "public/images/products/dressing-sur-mesure_1.jpg" ] && file "public/images/products/dressing-sur-mesure_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/dressing-sur-mesure_1.jpg"
    curl -sL -o "public/images/products/dressing-sur-mesure_1.jpg" "https://lh3.googleusercontent.com/d/1dN0qpju42Y19-vzqstDEea1leJQkVeZH" 2>/dev/null
    if [ -s "public/images/products/dressing-sur-mesure_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/dressing-sur-mesure_2.jpg" ]; then
  curl -sL -o "public/images/products/dressing-sur-mesure_2.jpg" "https://drive.google.com/uc?export=download&id=1rA3jSp3yHSLI_ZeZDxVaD11lIKFeNZbY" 2>/dev/null
  if [ -s "public/images/products/dressing-sur-mesure_2.jpg" ] && file "public/images/products/dressing-sur-mesure_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/dressing-sur-mesure_2.jpg"
    curl -sL -o "public/images/products/dressing-sur-mesure_2.jpg" "https://lh3.googleusercontent.com/d/1rA3jSp3yHSLI_ZeZDxVaD11lIKFeNZbY" 2>/dev/null
    if [ -s "public/images/products/dressing-sur-mesure_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/dressing-sur-mesure_3.jpg" ]; then
  curl -sL -o "public/images/products/dressing-sur-mesure_3.jpg" "https://drive.google.com/uc?export=download&id=1peHWgePwps6j-XhvANPfVxyEAaltYWbZ" 2>/dev/null
  if [ -s "public/images/products/dressing-sur-mesure_3.jpg" ] && file "public/images/products/dressing-sur-mesure_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/dressing-sur-mesure_3.jpg"
    curl -sL -o "public/images/products/dressing-sur-mesure_3.jpg" "https://lh3.googleusercontent.com/d/1peHWgePwps6j-XhvANPfVxyEAaltYWbZ" 2>/dev/null
    if [ -s "public/images/products/dressing-sur-mesure_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/dressing-sur-mesure_4.jpg" ]; then
  curl -sL -o "public/images/products/dressing-sur-mesure_4.jpg" "https://drive.google.com/uc?export=download&id=1zSfvgplCIMLE2Fjcdx6upD-KAbZybQKP" 2>/dev/null
  if [ -s "public/images/products/dressing-sur-mesure_4.jpg" ] && file "public/images/products/dressing-sur-mesure_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/dressing-sur-mesure_4.jpg"
    curl -sL -o "public/images/products/dressing-sur-mesure_4.jpg" "https://lh3.googleusercontent.com/d/1zSfvgplCIMLE2Fjcdx6upD-KAbZybQKP" 2>/dev/null
    if [ -s "public/images/products/dressing-sur-mesure_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-japan-tdn_1.jpg" ]; then
  curl -sL -o "public/images/products/lit-japan-tdn_1.jpg" "https://drive.google.com/uc?export=download&id=1LjrWwdRg7hA6rzCc-iLuzti4fUFmq2J5" 2>/dev/null
  if [ -s "public/images/products/lit-japan-tdn_1.jpg" ] && file "public/images/products/lit-japan-tdn_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-japan-tdn_1.jpg"
    curl -sL -o "public/images/products/lit-japan-tdn_1.jpg" "https://lh3.googleusercontent.com/d/1LjrWwdRg7hA6rzCc-iLuzti4fUFmq2J5" 2>/dev/null
    if [ -s "public/images/products/lit-japan-tdn_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-japan-tdn_2.jpg" ]; then
  curl -sL -o "public/images/products/lit-japan-tdn_2.jpg" "https://drive.google.com/uc?export=download&id=1rbkPZI2jfCidgPa2qsUbyXtKs3wIyRsK" 2>/dev/null
  if [ -s "public/images/products/lit-japan-tdn_2.jpg" ] && file "public/images/products/lit-japan-tdn_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-japan-tdn_2.jpg"
    curl -sL -o "public/images/products/lit-japan-tdn_2.jpg" "https://lh3.googleusercontent.com/d/1rbkPZI2jfCidgPa2qsUbyXtKs3wIyRsK" 2>/dev/null
    if [ -s "public/images/products/lit-japan-tdn_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-japan-tdn_3.jpg" ]; then
  curl -sL -o "public/images/products/lit-japan-tdn_3.jpg" "https://drive.google.com/uc?export=download&id=1PmvtdHgkM9ak4f_vosq15apvFZEGIkkk" 2>/dev/null
  if [ -s "public/images/products/lit-japan-tdn_3.jpg" ] && file "public/images/products/lit-japan-tdn_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-japan-tdn_3.jpg"
    curl -sL -o "public/images/products/lit-japan-tdn_3.jpg" "https://lh3.googleusercontent.com/d/1PmvtdHgkM9ak4f_vosq15apvFZEGIkkk" 2>/dev/null
    if [ -s "public/images/products/lit-japan-tdn_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-japan-tdn_4.jpg" ]; then
  curl -sL -o "public/images/products/lit-japan-tdn_4.jpg" "https://drive.google.com/uc?export=download&id=1JIrfSRBL3ArL237SdEtf11NJC3D8ZvQY" 2>/dev/null
  if [ -s "public/images/products/lit-japan-tdn_4.jpg" ] && file "public/images/products/lit-japan-tdn_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-japan-tdn_4.jpg"
    curl -sL -o "public/images/products/lit-japan-tdn_4.jpg" "https://lh3.googleusercontent.com/d/1JIrfSRBL3ArL237SdEtf11NJC3D8ZvQY" 2>/dev/null
    if [ -s "public/images/products/lit-japan-tdn_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-evolia_1.jpg" ]; then
  curl -sL -o "public/images/products/lit-evolia_1.jpg" "https://drive.google.com/uc?export=download&id=1ObyUcxbgPiHf0st-ahwjfKe-bs3vUCjL" 2>/dev/null
  if [ -s "public/images/products/lit-evolia_1.jpg" ] && file "public/images/products/lit-evolia_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-evolia_1.jpg"
    curl -sL -o "public/images/products/lit-evolia_1.jpg" "https://lh3.googleusercontent.com/d/1ObyUcxbgPiHf0st-ahwjfKe-bs3vUCjL" 2>/dev/null
    if [ -s "public/images/products/lit-evolia_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-evolia_2.jpg" ]; then
  curl -sL -o "public/images/products/lit-evolia_2.jpg" "https://drive.google.com/uc?export=download&id=18NWC7_JSUKIkQ09f26MbXKyMDC6ZM2Zb" 2>/dev/null
  if [ -s "public/images/products/lit-evolia_2.jpg" ] && file "public/images/products/lit-evolia_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-evolia_2.jpg"
    curl -sL -o "public/images/products/lit-evolia_2.jpg" "https://lh3.googleusercontent.com/d/18NWC7_JSUKIkQ09f26MbXKyMDC6ZM2Zb" 2>/dev/null
    if [ -s "public/images/products/lit-evolia_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-evolia_3.jpg" ]; then
  curl -sL -o "public/images/products/lit-evolia_3.jpg" "https://drive.google.com/uc?export=download&id=1uEgzuy7lFMAI5nCcSjhaYhvvB_a6uXE8" 2>/dev/null
  if [ -s "public/images/products/lit-evolia_3.jpg" ] && file "public/images/products/lit-evolia_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-evolia_3.jpg"
    curl -sL -o "public/images/products/lit-evolia_3.jpg" "https://lh3.googleusercontent.com/d/1uEgzuy7lFMAI5nCcSjhaYhvvB_a6uXE8" 2>/dev/null
    if [ -s "public/images/products/lit-evolia_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-evolia_4.jpg" ]; then
  curl -sL -o "public/images/products/lit-evolia_4.jpg" "https://drive.google.com/uc?export=download&id=1QAPvRUeyOrKirYnSNrnUPfZ5x30fNEQk" 2>/dev/null
  if [ -s "public/images/products/lit-evolia_4.jpg" ] && file "public/images/products/lit-evolia_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-evolia_4.jpg"
    curl -sL -o "public/images/products/lit-evolia_4.jpg" "https://lh3.googleusercontent.com/d/1QAPvRUeyOrKirYnSNrnUPfZ5x30fNEQk" 2>/dev/null
    if [ -s "public/images/products/lit-evolia_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-slats-3-new_1.jpg" ]; then
  curl -sL -o "public/images/products/lit-slats-3-new_1.jpg" "https://drive.google.com/uc?export=download&id=1HfMN332gI9XYpZtiqUWj_d1v8tiATdwm" 2>/dev/null
  if [ -s "public/images/products/lit-slats-3-new_1.jpg" ] && file "public/images/products/lit-slats-3-new_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-slats-3-new_1.jpg"
    curl -sL -o "public/images/products/lit-slats-3-new_1.jpg" "https://lh3.googleusercontent.com/d/1HfMN332gI9XYpZtiqUWj_d1v8tiATdwm" 2>/dev/null
    if [ -s "public/images/products/lit-slats-3-new_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-slats-3-new_2.jpg" ]; then
  curl -sL -o "public/images/products/lit-slats-3-new_2.jpg" "https://drive.google.com/uc?export=download&id=1XwVgsYuXKnMGjzyEFOfNrLlYX8hfZ9FF" 2>/dev/null
  if [ -s "public/images/products/lit-slats-3-new_2.jpg" ] && file "public/images/products/lit-slats-3-new_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-slats-3-new_2.jpg"
    curl -sL -o "public/images/products/lit-slats-3-new_2.jpg" "https://lh3.googleusercontent.com/d/1XwVgsYuXKnMGjzyEFOfNrLlYX8hfZ9FF" 2>/dev/null
    if [ -s "public/images/products/lit-slats-3-new_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-slats-3-new_3.jpg" ]; then
  curl -sL -o "public/images/products/lit-slats-3-new_3.jpg" "https://drive.google.com/uc?export=download&id=1CEx8-i23WbmZFRvpIv2SAC8yRyu1x7hC" 2>/dev/null
  if [ -s "public/images/products/lit-slats-3-new_3.jpg" ] && file "public/images/products/lit-slats-3-new_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-slats-3-new_3.jpg"
    curl -sL -o "public/images/products/lit-slats-3-new_3.jpg" "https://lh3.googleusercontent.com/d/1CEx8-i23WbmZFRvpIv2SAC8yRyu1x7hC" 2>/dev/null
    if [ -s "public/images/products/lit-slats-3-new_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-slats-3-new_4.jpg" ]; then
  curl -sL -o "public/images/products/lit-slats-3-new_4.jpg" "https://drive.google.com/uc?export=download&id=1ObyUcxbgPiHf0st-ahwjfKe-bs3vUCjL" 2>/dev/null
  if [ -s "public/images/products/lit-slats-3-new_4.jpg" ] && file "public/images/products/lit-slats-3-new_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-slats-3-new_4.jpg"
    curl -sL -o "public/images/products/lit-slats-3-new_4.jpg" "https://lh3.googleusercontent.com/d/1ObyUcxbgPiHf0st-ahwjfKe-bs3vUCjL" 2>/dev/null
    if [ -s "public/images/products/lit-slats-3-new_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-minimalis_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-minimalis_1.jpg" "https://drive.google.com/uc?export=download&id=1C9nEs8KwhvAJASSEK8rCmew5VHS-IhyS" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-minimalis_1.jpg" ] && file "public/images/products/table-de-nuit-minimalis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-minimalis_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-minimalis_1.jpg" "https://lh3.googleusercontent.com/d/1C9nEs8KwhvAJASSEK8rCmew5VHS-IhyS" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-minimalis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-minimalis_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-minimalis_2.jpg" "https://drive.google.com/uc?export=download&id=10BmlvB62KLi6Deu7ro43yuGeLF8IiCFE" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-minimalis_2.jpg" ] && file "public/images/products/table-de-nuit-minimalis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-minimalis_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-minimalis_2.jpg" "https://lh3.googleusercontent.com/d/10BmlvB62KLi6Deu7ro43yuGeLF8IiCFE" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-minimalis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-minimalis_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-minimalis_3.jpg" "https://drive.google.com/uc?export=download&id=1TQifskqFLMcS1YaZ-Qt6FZdOsPDO_hNy" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-minimalis_3.jpg" ] && file "public/images/products/table-de-nuit-minimalis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-minimalis_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-minimalis_3.jpg" "https://lh3.googleusercontent.com/d/1TQifskqFLMcS1YaZ-Qt6FZdOsPDO_hNy" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-minimalis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-minimalis_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-minimalis_4.jpg" "https://drive.google.com/uc?export=download&id=1jY0qG_rTUmb7erbdR11nhtknGBGUXYvN" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-minimalis_4.jpg" ] && file "public/images/products/table-de-nuit-minimalis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-minimalis_4.jpg"
    curl -sL -o "public/images/products/table-de-nuit-minimalis_4.jpg" "https://lh3.googleusercontent.com/d/1jY0qG_rTUmb7erbdR11nhtknGBGUXYvN" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-minimalis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-alkmaar_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-alkmaar_1.jpg" "https://drive.google.com/uc?export=download&id=1slyjwgX9WklRh9qTB9nj2MD5OkGUNNUV" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-alkmaar_1.jpg" ] && file "public/images/products/table-de-nuit-alkmaar_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-alkmaar_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-alkmaar_1.jpg" "https://lh3.googleusercontent.com/d/1slyjwgX9WklRh9qTB9nj2MD5OkGUNNUV" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-alkmaar_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-alkmaar_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-alkmaar_2.jpg" "https://drive.google.com/uc?export=download&id=1Wuf2Bckfo4yjRYCXCyMLZMRYwOlyKPCv" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-alkmaar_2.jpg" ] && file "public/images/products/table-de-nuit-alkmaar_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-alkmaar_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-alkmaar_2.jpg" "https://lh3.googleusercontent.com/d/1Wuf2Bckfo4yjRYCXCyMLZMRYwOlyKPCv" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-alkmaar_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-alkmaar_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-alkmaar_3.jpg" "https://drive.google.com/uc?export=download&id=1e64CqZm3rn8_SXsDQftIGvnd-9oUL3Ba" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-alkmaar_3.jpg" ] && file "public/images/products/table-de-nuit-alkmaar_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-alkmaar_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-alkmaar_3.jpg" "https://lh3.googleusercontent.com/d/1e64CqZm3rn8_SXsDQftIGvnd-9oUL3Ba" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-alkmaar_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-alkmaar_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-alkmaar_4.jpg" "https://drive.google.com/uc?export=download&id=1oxBbPGItmhb_f93QuHJwm6IHHeN-wwTR" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-alkmaar_4.jpg" ] && file "public/images/products/table-de-nuit-alkmaar_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-alkmaar_4.jpg"
    curl -sL -o "public/images/products/table-de-nuit-alkmaar_4.jpg" "https://lh3.googleusercontent.com/d/1oxBbPGItmhb_f93QuHJwm6IHHeN-wwTR" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-alkmaar_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-jail_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-jail_1.jpg" "https://drive.google.com/uc?export=download&id=1F-ZW5fA-Atq9MXilaXffXvAzPzJmD6BV" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-jail_1.jpg" ] && file "public/images/products/table-de-nuit-jail_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-jail_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-jail_1.jpg" "https://lh3.googleusercontent.com/d/1F-ZW5fA-Atq9MXilaXffXvAzPzJmD6BV" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-jail_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-jail_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-jail_2.jpg" "https://drive.google.com/uc?export=download&id=1hcI1ATYzbXrhadx1ptrQlS5HA9E6CAvX" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-jail_2.jpg" ] && file "public/images/products/table-de-nuit-jail_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-jail_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-jail_2.jpg" "https://lh3.googleusercontent.com/d/1hcI1ATYzbXrhadx1ptrQlS5HA9E6CAvX" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-jail_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-jail_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-jail_3.jpg" "https://drive.google.com/uc?export=download&id=1E7Q0dJm6BuPU6oS15l7syyCO113EnHmD" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-jail_3.jpg" ] && file "public/images/products/table-de-nuit-jail_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-jail_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-jail_3.jpg" "https://lh3.googleusercontent.com/d/1E7Q0dJm6BuPU6oS15l7syyCO113EnHmD" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-jail_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-jail_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-jail_4.jpg" "https://drive.google.com/uc?export=download&id=1FVKFOEkI14lbo88HCLSSFA1L4QCyTcaq" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-jail_4.jpg" ] && file "public/images/products/table-de-nuit-jail_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-jail_4.jpg"
    curl -sL -o "public/images/products/table-de-nuit-jail_4.jpg" "https://lh3.googleusercontent.com/d/1FVKFOEkI14lbo88HCLSSFA1L4QCyTcaq" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-jail_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=1W9jCKEUG-AZRjKQf5wmCYIGdvYpXHm0X" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-krepyak_1.jpg" ] && file "public/images/products/table-de-nuit-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-krepyak_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/1W9jCKEUG-AZRjKQf5wmCYIGdvYpXHm0X" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=1Bjf3tPIQf1vvXzUIbTbvxoPz4bztlaHw" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-krepyak_2.jpg" ] && file "public/images/products/table-de-nuit-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-krepyak_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/1Bjf3tPIQf1vvXzUIbTbvxoPz4bztlaHw" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=1yrN1RbH0x4E7BQmZ6jnUeAkIAfGfAt7f" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-krepyak_3.jpg" ] && file "public/images/products/table-de-nuit-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-krepyak_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/1yrN1RbH0x4E7BQmZ6jnUeAkIAfGfAt7f" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1Gf44ekHazgdiOICSX1_fAjjUURDfwKxi" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-krepyak_4.jpg" ] && file "public/images/products/table-de-nuit-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-krepyak_4.jpg"
    curl -sL -o "public/images/products/table-de-nuit-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1Gf44ekHazgdiOICSX1_fAjjUURDfwKxi" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-madiun_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-madiun_1.jpg" "https://drive.google.com/uc?export=download&id=13W9oyk0wgbOVD7S9nHz7JUdA9UiMHNCE" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-madiun_1.jpg" ] && file "public/images/products/table-de-nuit-madiun_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-madiun_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-madiun_1.jpg" "https://lh3.googleusercontent.com/d/13W9oyk0wgbOVD7S9nHz7JUdA9UiMHNCE" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-madiun_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-madiun_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-madiun_2.jpg" "https://drive.google.com/uc?export=download&id=1a1te-8rmLEbzYGCdiB6SO6TrCBajMR9p" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-madiun_2.jpg" ] && file "public/images/products/table-de-nuit-madiun_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-madiun_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-madiun_2.jpg" "https://lh3.googleusercontent.com/d/1a1te-8rmLEbzYGCdiB6SO6TrCBajMR9p" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-madiun_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-madiun_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-madiun_3.jpg" "https://drive.google.com/uc?export=download&id=1WsHC6q01_KFIz0-guPEH3X05sfgdOo6Y" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-madiun_3.jpg" ] && file "public/images/products/table-de-nuit-madiun_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-madiun_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-madiun_3.jpg" "https://lh3.googleusercontent.com/d/1WsHC6q01_KFIz0-guPEH3X05sfgdOo6Y" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-madiun_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-sherry_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-sherry_1.jpg" "https://drive.google.com/uc?export=download&id=1FZE8w3mF_gr9YiVsVhj5kpUSRGIVw3-d" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-sherry_1.jpg" ] && file "public/images/products/table-de-nuit-sherry_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-sherry_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-sherry_1.jpg" "https://lh3.googleusercontent.com/d/1FZE8w3mF_gr9YiVsVhj5kpUSRGIVw3-d" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-sherry_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-sherry_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-sherry_2.jpg" "https://drive.google.com/uc?export=download&id=1qSCngDAl4B30vAHFIvzGHuqDF6h9vS37" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-sherry_2.jpg" ] && file "public/images/products/table-de-nuit-sherry_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-sherry_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-sherry_2.jpg" "https://lh3.googleusercontent.com/d/1qSCngDAl4B30vAHFIvzGHuqDF6h9vS37" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-sherry_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-sherry_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-sherry_3.jpg" "https://drive.google.com/uc?export=download&id=1CWQ0atfnzc6rz7nG0Ap1lQ9_f7BjgJWY" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-sherry_3.jpg" ] && file "public/images/products/table-de-nuit-sherry_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-sherry_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-sherry_3.jpg" "https://lh3.googleusercontent.com/d/1CWQ0atfnzc6rz7nG0Ap1lQ9_f7BjgJWY" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-sherry_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-ubud_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-ubud_1.jpg" "https://drive.google.com/uc?export=download&id=1eoysu1DZUpYhBeSAIuF3U2b9nmgUi7Ic" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-ubud_1.jpg" ] && file "public/images/products/table-de-nuit-ubud_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-ubud_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-ubud_1.jpg" "https://lh3.googleusercontent.com/d/1eoysu1DZUpYhBeSAIuF3U2b9nmgUi7Ic" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-ubud_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-ubud_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-ubud_2.jpg" "https://drive.google.com/uc?export=download&id=150ic8k9zv4YTv4j7o08qZnuM4V7kPaI7" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-ubud_2.jpg" ] && file "public/images/products/table-de-nuit-ubud_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-ubud_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-ubud_2.jpg" "https://lh3.googleusercontent.com/d/150ic8k9zv4YTv4j7o08qZnuM4V7kPaI7" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-ubud_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-ubud_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-ubud_3.jpg" "https://drive.google.com/uc?export=download&id=1tb6XfcRGom9sFr67LceJqOM3PNpwIsOy" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-ubud_3.jpg" ] && file "public/images/products/table-de-nuit-ubud_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-ubud_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-ubud_3.jpg" "https://lh3.googleusercontent.com/d/1tb6XfcRGom9sFr67LceJqOM3PNpwIsOy" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-ubud_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-ubud_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-ubud_4.jpg" "https://drive.google.com/uc?export=download&id=15W0rKKwvCgXpvTh3VumjJFNSIMyD3dxQ" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-ubud_4.jpg" ] && file "public/images/products/table-de-nuit-ubud_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-ubud_4.jpg"
    curl -sL -o "public/images/products/table-de-nuit-ubud_4.jpg" "https://lh3.googleusercontent.com/d/15W0rKKwvCgXpvTh3VumjJFNSIMyD3dxQ" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-ubud_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-ubud_1.jpg" ]; then
  curl -sL -o "public/images/products/lit-ubud_1.jpg" "https://drive.google.com/uc?export=download&id=1vaqsE4CgGQtq0De3Jz2sBTRv6_KKNTd6" 2>/dev/null
  if [ -s "public/images/products/lit-ubud_1.jpg" ] && file "public/images/products/lit-ubud_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-ubud_1.jpg"
    curl -sL -o "public/images/products/lit-ubud_1.jpg" "https://lh3.googleusercontent.com/d/1vaqsE4CgGQtq0De3Jz2sBTRv6_KKNTd6" 2>/dev/null
    if [ -s "public/images/products/lit-ubud_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-ubud_2.jpg" ]; then
  curl -sL -o "public/images/products/lit-ubud_2.jpg" "https://drive.google.com/uc?export=download&id=1a29KfjPxzmDoqnXbrZ4YqmdBMrvYSfsq" 2>/dev/null
  if [ -s "public/images/products/lit-ubud_2.jpg" ] && file "public/images/products/lit-ubud_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-ubud_2.jpg"
    curl -sL -o "public/images/products/lit-ubud_2.jpg" "https://lh3.googleusercontent.com/d/1a29KfjPxzmDoqnXbrZ4YqmdBMrvYSfsq" 2>/dev/null
    if [ -s "public/images/products/lit-ubud_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-ubud_3.jpg" ]; then
  curl -sL -o "public/images/products/lit-ubud_3.jpg" "https://drive.google.com/uc?export=download&id=19gN5OB44tk2oH0JAj88j2dgZ9IU2J3QV" 2>/dev/null
  if [ -s "public/images/products/lit-ubud_3.jpg" ] && file "public/images/products/lit-ubud_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-ubud_3.jpg"
    curl -sL -o "public/images/products/lit-ubud_3.jpg" "https://lh3.googleusercontent.com/d/19gN5OB44tk2oH0JAj88j2dgZ9IU2J3QV" 2>/dev/null
    if [ -s "public/images/products/lit-ubud_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lit-ubud_4.jpg" ]; then
  curl -sL -o "public/images/products/lit-ubud_4.jpg" "https://drive.google.com/uc?export=download&id=1CPcbocxLVkptvlgSreD9yFj_3qVXunuI" 2>/dev/null
  if [ -s "public/images/products/lit-ubud_4.jpg" ] && file "public/images/products/lit-ubud_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lit-ubud_4.jpg"
    curl -sL -o "public/images/products/lit-ubud_4.jpg" "https://lh3.googleusercontent.com/d/1CPcbocxLVkptvlgSreD9yFj_3qVXunuI" 2>/dev/null
    if [ -s "public/images/products/lit-ubud_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-hampton_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-hampton_1.jpg" "https://drive.google.com/uc?export=download&id=1AnTKnDnKgOReA-6cbat2qgSTJFlsN-Mw" 2>/dev/null
  if [ -s "public/images/products/bureau-hampton_1.jpg" ] && file "public/images/products/bureau-hampton_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-hampton_1.jpg"
    curl -sL -o "public/images/products/bureau-hampton_1.jpg" "https://lh3.googleusercontent.com/d/1AnTKnDnKgOReA-6cbat2qgSTJFlsN-Mw" 2>/dev/null
    if [ -s "public/images/products/bureau-hampton_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-hampton_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-hampton_2.jpg" "https://drive.google.com/uc?export=download&id=1XBeuQLHvsAI-iiY-CIk8AFyHvwwded30" 2>/dev/null
  if [ -s "public/images/products/bureau-hampton_2.jpg" ] && file "public/images/products/bureau-hampton_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-hampton_2.jpg"
    curl -sL -o "public/images/products/bureau-hampton_2.jpg" "https://lh3.googleusercontent.com/d/1XBeuQLHvsAI-iiY-CIk8AFyHvwwded30" 2>/dev/null
    if [ -s "public/images/products/bureau-hampton_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-hampton_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-hampton_3.jpg" "https://drive.google.com/uc?export=download&id=1xqSKTDA45xxr1zoyaU0faxagJcQ8bIEa" 2>/dev/null
  if [ -s "public/images/products/bureau-hampton_3.jpg" ] && file "public/images/products/bureau-hampton_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-hampton_3.jpg"
    curl -sL -o "public/images/products/bureau-hampton_3.jpg" "https://lh3.googleusercontent.com/d/1xqSKTDA45xxr1zoyaU0faxagJcQ8bIEa" 2>/dev/null
    if [ -s "public/images/products/bureau-hampton_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-hampton_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-hampton_4.jpg" "https://drive.google.com/uc?export=download&id=1MJ53pDmizfB-qiEhzBVVny8WZfiDwwzP" 2>/dev/null
  if [ -s "public/images/products/bureau-hampton_4.jpg" ] && file "public/images/products/bureau-hampton_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-hampton_4.jpg"
    curl -sL -o "public/images/products/bureau-hampton_4.jpg" "https://lh3.googleusercontent.com/d/1MJ53pDmizfB-qiEhzBVVny8WZfiDwwzP" 2>/dev/null
    if [ -s "public/images/products/bureau-hampton_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jos_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jos_1.jpg" "https://drive.google.com/uc?export=download&id=1_iCAuhmu1b6IWtUYPb5IgIoypkwM6BCv" 2>/dev/null
  if [ -s "public/images/products/bureau-jos_1.jpg" ] && file "public/images/products/bureau-jos_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jos_1.jpg"
    curl -sL -o "public/images/products/bureau-jos_1.jpg" "https://lh3.googleusercontent.com/d/1_iCAuhmu1b6IWtUYPb5IgIoypkwM6BCv" 2>/dev/null
    if [ -s "public/images/products/bureau-jos_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jos_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jos_2.jpg" "https://drive.google.com/uc?export=download&id=1oaYKMiAj5vWbBdQgoYypBt1kCbuHS9UN" 2>/dev/null
  if [ -s "public/images/products/bureau-jos_2.jpg" ] && file "public/images/products/bureau-jos_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jos_2.jpg"
    curl -sL -o "public/images/products/bureau-jos_2.jpg" "https://lh3.googleusercontent.com/d/1oaYKMiAj5vWbBdQgoYypBt1kCbuHS9UN" 2>/dev/null
    if [ -s "public/images/products/bureau-jos_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jos_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jos_3.jpg" "https://drive.google.com/uc?export=download&id=1ods60SUpeJ5t6goc86Ue3wINNF_CPDZ5" 2>/dev/null
  if [ -s "public/images/products/bureau-jos_3.jpg" ] && file "public/images/products/bureau-jos_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jos_3.jpg"
    curl -sL -o "public/images/products/bureau-jos_3.jpg" "https://lh3.googleusercontent.com/d/1ods60SUpeJ5t6goc86Ue3wINNF_CPDZ5" 2>/dev/null
    if [ -s "public/images/products/bureau-jos_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-samania_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-samania_1.jpg" "https://drive.google.com/uc?export=download&id=1-LLHbKlTuOBQQR69VG9ws8lJC2puZ3G5" 2>/dev/null
  if [ -s "public/images/products/bureau-samania_1.jpg" ] && file "public/images/products/bureau-samania_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-samania_1.jpg"
    curl -sL -o "public/images/products/bureau-samania_1.jpg" "https://lh3.googleusercontent.com/d/1-LLHbKlTuOBQQR69VG9ws8lJC2puZ3G5" 2>/dev/null
    if [ -s "public/images/products/bureau-samania_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-samania_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-samania_2.jpg" "https://drive.google.com/uc?export=download&id=1PyeU-DR7Gt5E_KjpQlizbQWI6U2H7BMT" 2>/dev/null
  if [ -s "public/images/products/bureau-samania_2.jpg" ] && file "public/images/products/bureau-samania_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-samania_2.jpg"
    curl -sL -o "public/images/products/bureau-samania_2.jpg" "https://lh3.googleusercontent.com/d/1PyeU-DR7Gt5E_KjpQlizbQWI6U2H7BMT" 2>/dev/null
    if [ -s "public/images/products/bureau-samania_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-samania_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-samania_3.jpg" "https://drive.google.com/uc?export=download&id=1LzhABwDbi2HzFayAMqig9WvdF5aYN5Lb" 2>/dev/null
  if [ -s "public/images/products/bureau-samania_3.jpg" ] && file "public/images/products/bureau-samania_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-samania_3.jpg"
    curl -sL -o "public/images/products/bureau-samania_3.jpg" "https://lh3.googleusercontent.com/d/1LzhABwDbi2HzFayAMqig9WvdF5aYN5Lb" 2>/dev/null
    if [ -s "public/images/products/bureau-samania_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jonggol_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jonggol_1.jpg" "https://drive.google.com/uc?export=download&id=1F6vyl8kFhzeS58T60JwhmZqGPksODbdC" 2>/dev/null
  if [ -s "public/images/products/bureau-jonggol_1.jpg" ] && file "public/images/products/bureau-jonggol_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jonggol_1.jpg"
    curl -sL -o "public/images/products/bureau-jonggol_1.jpg" "https://lh3.googleusercontent.com/d/1F6vyl8kFhzeS58T60JwhmZqGPksODbdC" 2>/dev/null
    if [ -s "public/images/products/bureau-jonggol_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jonggol_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jonggol_2.jpg" "https://drive.google.com/uc?export=download&id=1m30ZmvXJ3jpscX6m1MiqQ5lQPWruYQmN" 2>/dev/null
  if [ -s "public/images/products/bureau-jonggol_2.jpg" ] && file "public/images/products/bureau-jonggol_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jonggol_2.jpg"
    curl -sL -o "public/images/products/bureau-jonggol_2.jpg" "https://lh3.googleusercontent.com/d/1m30ZmvXJ3jpscX6m1MiqQ5lQPWruYQmN" 2>/dev/null
    if [ -s "public/images/products/bureau-jonggol_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jonggol_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jonggol_3.jpg" "https://drive.google.com/uc?export=download&id=1k-jSpjdy3n2F3C2RGROCyTNZsXYDYmW_" 2>/dev/null
  if [ -s "public/images/products/bureau-jonggol_3.jpg" ] && file "public/images/products/bureau-jonggol_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jonggol_3.jpg"
    curl -sL -o "public/images/products/bureau-jonggol_3.jpg" "https://lh3.googleusercontent.com/d/1k-jSpjdy3n2F3C2RGROCyTNZsXYDYmW_" 2>/dev/null
    if [ -s "public/images/products/bureau-jonggol_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-jonggol_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-jonggol_4.jpg" "https://drive.google.com/uc?export=download&id=1DPKg7ZreCEWb9BIV-IYk1Dibo8hLC8B7" 2>/dev/null
  if [ -s "public/images/products/bureau-jonggol_4.jpg" ] && file "public/images/products/bureau-jonggol_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-jonggol_4.jpg"
    curl -sL -o "public/images/products/bureau-jonggol_4.jpg" "https://lh3.googleusercontent.com/d/1DPKg7ZreCEWb9BIV-IYk1Dibo8hLC8B7" 2>/dev/null
    if [ -s "public/images/products/bureau-jonggol_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-naya_1.jpg" ]; then
  curl -sL -o "public/images/products/bureau-naya_1.jpg" "https://drive.google.com/uc?export=download&id=1CD2eoRBiQUVS2dd2BNoajSBpEu8hSzSy" 2>/dev/null
  if [ -s "public/images/products/bureau-naya_1.jpg" ] && file "public/images/products/bureau-naya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-naya_1.jpg"
    curl -sL -o "public/images/products/bureau-naya_1.jpg" "https://lh3.googleusercontent.com/d/1CD2eoRBiQUVS2dd2BNoajSBpEu8hSzSy" 2>/dev/null
    if [ -s "public/images/products/bureau-naya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-naya_2.jpg" ]; then
  curl -sL -o "public/images/products/bureau-naya_2.jpg" "https://drive.google.com/uc?export=download&id=1GZMGwrc-f961AxlG1qjmQ_4LuSDYS6c_" 2>/dev/null
  if [ -s "public/images/products/bureau-naya_2.jpg" ] && file "public/images/products/bureau-naya_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-naya_2.jpg"
    curl -sL -o "public/images/products/bureau-naya_2.jpg" "https://lh3.googleusercontent.com/d/1GZMGwrc-f961AxlG1qjmQ_4LuSDYS6c_" 2>/dev/null
    if [ -s "public/images/products/bureau-naya_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-naya_3.jpg" ]; then
  curl -sL -o "public/images/products/bureau-naya_3.jpg" "https://drive.google.com/uc?export=download&id=16NhJEUs1zIxk_6FV3DT9J6CnIXibzunc" 2>/dev/null
  if [ -s "public/images/products/bureau-naya_3.jpg" ] && file "public/images/products/bureau-naya_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-naya_3.jpg"
    curl -sL -o "public/images/products/bureau-naya_3.jpg" "https://lh3.googleusercontent.com/d/16NhJEUs1zIxk_6FV3DT9J6CnIXibzunc" 2>/dev/null
    if [ -s "public/images/products/bureau-naya_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bureau-naya_4.jpg" ]; then
  curl -sL -o "public/images/products/bureau-naya_4.jpg" "https://drive.google.com/uc?export=download&id=1I9UBJsQT1RIznhvBJtaytizhz0_-IriE" 2>/dev/null
  if [ -s "public/images/products/bureau-naya_4.jpg" ] && file "public/images/products/bureau-naya_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bureau-naya_4.jpg"
    curl -sL -o "public/images/products/bureau-naya_4.jpg" "https://lh3.googleusercontent.com/d/1I9UBJsQT1RIznhvBJtaytizhz0_-IriE" 2>/dev/null
    if [ -s "public/images/products/bureau-naya_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-lara_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-lara_1.jpg" "https://drive.google.com/uc?export=download&id=16BTVeoMhdoxb0gNBBHQmGmlZO3l7BLiB" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-lara_1.jpg" ] && file "public/images/products/table-de-nuit-lara_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-lara_1.jpg"
    curl -sL -o "public/images/products/table-de-nuit-lara_1.jpg" "https://lh3.googleusercontent.com/d/16BTVeoMhdoxb0gNBBHQmGmlZO3l7BLiB" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-lara_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-lara_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-lara_2.jpg" "https://drive.google.com/uc?export=download&id=1r9ZzvaKEycgSCPUeGozVCgVIzTboRNFS" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-lara_2.jpg" ] && file "public/images/products/table-de-nuit-lara_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-lara_2.jpg"
    curl -sL -o "public/images/products/table-de-nuit-lara_2.jpg" "https://lh3.googleusercontent.com/d/1r9ZzvaKEycgSCPUeGozVCgVIzTboRNFS" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-lara_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-lara_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-lara_3.jpg" "https://drive.google.com/uc?export=download&id=1eQC6vMZMdOkmkmM5AVLNyZZ-Rgf2j8Xp" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-lara_3.jpg" ] && file "public/images/products/table-de-nuit-lara_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-lara_3.jpg"
    curl -sL -o "public/images/products/table-de-nuit-lara_3.jpg" "https://lh3.googleusercontent.com/d/1eQC6vMZMdOkmkmM5AVLNyZZ-Rgf2j8Xp" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-lara_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-nuit-lara_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-nuit-lara_4.jpg" "https://drive.google.com/uc?export=download&id=1FfCyJ8lB22vL6ZlSyFiQRU7NsmgbHk8t" 2>/dev/null
  if [ -s "public/images/products/table-de-nuit-lara_4.jpg" ] && file "public/images/products/table-de-nuit-lara_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-nuit-lara_4.jpg"
    curl -sL -o "public/images/products/table-de-nuit-lara_4.jpg" "https://lh3.googleusercontent.com/d/1FfCyJ8lB22vL6ZlSyFiQRU7NsmgbHk8t" 2>/dev/null
    if [ -s "public/images/products/table-de-nuit-lara_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/dessin-de-cuisine-en-teck_1.jpg" ]; then
  curl -sL -o "public/images/products/dessin-de-cuisine-en-teck_1.jpg" "https://drive.google.com/uc?export=download&id=1RPnjEdl4wr5ouOhx24R2c1Lwkmjbatf2" 2>/dev/null
  if [ -s "public/images/products/dessin-de-cuisine-en-teck_1.jpg" ] && file "public/images/products/dessin-de-cuisine-en-teck_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/dessin-de-cuisine-en-teck_1.jpg"
    curl -sL -o "public/images/products/dessin-de-cuisine-en-teck_1.jpg" "https://lh3.googleusercontent.com/d/1RPnjEdl4wr5ouOhx24R2c1Lwkmjbatf2" 2>/dev/null
    if [ -s "public/images/products/dessin-de-cuisine-en-teck_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg" ]; then
  curl -sL -o "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg" "https://drive.google.com/uc?export=download&id=1YcrFhJx33xOb9QLDY1s4v2A_N5P6AeS8" 2>/dev/null
  if [ -s "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg" ] && file "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg"
    curl -sL -o "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg" "https://lh3.googleusercontent.com/d/1YcrFhJx33xOb9QLDY1s4v2A_N5P6AeS8" 2>/dev/null
    if [ -s "public/images/products/exposition-de-la-cuisine-en-magasin_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg" ]; then
  curl -sL -o "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg" "https://drive.google.com/uc?export=download&id=1X_sIQZpY7XOjP2rrSS1J1vN04WBQzGKJ" 2>/dev/null
  if [ -s "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg" ] && file "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg"
    curl -sL -o "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg" "https://lh3.googleusercontent.com/d/1X_sIQZpY7XOjP2rrSS1J1vN04WBQzGKJ" 2>/dev/null
    if [ -s "public/images/products/exposition-de-la-cuisine-en-magasin_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg" ]; then
  curl -sL -o "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg" "https://drive.google.com/uc?export=download&id=1zOp-lfgbZ35hwyfECwN3DA-mYpx5CHCP" 2>/dev/null
  if [ -s "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg" ] && file "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg"
    curl -sL -o "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg" "https://lh3.googleusercontent.com/d/1zOp-lfgbZ35hwyfECwN3DA-mYpx5CHCP" 2>/dev/null
    if [ -s "public/images/products/exposition-de-la-cuisine-en-magasin_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg" ]; then
  curl -sL -o "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg" "https://drive.google.com/uc?export=download&id=1DV1zl6yGLjX1G1rbZAY0rZoXNHsbpGge" 2>/dev/null
  if [ -s "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg" ] && file "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg"
    curl -sL -o "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg" "https://lh3.googleusercontent.com/d/1DV1zl6yGLjX1G1rbZAY0rZoXNHsbpGge" 2>/dev/null
    if [ -s "public/images/products/mod-lisation-d-une-cuisine-en-teck_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg" ]; then
  curl -sL -o "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg" "https://drive.google.com/uc?export=download&id=1AJRtEf4tNo5iwrjO15_PCFZfvW5E1vnT" 2>/dev/null
  if [ -s "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg" ] && file "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg"
    curl -sL -o "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg" "https://lh3.googleusercontent.com/d/1AJRtEf4tNo5iwrjO15_PCFZfvW5E1vnT" 2>/dev/null
    if [ -s "public/images/products/r-alisation-d-une-cuisine-en-teck_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-3-tiroirs_1.jpg" ]; then
  curl -sL -o "public/images/products/console-3-tiroirs_1.jpg" "https://drive.google.com/uc?export=download&id=1ywatZeHOJEOychOSdmc2UZ-lKaEyXYPy" 2>/dev/null
  if [ -s "public/images/products/console-3-tiroirs_1.jpg" ] && file "public/images/products/console-3-tiroirs_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-3-tiroirs_1.jpg"
    curl -sL -o "public/images/products/console-3-tiroirs_1.jpg" "https://lh3.googleusercontent.com/d/1ywatZeHOJEOychOSdmc2UZ-lKaEyXYPy" 2>/dev/null
    if [ -s "public/images/products/console-3-tiroirs_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-3-tiroirs_2.jpg" ]; then
  curl -sL -o "public/images/products/console-3-tiroirs_2.jpg" "https://drive.google.com/uc?export=download&id=14i0sf5rynhz7ifKmMQIyw0B7BoWaRxk3" 2>/dev/null
  if [ -s "public/images/products/console-3-tiroirs_2.jpg" ] && file "public/images/products/console-3-tiroirs_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-3-tiroirs_2.jpg"
    curl -sL -o "public/images/products/console-3-tiroirs_2.jpg" "https://lh3.googleusercontent.com/d/14i0sf5rynhz7ifKmMQIyw0B7BoWaRxk3" 2>/dev/null
    if [ -s "public/images/products/console-3-tiroirs_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-3-tiroirs_3.jpg" ]; then
  curl -sL -o "public/images/products/console-3-tiroirs_3.jpg" "https://drive.google.com/uc?export=download&id=1RYtfCnziRoMIHoL9t-Mn0a0lLEUs3raC" 2>/dev/null
  if [ -s "public/images/products/console-3-tiroirs_3.jpg" ] && file "public/images/products/console-3-tiroirs_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-3-tiroirs_3.jpg"
    curl -sL -o "public/images/products/console-3-tiroirs_3.jpg" "https://lh3.googleusercontent.com/d/1RYtfCnziRoMIHoL9t-Mn0a0lLEUs3raC" 2>/dev/null
    if [ -s "public/images/products/console-3-tiroirs_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-3-tiroirs_4.jpg" ]; then
  curl -sL -o "public/images/products/console-3-tiroirs_4.jpg" "https://drive.google.com/uc?export=download&id=1WH4tUxuoZJBkIA1SnyhQTOo66-tq2b0u" 2>/dev/null
  if [ -s "public/images/products/console-3-tiroirs_4.jpg" ] && file "public/images/products/console-3-tiroirs_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-3-tiroirs_4.jpg"
    curl -sL -o "public/images/products/console-3-tiroirs_4.jpg" "https://lh3.googleusercontent.com/d/1WH4tUxuoZJBkIA1SnyhQTOo66-tq2b0u" 2>/dev/null
    if [ -s "public/images/products/console-3-tiroirs_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg" ]; then
  curl -sL -o "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg" "https://drive.google.com/uc?export=download&id=12IE1GikYWMk-5u4nuIA1_rmYA7qPvkFQ" 2>/dev/null
  if [ -s "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg" ] && file "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg"
    curl -sL -o "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg" "https://lh3.googleusercontent.com/d/12IE1GikYWMk-5u4nuIA1_rmYA7qPvkFQ" 2>/dev/null
    if [ -s "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg" ]; then
  curl -sL -o "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg" "https://drive.google.com/uc?export=download&id=1sSbmJbvfv9uoRw1btzbOamInFUT6rgXs" 2>/dev/null
  if [ -s "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg" ] && file "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg"
    curl -sL -o "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg" "https://lh3.googleusercontent.com/d/1sSbmJbvfv9uoRw1btzbOamInFUT6rgXs" 2>/dev/null
    if [ -s "public/images/products/console-3-tiroirs-et-pieds-en-m-tal_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-aub-pine_1.jpg" ]; then
  curl -sL -o "public/images/products/console-aub-pine_1.jpg" "https://drive.google.com/uc?export=download&id=1rd1aORKo4m3sy-iztYMqng39Ivp4GFZa" 2>/dev/null
  if [ -s "public/images/products/console-aub-pine_1.jpg" ] && file "public/images/products/console-aub-pine_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-aub-pine_1.jpg"
    curl -sL -o "public/images/products/console-aub-pine_1.jpg" "https://lh3.googleusercontent.com/d/1rd1aORKo4m3sy-iztYMqng39Ivp4GFZa" 2>/dev/null
    if [ -s "public/images/products/console-aub-pine_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-aub-pine_2.jpg" ]; then
  curl -sL -o "public/images/products/console-aub-pine_2.jpg" "https://drive.google.com/uc?export=download&id=15N8O-b69yR8nlKmazx_llp3WFzGN2HWL" 2>/dev/null
  if [ -s "public/images/products/console-aub-pine_2.jpg" ] && file "public/images/products/console-aub-pine_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-aub-pine_2.jpg"
    curl -sL -o "public/images/products/console-aub-pine_2.jpg" "https://lh3.googleusercontent.com/d/15N8O-b69yR8nlKmazx_llp3WFzGN2HWL" 2>/dev/null
    if [ -s "public/images/products/console-aub-pine_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-aub-pine_3.jpg" ]; then
  curl -sL -o "public/images/products/console-aub-pine_3.jpg" "https://drive.google.com/uc?export=download&id=1mIIpjXWvjs5ETULFFAfqK6X3_CA7DGSO" 2>/dev/null
  if [ -s "public/images/products/console-aub-pine_3.jpg" ] && file "public/images/products/console-aub-pine_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-aub-pine_3.jpg"
    curl -sL -o "public/images/products/console-aub-pine_3.jpg" "https://lh3.googleusercontent.com/d/1mIIpjXWvjs5ETULFFAfqK6X3_CA7DGSO" 2>/dev/null
    if [ -s "public/images/products/console-aub-pine_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-aub-pine_4.jpg" ]; then
  curl -sL -o "public/images/products/console-aub-pine_4.jpg" "https://drive.google.com/uc?export=download&id=1qCK6JFgPYIb6t6egAr6TLYHrPJuwhlUU" 2>/dev/null
  if [ -s "public/images/products/console-aub-pine_4.jpg" ] && file "public/images/products/console-aub-pine_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-aub-pine_4.jpg"
    curl -sL -o "public/images/products/console-aub-pine_4.jpg" "https://lh3.googleusercontent.com/d/1qCK6JFgPYIb6t6egAr6TLYHrPJuwhlUU" 2>/dev/null
    if [ -s "public/images/products/console-aub-pine_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-laura-damier_1.jpg" ]; then
  curl -sL -o "public/images/products/console-laura-damier_1.jpg" "https://drive.google.com/uc?export=download&id=1jrLN-ROjGiDQI5ErTANyfEe4Ock79oTA" 2>/dev/null
  if [ -s "public/images/products/console-laura-damier_1.jpg" ] && file "public/images/products/console-laura-damier_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-laura-damier_1.jpg"
    curl -sL -o "public/images/products/console-laura-damier_1.jpg" "https://lh3.googleusercontent.com/d/1jrLN-ROjGiDQI5ErTANyfEe4Ock79oTA" 2>/dev/null
    if [ -s "public/images/products/console-laura-damier_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-laura-damier_2.jpg" ]; then
  curl -sL -o "public/images/products/console-laura-damier_2.jpg" "https://drive.google.com/uc?export=download&id=1X2QlWWX_c-53tfkf0ME-as5sXb5St8tG" 2>/dev/null
  if [ -s "public/images/products/console-laura-damier_2.jpg" ] && file "public/images/products/console-laura-damier_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-laura-damier_2.jpg"
    curl -sL -o "public/images/products/console-laura-damier_2.jpg" "https://lh3.googleusercontent.com/d/1X2QlWWX_c-53tfkf0ME-as5sXb5St8tG" 2>/dev/null
    if [ -s "public/images/products/console-laura-damier_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-laura-damier_3.jpg" ]; then
  curl -sL -o "public/images/products/console-laura-damier_3.jpg" "https://drive.google.com/uc?export=download&id=1a4cl0xu05-cc3rOwazIB4kixxMV-4QaX" 2>/dev/null
  if [ -s "public/images/products/console-laura-damier_3.jpg" ] && file "public/images/products/console-laura-damier_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-laura-damier_3.jpg"
    curl -sL -o "public/images/products/console-laura-damier_3.jpg" "https://lh3.googleusercontent.com/d/1a4cl0xu05-cc3rOwazIB4kixxMV-4QaX" 2>/dev/null
    if [ -s "public/images/products/console-laura-damier_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-laura-damier_4.jpg" ]; then
  curl -sL -o "public/images/products/console-laura-damier_4.jpg" "https://drive.google.com/uc?export=download&id=1kYMDclGPeklFEg509KG9m6jzU4cLU3yt" 2>/dev/null
  if [ -s "public/images/products/console-laura-damier_4.jpg" ] && file "public/images/products/console-laura-damier_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-laura-damier_4.jpg"
    curl -sL -o "public/images/products/console-laura-damier_4.jpg" "https://lh3.googleusercontent.com/d/1kYMDclGPeklFEg509KG9m6jzU4cLU3yt" 2>/dev/null
    if [ -s "public/images/products/console-laura-damier_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-minimalis_1.jpg" ]; then
  curl -sL -o "public/images/products/console-minimalis_1.jpg" "https://drive.google.com/uc?export=download&id=1YkPUNJctwLDqeLEsVBo4qAEk69bQMOSk" 2>/dev/null
  if [ -s "public/images/products/console-minimalis_1.jpg" ] && file "public/images/products/console-minimalis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-minimalis_1.jpg"
    curl -sL -o "public/images/products/console-minimalis_1.jpg" "https://lh3.googleusercontent.com/d/1YkPUNJctwLDqeLEsVBo4qAEk69bQMOSk" 2>/dev/null
    if [ -s "public/images/products/console-minimalis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-minimalis_2.jpg" ]; then
  curl -sL -o "public/images/products/console-minimalis_2.jpg" "https://drive.google.com/uc?export=download&id=1IrRoDwnGhM0ZqhAnU_uDeAqTMXpO53dm" 2>/dev/null
  if [ -s "public/images/products/console-minimalis_2.jpg" ] && file "public/images/products/console-minimalis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-minimalis_2.jpg"
    curl -sL -o "public/images/products/console-minimalis_2.jpg" "https://lh3.googleusercontent.com/d/1IrRoDwnGhM0ZqhAnU_uDeAqTMXpO53dm" 2>/dev/null
    if [ -s "public/images/products/console-minimalis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-minimalis_3.jpg" ]; then
  curl -sL -o "public/images/products/console-minimalis_3.jpg" "https://drive.google.com/uc?export=download&id=10KnemOL3BQyYv9asZyrrxPnWJqeEUXb-" 2>/dev/null
  if [ -s "public/images/products/console-minimalis_3.jpg" ] && file "public/images/products/console-minimalis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-minimalis_3.jpg"
    curl -sL -o "public/images/products/console-minimalis_3.jpg" "https://lh3.googleusercontent.com/d/10KnemOL3BQyYv9asZyrrxPnWJqeEUXb-" 2>/dev/null
    if [ -s "public/images/products/console-minimalis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-minimalis_4.jpg" ]; then
  curl -sL -o "public/images/products/console-minimalis_4.jpg" "https://drive.google.com/uc?export=download&id=1MWMQFmMNW2eFEnvBZVDrb_N2uWRTkTKM" 2>/dev/null
  if [ -s "public/images/products/console-minimalis_4.jpg" ] && file "public/images/products/console-minimalis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-minimalis_4.jpg"
    curl -sL -o "public/images/products/console-minimalis_4.jpg" "https://lh3.googleusercontent.com/d/1MWMQFmMNW2eFEnvBZVDrb_N2uWRTkTKM" 2>/dev/null
    if [ -s "public/images/products/console-minimalis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-s-ga_1.jpg" ]; then
  curl -sL -o "public/images/products/console-s-ga_1.jpg" "https://drive.google.com/uc?export=download&id=1fLFclRt9EUojSY3ZGwSK00vrtZ4xyh5z" 2>/dev/null
  if [ -s "public/images/products/console-s-ga_1.jpg" ] && file "public/images/products/console-s-ga_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-s-ga_1.jpg"
    curl -sL -o "public/images/products/console-s-ga_1.jpg" "https://lh3.googleusercontent.com/d/1fLFclRt9EUojSY3ZGwSK00vrtZ4xyh5z" 2>/dev/null
    if [ -s "public/images/products/console-s-ga_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-s-ga_2.jpg" ]; then
  curl -sL -o "public/images/products/console-s-ga_2.jpg" "https://drive.google.com/uc?export=download&id=1shUvu30tmTpmChlZyZLV3Ypc19V_d0T6" 2>/dev/null
  if [ -s "public/images/products/console-s-ga_2.jpg" ] && file "public/images/products/console-s-ga_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-s-ga_2.jpg"
    curl -sL -o "public/images/products/console-s-ga_2.jpg" "https://lh3.googleusercontent.com/d/1shUvu30tmTpmChlZyZLV3Ypc19V_d0T6" 2>/dev/null
    if [ -s "public/images/products/console-s-ga_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-s-ga_3.jpg" ]; then
  curl -sL -o "public/images/products/console-s-ga_3.jpg" "https://drive.google.com/uc?export=download&id=1gIRF45UawSA5VJLZxIVsnBecWb2Ri8p2" 2>/dev/null
  if [ -s "public/images/products/console-s-ga_3.jpg" ] && file "public/images/products/console-s-ga_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-s-ga_3.jpg"
    curl -sL -o "public/images/products/console-s-ga_3.jpg" "https://lh3.googleusercontent.com/d/1gIRF45UawSA5VJLZxIVsnBecWb2Ri8p2" 2>/dev/null
    if [ -s "public/images/products/console-s-ga_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-s-ga_4.jpg" ]; then
  curl -sL -o "public/images/products/console-s-ga_4.jpg" "https://drive.google.com/uc?export=download&id=1NK4x7AUKV8BeRlY68T4PQjNsmhbQEghw" 2>/dev/null
  if [ -s "public/images/products/console-s-ga_4.jpg" ] && file "public/images/products/console-s-ga_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-s-ga_4.jpg"
    curl -sL -o "public/images/products/console-s-ga_4.jpg" "https://lh3.googleusercontent.com/d/1NK4x7AUKV8BeRlY68T4PQjNsmhbQEghw" 2>/dev/null
    if [ -s "public/images/products/console-s-ga_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-structure-metal_1.jpg" ]; then
  curl -sL -o "public/images/products/console-structure-metal_1.jpg" "https://drive.google.com/uc?export=download&id=1NxR7KPfojnLFdCQIegSEu7frWvzB6ZWh" 2>/dev/null
  if [ -s "public/images/products/console-structure-metal_1.jpg" ] && file "public/images/products/console-structure-metal_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-structure-metal_1.jpg"
    curl -sL -o "public/images/products/console-structure-metal_1.jpg" "https://lh3.googleusercontent.com/d/1NxR7KPfojnLFdCQIegSEu7frWvzB6ZWh" 2>/dev/null
    if [ -s "public/images/products/console-structure-metal_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-structure-metal_2.jpg" ]; then
  curl -sL -o "public/images/products/console-structure-metal_2.jpg" "https://drive.google.com/uc?export=download&id=1wflL_PTG8IE2OBnGiumxwXqI4roqU3Dz" 2>/dev/null
  if [ -s "public/images/products/console-structure-metal_2.jpg" ] && file "public/images/products/console-structure-metal_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-structure-metal_2.jpg"
    curl -sL -o "public/images/products/console-structure-metal_2.jpg" "https://lh3.googleusercontent.com/d/1wflL_PTG8IE2OBnGiumxwXqI4roqU3Dz" 2>/dev/null
    if [ -s "public/images/products/console-structure-metal_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-structure-metal_3.jpg" ]; then
  curl -sL -o "public/images/products/console-structure-metal_3.jpg" "https://drive.google.com/uc?export=download&id=13DaIPCpQYYKjMe2m4gNQhHVHC-IqKwHv" 2>/dev/null
  if [ -s "public/images/products/console-structure-metal_3.jpg" ] && file "public/images/products/console-structure-metal_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-structure-metal_3.jpg"
    curl -sL -o "public/images/products/console-structure-metal_3.jpg" "https://lh3.googleusercontent.com/d/13DaIPCpQYYKjMe2m4gNQhHVHC-IqKwHv" 2>/dev/null
    if [ -s "public/images/products/console-structure-metal_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/console-structure-metal_4.jpg" ]; then
  curl -sL -o "public/images/products/console-structure-metal_4.jpg" "https://drive.google.com/uc?export=download&id=1YzQKda_Ai0jGco328x5oqTN8w6Uzb8cJ" 2>/dev/null
  if [ -s "public/images/products/console-structure-metal_4.jpg" ] && file "public/images/products/console-structure-metal_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/console-structure-metal_4.jpg"
    curl -sL -o "public/images/products/console-structure-metal_4.jpg" "https://lh3.googleusercontent.com/d/1YzQKda_Ai0jGco328x5oqTN8w6Uzb8cJ" 2>/dev/null
    if [ -s "public/images/products/console-structure-metal_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-chaussures-jail_1.jpg" ]; then
  curl -sL -o "public/images/products/meuble-chaussures-jail_1.jpg" "https://drive.google.com/uc?export=download&id=1hWXlOZUGrQ-QuFmFFXjXwHPT7WAPwoh0" 2>/dev/null
  if [ -s "public/images/products/meuble-chaussures-jail_1.jpg" ] && file "public/images/products/meuble-chaussures-jail_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-chaussures-jail_1.jpg"
    curl -sL -o "public/images/products/meuble-chaussures-jail_1.jpg" "https://lh3.googleusercontent.com/d/1hWXlOZUGrQ-QuFmFFXjXwHPT7WAPwoh0" 2>/dev/null
    if [ -s "public/images/products/meuble-chaussures-jail_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-chaussures-jail_2.jpg" ]; then
  curl -sL -o "public/images/products/meuble-chaussures-jail_2.jpg" "https://drive.google.com/uc?export=download&id=1H_7ZTUwSQzyo1fGcR_nwRRqOybrGJ8Ln" 2>/dev/null
  if [ -s "public/images/products/meuble-chaussures-jail_2.jpg" ] && file "public/images/products/meuble-chaussures-jail_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-chaussures-jail_2.jpg"
    curl -sL -o "public/images/products/meuble-chaussures-jail_2.jpg" "https://lh3.googleusercontent.com/d/1H_7ZTUwSQzyo1fGcR_nwRRqOybrGJ8Ln" 2>/dev/null
    if [ -s "public/images/products/meuble-chaussures-jail_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-chaussures-jail_3.jpg" ]; then
  curl -sL -o "public/images/products/meuble-chaussures-jail_3.jpg" "https://drive.google.com/uc?export=download&id=1MiQhMluUYRmbIDtAxXdTf4OAuPXhSWJh" 2>/dev/null
  if [ -s "public/images/products/meuble-chaussures-jail_3.jpg" ] && file "public/images/products/meuble-chaussures-jail_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-chaussures-jail_3.jpg"
    curl -sL -o "public/images/products/meuble-chaussures-jail_3.jpg" "https://lh3.googleusercontent.com/d/1MiQhMluUYRmbIDtAxXdTf4OAuPXhSWJh" 2>/dev/null
    if [ -s "public/images/products/meuble-chaussures-jail_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-chaussures-jail_4.jpg" ]; then
  curl -sL -o "public/images/products/meuble-chaussures-jail_4.jpg" "https://drive.google.com/uc?export=download&id=1kf0am6QYNQTFtdHMtefOWwcRktSefnvs" 2>/dev/null
  if [ -s "public/images/products/meuble-chaussures-jail_4.jpg" ] && file "public/images/products/meuble-chaussures-jail_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-chaussures-jail_4.jpg"
    curl -sL -o "public/images/products/meuble-chaussures-jail_4.jpg" "https://lh3.googleusercontent.com/d/1kf0am6QYNQTFtdHMtefOWwcRktSefnvs" 2>/dev/null
    if [ -s "public/images/products/meuble-chaussures-jail_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-a-chaussures-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=1W4KQ1xB_eKGEwLFTPaVrtvooHa6K-mY_" 2>/dev/null
  if [ -s "public/images/products/meuble-a-chaussures-krepyak_1.jpg" ] && file "public/images/products/meuble-a-chaussures-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-a-chaussures-krepyak_1.jpg"
    curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/1W4KQ1xB_eKGEwLFTPaVrtvooHa6K-mY_" 2>/dev/null
    if [ -s "public/images/products/meuble-a-chaussures-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-a-chaussures-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=10GHiqXeoXfqla_gRZwPMpE2aCShKG196" 2>/dev/null
  if [ -s "public/images/products/meuble-a-chaussures-krepyak_2.jpg" ] && file "public/images/products/meuble-a-chaussures-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-a-chaussures-krepyak_2.jpg"
    curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/10GHiqXeoXfqla_gRZwPMpE2aCShKG196" 2>/dev/null
    if [ -s "public/images/products/meuble-a-chaussures-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-a-chaussures-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=1wUXcBERnxFpOSyl3FhdfV1Bx71FeKLtV" 2>/dev/null
  if [ -s "public/images/products/meuble-a-chaussures-krepyak_3.jpg" ] && file "public/images/products/meuble-a-chaussures-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-a-chaussures-krepyak_3.jpg"
    curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/1wUXcBERnxFpOSyl3FhdfV1Bx71FeKLtV" 2>/dev/null
    if [ -s "public/images/products/meuble-a-chaussures-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-a-chaussures-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1wIsoUHD34Xt430XWssVd3qGiR6n9tN7o" 2>/dev/null
  if [ -s "public/images/products/meuble-a-chaussures-krepyak_4.jpg" ] && file "public/images/products/meuble-a-chaussures-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-a-chaussures-krepyak_4.jpg"
    curl -sL -o "public/images/products/meuble-a-chaussures-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1wIsoUHD34Xt430XWssVd3qGiR6n9tN7o" 2>/dev/null
    if [ -s "public/images/products/meuble-a-chaussures-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bain-de-soleil_1.jpg" ]; then
  curl -sL -o "public/images/products/bain-de-soleil_1.jpg" "https://drive.google.com/uc?export=download&id=1na6252ICaESx7IbkHDY0aztOc3vc_lLq" 2>/dev/null
  if [ -s "public/images/products/bain-de-soleil_1.jpg" ] && file "public/images/products/bain-de-soleil_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bain-de-soleil_1.jpg"
    curl -sL -o "public/images/products/bain-de-soleil_1.jpg" "https://lh3.googleusercontent.com/d/1na6252ICaESx7IbkHDY0aztOc3vc_lLq" 2>/dev/null
    if [ -s "public/images/products/bain-de-soleil_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bain-de-soleil_2.jpg" ]; then
  curl -sL -o "public/images/products/bain-de-soleil_2.jpg" "https://drive.google.com/uc?export=download&id=1wDxymgwrDKshgtGUIuF0aSkZhtGmONk-" 2>/dev/null
  if [ -s "public/images/products/bain-de-soleil_2.jpg" ] && file "public/images/products/bain-de-soleil_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bain-de-soleil_2.jpg"
    curl -sL -o "public/images/products/bain-de-soleil_2.jpg" "https://lh3.googleusercontent.com/d/1wDxymgwrDKshgtGUIuF0aSkZhtGmONk-" 2>/dev/null
    if [ -s "public/images/products/bain-de-soleil_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bain-de-soleil_3.jpg" ]; then
  curl -sL -o "public/images/products/bain-de-soleil_3.jpg" "https://drive.google.com/uc?export=download&id=1h8NjaL3acP_UDBIh8A9oxbDWGcDc2mzS" 2>/dev/null
  if [ -s "public/images/products/bain-de-soleil_3.jpg" ] && file "public/images/products/bain-de-soleil_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bain-de-soleil_3.jpg"
    curl -sL -o "public/images/products/bain-de-soleil_3.jpg" "https://lh3.googleusercontent.com/d/1h8NjaL3acP_UDBIh8A9oxbDWGcDc2mzS" 2>/dev/null
    if [ -s "public/images/products/bain-de-soleil_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/bain-de-soleil_4.jpg" ]; then
  curl -sL -o "public/images/products/bain-de-soleil_4.jpg" "https://drive.google.com/uc?export=download&id=1AEbH4B8VveAPEWmN-vv9p-T-n9lL9LAt" 2>/dev/null
  if [ -s "public/images/products/bain-de-soleil_4.jpg" ] && file "public/images/products/bain-de-soleil_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/bain-de-soleil_4.jpg"
    curl -sL -o "public/images/products/bain-de-soleil_4.jpg" "https://lh3.googleusercontent.com/d/1AEbH4B8VveAPEWmN-vv9p-T-n9lL9LAt" 2>/dev/null
    if [ -s "public/images/products/bain-de-soleil_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-grace_1.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-grace_1.jpg" "https://drive.google.com/uc?export=download&id=1m_2Tpz2flc03jUKm9lyIMd0gDaq2fvsn" 2>/dev/null
  if [ -s "public/images/products/ensemble-grace_1.jpg" ] && file "public/images/products/ensemble-grace_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-grace_1.jpg"
    curl -sL -o "public/images/products/ensemble-grace_1.jpg" "https://lh3.googleusercontent.com/d/1m_2Tpz2flc03jUKm9lyIMd0gDaq2fvsn" 2>/dev/null
    if [ -s "public/images/products/ensemble-grace_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-grace_2.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-grace_2.jpg" "https://drive.google.com/uc?export=download&id=1zU1ZTX-f-FkIXbunHq3ZWQ8NATrC-PGa" 2>/dev/null
  if [ -s "public/images/products/ensemble-grace_2.jpg" ] && file "public/images/products/ensemble-grace_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-grace_2.jpg"
    curl -sL -o "public/images/products/ensemble-grace_2.jpg" "https://lh3.googleusercontent.com/d/1zU1ZTX-f-FkIXbunHq3ZWQ8NATrC-PGa" 2>/dev/null
    if [ -s "public/images/products/ensemble-grace_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-grace_3.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-grace_3.jpg" "https://drive.google.com/uc?export=download&id=15FJynieA_Vq6oiQA_pCxEHZky5g3IiS6" 2>/dev/null
  if [ -s "public/images/products/ensemble-grace_3.jpg" ] && file "public/images/products/ensemble-grace_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-grace_3.jpg"
    curl -sL -o "public/images/products/ensemble-grace_3.jpg" "https://lh3.googleusercontent.com/d/15FJynieA_Vq6oiQA_pCxEHZky5g3IiS6" 2>/dev/null
    if [ -s "public/images/products/ensemble-grace_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-grace_4.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-grace_4.jpg" "https://drive.google.com/uc?export=download&id=1p5Bfsz2lErjtW5q6ICVp0LVYQjJjhnII" 2>/dev/null
  if [ -s "public/images/products/ensemble-grace_4.jpg" ] && file "public/images/products/ensemble-grace_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-grace_4.jpg"
    curl -sL -o "public/images/products/ensemble-grace_4.jpg" "https://lh3.googleusercontent.com/d/1p5Bfsz2lErjtW5q6ICVp0LVYQjJjhnII" 2>/dev/null
    if [ -s "public/images/products/ensemble-grace_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-sofa-k_1.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-sofa-k_1.jpg" "https://drive.google.com/uc?export=download&id=1XC7QPmByIU0fe8ryGcG1qtO7HyDAjiYu" 2>/dev/null
  if [ -s "public/images/products/ensemble-sofa-k_1.jpg" ] && file "public/images/products/ensemble-sofa-k_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-sofa-k_1.jpg"
    curl -sL -o "public/images/products/ensemble-sofa-k_1.jpg" "https://lh3.googleusercontent.com/d/1XC7QPmByIU0fe8ryGcG1qtO7HyDAjiYu" 2>/dev/null
    if [ -s "public/images/products/ensemble-sofa-k_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-sofa-k_2.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-sofa-k_2.jpg" "https://drive.google.com/uc?export=download&id=1DYb8zP-FMY02Uf_dg9j0wkEGMBTJoxwk" 2>/dev/null
  if [ -s "public/images/products/ensemble-sofa-k_2.jpg" ] && file "public/images/products/ensemble-sofa-k_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-sofa-k_2.jpg"
    curl -sL -o "public/images/products/ensemble-sofa-k_2.jpg" "https://lh3.googleusercontent.com/d/1DYb8zP-FMY02Uf_dg9j0wkEGMBTJoxwk" 2>/dev/null
    if [ -s "public/images/products/ensemble-sofa-k_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-sofa-k_3.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-sofa-k_3.jpg" "https://drive.google.com/uc?export=download&id=1FgbRSm-gUAAH0ZGxeo8mlQI5LKYp7HqE" 2>/dev/null
  if [ -s "public/images/products/ensemble-sofa-k_3.jpg" ] && file "public/images/products/ensemble-sofa-k_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-sofa-k_3.jpg"
    curl -sL -o "public/images/products/ensemble-sofa-k_3.jpg" "https://lh3.googleusercontent.com/d/1FgbRSm-gUAAH0ZGxeo8mlQI5LKYp7HqE" 2>/dev/null
    if [ -s "public/images/products/ensemble-sofa-k_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-sofa-k_4.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-sofa-k_4.jpg" "https://drive.google.com/uc?export=download&id=1Tth4TLPbVHwsYtzxMfMfFc47zoDiOBiS" 2>/dev/null
  if [ -s "public/images/products/ensemble-sofa-k_4.jpg" ] && file "public/images/products/ensemble-sofa-k_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-sofa-k_4.jpg"
    curl -sL -o "public/images/products/ensemble-sofa-k_4.jpg" "https://lh3.googleusercontent.com/d/1Tth4TLPbVHwsYtzxMfMfFc47zoDiOBiS" 2>/dev/null
    if [ -s "public/images/products/ensemble-sofa-k_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible_1.jpg" "https://drive.google.com/uc?export=download&id=1t14etAOJOxa0Z53XLbnqOF1DPW5jdaGH" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible_1.jpg" ] && file "public/images/products/table-de-jardin-extensible_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible_1.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible_1.jpg" "https://lh3.googleusercontent.com/d/1t14etAOJOxa0Z53XLbnqOF1DPW5jdaGH" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible_2.jpg" "https://drive.google.com/uc?export=download&id=1Aicw--lrAPo-zRsR-9UPGqThjXdwGP3D" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible_2.jpg" ] && file "public/images/products/table-de-jardin-extensible_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible_2.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible_2.jpg" "https://lh3.googleusercontent.com/d/1Aicw--lrAPo-zRsR-9UPGqThjXdwGP3D" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible_3.jpg" "https://drive.google.com/uc?export=download&id=17OYZ0yeEH41gy65J2Mukqn_bxNAK8fqo" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible_3.jpg" ] && file "public/images/products/table-de-jardin-extensible_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible_3.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible_3.jpg" "https://lh3.googleusercontent.com/d/17OYZ0yeEH41gy65J2Mukqn_bxNAK8fqo" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible_4.jpg" "https://drive.google.com/uc?export=download&id=1oGdus9TZb3NqfLl0-Rd1ohxo7eQpkJSq" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible_4.jpg" ] && file "public/images/products/table-de-jardin-extensible_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible_4.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible_4.jpg" "https://lh3.googleusercontent.com/d/1oGdus9TZb3NqfLl0-Rd1ohxo7eQpkJSq" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible-ovale_1.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_1.jpg" "https://drive.google.com/uc?export=download&id=1w1t1okSpFmdsKDvleowTSvw6mzGiINZX" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible-ovale_1.jpg" ] && file "public/images/products/table-de-jardin-extensible-ovale_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible-ovale_1.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_1.jpg" "https://lh3.googleusercontent.com/d/1w1t1okSpFmdsKDvleowTSvw6mzGiINZX" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible-ovale_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible-ovale_2.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_2.jpg" "https://drive.google.com/uc?export=download&id=13C9OORmPrimAfPevwmVX8ibtBGH-wBe1" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible-ovale_2.jpg" ] && file "public/images/products/table-de-jardin-extensible-ovale_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible-ovale_2.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_2.jpg" "https://lh3.googleusercontent.com/d/13C9OORmPrimAfPevwmVX8ibtBGH-wBe1" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible-ovale_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible-ovale_3.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_3.jpg" "https://drive.google.com/uc?export=download&id=1Vw84SFz78srvbtsIf8xFd_X3xZlvXdbm" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible-ovale_3.jpg" ] && file "public/images/products/table-de-jardin-extensible-ovale_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible-ovale_3.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_3.jpg" "https://lh3.googleusercontent.com/d/1Vw84SFz78srvbtsIf8xFd_X3xZlvXdbm" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible-ovale_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-de-jardin-extensible-ovale_4.jpg" ]; then
  curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_4.jpg" "https://drive.google.com/uc?export=download&id=1Q8T-Dp8G1jpsx1ktIAxSoEje5o9pFKrr" 2>/dev/null
  if [ -s "public/images/products/table-de-jardin-extensible-ovale_4.jpg" ] && file "public/images/products/table-de-jardin-extensible-ovale_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-de-jardin-extensible-ovale_4.jpg"
    curl -sL -o "public/images/products/table-de-jardin-extensible-ovale_4.jpg" "https://lh3.googleusercontent.com/d/1Q8T-Dp8G1jpsx1ktIAxSoEje5o9pFKrr" 2>/dev/null
    if [ -s "public/images/products/table-de-jardin-extensible-ovale_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/baya_1.jpg" ]; then
  curl -sL -o "public/images/products/baya_1.jpg" "https://drive.google.com/uc?export=download&id=1kk5J0SHFvqvEo-0MqgdcXCYUoPY_bLVL" 2>/dev/null
  if [ -s "public/images/products/baya_1.jpg" ] && file "public/images/products/baya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/baya_1.jpg"
    curl -sL -o "public/images/products/baya_1.jpg" "https://lh3.googleusercontent.com/d/1kk5J0SHFvqvEo-0MqgdcXCYUoPY_bLVL" 2>/dev/null
    if [ -s "public/images/products/baya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/baya_2.jpg" ]; then
  curl -sL -o "public/images/products/baya_2.jpg" "https://drive.google.com/uc?export=download&id=1ixM8JjYLWLz0b_FX9d_9jAu0mUOLlcLl" 2>/dev/null
  if [ -s "public/images/products/baya_2.jpg" ] && file "public/images/products/baya_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/baya_2.jpg"
    curl -sL -o "public/images/products/baya_2.jpg" "https://lh3.googleusercontent.com/d/1ixM8JjYLWLz0b_FX9d_9jAu0mUOLlcLl" 2>/dev/null
    if [ -s "public/images/products/baya_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/baya_3.jpg" ]; then
  curl -sL -o "public/images/products/baya_3.jpg" "https://drive.google.com/uc?export=download&id=1qmNgJUszLv62g3k2sggdhx3r-tWHewYH" 2>/dev/null
  if [ -s "public/images/products/baya_3.jpg" ] && file "public/images/products/baya_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/baya_3.jpg"
    curl -sL -o "public/images/products/baya_3.jpg" "https://lh3.googleusercontent.com/d/1qmNgJUszLv62g3k2sggdhx3r-tWHewYH" 2>/dev/null
    if [ -s "public/images/products/baya_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/baya_4.jpg" ]; then
  curl -sL -o "public/images/products/baya_4.jpg" "https://drive.google.com/uc?export=download&id=1ZoCd70t0kXLTdfktZ5qMlrosWbMvhCSE" 2>/dev/null
  if [ -s "public/images/products/baya_4.jpg" ] && file "public/images/products/baya_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/baya_4.jpg"
    curl -sL -o "public/images/products/baya_4.jpg" "https://lh3.googleusercontent.com/d/1ZoCd70t0kXLTdfktZ5qMlrosWbMvhCSE" 2>/dev/null
    if [ -s "public/images/products/baya_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-suspendre_1.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-suspendre_1.jpg" "https://drive.google.com/uc?export=download&id=11KZEtHGuYongziWEnTVPVwWY49GneG14" 2>/dev/null
  if [ -s "public/images/products/cassandre-suspendre_1.jpg" ] && file "public/images/products/cassandre-suspendre_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-suspendre_1.jpg"
    curl -sL -o "public/images/products/cassandre-suspendre_1.jpg" "https://lh3.googleusercontent.com/d/11KZEtHGuYongziWEnTVPVwWY49GneG14" 2>/dev/null
    if [ -s "public/images/products/cassandre-suspendre_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-suspendre_2.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-suspendre_2.jpg" "https://drive.google.com/uc?export=download&id=18oqmnDTA4rvQCqK1g8Hn1s1bEhZNH8vl" 2>/dev/null
  if [ -s "public/images/products/cassandre-suspendre_2.jpg" ] && file "public/images/products/cassandre-suspendre_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-suspendre_2.jpg"
    curl -sL -o "public/images/products/cassandre-suspendre_2.jpg" "https://lh3.googleusercontent.com/d/18oqmnDTA4rvQCqK1g8Hn1s1bEhZNH8vl" 2>/dev/null
    if [ -s "public/images/products/cassandre-suspendre_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-suspendre_3.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-suspendre_3.jpg" "https://drive.google.com/uc?export=download&id=1z8OTGD_vC4yrf6NKYtjk8beI6KKl2Rot" 2>/dev/null
  if [ -s "public/images/products/cassandre-suspendre_3.jpg" ] && file "public/images/products/cassandre-suspendre_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-suspendre_3.jpg"
    curl -sL -o "public/images/products/cassandre-suspendre_3.jpg" "https://lh3.googleusercontent.com/d/1z8OTGD_vC4yrf6NKYtjk8beI6KKl2Rot" 2>/dev/null
    if [ -s "public/images/products/cassandre-suspendre_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-suspendre_4.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-suspendre_4.jpg" "https://drive.google.com/uc?export=download&id=19h4MkYP3tQ0dlcymiDGlaKf6W3Xz27gk" 2>/dev/null
  if [ -s "public/images/products/cassandre-suspendre_4.jpg" ] && file "public/images/products/cassandre-suspendre_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-suspendre_4.jpg"
    curl -sL -o "public/images/products/cassandre-suspendre_4.jpg" "https://lh3.googleusercontent.com/d/19h4MkYP3tQ0dlcymiDGlaKf6W3Xz27gk" 2>/dev/null
    if [ -s "public/images/products/cassandre-suspendre_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-avec-vitre-d-co_1.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_1.jpg" "https://drive.google.com/uc?export=download&id=1NXDrduY-ObacaF41FAh-TEQB-C2SV6i1" 2>/dev/null
  if [ -s "public/images/products/cassandre-avec-vitre-d-co_1.jpg" ] && file "public/images/products/cassandre-avec-vitre-d-co_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-avec-vitre-d-co_1.jpg"
    curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_1.jpg" "https://lh3.googleusercontent.com/d/1NXDrduY-ObacaF41FAh-TEQB-C2SV6i1" 2>/dev/null
    if [ -s "public/images/products/cassandre-avec-vitre-d-co_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-avec-vitre-d-co_2.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_2.jpg" "https://drive.google.com/uc?export=download&id=1CJK8COZEyYq3-XqZCj10irOpHAqgQulg" 2>/dev/null
  if [ -s "public/images/products/cassandre-avec-vitre-d-co_2.jpg" ] && file "public/images/products/cassandre-avec-vitre-d-co_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-avec-vitre-d-co_2.jpg"
    curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_2.jpg" "https://lh3.googleusercontent.com/d/1CJK8COZEyYq3-XqZCj10irOpHAqgQulg" 2>/dev/null
    if [ -s "public/images/products/cassandre-avec-vitre-d-co_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-avec-vitre-d-co_3.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_3.jpg" "https://drive.google.com/uc?export=download&id=1Bie3J35Td1cKSQw_kt1u6cFlqA5nk8WJ" 2>/dev/null
  if [ -s "public/images/products/cassandre-avec-vitre-d-co_3.jpg" ] && file "public/images/products/cassandre-avec-vitre-d-co_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-avec-vitre-d-co_3.jpg"
    curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_3.jpg" "https://lh3.googleusercontent.com/d/1Bie3J35Td1cKSQw_kt1u6cFlqA5nk8WJ" 2>/dev/null
    if [ -s "public/images/products/cassandre-avec-vitre-d-co_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-avec-vitre-d-co_4.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_4.jpg" "https://drive.google.com/uc?export=download&id=1AXxX5dkzF1RxMSj13VVOR0XKbSbkAu4D" 2>/dev/null
  if [ -s "public/images/products/cassandre-avec-vitre-d-co_4.jpg" ] && file "public/images/products/cassandre-avec-vitre-d-co_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-avec-vitre-d-co_4.jpg"
    curl -sL -o "public/images/products/cassandre-avec-vitre-d-co_4.jpg" "https://lh3.googleusercontent.com/d/1AXxX5dkzF1RxMSj13VVOR0XKbSbkAu4D" 2>/dev/null
    if [ -s "public/images/products/cassandre-avec-vitre-d-co_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-sur-pied_1.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-sur-pied_1.jpg" "https://drive.google.com/uc?export=download&id=1y3dHRCv7fTyxO3vxSE0thM9ApDGoIED_" 2>/dev/null
  if [ -s "public/images/products/cassandre-sur-pied_1.jpg" ] && file "public/images/products/cassandre-sur-pied_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-sur-pied_1.jpg"
    curl -sL -o "public/images/products/cassandre-sur-pied_1.jpg" "https://lh3.googleusercontent.com/d/1y3dHRCv7fTyxO3vxSE0thM9ApDGoIED_" 2>/dev/null
    if [ -s "public/images/products/cassandre-sur-pied_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-sur-pied_2.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-sur-pied_2.jpg" "https://drive.google.com/uc?export=download&id=1J-vz6TcQLMN7q7-mljzIqQlab9bxQyPT" 2>/dev/null
  if [ -s "public/images/products/cassandre-sur-pied_2.jpg" ] && file "public/images/products/cassandre-sur-pied_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-sur-pied_2.jpg"
    curl -sL -o "public/images/products/cassandre-sur-pied_2.jpg" "https://lh3.googleusercontent.com/d/1J-vz6TcQLMN7q7-mljzIqQlab9bxQyPT" 2>/dev/null
    if [ -s "public/images/products/cassandre-sur-pied_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-sur-pied_3.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-sur-pied_3.jpg" "https://drive.google.com/uc?export=download&id=13EXzebWeet5ilqADge-NH_kYxhxhSrsx" 2>/dev/null
  if [ -s "public/images/products/cassandre-sur-pied_3.jpg" ] && file "public/images/products/cassandre-sur-pied_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-sur-pied_3.jpg"
    curl -sL -o "public/images/products/cassandre-sur-pied_3.jpg" "https://lh3.googleusercontent.com/d/13EXzebWeet5ilqADge-NH_kYxhxhSrsx" 2>/dev/null
    if [ -s "public/images/products/cassandre-sur-pied_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cassandre-sur-pied_4.jpg" ]; then
  curl -sL -o "public/images/products/cassandre-sur-pied_4.jpg" "https://drive.google.com/uc?export=download&id=1x9YGbPv2GFBrHN_MAwzlK6Rzp2NH4dgU" 2>/dev/null
  if [ -s "public/images/products/cassandre-sur-pied_4.jpg" ] && file "public/images/products/cassandre-sur-pied_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cassandre-sur-pied_4.jpg"
    curl -sL -o "public/images/products/cassandre-sur-pied_4.jpg" "https://lh3.googleusercontent.com/d/1x9YGbPv2GFBrHN_MAwzlK6Rzp2NH4dgU" 2>/dev/null
    if [ -s "public/images/products/cassandre-sur-pied_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-pour-machine-laver_1.jpg" ]; then
  curl -sL -o "public/images/products/colonne-pour-machine-laver_1.jpg" "https://drive.google.com/uc?export=download&id=1yCQura8c2VOuH0DJYuIIRSebOC0KrJC8" 2>/dev/null
  if [ -s "public/images/products/colonne-pour-machine-laver_1.jpg" ] && file "public/images/products/colonne-pour-machine-laver_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-pour-machine-laver_1.jpg"
    curl -sL -o "public/images/products/colonne-pour-machine-laver_1.jpg" "https://lh3.googleusercontent.com/d/1yCQura8c2VOuH0DJYuIIRSebOC0KrJC8" 2>/dev/null
    if [ -s "public/images/products/colonne-pour-machine-laver_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-pour-machine-laver_2.jpg" ]; then
  curl -sL -o "public/images/products/colonne-pour-machine-laver_2.jpg" "https://drive.google.com/uc?export=download&id=1bZATuH6OCUWX3QQEMsS3bC3Nicgvl8Sv" 2>/dev/null
  if [ -s "public/images/products/colonne-pour-machine-laver_2.jpg" ] && file "public/images/products/colonne-pour-machine-laver_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-pour-machine-laver_2.jpg"
    curl -sL -o "public/images/products/colonne-pour-machine-laver_2.jpg" "https://lh3.googleusercontent.com/d/1bZATuH6OCUWX3QQEMsS3bC3Nicgvl8Sv" 2>/dev/null
    if [ -s "public/images/products/colonne-pour-machine-laver_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-pour-machine-laver_3.jpg" ]; then
  curl -sL -o "public/images/products/colonne-pour-machine-laver_3.jpg" "https://drive.google.com/uc?export=download&id=16JWo4oIm5L1jmOa_lgQ9Fr_hqTie6pso" 2>/dev/null
  if [ -s "public/images/products/colonne-pour-machine-laver_3.jpg" ] && file "public/images/products/colonne-pour-machine-laver_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-pour-machine-laver_3.jpg"
    curl -sL -o "public/images/products/colonne-pour-machine-laver_3.jpg" "https://lh3.googleusercontent.com/d/16JWo4oIm5L1jmOa_lgQ9Fr_hqTie6pso" 2>/dev/null
    if [ -s "public/images/products/colonne-pour-machine-laver_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/echelle-pour-salle-de-bains_1.jpg" ]; then
  curl -sL -o "public/images/products/echelle-pour-salle-de-bains_1.jpg" "https://drive.google.com/uc?export=download&id=1Si8rxqwVDL9G8Acha4ksPjsQBAEJU2fL" 2>/dev/null
  if [ -s "public/images/products/echelle-pour-salle-de-bains_1.jpg" ] && file "public/images/products/echelle-pour-salle-de-bains_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/echelle-pour-salle-de-bains_1.jpg"
    curl -sL -o "public/images/products/echelle-pour-salle-de-bains_1.jpg" "https://lh3.googleusercontent.com/d/1Si8rxqwVDL9G8Acha4ksPjsQBAEJU2fL" 2>/dev/null
    if [ -s "public/images/products/echelle-pour-salle-de-bains_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/echelle-pour-salle-de-bains_2.jpg" ]; then
  curl -sL -o "public/images/products/echelle-pour-salle-de-bains_2.jpg" "https://drive.google.com/uc?export=download&id=1UrcwP7KbWZstRC-7erae2tAE9XXIoCyW" 2>/dev/null
  if [ -s "public/images/products/echelle-pour-salle-de-bains_2.jpg" ] && file "public/images/products/echelle-pour-salle-de-bains_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/echelle-pour-salle-de-bains_2.jpg"
    curl -sL -o "public/images/products/echelle-pour-salle-de-bains_2.jpg" "https://lh3.googleusercontent.com/d/1UrcwP7KbWZstRC-7erae2tAE9XXIoCyW" 2>/dev/null
    if [ -s "public/images/products/echelle-pour-salle-de-bains_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/echelle-pour-salle-de-bains_3.jpg" ]; then
  curl -sL -o "public/images/products/echelle-pour-salle-de-bains_3.jpg" "https://drive.google.com/uc?export=download&id=1p1uNzzlIVlorPZSxp7RI62jBcdUksBHB" 2>/dev/null
  if [ -s "public/images/products/echelle-pour-salle-de-bains_3.jpg" ] && file "public/images/products/echelle-pour-salle-de-bains_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/echelle-pour-salle-de-bains_3.jpg"
    curl -sL -o "public/images/products/echelle-pour-salle-de-bains_3.jpg" "https://lh3.googleusercontent.com/d/1p1uNzzlIVlorPZSxp7RI62jBcdUksBHB" 2>/dev/null
    if [ -s "public/images/products/echelle-pour-salle-de-bains_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/echelle-pour-salle-de-bains_4.jpg" ]; then
  curl -sL -o "public/images/products/echelle-pour-salle-de-bains_4.jpg" "https://drive.google.com/uc?export=download&id=1UIERLo45usPxSNR576w1epdu4IHRArdZ" 2>/dev/null
  if [ -s "public/images/products/echelle-pour-salle-de-bains_4.jpg" ] && file "public/images/products/echelle-pour-salle-de-bains_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/echelle-pour-salle-de-bains_4.jpg"
    curl -sL -o "public/images/products/echelle-pour-salle-de-bains_4.jpg" "https://lh3.googleusercontent.com/d/1UIERLo45usPxSNR576w1epdu4IHRArdZ" 2>/dev/null
    if [ -s "public/images/products/echelle-pour-salle-de-bains_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gattaga_1.jpg" ]; then
  curl -sL -o "public/images/products/gattaga_1.jpg" "https://drive.google.com/uc?export=download&id=1oCLJRUWoWef03QaNJzh8XnMPQrHG2t-Z" 2>/dev/null
  if [ -s "public/images/products/gattaga_1.jpg" ] && file "public/images/products/gattaga_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gattaga_1.jpg"
    curl -sL -o "public/images/products/gattaga_1.jpg" "https://lh3.googleusercontent.com/d/1oCLJRUWoWef03QaNJzh8XnMPQrHG2t-Z" 2>/dev/null
    if [ -s "public/images/products/gattaga_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gattaga_2.jpg" ]; then
  curl -sL -o "public/images/products/gattaga_2.jpg" "https://drive.google.com/uc?export=download&id=1uy6KL6yYEuBeXDjMeZzY7fgOy4gk0oJc" 2>/dev/null
  if [ -s "public/images/products/gattaga_2.jpg" ] && file "public/images/products/gattaga_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gattaga_2.jpg"
    curl -sL -o "public/images/products/gattaga_2.jpg" "https://lh3.googleusercontent.com/d/1uy6KL6yYEuBeXDjMeZzY7fgOy4gk0oJc" 2>/dev/null
    if [ -s "public/images/products/gattaga_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gattaga_3.jpg" ]; then
  curl -sL -o "public/images/products/gattaga_3.jpg" "https://drive.google.com/uc?export=download&id=1Lqu7GTxMJ82xCl_PI9Id6_ern7Kj8Ivo" 2>/dev/null
  if [ -s "public/images/products/gattaga_3.jpg" ] && file "public/images/products/gattaga_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gattaga_3.jpg"
    curl -sL -o "public/images/products/gattaga_3.jpg" "https://lh3.googleusercontent.com/d/1Lqu7GTxMJ82xCl_PI9Id6_ern7Kj8Ivo" 2>/dev/null
    if [ -s "public/images/products/gattaga_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gattaga_4.jpg" ]; then
  curl -sL -o "public/images/products/gattaga_4.jpg" "https://drive.google.com/uc?export=download&id=1t2to4xtHrCS51P48tz6qqWMqEw9cgo7T" 2>/dev/null
  if [ -s "public/images/products/gattaga_4.jpg" ] && file "public/images/products/gattaga_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gattaga_4.jpg"
    curl -sL -o "public/images/products/gattaga_4.jpg" "https://lh3.googleusercontent.com/d/1t2to4xtHrCS51P48tz6qqWMqEw9cgo7T" 2>/dev/null
    if [ -s "public/images/products/gattaga_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/hampton_1.jpg" ]; then
  curl -sL -o "public/images/products/hampton_1.jpg" "https://drive.google.com/uc?export=download&id=1LLSWDUjfzAC3EkiC352k447Wjw1Z_T1z" 2>/dev/null
  if [ -s "public/images/products/hampton_1.jpg" ] && file "public/images/products/hampton_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/hampton_1.jpg"
    curl -sL -o "public/images/products/hampton_1.jpg" "https://lh3.googleusercontent.com/d/1LLSWDUjfzAC3EkiC352k447Wjw1Z_T1z" 2>/dev/null
    if [ -s "public/images/products/hampton_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/hampton_2.jpg" ]; then
  curl -sL -o "public/images/products/hampton_2.jpg" "https://drive.google.com/uc?export=download&id=1gE3eTkggHomGRSOmRXTrpOQYl2FUhfA4" 2>/dev/null
  if [ -s "public/images/products/hampton_2.jpg" ] && file "public/images/products/hampton_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/hampton_2.jpg"
    curl -sL -o "public/images/products/hampton_2.jpg" "https://lh3.googleusercontent.com/d/1gE3eTkggHomGRSOmRXTrpOQYl2FUhfA4" 2>/dev/null
    if [ -s "public/images/products/hampton_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/hampton_3.jpg" ]; then
  curl -sL -o "public/images/products/hampton_3.jpg" "https://drive.google.com/uc?export=download&id=1LvX1ifrJa6G38rIbz2OuGa5bkUDMwZV0" 2>/dev/null
  if [ -s "public/images/products/hampton_3.jpg" ] && file "public/images/products/hampton_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/hampton_3.jpg"
    curl -sL -o "public/images/products/hampton_3.jpg" "https://lh3.googleusercontent.com/d/1LvX1ifrJa6G38rIbz2OuGa5bkUDMwZV0" 2>/dev/null
    if [ -s "public/images/products/hampton_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/hampton_4.jpg" ]; then
  curl -sL -o "public/images/products/hampton_4.jpg" "https://drive.google.com/uc?export=download&id=1YiK073fcb0O8HowUd4Tj6CeCI7X_0vBc" 2>/dev/null
  if [ -s "public/images/products/hampton_4.jpg" ] && file "public/images/products/hampton_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/hampton_4.jpg"
    curl -sL -o "public/images/products/hampton_4.jpg" "https://lh3.googleusercontent.com/d/1YiK073fcb0O8HowUd4Tj6CeCI7X_0vBc" 2>/dev/null
    if [ -s "public/images/products/hampton_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jimbaran_1.jpg" ]; then
  curl -sL -o "public/images/products/jimbaran_1.jpg" "https://drive.google.com/uc?export=download&id=1rH8ukhMwdOfBxDqXCPX-Ngdj0VE3iiWt" 2>/dev/null
  if [ -s "public/images/products/jimbaran_1.jpg" ] && file "public/images/products/jimbaran_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jimbaran_1.jpg"
    curl -sL -o "public/images/products/jimbaran_1.jpg" "https://lh3.googleusercontent.com/d/1rH8ukhMwdOfBxDqXCPX-Ngdj0VE3iiWt" 2>/dev/null
    if [ -s "public/images/products/jimbaran_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jimbaran_2.jpg" ]; then
  curl -sL -o "public/images/products/jimbaran_2.jpg" "https://drive.google.com/uc?export=download&id=1LivMRN1kxIxdJzI7e2BOPvbiFiHKh86M" 2>/dev/null
  if [ -s "public/images/products/jimbaran_2.jpg" ] && file "public/images/products/jimbaran_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jimbaran_2.jpg"
    curl -sL -o "public/images/products/jimbaran_2.jpg" "https://lh3.googleusercontent.com/d/1LivMRN1kxIxdJzI7e2BOPvbiFiHKh86M" 2>/dev/null
    if [ -s "public/images/products/jimbaran_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jimbaran_3.jpg" ]; then
  curl -sL -o "public/images/products/jimbaran_3.jpg" "https://drive.google.com/uc?export=download&id=1Nq0oA69lI99iwEiftOOvaMOnIVUCX0r7" 2>/dev/null
  if [ -s "public/images/products/jimbaran_3.jpg" ] && file "public/images/products/jimbaran_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jimbaran_3.jpg"
    curl -sL -o "public/images/products/jimbaran_3.jpg" "https://lh3.googleusercontent.com/d/1Nq0oA69lI99iwEiftOOvaMOnIVUCX0r7" 2>/dev/null
    if [ -s "public/images/products/jimbaran_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jimbaran_4.jpg" ]; then
  curl -sL -o "public/images/products/jimbaran_4.jpg" "https://drive.google.com/uc?export=download&id=1bq_2bLevJwm3Gqau8poRi6SR4y4fiM_f" 2>/dev/null
  if [ -s "public/images/products/jimbaran_4.jpg" ] && file "public/images/products/jimbaran_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jimbaran_4.jpg"
    curl -sL -o "public/images/products/jimbaran_4.jpg" "https://lh3.googleusercontent.com/d/1bq_2bLevJwm3Gqau8poRi6SR4y4fiM_f" 2>/dev/null
    if [ -s "public/images/products/jimbaran_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jodya_1.jpg" ]; then
  curl -sL -o "public/images/products/jodya_1.jpg" "https://drive.google.com/uc?export=download&id=15MgNvPm03UOOZZmmAwyYruJzPAS7HfSq" 2>/dev/null
  if [ -s "public/images/products/jodya_1.jpg" ] && file "public/images/products/jodya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jodya_1.jpg"
    curl -sL -o "public/images/products/jodya_1.jpg" "https://lh3.googleusercontent.com/d/15MgNvPm03UOOZZmmAwyYruJzPAS7HfSq" 2>/dev/null
    if [ -s "public/images/products/jodya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jodya_2.jpg" ]; then
  curl -sL -o "public/images/products/jodya_2.jpg" "https://drive.google.com/uc?export=download&id=1pW6GfRrmYjm2Ys1DLuT88OeZ8kX3z8ES" 2>/dev/null
  if [ -s "public/images/products/jodya_2.jpg" ] && file "public/images/products/jodya_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jodya_2.jpg"
    curl -sL -o "public/images/products/jodya_2.jpg" "https://lh3.googleusercontent.com/d/1pW6GfRrmYjm2Ys1DLuT88OeZ8kX3z8ES" 2>/dev/null
    if [ -s "public/images/products/jodya_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jodya_3.jpg" ]; then
  curl -sL -o "public/images/products/jodya_3.jpg" "https://drive.google.com/uc?export=download&id=18acGsgRzsMdfk9eX7FImcq205I5ffego" 2>/dev/null
  if [ -s "public/images/products/jodya_3.jpg" ] && file "public/images/products/jodya_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jodya_3.jpg"
    curl -sL -o "public/images/products/jodya_3.jpg" "https://lh3.googleusercontent.com/d/18acGsgRzsMdfk9eX7FImcq205I5ffego" 2>/dev/null
    if [ -s "public/images/products/jodya_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jodya_4.jpg" ]; then
  curl -sL -o "public/images/products/jodya_4.jpg" "https://drive.google.com/uc?export=download&id=1whywgzdSEvZ6tZcJ0OKgKHFZnZrcFtOi" 2>/dev/null
  if [ -s "public/images/products/jodya_4.jpg" ] && file "public/images/products/jodya_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jodya_4.jpg"
    curl -sL -o "public/images/products/jodya_4.jpg" "https://lh3.googleusercontent.com/d/1whywgzdSEvZ6tZcJ0OKgKHFZnZrcFtOi" 2>/dev/null
    if [ -s "public/images/products/jodya_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/krepyak-portes-coulissantes_1.jpg" ]; then
  curl -sL -o "public/images/products/krepyak-portes-coulissantes_1.jpg" "https://drive.google.com/uc?export=download&id=1_0uIVtrGbZSSD9YdE6cNdow-mxjv83m0" 2>/dev/null
  if [ -s "public/images/products/krepyak-portes-coulissantes_1.jpg" ] && file "public/images/products/krepyak-portes-coulissantes_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/krepyak-portes-coulissantes_1.jpg"
    curl -sL -o "public/images/products/krepyak-portes-coulissantes_1.jpg" "https://lh3.googleusercontent.com/d/1_0uIVtrGbZSSD9YdE6cNdow-mxjv83m0" 2>/dev/null
    if [ -s "public/images/products/krepyak-portes-coulissantes_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/krepyak-portes-coulissantes_2.jpg" ]; then
  curl -sL -o "public/images/products/krepyak-portes-coulissantes_2.jpg" "https://drive.google.com/uc?export=download&id=1G97Mgw_ThBy6UTPIi0yhU9r9Vt4MYXPx" 2>/dev/null
  if [ -s "public/images/products/krepyak-portes-coulissantes_2.jpg" ] && file "public/images/products/krepyak-portes-coulissantes_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/krepyak-portes-coulissantes_2.jpg"
    curl -sL -o "public/images/products/krepyak-portes-coulissantes_2.jpg" "https://lh3.googleusercontent.com/d/1G97Mgw_ThBy6UTPIi0yhU9r9Vt4MYXPx" 2>/dev/null
    if [ -s "public/images/products/krepyak-portes-coulissantes_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/krepyak-portes-coulissantes_3.jpg" ]; then
  curl -sL -o "public/images/products/krepyak-portes-coulissantes_3.jpg" "https://drive.google.com/uc?export=download&id=1GvUayZk1tgNBEo8Aoz--kYqBswScGMWp" 2>/dev/null
  if [ -s "public/images/products/krepyak-portes-coulissantes_3.jpg" ] && file "public/images/products/krepyak-portes-coulissantes_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/krepyak-portes-coulissantes_3.jpg"
    curl -sL -o "public/images/products/krepyak-portes-coulissantes_3.jpg" "https://lh3.googleusercontent.com/d/1GvUayZk1tgNBEo8Aoz--kYqBswScGMWp" 2>/dev/null
    if [ -s "public/images/products/krepyak-portes-coulissantes_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/krepyak-portes-coulissantes_4.jpg" ]; then
  curl -sL -o "public/images/products/krepyak-portes-coulissantes_4.jpg" "https://drive.google.com/uc?export=download&id=1NfnaG1p6c3EZ1nnwQ-qaZhLWstCFF5di" 2>/dev/null
  if [ -s "public/images/products/krepyak-portes-coulissantes_4.jpg" ] && file "public/images/products/krepyak-portes-coulissantes_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/krepyak-portes-coulissantes_4.jpg"
    curl -sL -o "public/images/products/krepyak-portes-coulissantes_4.jpg" "https://lh3.googleusercontent.com/d/1NfnaG1p6c3EZ1nnwQ-qaZhLWstCFF5di" 2>/dev/null
    if [ -s "public/images/products/krepyak-portes-coulissantes_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-100_1.jpg" ]; then
  curl -sL -o "public/images/products/kuta-100_1.jpg" "https://drive.google.com/uc?export=download&id=1jDQULPqvArmPqdf3m_hW_tyTVfWaDLVF" 2>/dev/null
  if [ -s "public/images/products/kuta-100_1.jpg" ] && file "public/images/products/kuta-100_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-100_1.jpg"
    curl -sL -o "public/images/products/kuta-100_1.jpg" "https://lh3.googleusercontent.com/d/1jDQULPqvArmPqdf3m_hW_tyTVfWaDLVF" 2>/dev/null
    if [ -s "public/images/products/kuta-100_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-100_2.jpg" ]; then
  curl -sL -o "public/images/products/kuta-100_2.jpg" "https://drive.google.com/uc?export=download&id=16TSi3iC9OBm3LstFHKYVC7yH2ERZQzc1" 2>/dev/null
  if [ -s "public/images/products/kuta-100_2.jpg" ] && file "public/images/products/kuta-100_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-100_2.jpg"
    curl -sL -o "public/images/products/kuta-100_2.jpg" "https://lh3.googleusercontent.com/d/16TSi3iC9OBm3LstFHKYVC7yH2ERZQzc1" 2>/dev/null
    if [ -s "public/images/products/kuta-100_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-100_3.jpg" ]; then
  curl -sL -o "public/images/products/kuta-100_3.jpg" "https://drive.google.com/uc?export=download&id=1KGO907TMimUMS1UBnnt7vfCaJ0kSRV8J" 2>/dev/null
  if [ -s "public/images/products/kuta-100_3.jpg" ] && file "public/images/products/kuta-100_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-100_3.jpg"
    curl -sL -o "public/images/products/kuta-100_3.jpg" "https://lh3.googleusercontent.com/d/1KGO907TMimUMS1UBnnt7vfCaJ0kSRV8J" 2>/dev/null
    if [ -s "public/images/products/kuta-100_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-100_4.jpg" ]; then
  curl -sL -o "public/images/products/kuta-100_4.jpg" "https://drive.google.com/uc?export=download&id=1oypLERpgEkjDxr8qRZX63qQjCcV9u9GW" 2>/dev/null
  if [ -s "public/images/products/kuta-100_4.jpg" ] && file "public/images/products/kuta-100_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-100_4.jpg"
    curl -sL -o "public/images/products/kuta-100_4.jpg" "https://lh3.googleusercontent.com/d/1oypLERpgEkjDxr8qRZX63qQjCcV9u9GW" 2>/dev/null
    if [ -s "public/images/products/kuta-100_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-60_1.jpg" ]; then
  curl -sL -o "public/images/products/kuta-60_1.jpg" "https://drive.google.com/uc?export=download&id=12ysmjr21soSJiGWe-VxWqQohE1tdNrGA" 2>/dev/null
  if [ -s "public/images/products/kuta-60_1.jpg" ] && file "public/images/products/kuta-60_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-60_1.jpg"
    curl -sL -o "public/images/products/kuta-60_1.jpg" "https://lh3.googleusercontent.com/d/12ysmjr21soSJiGWe-VxWqQohE1tdNrGA" 2>/dev/null
    if [ -s "public/images/products/kuta-60_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-60_2.jpg" ]; then
  curl -sL -o "public/images/products/kuta-60_2.jpg" "https://drive.google.com/uc?export=download&id=1G02ruyZJXh5KvVxQE7tnYcp0paOOngCN" 2>/dev/null
  if [ -s "public/images/products/kuta-60_2.jpg" ] && file "public/images/products/kuta-60_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-60_2.jpg"
    curl -sL -o "public/images/products/kuta-60_2.jpg" "https://lh3.googleusercontent.com/d/1G02ruyZJXh5KvVxQE7tnYcp0paOOngCN" 2>/dev/null
    if [ -s "public/images/products/kuta-60_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-60_3.jpg" ]; then
  curl -sL -o "public/images/products/kuta-60_3.jpg" "https://drive.google.com/uc?export=download&id=16i1xS8SAG71bqs2yTVKTH53AnV5eTZGj" 2>/dev/null
  if [ -s "public/images/products/kuta-60_3.jpg" ] && file "public/images/products/kuta-60_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-60_3.jpg"
    curl -sL -o "public/images/products/kuta-60_3.jpg" "https://lh3.googleusercontent.com/d/16i1xS8SAG71bqs2yTVKTH53AnV5eTZGj" 2>/dev/null
    if [ -s "public/images/products/kuta-60_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-60_4.jpg" ]; then
  curl -sL -o "public/images/products/kuta-60_4.jpg" "https://drive.google.com/uc?export=download&id=1RBj12HhB3uyXsmMYTz-6Jd9eXu5P1HcW" 2>/dev/null
  if [ -s "public/images/products/kuta-60_4.jpg" ] && file "public/images/products/kuta-60_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-60_4.jpg"
    curl -sL -o "public/images/products/kuta-60_4.jpg" "https://lh3.googleusercontent.com/d/1RBj12HhB3uyXsmMYTz-6Jd9eXu5P1HcW" 2>/dev/null
    if [ -s "public/images/products/kuta-60_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-80_1.jpg" ]; then
  curl -sL -o "public/images/products/kuta-80_1.jpg" "https://drive.google.com/uc?export=download&id=1YEZ6_Agwgr54Wj8QTFBEB7g0Ia7awVwX" 2>/dev/null
  if [ -s "public/images/products/kuta-80_1.jpg" ] && file "public/images/products/kuta-80_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-80_1.jpg"
    curl -sL -o "public/images/products/kuta-80_1.jpg" "https://lh3.googleusercontent.com/d/1YEZ6_Agwgr54Wj8QTFBEB7g0Ia7awVwX" 2>/dev/null
    if [ -s "public/images/products/kuta-80_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-80_2.jpg" ]; then
  curl -sL -o "public/images/products/kuta-80_2.jpg" "https://drive.google.com/uc?export=download&id=1uhSXURyfoK9OvEhK0Em8PFnGcArR7mXv" 2>/dev/null
  if [ -s "public/images/products/kuta-80_2.jpg" ] && file "public/images/products/kuta-80_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-80_2.jpg"
    curl -sL -o "public/images/products/kuta-80_2.jpg" "https://lh3.googleusercontent.com/d/1uhSXURyfoK9OvEhK0Em8PFnGcArR7mXv" 2>/dev/null
    if [ -s "public/images/products/kuta-80_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-80_3.jpg" ]; then
  curl -sL -o "public/images/products/kuta-80_3.jpg" "https://drive.google.com/uc?export=download&id=1l-KN6z5ql_iyW2K9SAhpXZ1DS53-ivl7" 2>/dev/null
  if [ -s "public/images/products/kuta-80_3.jpg" ] && file "public/images/products/kuta-80_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-80_3.jpg"
    curl -sL -o "public/images/products/kuta-80_3.jpg" "https://lh3.googleusercontent.com/d/1l-KN6z5ql_iyW2K9SAhpXZ1DS53-ivl7" 2>/dev/null
    if [ -s "public/images/products/kuta-80_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/kuta-80_4.jpg" ]; then
  curl -sL -o "public/images/products/kuta-80_4.jpg" "https://drive.google.com/uc?export=download&id=1if6nadfhns0SS5ZaBCfKo3Zhb02y4l_G" 2>/dev/null
  if [ -s "public/images/products/kuta-80_4.jpg" ] && file "public/images/products/kuta-80_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/kuta-80_4.jpg"
    curl -sL -o "public/images/products/kuta-80_4.jpg" "https://lh3.googleusercontent.com/d/1if6nadfhns0SS5ZaBCfKo3Zhb02y4l_G" 2>/dev/null
    if [ -s "public/images/products/kuta-80_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lave-mains-en-teck_1.jpg" ]; then
  curl -sL -o "public/images/products/lave-mains-en-teck_1.jpg" "https://drive.google.com/uc?export=download&id=1Uxl62qQbvuXqnFTZUzG2CwRN1BYsMGsG" 2>/dev/null
  if [ -s "public/images/products/lave-mains-en-teck_1.jpg" ] && file "public/images/products/lave-mains-en-teck_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lave-mains-en-teck_1.jpg"
    curl -sL -o "public/images/products/lave-mains-en-teck_1.jpg" "https://lh3.googleusercontent.com/d/1Uxl62qQbvuXqnFTZUzG2CwRN1BYsMGsG" 2>/dev/null
    if [ -s "public/images/products/lave-mains-en-teck_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lave-mains-en-teck_2.jpg" ]; then
  curl -sL -o "public/images/products/lave-mains-en-teck_2.jpg" "https://drive.google.com/uc?export=download&id=1kUqaD0Ut2rez6cd-GMJkEiKNCP1Cu0uP" 2>/dev/null
  if [ -s "public/images/products/lave-mains-en-teck_2.jpg" ] && file "public/images/products/lave-mains-en-teck_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lave-mains-en-teck_2.jpg"
    curl -sL -o "public/images/products/lave-mains-en-teck_2.jpg" "https://lh3.googleusercontent.com/d/1kUqaD0Ut2rez6cd-GMJkEiKNCP1Cu0uP" 2>/dev/null
    if [ -s "public/images/products/lave-mains-en-teck_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lave-mains-en-teck_3.jpg" ]; then
  curl -sL -o "public/images/products/lave-mains-en-teck_3.jpg" "https://drive.google.com/uc?export=download&id=1fTLugpCu4o2cgVAKVxMZjbts1ADuluxz" 2>/dev/null
  if [ -s "public/images/products/lave-mains-en-teck_3.jpg" ] && file "public/images/products/lave-mains-en-teck_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lave-mains-en-teck_3.jpg"
    curl -sL -o "public/images/products/lave-mains-en-teck_3.jpg" "https://lh3.googleusercontent.com/d/1fTLugpCu4o2cgVAKVxMZjbts1ADuluxz" 2>/dev/null
    if [ -s "public/images/products/lave-mains-en-teck_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lave-mains-en-teck_4.jpg" ]; then
  curl -sL -o "public/images/products/lave-mains-en-teck_4.jpg" "https://drive.google.com/uc?export=download&id=1zpjSoknyhk7nam7wpbLU4SFhghgIKc22" 2>/dev/null
  if [ -s "public/images/products/lave-mains-en-teck_4.jpg" ] && file "public/images/products/lave-mains-en-teck_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lave-mains-en-teck_4.jpg"
    curl -sL -o "public/images/products/lave-mains-en-teck_4.jpg" "https://lh3.googleusercontent.com/d/1zpjSoknyhk7nam7wpbLU4SFhghgIKc22" 2>/dev/null
    if [ -s "public/images/products/lave-mains-en-teck_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lontan_1.jpg" ]; then
  curl -sL -o "public/images/products/lontan_1.jpg" "https://drive.google.com/uc?export=download&id=18d4MvLELeZKWX0MBtlnLl5cA7cx4zwex" 2>/dev/null
  if [ -s "public/images/products/lontan_1.jpg" ] && file "public/images/products/lontan_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lontan_1.jpg"
    curl -sL -o "public/images/products/lontan_1.jpg" "https://lh3.googleusercontent.com/d/18d4MvLELeZKWX0MBtlnLl5cA7cx4zwex" 2>/dev/null
    if [ -s "public/images/products/lontan_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lontan_2.jpg" ]; then
  curl -sL -o "public/images/products/lontan_2.jpg" "https://drive.google.com/uc?export=download&id=1SjYfeSMLrxbqI7kTvbSHpyR4w5n4IdKG" 2>/dev/null
  if [ -s "public/images/products/lontan_2.jpg" ] && file "public/images/products/lontan_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lontan_2.jpg"
    curl -sL -o "public/images/products/lontan_2.jpg" "https://lh3.googleusercontent.com/d/1SjYfeSMLrxbqI7kTvbSHpyR4w5n4IdKG" 2>/dev/null
    if [ -s "public/images/products/lontan_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lontan_3.jpg" ]; then
  curl -sL -o "public/images/products/lontan_3.jpg" "https://drive.google.com/uc?export=download&id=1bZ6H0w6nGwNE5usAT5irJA0bdCm0PvS-" 2>/dev/null
  if [ -s "public/images/products/lontan_3.jpg" ] && file "public/images/products/lontan_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lontan_3.jpg"
    curl -sL -o "public/images/products/lontan_3.jpg" "https://lh3.googleusercontent.com/d/1bZ6H0w6nGwNE5usAT5irJA0bdCm0PvS-" 2>/dev/null
    if [ -s "public/images/products/lontan_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lontan_4.jpg" ]; then
  curl -sL -o "public/images/products/lontan_4.jpg" "https://drive.google.com/uc?export=download&id=1KmiurIxLsWJDvI7U0u20RO_WMWUTjS7o" 2>/dev/null
  if [ -s "public/images/products/lontan_4.jpg" ] && file "public/images/products/lontan_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lontan_4.jpg"
    curl -sL -o "public/images/products/lontan_4.jpg" "https://lh3.googleusercontent.com/d/1KmiurIxLsWJDvI7U0u20RO_WMWUTjS7o" 2>/dev/null
    if [ -s "public/images/products/lontan_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-125-cm_1.jpg" ]; then
  curl -sL -o "public/images/products/mikha-125-cm_1.jpg" "https://drive.google.com/uc?export=download&id=1X1t4sFvu8JU9S8F39V4gkSddYYe-O89N" 2>/dev/null
  if [ -s "public/images/products/mikha-125-cm_1.jpg" ] && file "public/images/products/mikha-125-cm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-125-cm_1.jpg"
    curl -sL -o "public/images/products/mikha-125-cm_1.jpg" "https://lh3.googleusercontent.com/d/1X1t4sFvu8JU9S8F39V4gkSddYYe-O89N" 2>/dev/null
    if [ -s "public/images/products/mikha-125-cm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-125-cm_2.jpg" ]; then
  curl -sL -o "public/images/products/mikha-125-cm_2.jpg" "https://drive.google.com/uc?export=download&id=1dxUe8Wsc9H5YifhfX3Wg671mTE8tjsH5" 2>/dev/null
  if [ -s "public/images/products/mikha-125-cm_2.jpg" ] && file "public/images/products/mikha-125-cm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-125-cm_2.jpg"
    curl -sL -o "public/images/products/mikha-125-cm_2.jpg" "https://lh3.googleusercontent.com/d/1dxUe8Wsc9H5YifhfX3Wg671mTE8tjsH5" 2>/dev/null
    if [ -s "public/images/products/mikha-125-cm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-125-cm_3.jpg" ]; then
  curl -sL -o "public/images/products/mikha-125-cm_3.jpg" "https://drive.google.com/uc?export=download&id=1k_RUGaM4SVT33Qx3aTaMnfmjU54a7lhY" 2>/dev/null
  if [ -s "public/images/products/mikha-125-cm_3.jpg" ] && file "public/images/products/mikha-125-cm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-125-cm_3.jpg"
    curl -sL -o "public/images/products/mikha-125-cm_3.jpg" "https://lh3.googleusercontent.com/d/1k_RUGaM4SVT33Qx3aTaMnfmjU54a7lhY" 2>/dev/null
    if [ -s "public/images/products/mikha-125-cm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-125-cm_4.jpg" ]; then
  curl -sL -o "public/images/products/mikha-125-cm_4.jpg" "https://drive.google.com/uc?export=download&id=1-c3J0XSubbHHmjjwu6qXetX4r9ucRv_p" 2>/dev/null
  if [ -s "public/images/products/mikha-125-cm_4.jpg" ] && file "public/images/products/mikha-125-cm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-125-cm_4.jpg"
    curl -sL -o "public/images/products/mikha-125-cm_4.jpg" "https://lh3.googleusercontent.com/d/1-c3J0XSubbHHmjjwu6qXetX4r9ucRv_p" 2>/dev/null
    if [ -s "public/images/products/mikha-125-cm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-90-cm_1.jpg" ]; then
  curl -sL -o "public/images/products/mikha-90-cm_1.jpg" "https://drive.google.com/uc?export=download&id=16Pmd4-Y9vQ3dyswYJ28H4fMvug1hLNUI" 2>/dev/null
  if [ -s "public/images/products/mikha-90-cm_1.jpg" ] && file "public/images/products/mikha-90-cm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-90-cm_1.jpg"
    curl -sL -o "public/images/products/mikha-90-cm_1.jpg" "https://lh3.googleusercontent.com/d/16Pmd4-Y9vQ3dyswYJ28H4fMvug1hLNUI" 2>/dev/null
    if [ -s "public/images/products/mikha-90-cm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-90-cm_2.jpg" ]; then
  curl -sL -o "public/images/products/mikha-90-cm_2.jpg" "https://drive.google.com/uc?export=download&id=1Aycupz2rJnBXp54bmBahq_LpF8xYBCP5" 2>/dev/null
  if [ -s "public/images/products/mikha-90-cm_2.jpg" ] && file "public/images/products/mikha-90-cm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-90-cm_2.jpg"
    curl -sL -o "public/images/products/mikha-90-cm_2.jpg" "https://lh3.googleusercontent.com/d/1Aycupz2rJnBXp54bmBahq_LpF8xYBCP5" 2>/dev/null
    if [ -s "public/images/products/mikha-90-cm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-90-cm_3.jpg" ]; then
  curl -sL -o "public/images/products/mikha-90-cm_3.jpg" "https://drive.google.com/uc?export=download&id=1M4zt4zJiOq9--I14h7jt6xKeQB7yz8La" 2>/dev/null
  if [ -s "public/images/products/mikha-90-cm_3.jpg" ] && file "public/images/products/mikha-90-cm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-90-cm_3.jpg"
    curl -sL -o "public/images/products/mikha-90-cm_3.jpg" "https://lh3.googleusercontent.com/d/1M4zt4zJiOq9--I14h7jt6xKeQB7yz8La" 2>/dev/null
    if [ -s "public/images/products/mikha-90-cm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mikha-90-cm_4.jpg" ]; then
  curl -sL -o "public/images/products/mikha-90-cm_4.jpg" "https://drive.google.com/uc?export=download&id=14ZxDaaUiDNzFl68oTXTV98jC61QaK0R6" 2>/dev/null
  if [ -s "public/images/products/mikha-90-cm_4.jpg" ] && file "public/images/products/mikha-90-cm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mikha-90-cm_4.jpg"
    curl -sL -o "public/images/products/mikha-90-cm_4.jpg" "https://lh3.googleusercontent.com/d/14ZxDaaUiDNzFl68oTXTV98jC61QaK0R6" 2>/dev/null
    if [ -s "public/images/products/mikha-90-cm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-candi_1.jpg" ]; then
  curl -sL -o "public/images/products/miroir-candi_1.jpg" "https://drive.google.com/uc?export=download&id=1zplg9dIQuqcFVJlU3iCRUIk3qI6zMGbE" 2>/dev/null
  if [ -s "public/images/products/miroir-candi_1.jpg" ] && file "public/images/products/miroir-candi_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-candi_1.jpg"
    curl -sL -o "public/images/products/miroir-candi_1.jpg" "https://lh3.googleusercontent.com/d/1zplg9dIQuqcFVJlU3iCRUIk3qI6zMGbE" 2>/dev/null
    if [ -s "public/images/products/miroir-candi_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-candi_2.jpg" ]; then
  curl -sL -o "public/images/products/miroir-candi_2.jpg" "https://drive.google.com/uc?export=download&id=1FI7lObfwJQZmMTP-0QJiFWK0M3klLAf7" 2>/dev/null
  if [ -s "public/images/products/miroir-candi_2.jpg" ] && file "public/images/products/miroir-candi_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-candi_2.jpg"
    curl -sL -o "public/images/products/miroir-candi_2.jpg" "https://lh3.googleusercontent.com/d/1FI7lObfwJQZmMTP-0QJiFWK0M3klLAf7" 2>/dev/null
    if [ -s "public/images/products/miroir-candi_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-candi_3.jpg" ]; then
  curl -sL -o "public/images/products/miroir-candi_3.jpg" "https://drive.google.com/uc?export=download&id=1Mx0dwh82f3wGyvTAZwHKoUK97-xdlEin" 2>/dev/null
  if [ -s "public/images/products/miroir-candi_3.jpg" ] && file "public/images/products/miroir-candi_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-candi_3.jpg"
    curl -sL -o "public/images/products/miroir-candi_3.jpg" "https://lh3.googleusercontent.com/d/1Mx0dwh82f3wGyvTAZwHKoUK97-xdlEin" 2>/dev/null
    if [ -s "public/images/products/miroir-candi_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-candi_4.jpg" ]; then
  curl -sL -o "public/images/products/miroir-candi_4.jpg" "https://drive.google.com/uc?export=download&id=1l98YwvdFkn4LYCQcfodvOXtrmoBTMXX8" 2>/dev/null
  if [ -s "public/images/products/miroir-candi_4.jpg" ] && file "public/images/products/miroir-candi_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-candi_4.jpg"
    curl -sL -o "public/images/products/miroir-candi_4.jpg" "https://lh3.googleusercontent.com/d/1l98YwvdFkn4LYCQcfodvOXtrmoBTMXX8" 2>/dev/null
    if [ -s "public/images/products/miroir-candi_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-maja_1.jpg" ]; then
  curl -sL -o "public/images/products/miroir-maja_1.jpg" "https://drive.google.com/uc?export=download&id=1DCrRsl6hEVCioMKjFURPY3M4ic_GFRzF" 2>/dev/null
  if [ -s "public/images/products/miroir-maja_1.jpg" ] && file "public/images/products/miroir-maja_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-maja_1.jpg"
    curl -sL -o "public/images/products/miroir-maja_1.jpg" "https://lh3.googleusercontent.com/d/1DCrRsl6hEVCioMKjFURPY3M4ic_GFRzF" 2>/dev/null
    if [ -s "public/images/products/miroir-maja_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-maja_2.jpg" ]; then
  curl -sL -o "public/images/products/miroir-maja_2.jpg" "https://drive.google.com/uc?export=download&id=16-yq10YhSSIPJB91nWBFnNRxn2e3EFJH" 2>/dev/null
  if [ -s "public/images/products/miroir-maja_2.jpg" ] && file "public/images/products/miroir-maja_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-maja_2.jpg"
    curl -sL -o "public/images/products/miroir-maja_2.jpg" "https://lh3.googleusercontent.com/d/16-yq10YhSSIPJB91nWBFnNRxn2e3EFJH" 2>/dev/null
    if [ -s "public/images/products/miroir-maja_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-maja_3.jpg" ]; then
  curl -sL -o "public/images/products/miroir-maja_3.jpg" "https://drive.google.com/uc?export=download&id=1yajzBeHBHJGYQ4uHSrcsRS85qc75K9Rd" 2>/dev/null
  if [ -s "public/images/products/miroir-maja_3.jpg" ] && file "public/images/products/miroir-maja_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-maja_3.jpg"
    curl -sL -o "public/images/products/miroir-maja_3.jpg" "https://lh3.googleusercontent.com/d/1yajzBeHBHJGYQ4uHSrcsRS85qc75K9Rd" 2>/dev/null
    if [ -s "public/images/products/miroir-maja_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/miroir-maja_4.jpg" ]; then
  curl -sL -o "public/images/products/miroir-maja_4.jpg" "https://drive.google.com/uc?export=download&id=1foGh6OLflfbfkKBXr_IlSmN6P0C2xXvr" 2>/dev/null
  if [ -s "public/images/products/miroir-maja_4.jpg" ] && file "public/images/products/miroir-maja_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/miroir-maja_4.jpg"
    curl -sL -o "public/images/products/miroir-maja_4.jpg" "https://lh3.googleusercontent.com/d/1foGh6OLflfbfkKBXr_IlSmN6P0C2xXvr" 2>/dev/null
    if [ -s "public/images/products/miroir-maja_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis_1.jpg" ]; then
  curl -sL -o "public/images/products/oasis_1.jpg" "https://drive.google.com/uc?export=download&id=1j6Ys1xCWW3m3NIhO_Nc2amMxcKhiVNs_" 2>/dev/null
  if [ -s "public/images/products/oasis_1.jpg" ] && file "public/images/products/oasis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis_1.jpg"
    curl -sL -o "public/images/products/oasis_1.jpg" "https://lh3.googleusercontent.com/d/1j6Ys1xCWW3m3NIhO_Nc2amMxcKhiVNs_" 2>/dev/null
    if [ -s "public/images/products/oasis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis_2.jpg" ]; then
  curl -sL -o "public/images/products/oasis_2.jpg" "https://drive.google.com/uc?export=download&id=1B32PLpP99fITcnILSr2tWD0scfMJL8kP" 2>/dev/null
  if [ -s "public/images/products/oasis_2.jpg" ] && file "public/images/products/oasis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis_2.jpg"
    curl -sL -o "public/images/products/oasis_2.jpg" "https://lh3.googleusercontent.com/d/1B32PLpP99fITcnILSr2tWD0scfMJL8kP" 2>/dev/null
    if [ -s "public/images/products/oasis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis_3.jpg" ]; then
  curl -sL -o "public/images/products/oasis_3.jpg" "https://drive.google.com/uc?export=download&id=1fk_Z6ZFaQ0k9NvyS6dJ3TatEBb8THtsI" 2>/dev/null
  if [ -s "public/images/products/oasis_3.jpg" ] && file "public/images/products/oasis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis_3.jpg"
    curl -sL -o "public/images/products/oasis_3.jpg" "https://lh3.googleusercontent.com/d/1fk_Z6ZFaQ0k9NvyS6dJ3TatEBb8THtsI" 2>/dev/null
    if [ -s "public/images/products/oasis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis_4.jpg" ]; then
  curl -sL -o "public/images/products/oasis_4.jpg" "https://drive.google.com/uc?export=download&id=1KXqZepwSN4AosgsNiM2yHYpxWYS3GiE0" 2>/dev/null
  if [ -s "public/images/products/oasis_4.jpg" ] && file "public/images/products/oasis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis_4.jpg"
    curl -sL -o "public/images/products/oasis_4.jpg" "https://lh3.googleusercontent.com/d/1KXqZepwSN4AosgsNiM2yHYpxWYS3GiE0" 2>/dev/null
    if [ -s "public/images/products/oasis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-100-cm_1.jpg" ]; then
  curl -sL -o "public/images/products/oasis-100-cm_1.jpg" "https://drive.google.com/uc?export=download&id=1MtePu4Cbom8ayoeKOlJ6uqgqpdZh3Amu" 2>/dev/null
  if [ -s "public/images/products/oasis-100-cm_1.jpg" ] && file "public/images/products/oasis-100-cm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-100-cm_1.jpg"
    curl -sL -o "public/images/products/oasis-100-cm_1.jpg" "https://lh3.googleusercontent.com/d/1MtePu4Cbom8ayoeKOlJ6uqgqpdZh3Amu" 2>/dev/null
    if [ -s "public/images/products/oasis-100-cm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-100-cm_2.jpg" ]; then
  curl -sL -o "public/images/products/oasis-100-cm_2.jpg" "https://drive.google.com/uc?export=download&id=1MDp4F2l20-s5V7TmLiJplcTgYJmam_jS" 2>/dev/null
  if [ -s "public/images/products/oasis-100-cm_2.jpg" ] && file "public/images/products/oasis-100-cm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-100-cm_2.jpg"
    curl -sL -o "public/images/products/oasis-100-cm_2.jpg" "https://lh3.googleusercontent.com/d/1MDp4F2l20-s5V7TmLiJplcTgYJmam_jS" 2>/dev/null
    if [ -s "public/images/products/oasis-100-cm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-100-cm_3.jpg" ]; then
  curl -sL -o "public/images/products/oasis-100-cm_3.jpg" "https://drive.google.com/uc?export=download&id=1SthP3EpzQCfXAwbbPaDiVO2azcdJvhWx" 2>/dev/null
  if [ -s "public/images/products/oasis-100-cm_3.jpg" ] && file "public/images/products/oasis-100-cm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-100-cm_3.jpg"
    curl -sL -o "public/images/products/oasis-100-cm_3.jpg" "https://lh3.googleusercontent.com/d/1SthP3EpzQCfXAwbbPaDiVO2azcdJvhWx" 2>/dev/null
    if [ -s "public/images/products/oasis-100-cm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-100-cm_4.jpg" ]; then
  curl -sL -o "public/images/products/oasis-100-cm_4.jpg" "https://drive.google.com/uc?export=download&id=1iy-qMi2v_hragd_i06s7gq6q8CEBAlzG" 2>/dev/null
  if [ -s "public/images/products/oasis-100-cm_4.jpg" ] && file "public/images/products/oasis-100-cm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-100-cm_4.jpg"
    curl -sL -o "public/images/products/oasis-100-cm_4.jpg" "https://lh3.googleusercontent.com/d/1iy-qMi2v_hragd_i06s7gq6q8CEBAlzG" 2>/dev/null
    if [ -s "public/images/products/oasis-100-cm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-suspendre_1.jpg" ]; then
  curl -sL -o "public/images/products/oasis-suspendre_1.jpg" "https://drive.google.com/uc?export=download&id=1c7ajUya_YDolLy2bYY6HUKJiD1jbgndx" 2>/dev/null
  if [ -s "public/images/products/oasis-suspendre_1.jpg" ] && file "public/images/products/oasis-suspendre_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-suspendre_1.jpg"
    curl -sL -o "public/images/products/oasis-suspendre_1.jpg" "https://lh3.googleusercontent.com/d/1c7ajUya_YDolLy2bYY6HUKJiD1jbgndx" 2>/dev/null
    if [ -s "public/images/products/oasis-suspendre_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-suspendre_2.jpg" ]; then
  curl -sL -o "public/images/products/oasis-suspendre_2.jpg" "https://drive.google.com/uc?export=download&id=1BoAmLTqDVShhJDMGkY9PsQFtUMP0NOtI" 2>/dev/null
  if [ -s "public/images/products/oasis-suspendre_2.jpg" ] && file "public/images/products/oasis-suspendre_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-suspendre_2.jpg"
    curl -sL -o "public/images/products/oasis-suspendre_2.jpg" "https://lh3.googleusercontent.com/d/1BoAmLTqDVShhJDMGkY9PsQFtUMP0NOtI" 2>/dev/null
    if [ -s "public/images/products/oasis-suspendre_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-suspendre_3.jpg" ]; then
  curl -sL -o "public/images/products/oasis-suspendre_3.jpg" "https://drive.google.com/uc?export=download&id=1qrk_7rEO9hmtoY7fFni-JQ0UKGP7p1Qx" 2>/dev/null
  if [ -s "public/images/products/oasis-suspendre_3.jpg" ] && file "public/images/products/oasis-suspendre_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-suspendre_3.jpg"
    curl -sL -o "public/images/products/oasis-suspendre_3.jpg" "https://lh3.googleusercontent.com/d/1qrk_7rEO9hmtoY7fFni-JQ0UKGP7p1Qx" 2>/dev/null
    if [ -s "public/images/products/oasis-suspendre_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-suspendre_4.jpg" ]; then
  curl -sL -o "public/images/products/oasis-suspendre_4.jpg" "https://drive.google.com/uc?export=download&id=1WSfhaM44i-Bq6Cgckritdfpnxk0kWw2q" 2>/dev/null
  if [ -s "public/images/products/oasis-suspendre_4.jpg" ] && file "public/images/products/oasis-suspendre_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-suspendre_4.jpg"
    curl -sL -o "public/images/products/oasis-suspendre_4.jpg" "https://lh3.googleusercontent.com/d/1WSfhaM44i-Bq6Cgckritdfpnxk0kWw2q" 2>/dev/null
    if [ -s "public/images/products/oasis-suspendre_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oblique_1.jpg" ]; then
  curl -sL -o "public/images/products/oblique_1.jpg" "https://drive.google.com/uc?export=download&id=1aSHLGyhMUxHzE1ZO_6FxSTkro93prHRw" 2>/dev/null
  if [ -s "public/images/products/oblique_1.jpg" ] && file "public/images/products/oblique_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oblique_1.jpg"
    curl -sL -o "public/images/products/oblique_1.jpg" "https://lh3.googleusercontent.com/d/1aSHLGyhMUxHzE1ZO_6FxSTkro93prHRw" 2>/dev/null
    if [ -s "public/images/products/oblique_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oblique_2.jpg" ]; then
  curl -sL -o "public/images/products/oblique_2.jpg" "https://drive.google.com/uc?export=download&id=1xryDliOhbqKGttmiSoXLYTJYX1M00Cz8" 2>/dev/null
  if [ -s "public/images/products/oblique_2.jpg" ] && file "public/images/products/oblique_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oblique_2.jpg"
    curl -sL -o "public/images/products/oblique_2.jpg" "https://lh3.googleusercontent.com/d/1xryDliOhbqKGttmiSoXLYTJYX1M00Cz8" 2>/dev/null
    if [ -s "public/images/products/oblique_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oblique_3.jpg" ]; then
  curl -sL -o "public/images/products/oblique_3.jpg" "https://drive.google.com/uc?export=download&id=1Es0OWuwVctSKTWXse2qcvCQIIPf75NmB" 2>/dev/null
  if [ -s "public/images/products/oblique_3.jpg" ] && file "public/images/products/oblique_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oblique_3.jpg"
    curl -sL -o "public/images/products/oblique_3.jpg" "https://lh3.googleusercontent.com/d/1Es0OWuwVctSKTWXse2qcvCQIIPf75NmB" 2>/dev/null
    if [ -s "public/images/products/oblique_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oblique_4.jpg" ]; then
  curl -sL -o "public/images/products/oblique_4.jpg" "https://drive.google.com/uc?export=download&id=1wyZCNtKbDYPFLcBiBEYQMLOtSHP353QG" 2>/dev/null
  if [ -s "public/images/products/oblique_4.jpg" ] && file "public/images/products/oblique_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oblique_4.jpg"
    curl -sL -o "public/images/products/oblique_4.jpg" "https://lh3.googleusercontent.com/d/1wyZCNtKbDYPFLcBiBEYQMLOtSHP353QG" 2>/dev/null
    if [ -s "public/images/products/oblique_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/palu_1.jpg" ]; then
  curl -sL -o "public/images/products/palu_1.jpg" "https://drive.google.com/uc?export=download&id=182ct1T9nE_WnSjKag5CDn9FgHhxkvr1z" 2>/dev/null
  if [ -s "public/images/products/palu_1.jpg" ] && file "public/images/products/palu_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/palu_1.jpg"
    curl -sL -o "public/images/products/palu_1.jpg" "https://lh3.googleusercontent.com/d/182ct1T9nE_WnSjKag5CDn9FgHhxkvr1z" 2>/dev/null
    if [ -s "public/images/products/palu_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/palu_2.jpg" ]; then
  curl -sL -o "public/images/products/palu_2.jpg" "https://drive.google.com/uc?export=download&id=1MQ99v4UB9P8aS5DJsqjtVQOvlR4IPQzc" 2>/dev/null
  if [ -s "public/images/products/palu_2.jpg" ] && file "public/images/products/palu_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/palu_2.jpg"
    curl -sL -o "public/images/products/palu_2.jpg" "https://lh3.googleusercontent.com/d/1MQ99v4UB9P8aS5DJsqjtVQOvlR4IPQzc" 2>/dev/null
    if [ -s "public/images/products/palu_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/palu_3.jpg" ]; then
  curl -sL -o "public/images/products/palu_3.jpg" "https://drive.google.com/uc?export=download&id=11-HN75NvUxSWLPOJ7phqpQMIuCtjjUNv" 2>/dev/null
  if [ -s "public/images/products/palu_3.jpg" ] && file "public/images/products/palu_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/palu_3.jpg"
    curl -sL -o "public/images/products/palu_3.jpg" "https://lh3.googleusercontent.com/d/11-HN75NvUxSWLPOJ7phqpQMIuCtjjUNv" 2>/dev/null
    if [ -s "public/images/products/palu_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/palu_4.jpg" ]; then
  curl -sL -o "public/images/products/palu_4.jpg" "https://drive.google.com/uc?export=download&id=1QbMQnCgge3JMjgxHguH1bZq99mXU9xDr" 2>/dev/null
  if [ -s "public/images/products/palu_4.jpg" ] && file "public/images/products/palu_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/palu_4.jpg"
    curl -sL -o "public/images/products/palu_4.jpg" "https://lh3.googleusercontent.com/d/1QbMQnCgge3JMjgxHguH1bZq99mXU9xDr" 2>/dev/null
    if [ -s "public/images/products/palu_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/prj_1.jpg" ]; then
  curl -sL -o "public/images/products/prj_1.jpg" "https://drive.google.com/uc?export=download&id=1W0YBjrmNRlQVWdOInUoxAvhvTTl-5iQR" 2>/dev/null
  if [ -s "public/images/products/prj_1.jpg" ] && file "public/images/products/prj_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/prj_1.jpg"
    curl -sL -o "public/images/products/prj_1.jpg" "https://lh3.googleusercontent.com/d/1W0YBjrmNRlQVWdOInUoxAvhvTTl-5iQR" 2>/dev/null
    if [ -s "public/images/products/prj_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/prj_2.jpg" ]; then
  curl -sL -o "public/images/products/prj_2.jpg" "https://drive.google.com/uc?export=download&id=1T0871v2EQ3buqXXhJdjip9xYuGMvucaZ" 2>/dev/null
  if [ -s "public/images/products/prj_2.jpg" ] && file "public/images/products/prj_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/prj_2.jpg"
    curl -sL -o "public/images/products/prj_2.jpg" "https://lh3.googleusercontent.com/d/1T0871v2EQ3buqXXhJdjip9xYuGMvucaZ" 2>/dev/null
    if [ -s "public/images/products/prj_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/prj_3.jpg" ]; then
  curl -sL -o "public/images/products/prj_3.jpg" "https://drive.google.com/uc?export=download&id=1Q4X_n8zkJWTANHlw4b84RP_ijvh2TtFt" 2>/dev/null
  if [ -s "public/images/products/prj_3.jpg" ] && file "public/images/products/prj_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/prj_3.jpg"
    curl -sL -o "public/images/products/prj_3.jpg" "https://lh3.googleusercontent.com/d/1Q4X_n8zkJWTANHlw4b84RP_ijvh2TtFt" 2>/dev/null
    if [ -s "public/images/products/prj_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/prj_4.jpg" ]; then
  curl -sL -o "public/images/products/prj_4.jpg" "https://drive.google.com/uc?export=download&id=1iqSW22ZUD4N5RzUOKCnfFNQNkFxynQbm" 2>/dev/null
  if [ -s "public/images/products/prj_4.jpg" ] && file "public/images/products/prj_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/prj_4.jpg"
    curl -sL -o "public/images/products/prj_4.jpg" "https://lh3.googleusercontent.com/d/1iqSW22ZUD4N5RzUOKCnfFNQNkFxynQbm" 2>/dev/null
    if [ -s "public/images/products/prj_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/seville-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/seville-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=1oRoNcmjO-bO4Y1DfyE-0E1B0_H43bqqF" 2>/dev/null
  if [ -s "public/images/products/seville-krepyak_1.jpg" ] && file "public/images/products/seville-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/seville-krepyak_1.jpg"
    curl -sL -o "public/images/products/seville-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/1oRoNcmjO-bO4Y1DfyE-0E1B0_H43bqqF" 2>/dev/null
    if [ -s "public/images/products/seville-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/seville-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/seville-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=1QS6uwuGlbdw5RR7fJzgEjjSRt1IMEo4L" 2>/dev/null
  if [ -s "public/images/products/seville-krepyak_2.jpg" ] && file "public/images/products/seville-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/seville-krepyak_2.jpg"
    curl -sL -o "public/images/products/seville-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/1QS6uwuGlbdw5RR7fJzgEjjSRt1IMEo4L" 2>/dev/null
    if [ -s "public/images/products/seville-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/seville-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/seville-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=1OAqzwqrUD1u33cBUsqdhaTpikSB-umiD" 2>/dev/null
  if [ -s "public/images/products/seville-krepyak_3.jpg" ] && file "public/images/products/seville-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/seville-krepyak_3.jpg"
    curl -sL -o "public/images/products/seville-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/1OAqzwqrUD1u33cBUsqdhaTpikSB-umiD" 2>/dev/null
    if [ -s "public/images/products/seville-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/seville-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/seville-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1oMBB-F1JAKIdkEC3Lfb19hlAQoEDl85U" 2>/dev/null
  if [ -s "public/images/products/seville-krepyak_4.jpg" ] && file "public/images/products/seville-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/seville-krepyak_4.jpg"
    curl -sL -o "public/images/products/seville-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1oMBB-F1JAKIdkEC3Lfb19hlAQoEDl85U" 2>/dev/null
    if [ -s "public/images/products/seville-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-suspendre_1.jpg" ]; then
  curl -sL -o "public/images/products/sherry-suspendre_1.jpg" "https://drive.google.com/uc?export=download&id=1oAK06QVaf5zHn2PvGocXLeNUATCnzjAH" 2>/dev/null
  if [ -s "public/images/products/sherry-suspendre_1.jpg" ] && file "public/images/products/sherry-suspendre_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-suspendre_1.jpg"
    curl -sL -o "public/images/products/sherry-suspendre_1.jpg" "https://lh3.googleusercontent.com/d/1oAK06QVaf5zHn2PvGocXLeNUATCnzjAH" 2>/dev/null
    if [ -s "public/images/products/sherry-suspendre_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-suspendre_2.jpg" ]; then
  curl -sL -o "public/images/products/sherry-suspendre_2.jpg" "https://drive.google.com/uc?export=download&id=1sRnlOqUlSGoZO7KvdpOOCTsVDl_ly1S2" 2>/dev/null
  if [ -s "public/images/products/sherry-suspendre_2.jpg" ] && file "public/images/products/sherry-suspendre_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-suspendre_2.jpg"
    curl -sL -o "public/images/products/sherry-suspendre_2.jpg" "https://lh3.googleusercontent.com/d/1sRnlOqUlSGoZO7KvdpOOCTsVDl_ly1S2" 2>/dev/null
    if [ -s "public/images/products/sherry-suspendre_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-suspendre_3.jpg" ]; then
  curl -sL -o "public/images/products/sherry-suspendre_3.jpg" "https://drive.google.com/uc?export=download&id=19_jP2AAxdLJPCJTy-l7MWiY7C2wyfayR" 2>/dev/null
  if [ -s "public/images/products/sherry-suspendre_3.jpg" ] && file "public/images/products/sherry-suspendre_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-suspendre_3.jpg"
    curl -sL -o "public/images/products/sherry-suspendre_3.jpg" "https://lh3.googleusercontent.com/d/19_jP2AAxdLJPCJTy-l7MWiY7C2wyfayR" 2>/dev/null
    if [ -s "public/images/products/sherry-suspendre_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-suspendre_4.jpg" ]; then
  curl -sL -o "public/images/products/sherry-suspendre_4.jpg" "https://drive.google.com/uc?export=download&id=18KXHtFUi4nHiM3dj5_2WZjyaQE9FyXOV" 2>/dev/null
  if [ -s "public/images/products/sherry-suspendre_4.jpg" ] && file "public/images/products/sherry-suspendre_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-suspendre_4.jpg"
    curl -sL -o "public/images/products/sherry-suspendre_4.jpg" "https://lh3.googleusercontent.com/d/18KXHtFUi4nHiM3dj5_2WZjyaQE9FyXOV" 2>/dev/null
    if [ -s "public/images/products/sherry-suspendre_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied_1.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied_1.jpg" "https://drive.google.com/uc?export=download&id=1CDt7i8bIrc_jYKth-G1zIbUBtH7gMTO8" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied_1.jpg" ] && file "public/images/products/sherry-sur-pied_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied_1.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied_1.jpg" "https://lh3.googleusercontent.com/d/1CDt7i8bIrc_jYKth-G1zIbUBtH7gMTO8" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied_2.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied_2.jpg" "https://drive.google.com/uc?export=download&id=11WYPZjSBYxhgCk1xRJYo6x8WoAurUiPV" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied_2.jpg" ] && file "public/images/products/sherry-sur-pied_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied_2.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied_2.jpg" "https://lh3.googleusercontent.com/d/11WYPZjSBYxhgCk1xRJYo6x8WoAurUiPV" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied_3.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied_3.jpg" "https://drive.google.com/uc?export=download&id=1jo71jvIBfjHUsycM2s-jdBUu5VTPEp-r" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied_3.jpg" ] && file "public/images/products/sherry-sur-pied_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied_3.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied_3.jpg" "https://lh3.googleusercontent.com/d/1jo71jvIBfjHUsycM2s-jdBUu5VTPEp-r" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied_4.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied_4.jpg" "https://drive.google.com/uc?export=download&id=1WebelXaFG6IX6Hm3YHJy5LNfnTvpJC7G" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied_4.jpg" ] && file "public/images/products/sherry-sur-pied_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied_4.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied_4.jpg" "https://lh3.googleusercontent.com/d/1WebelXaFG6IX6Hm3YHJy5LNfnTvpJC7G" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-120-cm_1.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-120-cm_1.jpg" "https://drive.google.com/uc?export=download&id=1VRFDWMLXAtluYx_ROdGcio762vPlqi-z" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-120-cm_1.jpg" ] && file "public/images/products/sherry-sur-pied-120-cm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-120-cm_1.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-120-cm_1.jpg" "https://lh3.googleusercontent.com/d/1VRFDWMLXAtluYx_ROdGcio762vPlqi-z" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-120-cm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-120-cm_2.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-120-cm_2.jpg" "https://drive.google.com/uc?export=download&id=1UCbD7gmIbIsfa6E9kQMwC7zFiwThouJ2" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-120-cm_2.jpg" ] && file "public/images/products/sherry-sur-pied-120-cm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-120-cm_2.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-120-cm_2.jpg" "https://lh3.googleusercontent.com/d/1UCbD7gmIbIsfa6E9kQMwC7zFiwThouJ2" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-120-cm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-120-cm_3.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-120-cm_3.jpg" "https://drive.google.com/uc?export=download&id=138fKcqyTS9OAMZq5nq56qokt4ZSaOYPz" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-120-cm_3.jpg" ] && file "public/images/products/sherry-sur-pied-120-cm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-120-cm_3.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-120-cm_3.jpg" "https://lh3.googleusercontent.com/d/138fKcqyTS9OAMZq5nq56qokt4ZSaOYPz" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-120-cm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-120-cm_4.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-120-cm_4.jpg" "https://drive.google.com/uc?export=download&id=1hmTeIoINCRCTVuy_vUMSitJbIWsduG3B" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-120-cm_4.jpg" ] && file "public/images/products/sherry-sur-pied-120-cm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-120-cm_4.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-120-cm_4.jpg" "https://lh3.googleusercontent.com/d/1hmTeIoINCRCTVuy_vUMSitJbIWsduG3B" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-120-cm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-2p-1t_1.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_1.jpg" "https://drive.google.com/uc?export=download&id=1xD3NX_eb5-uCkLGAm9Q-CY7zRwovA7nZ" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-2p-1t_1.jpg" ] && file "public/images/products/sherry-sur-pied-2p-1t_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-2p-1t_1.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_1.jpg" "https://lh3.googleusercontent.com/d/1xD3NX_eb5-uCkLGAm9Q-CY7zRwovA7nZ" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-2p-1t_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-2p-1t_2.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_2.jpg" "https://drive.google.com/uc?export=download&id=10gx27QYzrWRMGlfWc7G9THpCYuo8D3fb" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-2p-1t_2.jpg" ] && file "public/images/products/sherry-sur-pied-2p-1t_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-2p-1t_2.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_2.jpg" "https://lh3.googleusercontent.com/d/10gx27QYzrWRMGlfWc7G9THpCYuo8D3fb" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-2p-1t_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-2p-1t_3.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_3.jpg" "https://drive.google.com/uc?export=download&id=1Fiq_eO9JW34xM4GXJGJF_AeZU9J7RRxY" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-2p-1t_3.jpg" ] && file "public/images/products/sherry-sur-pied-2p-1t_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-2p-1t_3.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_3.jpg" "https://lh3.googleusercontent.com/d/1Fiq_eO9JW34xM4GXJGJF_AeZU9J7RRxY" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-2p-1t_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sherry-sur-pied-2p-1t_4.jpg" ]; then
  curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_4.jpg" "https://drive.google.com/uc?export=download&id=1Tn9fjfUR6PHgTOFrEwAA07vVz-5SgDoE" 2>/dev/null
  if [ -s "public/images/products/sherry-sur-pied-2p-1t_4.jpg" ] && file "public/images/products/sherry-sur-pied-2p-1t_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sherry-sur-pied-2p-1t_4.jpg"
    curl -sL -o "public/images/products/sherry-sur-pied-2p-1t_4.jpg" "https://lh3.googleusercontent.com/d/1Tn9fjfUR6PHgTOFrEwAA07vVz-5SgDoE" 2>/dev/null
    if [ -s "public/images/products/sherry-sur-pied-2p-1t_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/shogun_1.jpg" ]; then
  curl -sL -o "public/images/products/shogun_1.jpg" "https://drive.google.com/uc?export=download&id=1IvvVgDOXv0lPBWbwy04MsdR6D9AwihVN" 2>/dev/null
  if [ -s "public/images/products/shogun_1.jpg" ] && file "public/images/products/shogun_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/shogun_1.jpg"
    curl -sL -o "public/images/products/shogun_1.jpg" "https://lh3.googleusercontent.com/d/1IvvVgDOXv0lPBWbwy04MsdR6D9AwihVN" 2>/dev/null
    if [ -s "public/images/products/shogun_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/shogun_2.jpg" ]; then
  curl -sL -o "public/images/products/shogun_2.jpg" "https://drive.google.com/uc?export=download&id=1GrlokSgeminR-zWe0ozxDT33RKUYCg8d" 2>/dev/null
  if [ -s "public/images/products/shogun_2.jpg" ] && file "public/images/products/shogun_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/shogun_2.jpg"
    curl -sL -o "public/images/products/shogun_2.jpg" "https://lh3.googleusercontent.com/d/1GrlokSgeminR-zWe0ozxDT33RKUYCg8d" 2>/dev/null
    if [ -s "public/images/products/shogun_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/shogun_3.jpg" ]; then
  curl -sL -o "public/images/products/shogun_3.jpg" "https://drive.google.com/uc?export=download&id=1ozpyKGLslizT4ZKizyp7JzyOxoE67HW1" 2>/dev/null
  if [ -s "public/images/products/shogun_3.jpg" ] && file "public/images/products/shogun_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/shogun_3.jpg"
    curl -sL -o "public/images/products/shogun_3.jpg" "https://lh3.googleusercontent.com/d/1ozpyKGLslizT4ZKizyp7JzyOxoE67HW1" 2>/dev/null
    if [ -s "public/images/products/shogun_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/shogun_4.jpg" ]; then
  curl -sL -o "public/images/products/shogun_4.jpg" "https://drive.google.com/uc?export=download&id=1jKa2usLCnAGIwtnZAt-ec7oAWB9KLdUi" 2>/dev/null
  if [ -s "public/images/products/shogun_4.jpg" ] && file "public/images/products/shogun_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/shogun_4.jpg"
    curl -sL -o "public/images/products/shogun_4.jpg" "https://lh3.googleusercontent.com/d/1jKa2usLCnAGIwtnZAt-ec7oAWB9KLdUi" 2>/dev/null
    if [ -s "public/images/products/shogun_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-120-cm_1.jpg" ]; then
  curl -sL -o "public/images/products/slats-120-cm_1.jpg" "https://drive.google.com/uc?export=download&id=1BXGs7h2gn-cb1yyss3PLDPCccEk1q0gf" 2>/dev/null
  if [ -s "public/images/products/slats-120-cm_1.jpg" ] && file "public/images/products/slats-120-cm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-120-cm_1.jpg"
    curl -sL -o "public/images/products/slats-120-cm_1.jpg" "https://lh3.googleusercontent.com/d/1BXGs7h2gn-cb1yyss3PLDPCccEk1q0gf" 2>/dev/null
    if [ -s "public/images/products/slats-120-cm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-120-cm_2.jpg" ]; then
  curl -sL -o "public/images/products/slats-120-cm_2.jpg" "https://drive.google.com/uc?export=download&id=1oScGzIBcIkqVf8AQqDfAMKi5mNPeGqn5" 2>/dev/null
  if [ -s "public/images/products/slats-120-cm_2.jpg" ] && file "public/images/products/slats-120-cm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-120-cm_2.jpg"
    curl -sL -o "public/images/products/slats-120-cm_2.jpg" "https://lh3.googleusercontent.com/d/1oScGzIBcIkqVf8AQqDfAMKi5mNPeGqn5" 2>/dev/null
    if [ -s "public/images/products/slats-120-cm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-120-cm_3.jpg" ]; then
  curl -sL -o "public/images/products/slats-120-cm_3.jpg" "https://drive.google.com/uc?export=download&id=1TKoCAAyU4hTrdg9kAsm7h_CCWhJ5Cr-P" 2>/dev/null
  if [ -s "public/images/products/slats-120-cm_3.jpg" ] && file "public/images/products/slats-120-cm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-120-cm_3.jpg"
    curl -sL -o "public/images/products/slats-120-cm_3.jpg" "https://lh3.googleusercontent.com/d/1TKoCAAyU4hTrdg9kAsm7h_CCWhJ5Cr-P" 2>/dev/null
    if [ -s "public/images/products/slats-120-cm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-120-cm_4.jpg" ]; then
  curl -sL -o "public/images/products/slats-120-cm_4.jpg" "https://drive.google.com/uc?export=download&id=1ORsJg_AEJ0K2bRqKUaPUczfb9fzT3qqt" 2>/dev/null
  if [ -s "public/images/products/slats-120-cm_4.jpg" ] && file "public/images/products/slats-120-cm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-120-cm_4.jpg"
    curl -sL -o "public/images/products/slats-120-cm_4.jpg" "https://lh3.googleusercontent.com/d/1ORsJg_AEJ0K2bRqKUaPUczfb9fzT3qqt" 2>/dev/null
    if [ -s "public/images/products/slats-120-cm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-140-cm_1.jpg" ]; then
  curl -sL -o "public/images/products/slats-140-cm_1.jpg" "https://drive.google.com/uc?export=download&id=11LQYLKOCabs7lLzV4gi8Wf07aCz1n4Ky" 2>/dev/null
  if [ -s "public/images/products/slats-140-cm_1.jpg" ] && file "public/images/products/slats-140-cm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-140-cm_1.jpg"
    curl -sL -o "public/images/products/slats-140-cm_1.jpg" "https://lh3.googleusercontent.com/d/11LQYLKOCabs7lLzV4gi8Wf07aCz1n4Ky" 2>/dev/null
    if [ -s "public/images/products/slats-140-cm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-140-cm_2.jpg" ]; then
  curl -sL -o "public/images/products/slats-140-cm_2.jpg" "https://drive.google.com/uc?export=download&id=1qJAfWVJT7b3v_v3Aou3HmQJn8TKspwX7" 2>/dev/null
  if [ -s "public/images/products/slats-140-cm_2.jpg" ] && file "public/images/products/slats-140-cm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-140-cm_2.jpg"
    curl -sL -o "public/images/products/slats-140-cm_2.jpg" "https://lh3.googleusercontent.com/d/1qJAfWVJT7b3v_v3Aou3HmQJn8TKspwX7" 2>/dev/null
    if [ -s "public/images/products/slats-140-cm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-140-cm_3.jpg" ]; then
  curl -sL -o "public/images/products/slats-140-cm_3.jpg" "https://drive.google.com/uc?export=download&id=1HF4nvF4LG2PS_CF4-9bdnaI0X0-h45ut" 2>/dev/null
  if [ -s "public/images/products/slats-140-cm_3.jpg" ] && file "public/images/products/slats-140-cm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-140-cm_3.jpg"
    curl -sL -o "public/images/products/slats-140-cm_3.jpg" "https://lh3.googleusercontent.com/d/1HF4nvF4LG2PS_CF4-9bdnaI0X0-h45ut" 2>/dev/null
    if [ -s "public/images/products/slats-140-cm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-140-cm_4.jpg" ]; then
  curl -sL -o "public/images/products/slats-140-cm_4.jpg" "https://drive.google.com/uc?export=download&id=13ywYyfC4rBzmOvFaNHLvPwrV9Nk6Lvek" 2>/dev/null
  if [ -s "public/images/products/slats-140-cm_4.jpg" ] && file "public/images/products/slats-140-cm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-140-cm_4.jpg"
    curl -sL -o "public/images/products/slats-140-cm_4.jpg" "https://lh3.googleusercontent.com/d/13ywYyfC4rBzmOvFaNHLvPwrV9Nk6Lvek" 2>/dev/null
    if [ -s "public/images/products/slats-140-cm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-rattan_1.jpg" ]; then
  curl -sL -o "public/images/products/slats-rattan_1.jpg" "https://drive.google.com/uc?export=download&id=1T_r_JX4sPyia-WHKEF_0ROxHuoxQi9Dm" 2>/dev/null
  if [ -s "public/images/products/slats-rattan_1.jpg" ] && file "public/images/products/slats-rattan_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-rattan_1.jpg"
    curl -sL -o "public/images/products/slats-rattan_1.jpg" "https://lh3.googleusercontent.com/d/1T_r_JX4sPyia-WHKEF_0ROxHuoxQi9Dm" 2>/dev/null
    if [ -s "public/images/products/slats-rattan_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-rattan_2.jpg" ]; then
  curl -sL -o "public/images/products/slats-rattan_2.jpg" "https://drive.google.com/uc?export=download&id=1Y_fk23QN79FY5PmzJ76N7n5hRO2m8G0J" 2>/dev/null
  if [ -s "public/images/products/slats-rattan_2.jpg" ] && file "public/images/products/slats-rattan_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-rattan_2.jpg"
    curl -sL -o "public/images/products/slats-rattan_2.jpg" "https://lh3.googleusercontent.com/d/1Y_fk23QN79FY5PmzJ76N7n5hRO2m8G0J" 2>/dev/null
    if [ -s "public/images/products/slats-rattan_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-rattan_3.jpg" ]; then
  curl -sL -o "public/images/products/slats-rattan_3.jpg" "https://drive.google.com/uc?export=download&id=1yKSVd2ZZu-qFxcyuxMs31HoVWafH9YB-" 2>/dev/null
  if [ -s "public/images/products/slats-rattan_3.jpg" ] && file "public/images/products/slats-rattan_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-rattan_3.jpg"
    curl -sL -o "public/images/products/slats-rattan_3.jpg" "https://lh3.googleusercontent.com/d/1yKSVd2ZZu-qFxcyuxMs31HoVWafH9YB-" 2>/dev/null
    if [ -s "public/images/products/slats-rattan_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/slats-rattan_4.jpg" ]; then
  curl -sL -o "public/images/products/slats-rattan_4.jpg" "https://drive.google.com/uc?export=download&id=1ypXZ42a5zbdJ03CWXCxMrLRVk8tXaJqy" 2>/dev/null
  if [ -s "public/images/products/slats-rattan_4.jpg" ] && file "public/images/products/slats-rattan_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/slats-rattan_4.jpg"
    curl -sL -o "public/images/products/slats-rattan_4.jpg" "https://lh3.googleusercontent.com/d/1ypXZ42a5zbdJ03CWXCxMrLRVk8tXaJqy" 2>/dev/null
    if [ -s "public/images/products/slats-rattan_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/stickley_1.jpg" ]; then
  curl -sL -o "public/images/products/stickley_1.jpg" "https://drive.google.com/uc?export=download&id=1KWihA7WfgxSIXjapwLFfEUbOceITRHvC" 2>/dev/null
  if [ -s "public/images/products/stickley_1.jpg" ] && file "public/images/products/stickley_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/stickley_1.jpg"
    curl -sL -o "public/images/products/stickley_1.jpg" "https://lh3.googleusercontent.com/d/1KWihA7WfgxSIXjapwLFfEUbOceITRHvC" 2>/dev/null
    if [ -s "public/images/products/stickley_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/stickley_2.jpg" ]; then
  curl -sL -o "public/images/products/stickley_2.jpg" "https://drive.google.com/uc?export=download&id=1JxrUFLzDzZmgVvO49MrJ4dDihK9N9dfx" 2>/dev/null
  if [ -s "public/images/products/stickley_2.jpg" ] && file "public/images/products/stickley_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/stickley_2.jpg"
    curl -sL -o "public/images/products/stickley_2.jpg" "https://lh3.googleusercontent.com/d/1JxrUFLzDzZmgVvO49MrJ4dDihK9N9dfx" 2>/dev/null
    if [ -s "public/images/products/stickley_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/stickley_3.jpg" ]; then
  curl -sL -o "public/images/products/stickley_3.jpg" "https://drive.google.com/uc?export=download&id=1deBqprXQtdfca2Ru3r2i0U4U6B87AMjc" 2>/dev/null
  if [ -s "public/images/products/stickley_3.jpg" ] && file "public/images/products/stickley_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/stickley_3.jpg"
    curl -sL -o "public/images/products/stickley_3.jpg" "https://lh3.googleusercontent.com/d/1deBqprXQtdfca2Ru3r2i0U4U6B87AMjc" 2>/dev/null
    if [ -s "public/images/products/stickley_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/stickley_4.jpg" ]; then
  curl -sL -o "public/images/products/stickley_4.jpg" "https://drive.google.com/uc?export=download&id=1SUlpOngSHnPiQf0TaygqZVoiZ3PqrfOV" 2>/dev/null
  if [ -s "public/images/products/stickley_4.jpg" ] && file "public/images/products/stickley_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/stickley_4.jpg"
    curl -sL -o "public/images/products/stickley_4.jpg" "https://lh3.googleusercontent.com/d/1SUlpOngSHnPiQf0TaygqZVoiZ3PqrfOV" 2>/dev/null
    if [ -s "public/images/products/stickley_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sun_1.jpg" ]; then
  curl -sL -o "public/images/products/sun_1.jpg" "https://drive.google.com/uc?export=download&id=1i6gKUjPFQQas0ZQZRJ51k30_KmtwthoK" 2>/dev/null
  if [ -s "public/images/products/sun_1.jpg" ] && file "public/images/products/sun_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sun_1.jpg"
    curl -sL -o "public/images/products/sun_1.jpg" "https://lh3.googleusercontent.com/d/1i6gKUjPFQQas0ZQZRJ51k30_KmtwthoK" 2>/dev/null
    if [ -s "public/images/products/sun_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sun_2.jpg" ]; then
  curl -sL -o "public/images/products/sun_2.jpg" "https://drive.google.com/uc?export=download&id=1Yj8vPeFlCf97B_9Sm4wPeI8cS_sepXIf" 2>/dev/null
  if [ -s "public/images/products/sun_2.jpg" ] && file "public/images/products/sun_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sun_2.jpg"
    curl -sL -o "public/images/products/sun_2.jpg" "https://lh3.googleusercontent.com/d/1Yj8vPeFlCf97B_9Sm4wPeI8cS_sepXIf" 2>/dev/null
    if [ -s "public/images/products/sun_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sun_3.jpg" ]; then
  curl -sL -o "public/images/products/sun_3.jpg" "https://drive.google.com/uc?export=download&id=1RssRjLZi6zMibMx8AGwb6AOJXJABOyvW" 2>/dev/null
  if [ -s "public/images/products/sun_3.jpg" ] && file "public/images/products/sun_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sun_3.jpg"
    curl -sL -o "public/images/products/sun_3.jpg" "https://lh3.googleusercontent.com/d/1RssRjLZi6zMibMx8AGwb6AOJXJABOyvW" 2>/dev/null
    if [ -s "public/images/products/sun_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sun_4.jpg" ]; then
  curl -sL -o "public/images/products/sun_4.jpg" "https://drive.google.com/uc?export=download&id=1vBVzbwBcwl3hZw44oN2ONA0FcBvrF7Z7" 2>/dev/null
  if [ -s "public/images/products/sun_4.jpg" ] && file "public/images/products/sun_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sun_4.jpg"
    curl -sL -o "public/images/products/sun_4.jpg" "https://lh3.googleusercontent.com/d/1vBVzbwBcwl3hZw44oN2ONA0FcBvrF7Z7" 2>/dev/null
    if [ -s "public/images/products/sun_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tolitoli_1.jpg" ]; then
  curl -sL -o "public/images/products/tolitoli_1.jpg" "https://drive.google.com/uc?export=download&id=1gS1eYlwGiy6TOSJ7goo1CsL1NjDw3reR" 2>/dev/null
  if [ -s "public/images/products/tolitoli_1.jpg" ] && file "public/images/products/tolitoli_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tolitoli_1.jpg"
    curl -sL -o "public/images/products/tolitoli_1.jpg" "https://lh3.googleusercontent.com/d/1gS1eYlwGiy6TOSJ7goo1CsL1NjDw3reR" 2>/dev/null
    if [ -s "public/images/products/tolitoli_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tolitoli_2.jpg" ]; then
  curl -sL -o "public/images/products/tolitoli_2.jpg" "https://drive.google.com/uc?export=download&id=1rGc8_l-MLmOIW8Mq4gniSUcKVVsOP9uQ" 2>/dev/null
  if [ -s "public/images/products/tolitoli_2.jpg" ] && file "public/images/products/tolitoli_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tolitoli_2.jpg"
    curl -sL -o "public/images/products/tolitoli_2.jpg" "https://lh3.googleusercontent.com/d/1rGc8_l-MLmOIW8Mq4gniSUcKVVsOP9uQ" 2>/dev/null
    if [ -s "public/images/products/tolitoli_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tolitoli_3.jpg" ]; then
  curl -sL -o "public/images/products/tolitoli_3.jpg" "https://drive.google.com/uc?export=download&id=1SMPgl2P7dlOcR-HZNrD_KVzc5qmTVDTv" 2>/dev/null
  if [ -s "public/images/products/tolitoli_3.jpg" ] && file "public/images/products/tolitoli_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tolitoli_3.jpg"
    curl -sL -o "public/images/products/tolitoli_3.jpg" "https://lh3.googleusercontent.com/d/1SMPgl2P7dlOcR-HZNrD_KVzc5qmTVDTv" 2>/dev/null
    if [ -s "public/images/products/tolitoli_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tolitoli_4.jpg" ]; then
  curl -sL -o "public/images/products/tolitoli_4.jpg" "https://drive.google.com/uc?export=download&id=1Tl1K10w9iWmoldJalwCQf1ZxxbmLebnK" 2>/dev/null
  if [ -s "public/images/products/tolitoli_4.jpg" ] && file "public/images/products/tolitoli_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tolitoli_4.jpg"
    curl -sL -o "public/images/products/tolitoli_4.jpg" "https://lh3.googleusercontent.com/d/1Tl1K10w9iWmoldJalwCQf1ZxxbmLebnK" 2>/dev/null
    if [ -s "public/images/products/tolitoli_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/uluwatu_1.jpg" ]; then
  curl -sL -o "public/images/products/uluwatu_1.jpg" "https://drive.google.com/uc?export=download&id=1bqG0Z_-crGHeJUXgrle1KWnbnMIOISOX" 2>/dev/null
  if [ -s "public/images/products/uluwatu_1.jpg" ] && file "public/images/products/uluwatu_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/uluwatu_1.jpg"
    curl -sL -o "public/images/products/uluwatu_1.jpg" "https://lh3.googleusercontent.com/d/1bqG0Z_-crGHeJUXgrle1KWnbnMIOISOX" 2>/dev/null
    if [ -s "public/images/products/uluwatu_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/uluwatu_2.jpg" ]; then
  curl -sL -o "public/images/products/uluwatu_2.jpg" "https://drive.google.com/uc?export=download&id=1wljnlFMgGJ7JhWeDnYVHrs0Z6RiQLNhT" 2>/dev/null
  if [ -s "public/images/products/uluwatu_2.jpg" ] && file "public/images/products/uluwatu_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/uluwatu_2.jpg"
    curl -sL -o "public/images/products/uluwatu_2.jpg" "https://lh3.googleusercontent.com/d/1wljnlFMgGJ7JhWeDnYVHrs0Z6RiQLNhT" 2>/dev/null
    if [ -s "public/images/products/uluwatu_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/uluwatu_3.jpg" ]; then
  curl -sL -o "public/images/products/uluwatu_3.jpg" "https://drive.google.com/uc?export=download&id=19KLkEqMq-l84xiUbYStEaIkXHxr_ocmc" 2>/dev/null
  if [ -s "public/images/products/uluwatu_3.jpg" ] && file "public/images/products/uluwatu_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/uluwatu_3.jpg"
    curl -sL -o "public/images/products/uluwatu_3.jpg" "https://lh3.googleusercontent.com/d/19KLkEqMq-l84xiUbYStEaIkXHxr_ocmc" 2>/dev/null
    if [ -s "public/images/products/uluwatu_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zig-zag-100_1.jpg" ]; then
  curl -sL -o "public/images/products/zig-zag-100_1.jpg" "https://drive.google.com/uc?export=download&id=1ItFM5xchfgM6HCkk4gQY7g6-EtY7rm85" 2>/dev/null
  if [ -s "public/images/products/zig-zag-100_1.jpg" ] && file "public/images/products/zig-zag-100_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zig-zag-100_1.jpg"
    curl -sL -o "public/images/products/zig-zag-100_1.jpg" "https://lh3.googleusercontent.com/d/1ItFM5xchfgM6HCkk4gQY7g6-EtY7rm85" 2>/dev/null
    if [ -s "public/images/products/zig-zag-100_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zig-zag-100_2.jpg" ]; then
  curl -sL -o "public/images/products/zig-zag-100_2.jpg" "https://drive.google.com/uc?export=download&id=1jCurcyKJWHjPrvLPSqprnrk-nEWGJJTH" 2>/dev/null
  if [ -s "public/images/products/zig-zag-100_2.jpg" ] && file "public/images/products/zig-zag-100_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zig-zag-100_2.jpg"
    curl -sL -o "public/images/products/zig-zag-100_2.jpg" "https://lh3.googleusercontent.com/d/1jCurcyKJWHjPrvLPSqprnrk-nEWGJJTH" 2>/dev/null
    if [ -s "public/images/products/zig-zag-100_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zig-zag-100_3.jpg" ]; then
  curl -sL -o "public/images/products/zig-zag-100_3.jpg" "https://drive.google.com/uc?export=download&id=1qPOVn85jh50EbcpOHNkzs3u3Ynpuc9zk" 2>/dev/null
  if [ -s "public/images/products/zig-zag-100_3.jpg" ] && file "public/images/products/zig-zag-100_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zig-zag-100_3.jpg"
    curl -sL -o "public/images/products/zig-zag-100_3.jpg" "https://lh3.googleusercontent.com/d/1qPOVn85jh50EbcpOHNkzs3u3Ynpuc9zk" 2>/dev/null
    if [ -s "public/images/products/zig-zag-100_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zig-zag-100_4.jpg" ]; then
  curl -sL -o "public/images/products/zig-zag-100_4.jpg" "https://drive.google.com/uc?export=download&id=1DGxsjBPHnIqvbZpUUHBsUdFHMtVuRCcG" 2>/dev/null
  if [ -s "public/images/products/zig-zag-100_4.jpg" ] && file "public/images/products/zig-zag-100_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zig-zag-100_4.jpg"
    curl -sL -o "public/images/products/zig-zag-100_4.jpg" "https://lh3.googleusercontent.com/d/1DGxsjBPHnIqvbZpUUHBsUdFHMtVuRCcG" 2>/dev/null
    if [ -s "public/images/products/zig-zag-100_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag_1.jpg" ]; then
  curl -sL -o "public/images/products/zigzag_1.jpg" "https://drive.google.com/uc?export=download&id=1kSYK7_i365aD9kB0szMpl_FuU5USw9oR" 2>/dev/null
  if [ -s "public/images/products/zigzag_1.jpg" ] && file "public/images/products/zigzag_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag_1.jpg"
    curl -sL -o "public/images/products/zigzag_1.jpg" "https://lh3.googleusercontent.com/d/1kSYK7_i365aD9kB0szMpl_FuU5USw9oR" 2>/dev/null
    if [ -s "public/images/products/zigzag_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag_2.jpg" ]; then
  curl -sL -o "public/images/products/zigzag_2.jpg" "https://drive.google.com/uc?export=download&id=1CZotuu5wGVa49pN-1EnBsbhLSCNVWvHs" 2>/dev/null
  if [ -s "public/images/products/zigzag_2.jpg" ] && file "public/images/products/zigzag_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag_2.jpg"
    curl -sL -o "public/images/products/zigzag_2.jpg" "https://lh3.googleusercontent.com/d/1CZotuu5wGVa49pN-1EnBsbhLSCNVWvHs" 2>/dev/null
    if [ -s "public/images/products/zigzag_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag_3.jpg" ]; then
  curl -sL -o "public/images/products/zigzag_3.jpg" "https://drive.google.com/uc?export=download&id=1uSsSNX75LF7J-2Ag36MvXXW_Wp3wTW-6" 2>/dev/null
  if [ -s "public/images/products/zigzag_3.jpg" ] && file "public/images/products/zigzag_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag_3.jpg"
    curl -sL -o "public/images/products/zigzag_3.jpg" "https://lh3.googleusercontent.com/d/1uSsSNX75LF7J-2Ag36MvXXW_Wp3wTW-6" 2>/dev/null
    if [ -s "public/images/products/zigzag_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag_4.jpg" ]; then
  curl -sL -o "public/images/products/zigzag_4.jpg" "https://drive.google.com/uc?export=download&id=126hPHzTozEMXC4uRev4C_mVjFVWUr8db" 2>/dev/null
  if [ -s "public/images/products/zigzag_4.jpg" ] && file "public/images/products/zigzag_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag_4.jpg"
    curl -sL -o "public/images/products/zigzag_4.jpg" "https://lh3.googleusercontent.com/d/126hPHzTozEMXC4uRev4C_mVjFVWUr8db" 2>/dev/null
    if [ -s "public/images/products/zigzag_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag-3-tiroirs_1.jpg" ]; then
  curl -sL -o "public/images/products/zigzag-3-tiroirs_1.jpg" "https://drive.google.com/uc?export=download&id=1_X1ArrQMM1U2Y-S2plc19KZuky_lsUOL" 2>/dev/null
  if [ -s "public/images/products/zigzag-3-tiroirs_1.jpg" ] && file "public/images/products/zigzag-3-tiroirs_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag-3-tiroirs_1.jpg"
    curl -sL -o "public/images/products/zigzag-3-tiroirs_1.jpg" "https://lh3.googleusercontent.com/d/1_X1ArrQMM1U2Y-S2plc19KZuky_lsUOL" 2>/dev/null
    if [ -s "public/images/products/zigzag-3-tiroirs_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag-3-tiroirs_2.jpg" ]; then
  curl -sL -o "public/images/products/zigzag-3-tiroirs_2.jpg" "https://drive.google.com/uc?export=download&id=1Xz_EbVfnw4KUH_GK0uNn7DxA4OgqacVq" 2>/dev/null
  if [ -s "public/images/products/zigzag-3-tiroirs_2.jpg" ] && file "public/images/products/zigzag-3-tiroirs_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag-3-tiroirs_2.jpg"
    curl -sL -o "public/images/products/zigzag-3-tiroirs_2.jpg" "https://lh3.googleusercontent.com/d/1Xz_EbVfnw4KUH_GK0uNn7DxA4OgqacVq" 2>/dev/null
    if [ -s "public/images/products/zigzag-3-tiroirs_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag-3-tiroirs_3.jpg" ]; then
  curl -sL -o "public/images/products/zigzag-3-tiroirs_3.jpg" "https://drive.google.com/uc?export=download&id=1WjwR63Mua5eeyAlR3Tkujhxydl-fxC8y" 2>/dev/null
  if [ -s "public/images/products/zigzag-3-tiroirs_3.jpg" ] && file "public/images/products/zigzag-3-tiroirs_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag-3-tiroirs_3.jpg"
    curl -sL -o "public/images/products/zigzag-3-tiroirs_3.jpg" "https://lh3.googleusercontent.com/d/1WjwR63Mua5eeyAlR3Tkujhxydl-fxC8y" 2>/dev/null
    if [ -s "public/images/products/zigzag-3-tiroirs_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/zigzag-3-tiroirs_4.jpg" ]; then
  curl -sL -o "public/images/products/zigzag-3-tiroirs_4.jpg" "https://drive.google.com/uc?export=download&id=1xTpX1vL4KVUuKqOt4yZIxfTpfW_RZ2Ml" 2>/dev/null
  if [ -s "public/images/products/zigzag-3-tiroirs_4.jpg" ] && file "public/images/products/zigzag-3-tiroirs_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/zigzag-3-tiroirs_4.jpg"
    curl -sL -o "public/images/products/zigzag-3-tiroirs_4.jpg" "https://lh3.googleusercontent.com/d/1xTpX1vL4KVUuKqOt4yZIxfTpfW_RZ2Ml" 2>/dev/null
    if [ -s "public/images/products/zigzag-3-tiroirs_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/evo_1.jpg" ]; then
  curl -sL -o "public/images/products/evo_1.jpg" "https://drive.google.com/uc?export=download&id=1Wc31tfUM7bmsMcmiYWewoD83ZXgnhsuh" 2>/dev/null
  if [ -s "public/images/products/evo_1.jpg" ] && file "public/images/products/evo_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/evo_1.jpg"
    curl -sL -o "public/images/products/evo_1.jpg" "https://lh3.googleusercontent.com/d/1Wc31tfUM7bmsMcmiYWewoD83ZXgnhsuh" 2>/dev/null
    if [ -s "public/images/products/evo_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/evo_2.jpg" ]; then
  curl -sL -o "public/images/products/evo_2.jpg" "https://drive.google.com/uc?export=download&id=1-V3_Dt5nENVhMM84yNvY2bCGdPLw2-Cj" 2>/dev/null
  if [ -s "public/images/products/evo_2.jpg" ] && file "public/images/products/evo_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/evo_2.jpg"
    curl -sL -o "public/images/products/evo_2.jpg" "https://lh3.googleusercontent.com/d/1-V3_Dt5nENVhMM84yNvY2bCGdPLw2-Cj" 2>/dev/null
    if [ -s "public/images/products/evo_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/evo_3.jpg" ]; then
  curl -sL -o "public/images/products/evo_3.jpg" "https://drive.google.com/uc?export=download&id=1HTSNHu81u57RgVArN6hUFy-j6fXcLems" 2>/dev/null
  if [ -s "public/images/products/evo_3.jpg" ] && file "public/images/products/evo_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/evo_3.jpg"
    curl -sL -o "public/images/products/evo_3.jpg" "https://lh3.googleusercontent.com/d/1HTSNHu81u57RgVArN6hUFy-j6fXcLems" 2>/dev/null
    if [ -s "public/images/products/evo_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/evo_4.jpg" ]; then
  curl -sL -o "public/images/products/evo_4.jpg" "https://drive.google.com/uc?export=download&id=1AeDc_U7gdxIYfiMLXMwtjBLwmPGtHf_L" 2>/dev/null
  if [ -s "public/images/products/evo_4.jpg" ] && file "public/images/products/evo_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/evo_4.jpg"
    curl -sL -o "public/images/products/evo_4.jpg" "https://lh3.googleusercontent.com/d/1AeDc_U7gdxIYfiMLXMwtjBLwmPGtHf_L" 2>/dev/null
    if [ -s "public/images/products/evo_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-90_1.jpg" ]; then
  curl -sL -o "public/images/products/padoda-90_1.jpg" "https://drive.google.com/uc?export=download&id=13nw3p53dKv_w9yjIN4FvnxVBWXFLoK6N" 2>/dev/null
  if [ -s "public/images/products/padoda-90_1.jpg" ] && file "public/images/products/padoda-90_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-90_1.jpg"
    curl -sL -o "public/images/products/padoda-90_1.jpg" "https://lh3.googleusercontent.com/d/13nw3p53dKv_w9yjIN4FvnxVBWXFLoK6N" 2>/dev/null
    if [ -s "public/images/products/padoda-90_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-90_2.jpg" ]; then
  curl -sL -o "public/images/products/padoda-90_2.jpg" "https://drive.google.com/uc?export=download&id=1sqOfCc9J40nMudgaHNzfgu4rNdKkA04O" 2>/dev/null
  if [ -s "public/images/products/padoda-90_2.jpg" ] && file "public/images/products/padoda-90_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-90_2.jpg"
    curl -sL -o "public/images/products/padoda-90_2.jpg" "https://lh3.googleusercontent.com/d/1sqOfCc9J40nMudgaHNzfgu4rNdKkA04O" 2>/dev/null
    if [ -s "public/images/products/padoda-90_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-90_3.jpg" ]; then
  curl -sL -o "public/images/products/padoda-90_3.jpg" "https://drive.google.com/uc?export=download&id=1JI6YhkZDUsorvnnxUOdF6rbQz9DHgcXl" 2>/dev/null
  if [ -s "public/images/products/padoda-90_3.jpg" ] && file "public/images/products/padoda-90_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-90_3.jpg"
    curl -sL -o "public/images/products/padoda-90_3.jpg" "https://lh3.googleusercontent.com/d/1JI6YhkZDUsorvnnxUOdF6rbQz9DHgcXl" 2>/dev/null
    if [ -s "public/images/products/padoda-90_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-90_4.jpg" ]; then
  curl -sL -o "public/images/products/padoda-90_4.jpg" "https://drive.google.com/uc?export=download&id=1tYtMvAkZNpnGjbxWPdYgcnk35gwRQhIV" 2>/dev/null
  if [ -s "public/images/products/padoda-90_4.jpg" ] && file "public/images/products/padoda-90_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-90_4.jpg"
    curl -sL -o "public/images/products/padoda-90_4.jpg" "https://lh3.googleusercontent.com/d/1tYtMvAkZNpnGjbxWPdYgcnk35gwRQhIV" 2>/dev/null
    if [ -s "public/images/products/padoda-90_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-150_1.jpg" ]; then
  curl -sL -o "public/images/products/padoda-150_1.jpg" "https://drive.google.com/uc?export=download&id=1fEFY7tidGDiNW6zZInuf0hP4Aa_y6-p_" 2>/dev/null
  if [ -s "public/images/products/padoda-150_1.jpg" ] && file "public/images/products/padoda-150_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-150_1.jpg"
    curl -sL -o "public/images/products/padoda-150_1.jpg" "https://lh3.googleusercontent.com/d/1fEFY7tidGDiNW6zZInuf0hP4Aa_y6-p_" 2>/dev/null
    if [ -s "public/images/products/padoda-150_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-150_2.jpg" ]; then
  curl -sL -o "public/images/products/padoda-150_2.jpg" "https://drive.google.com/uc?export=download&id=1df2eMC-lS7YYNhTu_G5PWTBh_jO_IFoP" 2>/dev/null
  if [ -s "public/images/products/padoda-150_2.jpg" ] && file "public/images/products/padoda-150_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-150_2.jpg"
    curl -sL -o "public/images/products/padoda-150_2.jpg" "https://lh3.googleusercontent.com/d/1df2eMC-lS7YYNhTu_G5PWTBh_jO_IFoP" 2>/dev/null
    if [ -s "public/images/products/padoda-150_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-150_3.jpg" ]; then
  curl -sL -o "public/images/products/padoda-150_3.jpg" "https://drive.google.com/uc?export=download&id=1GLO_zAFYXtL3XZr_-YjSREfjub2g2EQm" 2>/dev/null
  if [ -s "public/images/products/padoda-150_3.jpg" ] && file "public/images/products/padoda-150_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-150_3.jpg"
    curl -sL -o "public/images/products/padoda-150_3.jpg" "https://lh3.googleusercontent.com/d/1GLO_zAFYXtL3XZr_-YjSREfjub2g2EQm" 2>/dev/null
    if [ -s "public/images/products/padoda-150_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padoda-150_4.jpg" ]; then
  curl -sL -o "public/images/products/padoda-150_4.jpg" "https://drive.google.com/uc?export=download&id=1duO-xaWxqpDPcsValLNflYTPbzrhEHel" 2>/dev/null
  if [ -s "public/images/products/padoda-150_4.jpg" ] && file "public/images/products/padoda-150_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padoda-150_4.jpg"
    curl -sL -o "public/images/products/padoda-150_4.jpg" "https://lh3.googleusercontent.com/d/1duO-xaWxqpDPcsValLNflYTPbzrhEHel" 2>/dev/null
    if [ -s "public/images/products/padoda-150_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-laura-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/colonne-laura-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=1GWJLs1-Q2wtEdR_MjGpPfYcq5S5G4Jl_" 2>/dev/null
  if [ -s "public/images/products/colonne-laura-krepyak_1.jpg" ] && file "public/images/products/colonne-laura-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-laura-krepyak_1.jpg"
    curl -sL -o "public/images/products/colonne-laura-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/1GWJLs1-Q2wtEdR_MjGpPfYcq5S5G4Jl_" 2>/dev/null
    if [ -s "public/images/products/colonne-laura-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-laura-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/colonne-laura-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=1I82YC_HhpAmmPodMaKa6_c2RE95eFKH-" 2>/dev/null
  if [ -s "public/images/products/colonne-laura-krepyak_2.jpg" ] && file "public/images/products/colonne-laura-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-laura-krepyak_2.jpg"
    curl -sL -o "public/images/products/colonne-laura-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/1I82YC_HhpAmmPodMaKa6_c2RE95eFKH-" 2>/dev/null
    if [ -s "public/images/products/colonne-laura-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-laura-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/colonne-laura-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=1Wqwr4CNar-Xny5snkEtoiZlVMIKoysom" 2>/dev/null
  if [ -s "public/images/products/colonne-laura-krepyak_3.jpg" ] && file "public/images/products/colonne-laura-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-laura-krepyak_3.jpg"
    curl -sL -o "public/images/products/colonne-laura-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/1Wqwr4CNar-Xny5snkEtoiZlVMIKoysom" 2>/dev/null
    if [ -s "public/images/products/colonne-laura-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-laura-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/colonne-laura-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1U8Kh9rt4rKqKC1BSKU8BeSUijlHZRDy2" 2>/dev/null
  if [ -s "public/images/products/colonne-laura-krepyak_4.jpg" ] && file "public/images/products/colonne-laura-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-laura-krepyak_4.jpg"
    curl -sL -o "public/images/products/colonne-laura-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1U8Kh9rt4rKqKC1BSKU8BeSUijlHZRDy2" 2>/dev/null
    if [ -s "public/images/products/colonne-laura-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-slats_1.jpg" ]; then
  curl -sL -o "public/images/products/colonne-slats_1.jpg" "https://drive.google.com/uc?export=download&id=1bUDfpmS5D38ytJLF0X7oJLLxgihaB5Bj" 2>/dev/null
  if [ -s "public/images/products/colonne-slats_1.jpg" ] && file "public/images/products/colonne-slats_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-slats_1.jpg"
    curl -sL -o "public/images/products/colonne-slats_1.jpg" "https://lh3.googleusercontent.com/d/1bUDfpmS5D38ytJLF0X7oJLLxgihaB5Bj" 2>/dev/null
    if [ -s "public/images/products/colonne-slats_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-slats_2.jpg" ]; then
  curl -sL -o "public/images/products/colonne-slats_2.jpg" "https://drive.google.com/uc?export=download&id=1fabe81LdboxZe251zygzRlmhTuWbow9G" 2>/dev/null
  if [ -s "public/images/products/colonne-slats_2.jpg" ] && file "public/images/products/colonne-slats_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-slats_2.jpg"
    curl -sL -o "public/images/products/colonne-slats_2.jpg" "https://lh3.googleusercontent.com/d/1fabe81LdboxZe251zygzRlmhTuWbow9G" 2>/dev/null
    if [ -s "public/images/products/colonne-slats_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-slats_3.jpg" ]; then
  curl -sL -o "public/images/products/colonne-slats_3.jpg" "https://drive.google.com/uc?export=download&id=1tKpTsvuVjvOrNcwuECzYI17j2F7ARqHW" 2>/dev/null
  if [ -s "public/images/products/colonne-slats_3.jpg" ] && file "public/images/products/colonne-slats_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-slats_3.jpg"
    curl -sL -o "public/images/products/colonne-slats_3.jpg" "https://lh3.googleusercontent.com/d/1tKpTsvuVjvOrNcwuECzYI17j2F7ARqHW" 2>/dev/null
    if [ -s "public/images/products/colonne-slats_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-slats_4.jpg" ]; then
  curl -sL -o "public/images/products/colonne-slats_4.jpg" "https://drive.google.com/uc?export=download&id=1t-GGGsQ4SpTGuB5Y65nUrbikXwa0ZNWy" 2>/dev/null
  if [ -s "public/images/products/colonne-slats_4.jpg" ] && file "public/images/products/colonne-slats_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-slats_4.jpg"
    curl -sL -o "public/images/products/colonne-slats_4.jpg" "https://lh3.googleusercontent.com/d/1t-GGGsQ4SpTGuB5Y65nUrbikXwa0ZNWy" 2>/dev/null
    if [ -s "public/images/products/colonne-slats_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-minimalis-damier_1.jpg" ]; then
  curl -sL -o "public/images/products/colonne-minimalis-damier_1.jpg" "https://drive.google.com/uc?export=download&id=1DY1kem8BWm9hH2U6aV8likYPy6QCp6QC" 2>/dev/null
  if [ -s "public/images/products/colonne-minimalis-damier_1.jpg" ] && file "public/images/products/colonne-minimalis-damier_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-minimalis-damier_1.jpg"
    curl -sL -o "public/images/products/colonne-minimalis-damier_1.jpg" "https://lh3.googleusercontent.com/d/1DY1kem8BWm9hH2U6aV8likYPy6QCp6QC" 2>/dev/null
    if [ -s "public/images/products/colonne-minimalis-damier_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-minimalis-damier_2.jpg" ]; then
  curl -sL -o "public/images/products/colonne-minimalis-damier_2.jpg" "https://drive.google.com/uc?export=download&id=1wBSqJBhahW3qb7WBr1DNFf7foqtZVV8f" 2>/dev/null
  if [ -s "public/images/products/colonne-minimalis-damier_2.jpg" ] && file "public/images/products/colonne-minimalis-damier_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-minimalis-damier_2.jpg"
    curl -sL -o "public/images/products/colonne-minimalis-damier_2.jpg" "https://lh3.googleusercontent.com/d/1wBSqJBhahW3qb7WBr1DNFf7foqtZVV8f" 2>/dev/null
    if [ -s "public/images/products/colonne-minimalis-damier_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-minimalis-damier_3.jpg" ]; then
  curl -sL -o "public/images/products/colonne-minimalis-damier_3.jpg" "https://drive.google.com/uc?export=download&id=1-GWfI3toHgz8Gc05a0a3WB6_qPRNy0ma" 2>/dev/null
  if [ -s "public/images/products/colonne-minimalis-damier_3.jpg" ] && file "public/images/products/colonne-minimalis-damier_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-minimalis-damier_3.jpg"
    curl -sL -o "public/images/products/colonne-minimalis-damier_3.jpg" "https://lh3.googleusercontent.com/d/1-GWfI3toHgz8Gc05a0a3WB6_qPRNy0ma" 2>/dev/null
    if [ -s "public/images/products/colonne-minimalis-damier_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-minimalis-damier_4.jpg" ]; then
  curl -sL -o "public/images/products/colonne-minimalis-damier_4.jpg" "https://drive.google.com/uc?export=download&id=1IsZBHpBxLOPkHkYnJoy7d5RVSmT9bOw8" 2>/dev/null
  if [ -s "public/images/products/colonne-minimalis-damier_4.jpg" ] && file "public/images/products/colonne-minimalis-damier_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-minimalis-damier_4.jpg"
    curl -sL -o "public/images/products/colonne-minimalis-damier_4.jpg" "https://lh3.googleusercontent.com/d/1IsZBHpBxLOPkHkYnJoy7d5RVSmT9bOw8" 2>/dev/null
    if [ -s "public/images/products/colonne-minimalis-damier_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-evolia-2p_1.jpg" ]; then
  curl -sL -o "public/images/products/colonne-evolia-2p_1.jpg" "https://drive.google.com/uc?export=download&id=1qfCHxNocGga-rm1sgqPfKBP0Jh71Z4rq" 2>/dev/null
  if [ -s "public/images/products/colonne-evolia-2p_1.jpg" ] && file "public/images/products/colonne-evolia-2p_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-evolia-2p_1.jpg"
    curl -sL -o "public/images/products/colonne-evolia-2p_1.jpg" "https://lh3.googleusercontent.com/d/1qfCHxNocGga-rm1sgqPfKBP0Jh71Z4rq" 2>/dev/null
    if [ -s "public/images/products/colonne-evolia-2p_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-evolia-2p_2.jpg" ]; then
  curl -sL -o "public/images/products/colonne-evolia-2p_2.jpg" "https://drive.google.com/uc?export=download&id=1XT7QBowAm4Ojo6U0MYjnpIgytspuoBG7" 2>/dev/null
  if [ -s "public/images/products/colonne-evolia-2p_2.jpg" ] && file "public/images/products/colonne-evolia-2p_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-evolia-2p_2.jpg"
    curl -sL -o "public/images/products/colonne-evolia-2p_2.jpg" "https://lh3.googleusercontent.com/d/1XT7QBowAm4Ojo6U0MYjnpIgytspuoBG7" 2>/dev/null
    if [ -s "public/images/products/colonne-evolia-2p_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-evolia-2p_3.jpg" ]; then
  curl -sL -o "public/images/products/colonne-evolia-2p_3.jpg" "https://drive.google.com/uc?export=download&id=1mpoheWV4JFckgn1TDYFptnPh4IrgAgvz" 2>/dev/null
  if [ -s "public/images/products/colonne-evolia-2p_3.jpg" ] && file "public/images/products/colonne-evolia-2p_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-evolia-2p_3.jpg"
    curl -sL -o "public/images/products/colonne-evolia-2p_3.jpg" "https://lh3.googleusercontent.com/d/1mpoheWV4JFckgn1TDYFptnPh4IrgAgvz" 2>/dev/null
    if [ -s "public/images/products/colonne-evolia-2p_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/colonne-evolia-2p_4.jpg" ]; then
  curl -sL -o "public/images/products/colonne-evolia-2p_4.jpg" "https://drive.google.com/uc?export=download&id=1XA4vHGO5AgSnfxkYs6BEcfSGE1ksD0_D" 2>/dev/null
  if [ -s "public/images/products/colonne-evolia-2p_4.jpg" ] && file "public/images/products/colonne-evolia-2p_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/colonne-evolia-2p_4.jpg"
    curl -sL -o "public/images/products/colonne-evolia-2p_4.jpg" "https://lh3.googleusercontent.com/d/1XA4vHGO5AgSnfxkYs6BEcfSGE1ksD0_D" 2>/dev/null
    if [ -s "public/images/products/colonne-evolia-2p_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tolitoli-petit_1.jpg" ]; then
  curl -sL -o "public/images/products/tolitoli-petit_1.jpg" "https://drive.google.com/uc?export=download&id=1iEpwrc2obAQi2cm1Xj_8aURWm1AWSeq9" 2>/dev/null
  if [ -s "public/images/products/tolitoli-petit_1.jpg" ] && file "public/images/products/tolitoli-petit_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tolitoli-petit_1.jpg"
    curl -sL -o "public/images/products/tolitoli-petit_1.jpg" "https://lh3.googleusercontent.com/d/1iEpwrc2obAQi2cm1Xj_8aURWm1AWSeq9" 2>/dev/null
    if [ -s "public/images/products/tolitoli-petit_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/goa_1.jpg" ]; then
  curl -sL -o "public/images/products/goa_1.jpg" "https://drive.google.com/uc?export=download&id=1SiEi8KIyxA4DRlvR68Obj630HINmgZgO" 2>/dev/null
  if [ -s "public/images/products/goa_1.jpg" ] && file "public/images/products/goa_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/goa_1.jpg"
    curl -sL -o "public/images/products/goa_1.jpg" "https://lh3.googleusercontent.com/d/1SiEi8KIyxA4DRlvR68Obj630HINmgZgO" 2>/dev/null
    if [ -s "public/images/products/goa_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/nusa_1.jpg" ]; then
  curl -sL -o "public/images/products/nusa_1.jpg" "https://drive.google.com/uc?export=download&id=1b98e5IcmCAA5A9Ur4GIvL_n4_8C4fl9-" 2>/dev/null
  if [ -s "public/images/products/nusa_1.jpg" ] && file "public/images/products/nusa_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/nusa_1.jpg"
    curl -sL -o "public/images/products/nusa_1.jpg" "https://lh3.googleusercontent.com/d/1b98e5IcmCAA5A9Ur4GIvL_n4_8C4fl9-" 2>/dev/null
    if [ -s "public/images/products/nusa_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mahira_1.jpg" ]; then
  curl -sL -o "public/images/products/mahira_1.jpg" "https://drive.google.com/uc?export=download&id=1DO1DQBSxa709daNX7ry49RzftfxUuJQd" 2>/dev/null
  if [ -s "public/images/products/mahira_1.jpg" ] && file "public/images/products/mahira_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mahira_1.jpg"
    curl -sL -o "public/images/products/mahira_1.jpg" "https://lh3.googleusercontent.com/d/1DO1DQBSxa709daNX7ry49RzftfxUuJQd" 2>/dev/null
    if [ -s "public/images/products/mahira_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padi_1.jpg" ]; then
  curl -sL -o "public/images/products/padi_1.jpg" "https://drive.google.com/uc?export=download&id=16AsgdyFiKbqf5_yXN0adYKjuporfabfQ" 2>/dev/null
  if [ -s "public/images/products/padi_1.jpg" ] && file "public/images/products/padi_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padi_1.jpg"
    curl -sL -o "public/images/products/padi_1.jpg" "https://lh3.googleusercontent.com/d/16AsgdyFiKbqf5_yXN0adYKjuporfabfQ" 2>/dev/null
    if [ -s "public/images/products/padi_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-zigzag_1.jpg" ]; then
  curl -sL -o "public/images/products/oasis-zigzag_1.jpg" "https://drive.google.com/uc?export=download&id=1eKiYsix0WauBhWxDRGM4oq9y5HSCU_R7" 2>/dev/null
  if [ -s "public/images/products/oasis-zigzag_1.jpg" ] && file "public/images/products/oasis-zigzag_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-zigzag_1.jpg"
    curl -sL -o "public/images/products/oasis-zigzag_1.jpg" "https://lh3.googleusercontent.com/d/1eKiYsix0WauBhWxDRGM4oq9y5HSCU_R7" 2>/dev/null
    if [ -s "public/images/products/oasis-zigzag_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-zigzag_2.jpg" ]; then
  curl -sL -o "public/images/products/oasis-zigzag_2.jpg" "https://drive.google.com/uc?export=download&id=1XEx0aiZ6FWFrLMtNVdq4kqef0UAdHIYl" 2>/dev/null
  if [ -s "public/images/products/oasis-zigzag_2.jpg" ] && file "public/images/products/oasis-zigzag_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-zigzag_2.jpg"
    curl -sL -o "public/images/products/oasis-zigzag_2.jpg" "https://lh3.googleusercontent.com/d/1XEx0aiZ6FWFrLMtNVdq4kqef0UAdHIYl" 2>/dev/null
    if [ -s "public/images/products/oasis-zigzag_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-zigzag_3.jpg" ]; then
  curl -sL -o "public/images/products/oasis-zigzag_3.jpg" "https://drive.google.com/uc?export=download&id=1McsDk_Oy6vrku7hsAkDOWG00kqWlohpb" 2>/dev/null
  if [ -s "public/images/products/oasis-zigzag_3.jpg" ] && file "public/images/products/oasis-zigzag_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-zigzag_3.jpg"
    curl -sL -o "public/images/products/oasis-zigzag_3.jpg" "https://lh3.googleusercontent.com/d/1McsDk_Oy6vrku7hsAkDOWG00kqWlohpb" 2>/dev/null
    if [ -s "public/images/products/oasis-zigzag_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/oasis-zigzag_4.jpg" ]; then
  curl -sL -o "public/images/products/oasis-zigzag_4.jpg" "https://drive.google.com/uc?export=download&id=1Hpu9oT4AEVg-e_uLRiRvV6di6crolVC4" 2>/dev/null
  if [ -s "public/images/products/oasis-zigzag_4.jpg" ] && file "public/images/products/oasis-zigzag_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/oasis-zigzag_4.jpg"
    curl -sL -o "public/images/products/oasis-zigzag_4.jpg" "https://lh3.googleusercontent.com/d/1Hpu9oT4AEVg-e_uLRiRvV6di6crolVC4" 2>/dev/null
    if [ -s "public/images/products/oasis-zigzag_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-1-porte_1.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-1-porte_1.jpg" "https://drive.google.com/uc?export=download&id=1AY8Hk3qAmwbMU9FsKIRkFSgaPBMhbz7U" 2>/dev/null
  if [ -s "public/images/products/ambalong-1-porte_1.jpg" ] && file "public/images/products/ambalong-1-porte_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-1-porte_1.jpg"
    curl -sL -o "public/images/products/ambalong-1-porte_1.jpg" "https://lh3.googleusercontent.com/d/1AY8Hk3qAmwbMU9FsKIRkFSgaPBMhbz7U" 2>/dev/null
    if [ -s "public/images/products/ambalong-1-porte_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-1-porte_2.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-1-porte_2.jpg" "https://drive.google.com/uc?export=download&id=17v-Fq3c3XHa9eTOmXIiz_x2lGJ6sTG8Y" 2>/dev/null
  if [ -s "public/images/products/ambalong-1-porte_2.jpg" ] && file "public/images/products/ambalong-1-porte_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-1-porte_2.jpg"
    curl -sL -o "public/images/products/ambalong-1-porte_2.jpg" "https://lh3.googleusercontent.com/d/17v-Fq3c3XHa9eTOmXIiz_x2lGJ6sTG8Y" 2>/dev/null
    if [ -s "public/images/products/ambalong-1-porte_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-1-porte_3.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-1-porte_3.jpg" "https://drive.google.com/uc?export=download&id=1TSGueeTI8Hvnbr9b-NYylTnYCw8toKgJ" 2>/dev/null
  if [ -s "public/images/products/ambalong-1-porte_3.jpg" ] && file "public/images/products/ambalong-1-porte_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-1-porte_3.jpg"
    curl -sL -o "public/images/products/ambalong-1-porte_3.jpg" "https://lh3.googleusercontent.com/d/1TSGueeTI8Hvnbr9b-NYylTnYCw8toKgJ" 2>/dev/null
    if [ -s "public/images/products/ambalong-1-porte_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-1-porte_4.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-1-porte_4.jpg" "https://drive.google.com/uc?export=download&id=1IZqk_iPdCxkaM4uDRXpU934J_RcI4qSO" 2>/dev/null
  if [ -s "public/images/products/ambalong-1-porte_4.jpg" ] && file "public/images/products/ambalong-1-porte_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-1-porte_4.jpg"
    curl -sL -o "public/images/products/ambalong-1-porte_4.jpg" "https://lh3.googleusercontent.com/d/1IZqk_iPdCxkaM4uDRXpU934J_RcI4qSO" 2>/dev/null
    if [ -s "public/images/products/ambalong-1-porte_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-2-portes_1.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-2-portes_1.jpg" "https://drive.google.com/uc?export=download&id=1v8XPA3Rrm4XAhb_VpQowagHb1sPV-85l" 2>/dev/null
  if [ -s "public/images/products/ambalong-2-portes_1.jpg" ] && file "public/images/products/ambalong-2-portes_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-2-portes_1.jpg"
    curl -sL -o "public/images/products/ambalong-2-portes_1.jpg" "https://lh3.googleusercontent.com/d/1v8XPA3Rrm4XAhb_VpQowagHb1sPV-85l" 2>/dev/null
    if [ -s "public/images/products/ambalong-2-portes_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-2-portes_2.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-2-portes_2.jpg" "https://drive.google.com/uc?export=download&id=1bLYZBbH8wASYrf7h0-DVCBe7MJgo2Gro" 2>/dev/null
  if [ -s "public/images/products/ambalong-2-portes_2.jpg" ] && file "public/images/products/ambalong-2-portes_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-2-portes_2.jpg"
    curl -sL -o "public/images/products/ambalong-2-portes_2.jpg" "https://lh3.googleusercontent.com/d/1bLYZBbH8wASYrf7h0-DVCBe7MJgo2Gro" 2>/dev/null
    if [ -s "public/images/products/ambalong-2-portes_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-2-portes_3.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-2-portes_3.jpg" "https://drive.google.com/uc?export=download&id=1rWhGM7eJ0WNVANHQVSIcSsQ2cDJUwedK" 2>/dev/null
  if [ -s "public/images/products/ambalong-2-portes_3.jpg" ] && file "public/images/products/ambalong-2-portes_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-2-portes_3.jpg"
    curl -sL -o "public/images/products/ambalong-2-portes_3.jpg" "https://lh3.googleusercontent.com/d/1rWhGM7eJ0WNVANHQVSIcSsQ2cDJUwedK" 2>/dev/null
    if [ -s "public/images/products/ambalong-2-portes_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ambalong-2-portes_4.jpg" ]; then
  curl -sL -o "public/images/products/ambalong-2-portes_4.jpg" "https://drive.google.com/uc?export=download&id=1ecyj-JV737EQfGwpF4pE_gzHB-8VWKAI" 2>/dev/null
  if [ -s "public/images/products/ambalong-2-portes_4.jpg" ] && file "public/images/products/ambalong-2-portes_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ambalong-2-portes_4.jpg"
    curl -sL -o "public/images/products/ambalong-2-portes_4.jpg" "https://lh3.googleusercontent.com/d/1ecyj-JV737EQfGwpF4pE_gzHB-8VWKAI" 2>/dev/null
    if [ -s "public/images/products/ambalong-2-portes_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-rivi-ra_1.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-rivi-ra_1.jpg" "https://drive.google.com/uc?export=download&id=12DV8vfAiRhiOIXKLtZpqOMKJC-OeAsnx" 2>/dev/null
  if [ -s "public/images/products/ensemble-rivi-ra_1.jpg" ] && file "public/images/products/ensemble-rivi-ra_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-rivi-ra_1.jpg"
    curl -sL -o "public/images/products/ensemble-rivi-ra_1.jpg" "https://lh3.googleusercontent.com/d/12DV8vfAiRhiOIXKLtZpqOMKJC-OeAsnx" 2>/dev/null
    if [ -s "public/images/products/ensemble-rivi-ra_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-rivi-ra_2.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-rivi-ra_2.jpg" "https://drive.google.com/uc?export=download&id=13CB2i_Gc0Ct5ysq54XI4YZ9l1Dcdg0pQ" 2>/dev/null
  if [ -s "public/images/products/ensemble-rivi-ra_2.jpg" ] && file "public/images/products/ensemble-rivi-ra_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-rivi-ra_2.jpg"
    curl -sL -o "public/images/products/ensemble-rivi-ra_2.jpg" "https://lh3.googleusercontent.com/d/13CB2i_Gc0Ct5ysq54XI4YZ9l1Dcdg0pQ" 2>/dev/null
    if [ -s "public/images/products/ensemble-rivi-ra_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-rivi-ra_3.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-rivi-ra_3.jpg" "https://drive.google.com/uc?export=download&id=13SzYAhWNiFQIRRKc174yrGN6ahSgcLG3" 2>/dev/null
  if [ -s "public/images/products/ensemble-rivi-ra_3.jpg" ] && file "public/images/products/ensemble-rivi-ra_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-rivi-ra_3.jpg"
    curl -sL -o "public/images/products/ensemble-rivi-ra_3.jpg" "https://lh3.googleusercontent.com/d/13SzYAhWNiFQIRRKc174yrGN6ahSgcLG3" 2>/dev/null
    if [ -s "public/images/products/ensemble-rivi-ra_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/ensemble-rivi-ra_4.jpg" ]; then
  curl -sL -o "public/images/products/ensemble-rivi-ra_4.jpg" "https://drive.google.com/uc?export=download&id=1IzqIRHi7DNPZRBCCHXob1LXExzWqU_4G" 2>/dev/null
  if [ -s "public/images/products/ensemble-rivi-ra_4.jpg" ] && file "public/images/products/ensemble-rivi-ra_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/ensemble-rivi-ra_4.jpg"
    curl -sL -o "public/images/products/ensemble-rivi-ra_4.jpg" "https://lh3.googleusercontent.com/d/1IzqIRHi7DNPZRBCCHXob1LXExzWqU_4G" 2>/dev/null
    if [ -s "public/images/products/ensemble-rivi-ra_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gaya_1.jpg" ]; then
  curl -sL -o "public/images/products/gaya_1.jpg" "https://drive.google.com/uc?export=download&id=1ZUyMUyMSAI6C1EfNHaCe2q_vz7x3d6_W" 2>/dev/null
  if [ -s "public/images/products/gaya_1.jpg" ] && file "public/images/products/gaya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gaya_1.jpg"
    curl -sL -o "public/images/products/gaya_1.jpg" "https://lh3.googleusercontent.com/d/1ZUyMUyMSAI6C1EfNHaCe2q_vz7x3d6_W" 2>/dev/null
    if [ -s "public/images/products/gaya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gaya_2.jpg" ]; then
  curl -sL -o "public/images/products/gaya_2.jpg" "https://drive.google.com/uc?export=download&id=1Xxj4NuxUIzEElUcv87hMoHsKbXwfh8sn" 2>/dev/null
  if [ -s "public/images/products/gaya_2.jpg" ] && file "public/images/products/gaya_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gaya_2.jpg"
    curl -sL -o "public/images/products/gaya_2.jpg" "https://lh3.googleusercontent.com/d/1Xxj4NuxUIzEElUcv87hMoHsKbXwfh8sn" 2>/dev/null
    if [ -s "public/images/products/gaya_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gaya_3.jpg" ]; then
  curl -sL -o "public/images/products/gaya_3.jpg" "https://drive.google.com/uc?export=download&id=1tUD_VYReAg6jMtyK6QNQaNXJoMrZMiH-" 2>/dev/null
  if [ -s "public/images/products/gaya_3.jpg" ] && file "public/images/products/gaya_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gaya_3.jpg"
    curl -sL -o "public/images/products/gaya_3.jpg" "https://lh3.googleusercontent.com/d/1tUD_VYReAg6jMtyK6QNQaNXJoMrZMiH-" 2>/dev/null
    if [ -s "public/images/products/gaya_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/gaya_4.jpg" ]; then
  curl -sL -o "public/images/products/gaya_4.jpg" "https://drive.google.com/uc?export=download&id=18w4sAWReLSUblPsEHqWOlHm9O6-CrqnR" 2>/dev/null
  if [ -s "public/images/products/gaya_4.jpg" ] && file "public/images/products/gaya_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/gaya_4.jpg"
    curl -sL -o "public/images/products/gaya_4.jpg" "https://lh3.googleusercontent.com/d/18w4sAWReLSUblPsEHqWOlHm9O6-CrqnR" 2>/dev/null
    if [ -s "public/images/products/gaya_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-brut_1.jpg" ]; then
  curl -sL -o "public/images/products/juliana-brut_1.jpg" "https://drive.google.com/uc?export=download&id=1o7vm9IesMS3Ij0lSPwJ2rkE3dvMgXm7U" 2>/dev/null
  if [ -s "public/images/products/juliana-brut_1.jpg" ] && file "public/images/products/juliana-brut_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-brut_1.jpg"
    curl -sL -o "public/images/products/juliana-brut_1.jpg" "https://lh3.googleusercontent.com/d/1o7vm9IesMS3Ij0lSPwJ2rkE3dvMgXm7U" 2>/dev/null
    if [ -s "public/images/products/juliana-brut_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-brut_2.jpg" ]; then
  curl -sL -o "public/images/products/juliana-brut_2.jpg" "https://drive.google.com/uc?export=download&id=1o6MuHAyRv7ARSTX2Why7_iOhRwFoe5tZ" 2>/dev/null
  if [ -s "public/images/products/juliana-brut_2.jpg" ] && file "public/images/products/juliana-brut_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-brut_2.jpg"
    curl -sL -o "public/images/products/juliana-brut_2.jpg" "https://lh3.googleusercontent.com/d/1o6MuHAyRv7ARSTX2Why7_iOhRwFoe5tZ" 2>/dev/null
    if [ -s "public/images/products/juliana-brut_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-brut_3.jpg" ]; then
  curl -sL -o "public/images/products/juliana-brut_3.jpg" "https://drive.google.com/uc?export=download&id=1DUUe6DYwz2epv3XvaoXzj3I5-tj-Mltu" 2>/dev/null
  if [ -s "public/images/products/juliana-brut_3.jpg" ] && file "public/images/products/juliana-brut_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-brut_3.jpg"
    curl -sL -o "public/images/products/juliana-brut_3.jpg" "https://lh3.googleusercontent.com/d/1DUUe6DYwz2epv3XvaoXzj3I5-tj-Mltu" 2>/dev/null
    if [ -s "public/images/products/juliana-brut_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-brut_4.jpg" ]; then
  curl -sL -o "public/images/products/juliana-brut_4.jpg" "https://drive.google.com/uc?export=download&id=1m2ufZdPsKe95wYAbZQzcILJPx8zZtOD5" 2>/dev/null
  if [ -s "public/images/products/juliana-brut_4.jpg" ] && file "public/images/products/juliana-brut_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-brut_4.jpg"
    curl -sL -o "public/images/products/juliana-brut_4.jpg" "https://lh3.googleusercontent.com/d/1m2ufZdPsKe95wYAbZQzcILJPx8zZtOD5" 2>/dev/null
    if [ -s "public/images/products/juliana-brut_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-c-rus-blanc_1.jpg" ]; then
  curl -sL -o "public/images/products/juliana-c-rus-blanc_1.jpg" "https://drive.google.com/uc?export=download&id=1n2gBY3g_5NL4DDNG6OOS16JKFdzni8Gs" 2>/dev/null
  if [ -s "public/images/products/juliana-c-rus-blanc_1.jpg" ] && file "public/images/products/juliana-c-rus-blanc_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-c-rus-blanc_1.jpg"
    curl -sL -o "public/images/products/juliana-c-rus-blanc_1.jpg" "https://lh3.googleusercontent.com/d/1n2gBY3g_5NL4DDNG6OOS16JKFdzni8Gs" 2>/dev/null
    if [ -s "public/images/products/juliana-c-rus-blanc_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-c-rus-blanc_2.jpg" ]; then
  curl -sL -o "public/images/products/juliana-c-rus-blanc_2.jpg" "https://drive.google.com/uc?export=download&id=1F3BtCzxqAoguzT1nEfUgOaGec0WJdnEI" 2>/dev/null
  if [ -s "public/images/products/juliana-c-rus-blanc_2.jpg" ] && file "public/images/products/juliana-c-rus-blanc_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-c-rus-blanc_2.jpg"
    curl -sL -o "public/images/products/juliana-c-rus-blanc_2.jpg" "https://lh3.googleusercontent.com/d/1F3BtCzxqAoguzT1nEfUgOaGec0WJdnEI" 2>/dev/null
    if [ -s "public/images/products/juliana-c-rus-blanc_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-c-rus-blanc_3.jpg" ]; then
  curl -sL -o "public/images/products/juliana-c-rus-blanc_3.jpg" "https://drive.google.com/uc?export=download&id=1AEL7GS3dd7O2GozStDh6etPnrJranO34" 2>/dev/null
  if [ -s "public/images/products/juliana-c-rus-blanc_3.jpg" ] && file "public/images/products/juliana-c-rus-blanc_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-c-rus-blanc_3.jpg"
    curl -sL -o "public/images/products/juliana-c-rus-blanc_3.jpg" "https://lh3.googleusercontent.com/d/1AEL7GS3dd7O2GozStDh6etPnrJranO34" 2>/dev/null
    if [ -s "public/images/products/juliana-c-rus-blanc_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-c-rus-blanc_4.jpg" ]; then
  curl -sL -o "public/images/products/juliana-c-rus-blanc_4.jpg" "https://drive.google.com/uc?export=download&id=1VOypJp7uutD8T5OMJYIpy3UMBOPMPLWK" 2>/dev/null
  if [ -s "public/images/products/juliana-c-rus-blanc_4.jpg" ] && file "public/images/products/juliana-c-rus-blanc_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-c-rus-blanc_4.jpg"
    curl -sL -o "public/images/products/juliana-c-rus-blanc_4.jpg" "https://lh3.googleusercontent.com/d/1VOypJp7uutD8T5OMJYIpy3UMBOPMPLWK" 2>/dev/null
    if [ -s "public/images/products/juliana-c-rus-blanc_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-gm_1.jpg" ]; then
  curl -sL -o "public/images/products/juliana-gm_1.jpg" "https://drive.google.com/uc?export=download&id=1wXyPaj_WuSXsPFp2ar-qEHLNow92FH6I" 2>/dev/null
  if [ -s "public/images/products/juliana-gm_1.jpg" ] && file "public/images/products/juliana-gm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-gm_1.jpg"
    curl -sL -o "public/images/products/juliana-gm_1.jpg" "https://lh3.googleusercontent.com/d/1wXyPaj_WuSXsPFp2ar-qEHLNow92FH6I" 2>/dev/null
    if [ -s "public/images/products/juliana-gm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-gm_2.jpg" ]; then
  curl -sL -o "public/images/products/juliana-gm_2.jpg" "https://drive.google.com/uc?export=download&id=1nKBpQK20M9cHWCz151KNSEd-i7bDwWj2" 2>/dev/null
  if [ -s "public/images/products/juliana-gm_2.jpg" ] && file "public/images/products/juliana-gm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-gm_2.jpg"
    curl -sL -o "public/images/products/juliana-gm_2.jpg" "https://lh3.googleusercontent.com/d/1nKBpQK20M9cHWCz151KNSEd-i7bDwWj2" 2>/dev/null
    if [ -s "public/images/products/juliana-gm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-gm_3.jpg" ]; then
  curl -sL -o "public/images/products/juliana-gm_3.jpg" "https://drive.google.com/uc?export=download&id=1qF2a7B-xFeXM4vk2uPwY0e4t6_ofyP63" 2>/dev/null
  if [ -s "public/images/products/juliana-gm_3.jpg" ] && file "public/images/products/juliana-gm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-gm_3.jpg"
    curl -sL -o "public/images/products/juliana-gm_3.jpg" "https://lh3.googleusercontent.com/d/1qF2a7B-xFeXM4vk2uPwY0e4t6_ofyP63" 2>/dev/null
    if [ -s "public/images/products/juliana-gm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-gm_4.jpg" ]; then
  curl -sL -o "public/images/products/juliana-gm_4.jpg" "https://drive.google.com/uc?export=download&id=1Z4il48ZveV1gPyhrVVH883zdk1ls32JO" 2>/dev/null
  if [ -s "public/images/products/juliana-gm_4.jpg" ] && file "public/images/products/juliana-gm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-gm_4.jpg"
    curl -sL -o "public/images/products/juliana-gm_4.jpg" "https://lh3.googleusercontent.com/d/1Z4il48ZveV1gPyhrVVH883zdk1ls32JO" 2>/dev/null
    if [ -s "public/images/products/juliana-gm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-miel_1.jpg" ]; then
  curl -sL -o "public/images/products/juliana-miel_1.jpg" "https://drive.google.com/uc?export=download&id=1FhX4kXXSrOpf0bJXd0P55Rbvm5rvcU7m" 2>/dev/null
  if [ -s "public/images/products/juliana-miel_1.jpg" ] && file "public/images/products/juliana-miel_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-miel_1.jpg"
    curl -sL -o "public/images/products/juliana-miel_1.jpg" "https://lh3.googleusercontent.com/d/1FhX4kXXSrOpf0bJXd0P55Rbvm5rvcU7m" 2>/dev/null
    if [ -s "public/images/products/juliana-miel_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-miel_2.jpg" ]; then
  curl -sL -o "public/images/products/juliana-miel_2.jpg" "https://drive.google.com/uc?export=download&id=1pOIcEv-PcHZUGMZ2ONTS1AnolfyesbIn" 2>/dev/null
  if [ -s "public/images/products/juliana-miel_2.jpg" ] && file "public/images/products/juliana-miel_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-miel_2.jpg"
    curl -sL -o "public/images/products/juliana-miel_2.jpg" "https://lh3.googleusercontent.com/d/1pOIcEv-PcHZUGMZ2ONTS1AnolfyesbIn" 2>/dev/null
    if [ -s "public/images/products/juliana-miel_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/juliana-miel_3.jpg" ]; then
  curl -sL -o "public/images/products/juliana-miel_3.jpg" "https://drive.google.com/uc?export=download&id=1vOnDmVISx8oMQST5dhbVNf0XY5ReX0gC" 2>/dev/null
  if [ -s "public/images/products/juliana-miel_3.jpg" ] && file "public/images/products/juliana-miel_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/juliana-miel_3.jpg"
    curl -sL -o "public/images/products/juliana-miel_3.jpg" "https://lh3.googleusercontent.com/d/1vOnDmVISx8oMQST5dhbVNf0XY5ReX0gC" 2>/dev/null
    if [ -s "public/images/products/juliana-miel_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lawang_1.jpg" ]; then
  curl -sL -o "public/images/products/lawang_1.jpg" "https://drive.google.com/uc?export=download&id=1ehmHFXPIUFYRKLzrN3RfLp8WFznfKNfo" 2>/dev/null
  if [ -s "public/images/products/lawang_1.jpg" ] && file "public/images/products/lawang_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lawang_1.jpg"
    curl -sL -o "public/images/products/lawang_1.jpg" "https://lh3.googleusercontent.com/d/1ehmHFXPIUFYRKLzrN3RfLp8WFznfKNfo" 2>/dev/null
    if [ -s "public/images/products/lawang_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lawang_2.jpg" ]; then
  curl -sL -o "public/images/products/lawang_2.jpg" "https://drive.google.com/uc?export=download&id=1N2RM6ZRTnaLXv0SZfAFhvd1zM06jPe50" 2>/dev/null
  if [ -s "public/images/products/lawang_2.jpg" ] && file "public/images/products/lawang_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lawang_2.jpg"
    curl -sL -o "public/images/products/lawang_2.jpg" "https://lh3.googleusercontent.com/d/1N2RM6ZRTnaLXv0SZfAFhvd1zM06jPe50" 2>/dev/null
    if [ -s "public/images/products/lawang_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lawang_3.jpg" ]; then
  curl -sL -o "public/images/products/lawang_3.jpg" "https://drive.google.com/uc?export=download&id=1FPj6Tsgnf6Kq5QXn3v6RzD1m6ImPtj6h" 2>/dev/null
  if [ -s "public/images/products/lawang_3.jpg" ] && file "public/images/products/lawang_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lawang_3.jpg"
    curl -sL -o "public/images/products/lawang_3.jpg" "https://lh3.googleusercontent.com/d/1FPj6Tsgnf6Kq5QXn3v6RzD1m6ImPtj6h" 2>/dev/null
    if [ -s "public/images/products/lawang_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/lawang_4.jpg" ]; then
  curl -sL -o "public/images/products/lawang_4.jpg" "https://drive.google.com/uc?export=download&id=1JcLYQNIB693Iamrv-fMpXEtP1ZSwXvg3" 2>/dev/null
  if [ -s "public/images/products/lawang_4.jpg" ] && file "public/images/products/lawang_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/lawang_4.jpg"
    curl -sL -o "public/images/products/lawang_4.jpg" "https://lh3.googleusercontent.com/d/1JcLYQNIB693Iamrv-fMpXEtP1ZSwXvg3" 2>/dev/null
    if [ -s "public/images/products/lawang_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mantiggan_1.jpg" ]; then
  curl -sL -o "public/images/products/mantiggan_1.jpg" "https://drive.google.com/uc?export=download&id=1LkHSGi-czNQdn8_bHVxBEzBF8u_AAIS-" 2>/dev/null
  if [ -s "public/images/products/mantiggan_1.jpg" ] && file "public/images/products/mantiggan_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mantiggan_1.jpg"
    curl -sL -o "public/images/products/mantiggan_1.jpg" "https://lh3.googleusercontent.com/d/1LkHSGi-czNQdn8_bHVxBEzBF8u_AAIS-" 2>/dev/null
    if [ -s "public/images/products/mantiggan_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mantiggan_2.jpg" ]; then
  curl -sL -o "public/images/products/mantiggan_2.jpg" "https://drive.google.com/uc?export=download&id=1-vJJ6gTgfVZXtNGHAutsPZ6QHFQfzF1k" 2>/dev/null
  if [ -s "public/images/products/mantiggan_2.jpg" ] && file "public/images/products/mantiggan_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mantiggan_2.jpg"
    curl -sL -o "public/images/products/mantiggan_2.jpg" "https://lh3.googleusercontent.com/d/1-vJJ6gTgfVZXtNGHAutsPZ6QHFQfzF1k" 2>/dev/null
    if [ -s "public/images/products/mantiggan_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mantiggan_3.jpg" ]; then
  curl -sL -o "public/images/products/mantiggan_3.jpg" "https://drive.google.com/uc?export=download&id=1k3x5T2vpSnmSK85qaL2C9St9rgFC-cfm" 2>/dev/null
  if [ -s "public/images/products/mantiggan_3.jpg" ] && file "public/images/products/mantiggan_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mantiggan_3.jpg"
    curl -sL -o "public/images/products/mantiggan_3.jpg" "https://lh3.googleusercontent.com/d/1k3x5T2vpSnmSK85qaL2C9St9rgFC-cfm" 2>/dev/null
    if [ -s "public/images/products/mantiggan_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mantiggan_4.jpg" ]; then
  curl -sL -o "public/images/products/mantiggan_4.jpg" "https://drive.google.com/uc?export=download&id=1KlF0X6lRzAguyv-KeKB_QnFSVA_3Fstu" 2>/dev/null
  if [ -s "public/images/products/mantiggan_4.jpg" ] && file "public/images/products/mantiggan_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mantiggan_4.jpg"
    curl -sL -o "public/images/products/mantiggan_4.jpg" "https://lh3.googleusercontent.com/d/1KlF0X6lRzAguyv-KeKB_QnFSVA_3Fstu" 2>/dev/null
    if [ -s "public/images/products/mantiggan_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-nature_1.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-nature_1.jpg" "https://drive.google.com/uc?export=download&id=1ufIViU77F_se9aXK3bWc-e1mx-oEngBV" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-nature_1.jpg" ] && file "public/images/products/meuble-tv-nature_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-nature_1.jpg"
    curl -sL -o "public/images/products/meuble-tv-nature_1.jpg" "https://lh3.googleusercontent.com/d/1ufIViU77F_se9aXK3bWc-e1mx-oEngBV" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-nature_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-nature_2.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-nature_2.jpg" "https://drive.google.com/uc?export=download&id=1czl_do85d05xJnbh8YWFrX4NHPkm2ExV" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-nature_2.jpg" ] && file "public/images/products/meuble-tv-nature_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-nature_2.jpg"
    curl -sL -o "public/images/products/meuble-tv-nature_2.jpg" "https://lh3.googleusercontent.com/d/1czl_do85d05xJnbh8YWFrX4NHPkm2ExV" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-nature_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-nature_3.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-nature_3.jpg" "https://drive.google.com/uc?export=download&id=1ijdwm74ZWWF9xrH05zQRSgV88xHseZdF" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-nature_3.jpg" ] && file "public/images/products/meuble-tv-nature_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-nature_3.jpg"
    curl -sL -o "public/images/products/meuble-tv-nature_3.jpg" "https://lh3.googleusercontent.com/d/1ijdwm74ZWWF9xrH05zQRSgV88xHseZdF" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-nature_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-nature_4.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-nature_4.jpg" "https://drive.google.com/uc?export=download&id=1QftPMSgOPkAY7UUDrVJ6n3Z0PAsTwLJP" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-nature_4.jpg" ] && file "public/images/products/meuble-tv-nature_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-nature_4.jpg"
    curl -sL -o "public/images/products/meuble-tv-nature_4.jpg" "https://lh3.googleusercontent.com/d/1QftPMSgOPkAY7UUDrVJ6n3Z0PAsTwLJP" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-nature_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-scandinavian_1.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-scandinavian_1.jpg" "https://drive.google.com/uc?export=download&id=1u9UO1vKa314hkcKpB6SG7vpGFQtmlDX_" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-scandinavian_1.jpg" ] && file "public/images/products/meuble-tv-scandinavian_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-scandinavian_1.jpg"
    curl -sL -o "public/images/products/meuble-tv-scandinavian_1.jpg" "https://lh3.googleusercontent.com/d/1u9UO1vKa314hkcKpB6SG7vpGFQtmlDX_" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-scandinavian_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-scandinavian_2.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-scandinavian_2.jpg" "https://drive.google.com/uc?export=download&id=1gXTtOYsSJDldJjSBV53xTcfng1526Q4c" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-scandinavian_2.jpg" ] && file "public/images/products/meuble-tv-scandinavian_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-scandinavian_2.jpg"
    curl -sL -o "public/images/products/meuble-tv-scandinavian_2.jpg" "https://lh3.googleusercontent.com/d/1gXTtOYsSJDldJjSBV53xTcfng1526Q4c" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-scandinavian_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-scandinavian_3.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-scandinavian_3.jpg" "https://drive.google.com/uc?export=download&id=1_JbCI31Z6PzJvPXNbFT1ahupSKhpvp26" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-scandinavian_3.jpg" ] && file "public/images/products/meuble-tv-scandinavian_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-scandinavian_3.jpg"
    curl -sL -o "public/images/products/meuble-tv-scandinavian_3.jpg" "https://lh3.googleusercontent.com/d/1_JbCI31Z6PzJvPXNbFT1ahupSKhpvp26" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-scandinavian_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/meuble-tv-scandinavian_4.jpg" ]; then
  curl -sL -o "public/images/products/meuble-tv-scandinavian_4.jpg" "https://drive.google.com/uc?export=download&id=1bT-8SHp3zVRD8Ux88-20Bc5KU4eEoAKA" 2>/dev/null
  if [ -s "public/images/products/meuble-tv-scandinavian_4.jpg" ] && file "public/images/products/meuble-tv-scandinavian_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/meuble-tv-scandinavian_4.jpg"
    curl -sL -o "public/images/products/meuble-tv-scandinavian_4.jpg" "https://lh3.googleusercontent.com/d/1bT-8SHp3zVRD8Ux88-20Bc5KU4eEoAKA" 2>/dev/null
    if [ -s "public/images/products/meuble-tv-scandinavian_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mirih_1.jpg" ]; then
  curl -sL -o "public/images/products/mirih_1.jpg" "https://drive.google.com/uc?export=download&id=15yDSVeiSGv2K5GLKDHW6v6D7Zi0NajG6" 2>/dev/null
  if [ -s "public/images/products/mirih_1.jpg" ] && file "public/images/products/mirih_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mirih_1.jpg"
    curl -sL -o "public/images/products/mirih_1.jpg" "https://lh3.googleusercontent.com/d/15yDSVeiSGv2K5GLKDHW6v6D7Zi0NajG6" 2>/dev/null
    if [ -s "public/images/products/mirih_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mirih_2.jpg" ]; then
  curl -sL -o "public/images/products/mirih_2.jpg" "https://drive.google.com/uc?export=download&id=1uglxrDjFYL48tOxnd27rGn2uR3rXIKRI" 2>/dev/null
  if [ -s "public/images/products/mirih_2.jpg" ] && file "public/images/products/mirih_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mirih_2.jpg"
    curl -sL -o "public/images/products/mirih_2.jpg" "https://lh3.googleusercontent.com/d/1uglxrDjFYL48tOxnd27rGn2uR3rXIKRI" 2>/dev/null
    if [ -s "public/images/products/mirih_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mirih_3.jpg" ]; then
  curl -sL -o "public/images/products/mirih_3.jpg" "https://drive.google.com/uc?export=download&id=1u02LZYErbukNEhllmRlvAI3KTFZ1CT_l" 2>/dev/null
  if [ -s "public/images/products/mirih_3.jpg" ] && file "public/images/products/mirih_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mirih_3.jpg"
    curl -sL -o "public/images/products/mirih_3.jpg" "https://lh3.googleusercontent.com/d/1u02LZYErbukNEhllmRlvAI3KTFZ1CT_l" 2>/dev/null
    if [ -s "public/images/products/mirih_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/mirih_4.jpg" ]; then
  curl -sL -o "public/images/products/mirih_4.jpg" "https://drive.google.com/uc?export=download&id=1Kqaofv9iJtLzoDgxKZWBwz-XjAx5jU3S" 2>/dev/null
  if [ -s "public/images/products/mirih_4.jpg" ] && file "public/images/products/mirih_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/mirih_4.jpg"
    curl -sL -o "public/images/products/mirih_4.jpg" "https://lh3.googleusercontent.com/d/1Kqaofv9iJtLzoDgxKZWBwz-XjAx5jU3S" 2>/dev/null
    if [ -s "public/images/products/mirih_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-gm_1.jpg" ]; then
  curl -sL -o "public/images/products/olanda-gm_1.jpg" "https://drive.google.com/uc?export=download&id=1xe9pWcGYSGQaWEFyo5amZtI0Ogf-OUPz" 2>/dev/null
  if [ -s "public/images/products/olanda-gm_1.jpg" ] && file "public/images/products/olanda-gm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-gm_1.jpg"
    curl -sL -o "public/images/products/olanda-gm_1.jpg" "https://lh3.googleusercontent.com/d/1xe9pWcGYSGQaWEFyo5amZtI0Ogf-OUPz" 2>/dev/null
    if [ -s "public/images/products/olanda-gm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-gm_2.jpg" ]; then
  curl -sL -o "public/images/products/olanda-gm_2.jpg" "https://drive.google.com/uc?export=download&id=14iBqfNxDiqEFGiy-y79hEvNdQp5EN2xJ" 2>/dev/null
  if [ -s "public/images/products/olanda-gm_2.jpg" ] && file "public/images/products/olanda-gm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-gm_2.jpg"
    curl -sL -o "public/images/products/olanda-gm_2.jpg" "https://lh3.googleusercontent.com/d/14iBqfNxDiqEFGiy-y79hEvNdQp5EN2xJ" 2>/dev/null
    if [ -s "public/images/products/olanda-gm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-gm_3.jpg" ]; then
  curl -sL -o "public/images/products/olanda-gm_3.jpg" "https://drive.google.com/uc?export=download&id=17KDbQjAFE5_iuvO3JehLDXmys0f83_DS" 2>/dev/null
  if [ -s "public/images/products/olanda-gm_3.jpg" ] && file "public/images/products/olanda-gm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-gm_3.jpg"
    curl -sL -o "public/images/products/olanda-gm_3.jpg" "https://lh3.googleusercontent.com/d/17KDbQjAFE5_iuvO3JehLDXmys0f83_DS" 2>/dev/null
    if [ -s "public/images/products/olanda-gm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-gm_4.jpg" ]; then
  curl -sL -o "public/images/products/olanda-gm_4.jpg" "https://drive.google.com/uc?export=download&id=1JGpqBLSVqRdQg_fYX5BGm35lML2f28cs" 2>/dev/null
  if [ -s "public/images/products/olanda-gm_4.jpg" ] && file "public/images/products/olanda-gm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-gm_4.jpg"
    curl -sL -o "public/images/products/olanda-gm_4.jpg" "https://lh3.googleusercontent.com/d/1JGpqBLSVqRdQg_fYX5BGm35lML2f28cs" 2>/dev/null
    if [ -s "public/images/products/olanda-gm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-pm_1.jpg" ]; then
  curl -sL -o "public/images/products/olanda-pm_1.jpg" "https://drive.google.com/uc?export=download&id=1GHZGOIE9nN-QjniJQuc0twA7v44ehhGz" 2>/dev/null
  if [ -s "public/images/products/olanda-pm_1.jpg" ] && file "public/images/products/olanda-pm_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-pm_1.jpg"
    curl -sL -o "public/images/products/olanda-pm_1.jpg" "https://lh3.googleusercontent.com/d/1GHZGOIE9nN-QjniJQuc0twA7v44ehhGz" 2>/dev/null
    if [ -s "public/images/products/olanda-pm_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-pm_2.jpg" ]; then
  curl -sL -o "public/images/products/olanda-pm_2.jpg" "https://drive.google.com/uc?export=download&id=1uRsMuYW-5ov0noaIVvIkKiojh28Yj6yt" 2>/dev/null
  if [ -s "public/images/products/olanda-pm_2.jpg" ] && file "public/images/products/olanda-pm_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-pm_2.jpg"
    curl -sL -o "public/images/products/olanda-pm_2.jpg" "https://lh3.googleusercontent.com/d/1uRsMuYW-5ov0noaIVvIkKiojh28Yj6yt" 2>/dev/null
    if [ -s "public/images/products/olanda-pm_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-pm_3.jpg" ]; then
  curl -sL -o "public/images/products/olanda-pm_3.jpg" "https://drive.google.com/uc?export=download&id=1xURg1aQC_TxdsBjKuQqGY-YN9lFFhDvO" 2>/dev/null
  if [ -s "public/images/products/olanda-pm_3.jpg" ] && file "public/images/products/olanda-pm_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-pm_3.jpg"
    curl -sL -o "public/images/products/olanda-pm_3.jpg" "https://lh3.googleusercontent.com/d/1xURg1aQC_TxdsBjKuQqGY-YN9lFFhDvO" 2>/dev/null
    if [ -s "public/images/products/olanda-pm_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/olanda-pm_4.jpg" ]; then
  curl -sL -o "public/images/products/olanda-pm_4.jpg" "https://drive.google.com/uc?export=download&id=1FMYhUy00vp0GZX8R9Py62Sp9qookUGUF" 2>/dev/null
  if [ -s "public/images/products/olanda-pm_4.jpg" ] && file "public/images/products/olanda-pm_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/olanda-pm_4.jpg"
    curl -sL -o "public/images/products/olanda-pm_4.jpg" "https://lh3.googleusercontent.com/d/1FMYhUy00vp0GZX8R9Py62Sp9qookUGUF" 2>/dev/null
    if [ -s "public/images/products/olanda-pm_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg" "https://drive.google.com/uc?export=download&id=1vjwDpLaJOXKv02rXsu877LLmIaCQ1Hwy" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg" ] && file "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg" "https://lh3.googleusercontent.com/d/1vjwDpLaJOXKv02rXsu877LLmIaCQ1Hwy" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg" "https://drive.google.com/uc?export=download&id=1P9WUI8nZL0ryYopdaHMwYelnzaSIPskA" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg" ] && file "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg" "https://lh3.googleusercontent.com/d/1P9WUI8nZL0ryYopdaHMwYelnzaSIPskA" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg" "https://drive.google.com/uc?export=download&id=1IYgny8g_R02_U1CwIF7r8CXvAPXyIieo" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg" ] && file "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg" "https://lh3.googleusercontent.com/d/1IYgny8g_R02_U1CwIF7r8CXvAPXyIieo" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg" "https://drive.google.com/uc?export=download&id=1Ckds-Wr3dahZLlzEsIs9IkSdJrJphe8l" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg" ] && file "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg" "https://lh3.googleusercontent.com/d/1Ckds-Wr3dahZLlzEsIs9IkSdJrJphe8l" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-2-tiroirs_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg" "https://drive.google.com/uc?export=download&id=1RO3fcSo3V8oZsJX2K7xCcc0Qb85qcVuZ" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg" ] && file "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg" "https://lh3.googleusercontent.com/d/1RO3fcSo3V8oZsJX2K7xCcc0Qb85qcVuZ" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg" "https://drive.google.com/uc?export=download&id=1dC_oCv1SnIDx1AgZXAQhXpir_Ho_uxB9" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg" ] && file "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg" "https://lh3.googleusercontent.com/d/1dC_oCv1SnIDx1AgZXAQhXpir_Ho_uxB9" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg" "https://drive.google.com/uc?export=download&id=1b51wHBCqarNe6W5UaicRZT5UA4MSMOJq" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg" ] && file "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg" "https://lh3.googleusercontent.com/d/1b51wHBCqarNe6W5UaicRZT5UA4MSMOJq" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg" ]; then
  curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg" "https://drive.google.com/uc?export=download&id=1rWiRIQWqRg1nazz3xbyZUkbaH8JrZRhz" 2>/dev/null
  if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg" ] && file "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg"
    curl -sL -o "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg" "https://lh3.googleusercontent.com/d/1rWiRIQWqRg1nazz3xbyZUkbaH8JrZRhz" 2>/dev/null
    if [ -s "public/images/products/sueb-gaya-a-3-tiroirs_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-s_1.jpg" ]; then
  curl -sL -o "public/images/products/sueb-s_1.jpg" "https://drive.google.com/uc?export=download&id=1nlAaNS3cyAHDEjviLoxOQT4X5NsxUSMr" 2>/dev/null
  if [ -s "public/images/products/sueb-s_1.jpg" ] && file "public/images/products/sueb-s_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-s_1.jpg"
    curl -sL -o "public/images/products/sueb-s_1.jpg" "https://lh3.googleusercontent.com/d/1nlAaNS3cyAHDEjviLoxOQT4X5NsxUSMr" 2>/dev/null
    if [ -s "public/images/products/sueb-s_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-s_2.jpg" ]; then
  curl -sL -o "public/images/products/sueb-s_2.jpg" "https://drive.google.com/uc?export=download&id=1sKNk6q4AK9niGhOn2ktMHp1eD_rYCjdo" 2>/dev/null
  if [ -s "public/images/products/sueb-s_2.jpg" ] && file "public/images/products/sueb-s_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-s_2.jpg"
    curl -sL -o "public/images/products/sueb-s_2.jpg" "https://lh3.googleusercontent.com/d/1sKNk6q4AK9niGhOn2ktMHp1eD_rYCjdo" 2>/dev/null
    if [ -s "public/images/products/sueb-s_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-s_3.jpg" ]; then
  curl -sL -o "public/images/products/sueb-s_3.jpg" "https://drive.google.com/uc?export=download&id=11p-aAS3SlRI2WoKX46fga4S0J9hOU7vY" 2>/dev/null
  if [ -s "public/images/products/sueb-s_3.jpg" ] && file "public/images/products/sueb-s_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-s_3.jpg"
    curl -sL -o "public/images/products/sueb-s_3.jpg" "https://lh3.googleusercontent.com/d/11p-aAS3SlRI2WoKX46fga4S0J9hOU7vY" 2>/dev/null
    if [ -s "public/images/products/sueb-s_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sueb-s_4.jpg" ]; then
  curl -sL -o "public/images/products/sueb-s_4.jpg" "https://drive.google.com/uc?export=download&id=1vu_s_ZUIA496rYvkY1gcc4DrhtUZVk47" 2>/dev/null
  if [ -s "public/images/products/sueb-s_4.jpg" ] && file "public/images/products/sueb-s_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sueb-s_4.jpg"
    curl -sL -o "public/images/products/sueb-s_4.jpg" "https://lh3.googleusercontent.com/d/1vu_s_ZUIA496rYvkY1gcc4DrhtUZVk47" 2>/dev/null
    if [ -s "public/images/products/sueb-s_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sydney_1.jpg" ]; then
  curl -sL -o "public/images/products/sydney_1.jpg" "https://drive.google.com/uc?export=download&id=1PNJJzOe9MW3KLR5vPNzxTqC7FnBJy2Ws" 2>/dev/null
  if [ -s "public/images/products/sydney_1.jpg" ] && file "public/images/products/sydney_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sydney_1.jpg"
    curl -sL -o "public/images/products/sydney_1.jpg" "https://lh3.googleusercontent.com/d/1PNJJzOe9MW3KLR5vPNzxTqC7FnBJy2Ws" 2>/dev/null
    if [ -s "public/images/products/sydney_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sydney_2.jpg" ]; then
  curl -sL -o "public/images/products/sydney_2.jpg" "https://drive.google.com/uc?export=download&id=1aLXN_3uRrv5hDZqJTsX4hiY1Ijg4_QG7" 2>/dev/null
  if [ -s "public/images/products/sydney_2.jpg" ] && file "public/images/products/sydney_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sydney_2.jpg"
    curl -sL -o "public/images/products/sydney_2.jpg" "https://lh3.googleusercontent.com/d/1aLXN_3uRrv5hDZqJTsX4hiY1Ijg4_QG7" 2>/dev/null
    if [ -s "public/images/products/sydney_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sydney_3.jpg" ]; then
  curl -sL -o "public/images/products/sydney_3.jpg" "https://drive.google.com/uc?export=download&id=1k1Ix2b-bM-RHY_dAmiWOxp_hGvzmBWj9" 2>/dev/null
  if [ -s "public/images/products/sydney_3.jpg" ] && file "public/images/products/sydney_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sydney_3.jpg"
    curl -sL -o "public/images/products/sydney_3.jpg" "https://lh3.googleusercontent.com/d/1k1Ix2b-bM-RHY_dAmiWOxp_hGvzmBWj9" 2>/dev/null
    if [ -s "public/images/products/sydney_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/sydney_4.jpg" ]; then
  curl -sL -o "public/images/products/sydney_4.jpg" "https://drive.google.com/uc?export=download&id=1CR9AJ2_EIBPKcFvat8dCtTOUB08qLJ-J" 2>/dev/null
  if [ -s "public/images/products/sydney_4.jpg" ] && file "public/images/products/sydney_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/sydney_4.jpg"
    curl -sL -o "public/images/products/sydney_4.jpg" "https://lh3.googleusercontent.com/d/1CR9AJ2_EIBPKcFvat8dCtTOUB08qLJ-J" 2>/dev/null
    if [ -s "public/images/products/sydney_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-baliti_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-baliti_1.jpg" "https://drive.google.com/uc?export=download&id=1iEuRKWPW4xslJrGezwiJQ1I5zVg9wgd8" 2>/dev/null
  if [ -s "public/images/products/table-basse-baliti_1.jpg" ] && file "public/images/products/table-basse-baliti_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-baliti_1.jpg"
    curl -sL -o "public/images/products/table-basse-baliti_1.jpg" "https://lh3.googleusercontent.com/d/1iEuRKWPW4xslJrGezwiJQ1I5zVg9wgd8" 2>/dev/null
    if [ -s "public/images/products/table-basse-baliti_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-baliti_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-baliti_2.jpg" "https://drive.google.com/uc?export=download&id=11xPRSY5Nzc-560wZZ7gmljBjN_762UXh" 2>/dev/null
  if [ -s "public/images/products/table-basse-baliti_2.jpg" ] && file "public/images/products/table-basse-baliti_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-baliti_2.jpg"
    curl -sL -o "public/images/products/table-basse-baliti_2.jpg" "https://lh3.googleusercontent.com/d/11xPRSY5Nzc-560wZZ7gmljBjN_762UXh" 2>/dev/null
    if [ -s "public/images/products/table-basse-baliti_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-baliti_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-baliti_3.jpg" "https://drive.google.com/uc?export=download&id=13IkrRMm3BpI0lkyqJolkOrM199u4ggPQ" 2>/dev/null
  if [ -s "public/images/products/table-basse-baliti_3.jpg" ] && file "public/images/products/table-basse-baliti_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-baliti_3.jpg"
    curl -sL -o "public/images/products/table-basse-baliti_3.jpg" "https://lh3.googleusercontent.com/d/13IkrRMm3BpI0lkyqJolkOrM199u4ggPQ" 2>/dev/null
    if [ -s "public/images/products/table-basse-baliti_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-baliti_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-baliti_4.jpg" "https://drive.google.com/uc?export=download&id=1JSvCmBCHKKmDIgDXxdJNQbLgpZyIJM28" 2>/dev/null
  if [ -s "public/images/products/table-basse-baliti_4.jpg" ] && file "public/images/products/table-basse-baliti_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-baliti_4.jpg"
    curl -sL -o "public/images/products/table-basse-baliti_4.jpg" "https://lh3.googleusercontent.com/d/1JSvCmBCHKKmDIgDXxdJNQbLgpZyIJM28" 2>/dev/null
    if [ -s "public/images/products/table-basse-baliti_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-bunga_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-bunga_1.jpg" "https://drive.google.com/uc?export=download&id=1Q-SABTYx8gKGSsvH9SIc_NEwlGeanWfC" 2>/dev/null
  if [ -s "public/images/products/table-basse-bunga_1.jpg" ] && file "public/images/products/table-basse-bunga_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-bunga_1.jpg"
    curl -sL -o "public/images/products/table-basse-bunga_1.jpg" "https://lh3.googleusercontent.com/d/1Q-SABTYx8gKGSsvH9SIc_NEwlGeanWfC" 2>/dev/null
    if [ -s "public/images/products/table-basse-bunga_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-bunga_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-bunga_2.jpg" "https://drive.google.com/uc?export=download&id=18_kKCaAnbOP3xyjCJkiFxEeQdmOhmxDu" 2>/dev/null
  if [ -s "public/images/products/table-basse-bunga_2.jpg" ] && file "public/images/products/table-basse-bunga_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-bunga_2.jpg"
    curl -sL -o "public/images/products/table-basse-bunga_2.jpg" "https://lh3.googleusercontent.com/d/18_kKCaAnbOP3xyjCJkiFxEeQdmOhmxDu" 2>/dev/null
    if [ -s "public/images/products/table-basse-bunga_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-bunga_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-bunga_3.jpg" "https://drive.google.com/uc?export=download&id=1kMLI78ALx5cR-ekZcdOAfpvGrXgw1_IM" 2>/dev/null
  if [ -s "public/images/products/table-basse-bunga_3.jpg" ] && file "public/images/products/table-basse-bunga_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-bunga_3.jpg"
    curl -sL -o "public/images/products/table-basse-bunga_3.jpg" "https://lh3.googleusercontent.com/d/1kMLI78ALx5cR-ekZcdOAfpvGrXgw1_IM" 2>/dev/null
    if [ -s "public/images/products/table-basse-bunga_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-bunga_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-bunga_4.jpg" "https://drive.google.com/uc?export=download&id=1ajLD0k-xhBKiT-qJ7nxbrcqDgNgIGSvk" 2>/dev/null
  if [ -s "public/images/products/table-basse-bunga_4.jpg" ] && file "public/images/products/table-basse-bunga_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-bunga_4.jpg"
    curl -sL -o "public/images/products/table-basse-bunga_4.jpg" "https://lh3.googleusercontent.com/d/1ajLD0k-xhBKiT-qJ7nxbrcqDgNgIGSvk" 2>/dev/null
    if [ -s "public/images/products/table-basse-bunga_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-en-suar_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-en-suar_1.jpg" "https://drive.google.com/uc?export=download&id=1x68eudp21lDscStnI_-U7kBU1hlgL5vM" 2>/dev/null
  if [ -s "public/images/products/table-basse-en-suar_1.jpg" ] && file "public/images/products/table-basse-en-suar_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-en-suar_1.jpg"
    curl -sL -o "public/images/products/table-basse-en-suar_1.jpg" "https://lh3.googleusercontent.com/d/1x68eudp21lDscStnI_-U7kBU1hlgL5vM" 2>/dev/null
    if [ -s "public/images/products/table-basse-en-suar_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-en-suar_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-en-suar_2.jpg" "https://drive.google.com/uc?export=download&id=1_nr1gwScBVLOrS-jucrB6aL0cK6SiUTr" 2>/dev/null
  if [ -s "public/images/products/table-basse-en-suar_2.jpg" ] && file "public/images/products/table-basse-en-suar_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-en-suar_2.jpg"
    curl -sL -o "public/images/products/table-basse-en-suar_2.jpg" "https://lh3.googleusercontent.com/d/1_nr1gwScBVLOrS-jucrB6aL0cK6SiUTr" 2>/dev/null
    if [ -s "public/images/products/table-basse-en-suar_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne_1.jpg" "https://drive.google.com/uc?export=download&id=1mTxjL8pt_CwZ8wPdTtO9Bx4MSAeniGB_" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne_1.jpg" ] && file "public/images/products/table-basse-gigogne_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne_1.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne_1.jpg" "https://lh3.googleusercontent.com/d/1mTxjL8pt_CwZ8wPdTtO9Bx4MSAeniGB_" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne_2.jpg" "https://drive.google.com/uc?export=download&id=1Q0no25e_fYxx0yeAdu708_o4TXdukXbL" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne_2.jpg" ] && file "public/images/products/table-basse-gigogne_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne_2.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne_2.jpg" "https://lh3.googleusercontent.com/d/1Q0no25e_fYxx0yeAdu708_o4TXdukXbL" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne_3.jpg" "https://drive.google.com/uc?export=download&id=1rVhFy94tAUYPRNku0hr_udkt5vVIfm80" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne_3.jpg" ] && file "public/images/products/table-basse-gigogne_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne_3.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne_3.jpg" "https://lh3.googleusercontent.com/d/1rVhFy94tAUYPRNku0hr_udkt5vVIfm80" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne_4.jpg" "https://drive.google.com/uc?export=download&id=1r19VIjwjqLBoEO-U-V978-Bi90WdWo09" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne_4.jpg" ] && file "public/images/products/table-basse-gigogne_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne_4.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne_4.jpg" "https://lh3.googleusercontent.com/d/1r19VIjwjqLBoEO-U-V978-Bi90WdWo09" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne-en-granite_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne-en-granite_1.jpg" "https://drive.google.com/uc?export=download&id=1kA6kvIlxm5P1NqMjpwv2qXNFhYv4elwG" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne-en-granite_1.jpg" ] && file "public/images/products/table-basse-gigogne-en-granite_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne-en-granite_1.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne-en-granite_1.jpg" "https://lh3.googleusercontent.com/d/1kA6kvIlxm5P1NqMjpwv2qXNFhYv4elwG" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne-en-granite_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne-en-granite_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne-en-granite_2.jpg" "https://drive.google.com/uc?export=download&id=1q0g7pJ_Gv0Ego5jzgk1OyHMPm3mre4kj" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne-en-granite_2.jpg" ] && file "public/images/products/table-basse-gigogne-en-granite_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne-en-granite_2.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne-en-granite_2.jpg" "https://lh3.googleusercontent.com/d/1q0g7pJ_Gv0Ego5jzgk1OyHMPm3mre4kj" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne-en-granite_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne-en-granite_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne-en-granite_3.jpg" "https://drive.google.com/uc?export=download&id=1dISjamFXWksvsh9GeqlcmFDGaSz4qgog" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne-en-granite_3.jpg" ] && file "public/images/products/table-basse-gigogne-en-granite_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne-en-granite_3.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne-en-granite_3.jpg" "https://lh3.googleusercontent.com/d/1dISjamFXWksvsh9GeqlcmFDGaSz4qgog" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne-en-granite_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-gigogne-en-granite_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-gigogne-en-granite_4.jpg" "https://drive.google.com/uc?export=download&id=1V41_FezOZyR0uwefx9_o8Fg5EPz_0UpW" 2>/dev/null
  if [ -s "public/images/products/table-basse-gigogne-en-granite_4.jpg" ] && file "public/images/products/table-basse-gigogne-en-granite_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-gigogne-en-granite_4.jpg"
    curl -sL -o "public/images/products/table-basse-gigogne-en-granite_4.jpg" "https://lh3.googleusercontent.com/d/1V41_FezOZyR0uwefx9_o8Fg5EPz_0UpW" 2>/dev/null
    if [ -s "public/images/products/table-basse-gigogne-en-granite_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-laqu-e-blanc_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-laqu-e-blanc_1.jpg" "https://drive.google.com/uc?export=download&id=1-nunc3iUcK93Wkz1MniXrUlNQmcfwfWl" 2>/dev/null
  if [ -s "public/images/products/table-basse-laqu-e-blanc_1.jpg" ] && file "public/images/products/table-basse-laqu-e-blanc_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-laqu-e-blanc_1.jpg"
    curl -sL -o "public/images/products/table-basse-laqu-e-blanc_1.jpg" "https://lh3.googleusercontent.com/d/1-nunc3iUcK93Wkz1MniXrUlNQmcfwfWl" 2>/dev/null
    if [ -s "public/images/products/table-basse-laqu-e-blanc_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-laqu-e-blanc_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-laqu-e-blanc_2.jpg" "https://drive.google.com/uc?export=download&id=113qaRvHTXP33yFDY-Bpfn-o4pjZeSTWz" 2>/dev/null
  if [ -s "public/images/products/table-basse-laqu-e-blanc_2.jpg" ] && file "public/images/products/table-basse-laqu-e-blanc_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-laqu-e-blanc_2.jpg"
    curl -sL -o "public/images/products/table-basse-laqu-e-blanc_2.jpg" "https://lh3.googleusercontent.com/d/113qaRvHTXP33yFDY-Bpfn-o4pjZeSTWz" 2>/dev/null
    if [ -s "public/images/products/table-basse-laqu-e-blanc_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-laqu-e-blanc_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-laqu-e-blanc_3.jpg" "https://drive.google.com/uc?export=download&id=1ZlCCTfK6FOJO4zeAq_WDhfIacqqq7LSY" 2>/dev/null
  if [ -s "public/images/products/table-basse-laqu-e-blanc_3.jpg" ] && file "public/images/products/table-basse-laqu-e-blanc_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-laqu-e-blanc_3.jpg"
    curl -sL -o "public/images/products/table-basse-laqu-e-blanc_3.jpg" "https://lh3.googleusercontent.com/d/1ZlCCTfK6FOJO4zeAq_WDhfIacqqq7LSY" 2>/dev/null
    if [ -s "public/images/products/table-basse-laqu-e-blanc_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-laqu-e-blanc_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-laqu-e-blanc_4.jpg" "https://drive.google.com/uc?export=download&id=1kbczpdp0UkB6IEYANmwnJ3vom45gMqGL" 2>/dev/null
  if [ -s "public/images/products/table-basse-laqu-e-blanc_4.jpg" ] && file "public/images/products/table-basse-laqu-e-blanc_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-laqu-e-blanc_4.jpg"
    curl -sL -o "public/images/products/table-basse-laqu-e-blanc_4.jpg" "https://lh3.googleusercontent.com/d/1kbczpdp0UkB6IEYANmwnJ3vom45gMqGL" 2>/dev/null
    if [ -s "public/images/products/table-basse-laqu-e-blanc_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_1.jpg" "https://drive.google.com/uc?export=download&id=1oA6UbS5hqS8yAu407Hi6jcBOVkkXK8To" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_1.jpg" ] && file "public/images/products/table-basse-minimalis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_1.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_1.jpg" "https://lh3.googleusercontent.com/d/1oA6UbS5hqS8yAu407Hi6jcBOVkkXK8To" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_2.jpg" "https://drive.google.com/uc?export=download&id=1GFN-BFfQdhVNL3Yf8uPWdE90uk0wHhvd" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_2.jpg" ] && file "public/images/products/table-basse-minimalis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_2.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_2.jpg" "https://lh3.googleusercontent.com/d/1GFN-BFfQdhVNL3Yf8uPWdE90uk0wHhvd" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_3.jpg" "https://drive.google.com/uc?export=download&id=1_mWICacYYf7b3edg3XPnJ1U99Zsw5rGV" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_3.jpg" ] && file "public/images/products/table-basse-minimalis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_3.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_3.jpg" "https://lh3.googleusercontent.com/d/1_mWICacYYf7b3edg3XPnJ1U99Zsw5rGV" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_4.jpg" "https://drive.google.com/uc?export=download&id=1Ns07O_K82inmNjgre72RGsAq9FqqBYeK" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_4.jpg" ] && file "public/images/products/table-basse-minimalis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_4.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_4.jpg" "https://lh3.googleusercontent.com/d/1Ns07O_K82inmNjgre72RGsAq9FqqBYeK" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_1.jpg" "https://drive.google.com/uc?export=download&id=1fUJsnOnkCWJE2GiRkRsgETDMA5TxTKmS" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_1.jpg" ] && file "public/images/products/table-basse-minimalis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_1.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_1.jpg" "https://lh3.googleusercontent.com/d/1fUJsnOnkCWJE2GiRkRsgETDMA5TxTKmS" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_2.jpg" "https://drive.google.com/uc?export=download&id=1VOT5EJBx7hdbb61VB2QpO7PBKVp5V0nG" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_2.jpg" ] && file "public/images/products/table-basse-minimalis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_2.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_2.jpg" "https://lh3.googleusercontent.com/d/1VOT5EJBx7hdbb61VB2QpO7PBKVp5V0nG" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_3.jpg" "https://drive.google.com/uc?export=download&id=1JycsARO0HcwdiBy85ZasgG3QnC3wXnyJ" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_3.jpg" ] && file "public/images/products/table-basse-minimalis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_3.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_3.jpg" "https://lh3.googleusercontent.com/d/1JycsARO0HcwdiBy85ZasgG3QnC3wXnyJ" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis_4.jpg" "https://drive.google.com/uc?export=download&id=1_RyaG_uBlbdmxmzU-RCxLONzn-g6IX2U" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis_4.jpg" ] && file "public/images/products/table-basse-minimalis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis_4.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis_4.jpg" "https://lh3.googleusercontent.com/d/1_RyaG_uBlbdmxmzU-RCxLONzn-g6IX2U" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis-tiroirs_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_1.jpg" "https://drive.google.com/uc?export=download&id=1p3y4J1BGIF3np-2HqL0IuOaXDsYBhsSz" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis-tiroirs_1.jpg" ] && file "public/images/products/table-basse-minimalis-tiroirs_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis-tiroirs_1.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_1.jpg" "https://lh3.googleusercontent.com/d/1p3y4J1BGIF3np-2HqL0IuOaXDsYBhsSz" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis-tiroirs_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis-tiroirs_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_2.jpg" "https://drive.google.com/uc?export=download&id=1pcMAOcmChuY9PXuDTjeNjcUVRPH8JHx4" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis-tiroirs_2.jpg" ] && file "public/images/products/table-basse-minimalis-tiroirs_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis-tiroirs_2.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_2.jpg" "https://lh3.googleusercontent.com/d/1pcMAOcmChuY9PXuDTjeNjcUVRPH8JHx4" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis-tiroirs_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis-tiroirs_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_3.jpg" "https://drive.google.com/uc?export=download&id=1kGqQXasY2oJpnG_N2OjekmL3hz-M6odW" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis-tiroirs_3.jpg" ] && file "public/images/products/table-basse-minimalis-tiroirs_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis-tiroirs_3.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_3.jpg" "https://lh3.googleusercontent.com/d/1kGqQXasY2oJpnG_N2OjekmL3hz-M6odW" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis-tiroirs_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-minimalis-tiroirs_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_4.jpg" "https://drive.google.com/uc?export=download&id=1h13SrLrh-6jUTDWlf4jkrpUruuUDsYUI" 2>/dev/null
  if [ -s "public/images/products/table-basse-minimalis-tiroirs_4.jpg" ] && file "public/images/products/table-basse-minimalis-tiroirs_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-minimalis-tiroirs_4.jpg"
    curl -sL -o "public/images/products/table-basse-minimalis-tiroirs_4.jpg" "https://lh3.googleusercontent.com/d/1h13SrLrh-6jUTDWlf4jkrpUruuUDsYUI" 2>/dev/null
    if [ -s "public/images/products/table-basse-minimalis-tiroirs_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-pieds-m-tal_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-pieds-m-tal_1.jpg" "https://drive.google.com/uc?export=download&id=1P_iA6OTYhthnh8XSacU4FXXaEYWuZ-eP" 2>/dev/null
  if [ -s "public/images/products/table-basse-pieds-m-tal_1.jpg" ] && file "public/images/products/table-basse-pieds-m-tal_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-pieds-m-tal_1.jpg"
    curl -sL -o "public/images/products/table-basse-pieds-m-tal_1.jpg" "https://lh3.googleusercontent.com/d/1P_iA6OTYhthnh8XSacU4FXXaEYWuZ-eP" 2>/dev/null
    if [ -s "public/images/products/table-basse-pieds-m-tal_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-pieds-m-tal_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-pieds-m-tal_2.jpg" "https://drive.google.com/uc?export=download&id=1TcDKEUA562lC86aXM2FnK8VzrDG9J2aA" 2>/dev/null
  if [ -s "public/images/products/table-basse-pieds-m-tal_2.jpg" ] && file "public/images/products/table-basse-pieds-m-tal_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-pieds-m-tal_2.jpg"
    curl -sL -o "public/images/products/table-basse-pieds-m-tal_2.jpg" "https://lh3.googleusercontent.com/d/1TcDKEUA562lC86aXM2FnK8VzrDG9J2aA" 2>/dev/null
    if [ -s "public/images/products/table-basse-pieds-m-tal_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-pieds-m-tal_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-pieds-m-tal_3.jpg" "https://drive.google.com/uc?export=download&id=1TcDXCNDh6K26vqaSxUKFszOEbroOea0r" 2>/dev/null
  if [ -s "public/images/products/table-basse-pieds-m-tal_3.jpg" ] && file "public/images/products/table-basse-pieds-m-tal_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-pieds-m-tal_3.jpg"
    curl -sL -o "public/images/products/table-basse-pieds-m-tal_3.jpg" "https://lh3.googleusercontent.com/d/1TcDXCNDh6K26vqaSxUKFszOEbroOea0r" 2>/dev/null
    if [ -s "public/images/products/table-basse-pieds-m-tal_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-pieds-m-tal_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-pieds-m-tal_4.jpg" "https://drive.google.com/uc?export=download&id=1syeAt9BNQbwnWCxXQcuQ1CDkjRtnn8RF" 2>/dev/null
  if [ -s "public/images/products/table-basse-pieds-m-tal_4.jpg" ] && file "public/images/products/table-basse-pieds-m-tal_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-pieds-m-tal_4.jpg"
    curl -sL -o "public/images/products/table-basse-pieds-m-tal_4.jpg" "https://lh3.googleusercontent.com/d/1syeAt9BNQbwnWCxXQcuQ1CDkjRtnn8RF" 2>/dev/null
    if [ -s "public/images/products/table-basse-pieds-m-tal_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-telur_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-telur_1.jpg" "https://drive.google.com/uc?export=download&id=1RaFwquPporCJEh0vMNqCnYtvr2QQ8chX" 2>/dev/null
  if [ -s "public/images/products/table-basse-telur_1.jpg" ] && file "public/images/products/table-basse-telur_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-telur_1.jpg"
    curl -sL -o "public/images/products/table-basse-telur_1.jpg" "https://lh3.googleusercontent.com/d/1RaFwquPporCJEh0vMNqCnYtvr2QQ8chX" 2>/dev/null
    if [ -s "public/images/products/table-basse-telur_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-telur_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-telur_2.jpg" "https://drive.google.com/uc?export=download&id=1Xb5OIzDiJfbD2hmOcIKZXe7L1p7MJAft" 2>/dev/null
  if [ -s "public/images/products/table-basse-telur_2.jpg" ] && file "public/images/products/table-basse-telur_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-telur_2.jpg"
    curl -sL -o "public/images/products/table-basse-telur_2.jpg" "https://lh3.googleusercontent.com/d/1Xb5OIzDiJfbD2hmOcIKZXe7L1p7MJAft" 2>/dev/null
    if [ -s "public/images/products/table-basse-telur_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-telur_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-telur_3.jpg" "https://drive.google.com/uc?export=download&id=1Aqk7S2ngrubs-BNp5BGZTNgi-NdhI1SX" 2>/dev/null
  if [ -s "public/images/products/table-basse-telur_3.jpg" ] && file "public/images/products/table-basse-telur_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-telur_3.jpg"
    curl -sL -o "public/images/products/table-basse-telur_3.jpg" "https://lh3.googleusercontent.com/d/1Aqk7S2ngrubs-BNp5BGZTNgi-NdhI1SX" 2>/dev/null
    if [ -s "public/images/products/table-basse-telur_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-telur_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-telur_4.jpg" "https://drive.google.com/uc?export=download&id=1YvVx_nGZMehcnw5fRG48CxMNZ50rFYZE" 2>/dev/null
  if [ -s "public/images/products/table-basse-telur_4.jpg" ] && file "public/images/products/table-basse-telur_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-telur_4.jpg"
    curl -sL -o "public/images/products/table-basse-telur_4.jpg" "https://lh3.googleusercontent.com/d/1YvVx_nGZMehcnw5fRG48CxMNZ50rFYZE" 2>/dev/null
    if [ -s "public/images/products/table-basse-telur_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tangga_1.jpg" ]; then
  curl -sL -o "public/images/products/tangga_1.jpg" "https://drive.google.com/uc?export=download&id=18LIx7NwaH5Cd44MdKOuCh8x3PpqGBO4x" 2>/dev/null
  if [ -s "public/images/products/tangga_1.jpg" ] && file "public/images/products/tangga_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tangga_1.jpg"
    curl -sL -o "public/images/products/tangga_1.jpg" "https://lh3.googleusercontent.com/d/18LIx7NwaH5Cd44MdKOuCh8x3PpqGBO4x" 2>/dev/null
    if [ -s "public/images/products/tangga_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tangga_2.jpg" ]; then
  curl -sL -o "public/images/products/tangga_2.jpg" "https://drive.google.com/uc?export=download&id=1WMjT1usw87ku-jMG43svDDrOFbczAajV" 2>/dev/null
  if [ -s "public/images/products/tangga_2.jpg" ] && file "public/images/products/tangga_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tangga_2.jpg"
    curl -sL -o "public/images/products/tangga_2.jpg" "https://lh3.googleusercontent.com/d/1WMjT1usw87ku-jMG43svDDrOFbczAajV" 2>/dev/null
    if [ -s "public/images/products/tangga_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tangga_3.jpg" ]; then
  curl -sL -o "public/images/products/tangga_3.jpg" "https://drive.google.com/uc?export=download&id=1v3wLaAqqEdvzN47YHrC_jszHJWKPed14" 2>/dev/null
  if [ -s "public/images/products/tangga_3.jpg" ] && file "public/images/products/tangga_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tangga_3.jpg"
    curl -sL -o "public/images/products/tangga_3.jpg" "https://lh3.googleusercontent.com/d/1v3wLaAqqEdvzN47YHrC_jszHJWKPed14" 2>/dev/null
    if [ -s "public/images/products/tangga_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tangga_4.jpg" ]; then
  curl -sL -o "public/images/products/tangga_4.jpg" "https://drive.google.com/uc?export=download&id=1kwCiNp-l4vGJzgKZUv9EjMKNl5jzG92H" 2>/dev/null
  if [ -s "public/images/products/tangga_4.jpg" ] && file "public/images/products/tangga_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tangga_4.jpg"
    curl -sL -o "public/images/products/tangga_4.jpg" "https://lh3.googleusercontent.com/d/1kwCiNp-l4vGJzgKZUv9EjMKNl5jzG92H" 2>/dev/null
    if [ -s "public/images/products/tangga_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/texas_1.jpg" ]; then
  curl -sL -o "public/images/products/texas_1.jpg" "https://drive.google.com/uc?export=download&id=1xzw7kc4D5f5FQO7ZJaVFvkR5Rw46RVYd" 2>/dev/null
  if [ -s "public/images/products/texas_1.jpg" ] && file "public/images/products/texas_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/texas_1.jpg"
    curl -sL -o "public/images/products/texas_1.jpg" "https://lh3.googleusercontent.com/d/1xzw7kc4D5f5FQO7ZJaVFvkR5Rw46RVYd" 2>/dev/null
    if [ -s "public/images/products/texas_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/texas_2.jpg" ]; then
  curl -sL -o "public/images/products/texas_2.jpg" "https://drive.google.com/uc?export=download&id=1JDT_T6I2uAWVY3XAzCdUm8nRMyEF5OjO" 2>/dev/null
  if [ -s "public/images/products/texas_2.jpg" ] && file "public/images/products/texas_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/texas_2.jpg"
    curl -sL -o "public/images/products/texas_2.jpg" "https://lh3.googleusercontent.com/d/1JDT_T6I2uAWVY3XAzCdUm8nRMyEF5OjO" 2>/dev/null
    if [ -s "public/images/products/texas_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/texas_3.jpg" ]; then
  curl -sL -o "public/images/products/texas_3.jpg" "https://drive.google.com/uc?export=download&id=1XS-ag_ym4KFK_QznM7pflewK20FzVAIB" 2>/dev/null
  if [ -s "public/images/products/texas_3.jpg" ] && file "public/images/products/texas_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/texas_3.jpg"
    curl -sL -o "public/images/products/texas_3.jpg" "https://lh3.googleusercontent.com/d/1XS-ag_ym4KFK_QznM7pflewK20FzVAIB" 2>/dev/null
    if [ -s "public/images/products/texas_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/texas_4.jpg" ]; then
  curl -sL -o "public/images/products/texas_4.jpg" "https://drive.google.com/uc?export=download&id=1DRFC3zdiaeJVyQji-FfEZBdED9ICAhNN" 2>/dev/null
  if [ -s "public/images/products/texas_4.jpg" ] && file "public/images/products/texas_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/texas_4.jpg"
    curl -sL -o "public/images/products/texas_4.jpg" "https://lh3.googleusercontent.com/d/1DRFC3zdiaeJVyQji-FfEZBdED9ICAhNN" 2>/dev/null
    if [ -s "public/images/products/texas_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jampi_1.jpg" ]; then
  curl -sL -o "public/images/products/jampi_1.jpg" "https://drive.google.com/uc?export=download&id=1opVuE5ckfig5HANp_CSLvLgdHcDv2Jmm" 2>/dev/null
  if [ -s "public/images/products/jampi_1.jpg" ] && file "public/images/products/jampi_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jampi_1.jpg"
    curl -sL -o "public/images/products/jampi_1.jpg" "https://lh3.googleusercontent.com/d/1opVuE5ckfig5HANp_CSLvLgdHcDv2Jmm" 2>/dev/null
    if [ -s "public/images/products/jampi_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jampi_2.jpg" ]; then
  curl -sL -o "public/images/products/jampi_2.jpg" "https://drive.google.com/uc?export=download&id=11oh5eTkhuwizZxOgS9v1SGqZwTRxXnAF" 2>/dev/null
  if [ -s "public/images/products/jampi_2.jpg" ] && file "public/images/products/jampi_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jampi_2.jpg"
    curl -sL -o "public/images/products/jampi_2.jpg" "https://lh3.googleusercontent.com/d/11oh5eTkhuwizZxOgS9v1SGqZwTRxXnAF" 2>/dev/null
    if [ -s "public/images/products/jampi_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jampi_3.jpg" ]; then
  curl -sL -o "public/images/products/jampi_3.jpg" "https://drive.google.com/uc?export=download&id=1PgrPtgrznvFcgIc5eb0TiCL2zeLgBBWZ" 2>/dev/null
  if [ -s "public/images/products/jampi_3.jpg" ] && file "public/images/products/jampi_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jampi_3.jpg"
    curl -sL -o "public/images/products/jampi_3.jpg" "https://lh3.googleusercontent.com/d/1PgrPtgrznvFcgIc5eb0TiCL2zeLgBBWZ" 2>/dev/null
    if [ -s "public/images/products/jampi_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/jampi_4.jpg" ]; then
  curl -sL -o "public/images/products/jampi_4.jpg" "https://drive.google.com/uc?export=download&id=13OWESiryyUyNJ-h2Il716LI334UxQUNp" 2>/dev/null
  if [ -s "public/images/products/jampi_4.jpg" ] && file "public/images/products/jampi_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/jampi_4.jpg"
    curl -sL -o "public/images/products/jampi_4.jpg" "https://lh3.googleusercontent.com/d/13OWESiryyUyNJ-h2Il716LI334UxQUNp" 2>/dev/null
    if [ -s "public/images/products/jampi_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-floride_1.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-floride_1.jpg" "https://drive.google.com/uc?export=download&id=1qGjoI8o5_pYThOZT7aVJHjRei7WQtx_6" 2>/dev/null
  if [ -s "public/images/products/table-basse-floride_1.jpg" ] && file "public/images/products/table-basse-floride_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-floride_1.jpg"
    curl -sL -o "public/images/products/table-basse-floride_1.jpg" "https://lh3.googleusercontent.com/d/1qGjoI8o5_pYThOZT7aVJHjRei7WQtx_6" 2>/dev/null
    if [ -s "public/images/products/table-basse-floride_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-floride_2.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-floride_2.jpg" "https://drive.google.com/uc?export=download&id=1PqwIt7_ARtMyv8xTerg5ebhITtn_VZSi" 2>/dev/null
  if [ -s "public/images/products/table-basse-floride_2.jpg" ] && file "public/images/products/table-basse-floride_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-floride_2.jpg"
    curl -sL -o "public/images/products/table-basse-floride_2.jpg" "https://lh3.googleusercontent.com/d/1PqwIt7_ARtMyv8xTerg5ebhITtn_VZSi" 2>/dev/null
    if [ -s "public/images/products/table-basse-floride_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-floride_3.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-floride_3.jpg" "https://drive.google.com/uc?export=download&id=1kX_y0OlrU-hpZdlJ8Ew6q99BlhfFbidw" 2>/dev/null
  if [ -s "public/images/products/table-basse-floride_3.jpg" ] && file "public/images/products/table-basse-floride_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-floride_3.jpg"
    curl -sL -o "public/images/products/table-basse-floride_3.jpg" "https://lh3.googleusercontent.com/d/1kX_y0OlrU-hpZdlJ8Ew6q99BlhfFbidw" 2>/dev/null
    if [ -s "public/images/products/table-basse-floride_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-basse-floride_4.jpg" ]; then
  curl -sL -o "public/images/products/table-basse-floride_4.jpg" "https://drive.google.com/uc?export=download&id=1NQfE1LrXDhU0g_mPJoqI0bKR8XsEMamd" 2>/dev/null
  if [ -s "public/images/products/table-basse-floride_4.jpg" ] && file "public/images/products/table-basse-floride_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-basse-floride_4.jpg"
    curl -sL -o "public/images/products/table-basse-floride_4.jpg" "https://lh3.googleusercontent.com/d/1NQfE1LrXDhU0g_mPJoqI0bKR8XsEMamd" 2>/dev/null
    if [ -s "public/images/products/table-basse-floride_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-12-casiers_1.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-12-casiers_1.jpg" "https://drive.google.com/uc?export=download&id=1GPI-eKl2oy1UQRv2Clx2g7QMNXf4HUjP" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-12-casiers_1.jpg" ] && file "public/images/products/biblioth-que-12-casiers_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-12-casiers_1.jpg"
    curl -sL -o "public/images/products/biblioth-que-12-casiers_1.jpg" "https://lh3.googleusercontent.com/d/1GPI-eKl2oy1UQRv2Clx2g7QMNXf4HUjP" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-12-casiers_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-12-casiers_2.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-12-casiers_2.jpg" "https://drive.google.com/uc?export=download&id=1ZLRoKKRmMXSU8ZDmr9xhn707u-Kdlip4" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-12-casiers_2.jpg" ] && file "public/images/products/biblioth-que-12-casiers_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-12-casiers_2.jpg"
    curl -sL -o "public/images/products/biblioth-que-12-casiers_2.jpg" "https://lh3.googleusercontent.com/d/1ZLRoKKRmMXSU8ZDmr9xhn707u-Kdlip4" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-12-casiers_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-12-casiers_3.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-12-casiers_3.jpg" "https://drive.google.com/uc?export=download&id=1T64-Jd8obyN_0uX0xlKYacljNlszS3JL" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-12-casiers_3.jpg" ] && file "public/images/products/biblioth-que-12-casiers_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-12-casiers_3.jpg"
    curl -sL -o "public/images/products/biblioth-que-12-casiers_3.jpg" "https://lh3.googleusercontent.com/d/1T64-Jd8obyN_0uX0xlKYacljNlszS3JL" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-12-casiers_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-12-casiers_4.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-12-casiers_4.jpg" "https://drive.google.com/uc?export=download&id=1fyqxWSctpUE4wU1vT_cbrp3o_8ZT-pxB" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-12-casiers_4.jpg" ] && file "public/images/products/biblioth-que-12-casiers_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-12-casiers_4.jpg"
    curl -sL -o "public/images/products/biblioth-que-12-casiers_4.jpg" "https://lh3.googleusercontent.com/d/1fyqxWSctpUE4wU1vT_cbrp3o_8ZT-pxB" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-12-casiers_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-lounge-4-portes_1.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_1.jpg" "https://drive.google.com/uc?export=download&id=1T_HKHolR29u5hWIGPpsO8tyWTiIuqXIx" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-lounge-4-portes_1.jpg" ] && file "public/images/products/biblioth-que-lounge-4-portes_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-lounge-4-portes_1.jpg"
    curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_1.jpg" "https://lh3.googleusercontent.com/d/1T_HKHolR29u5hWIGPpsO8tyWTiIuqXIx" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-lounge-4-portes_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-lounge-4-portes_2.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_2.jpg" "https://drive.google.com/uc?export=download&id=1t24mBZ6TMsbY3j_raWLYUMbAwWXjaSzm" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-lounge-4-portes_2.jpg" ] && file "public/images/products/biblioth-que-lounge-4-portes_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-lounge-4-portes_2.jpg"
    curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_2.jpg" "https://lh3.googleusercontent.com/d/1t24mBZ6TMsbY3j_raWLYUMbAwWXjaSzm" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-lounge-4-portes_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-lounge-4-portes_3.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_3.jpg" "https://drive.google.com/uc?export=download&id=1KUQhpSHQuIDme35WHp4w6jVeCV8G2Oyg" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-lounge-4-portes_3.jpg" ] && file "public/images/products/biblioth-que-lounge-4-portes_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-lounge-4-portes_3.jpg"
    curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_3.jpg" "https://lh3.googleusercontent.com/d/1KUQhpSHQuIDme35WHp4w6jVeCV8G2Oyg" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-lounge-4-portes_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-lounge-4-portes_4.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_4.jpg" "https://drive.google.com/uc?export=download&id=1-519Q_LpEYBV0r0lv-QSUsm0w5p2chVH" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-lounge-4-portes_4.jpg" ] && file "public/images/products/biblioth-que-lounge-4-portes_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-lounge-4-portes_4.jpg"
    curl -sL -o "public/images/products/biblioth-que-lounge-4-portes_4.jpg" "https://lh3.googleusercontent.com/d/1-519Q_LpEYBV0r0lv-QSUsm0w5p2chVH" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-lounge-4-portes_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-seminyak_1.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-seminyak_1.jpg" "https://drive.google.com/uc?export=download&id=1jmG61rCDbdn66oGsCZVYkhqXCmp3B7i_" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-seminyak_1.jpg" ] && file "public/images/products/biblioth-que-seminyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-seminyak_1.jpg"
    curl -sL -o "public/images/products/biblioth-que-seminyak_1.jpg" "https://lh3.googleusercontent.com/d/1jmG61rCDbdn66oGsCZVYkhqXCmp3B7i_" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-seminyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-seminyak_2.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-seminyak_2.jpg" "https://drive.google.com/uc?export=download&id=1AKBrGbOeqA6tNmxjKIJj4AUlzrmQ7DhR" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-seminyak_2.jpg" ] && file "public/images/products/biblioth-que-seminyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-seminyak_2.jpg"
    curl -sL -o "public/images/products/biblioth-que-seminyak_2.jpg" "https://lh3.googleusercontent.com/d/1AKBrGbOeqA6tNmxjKIJj4AUlzrmQ7DhR" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-seminyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-seminyak_3.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-seminyak_3.jpg" "https://drive.google.com/uc?export=download&id=1j6FS1RNtQ0dZcFy74S2Po2xLI2vO-F8x" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-seminyak_3.jpg" ] && file "public/images/products/biblioth-que-seminyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-seminyak_3.jpg"
    curl -sL -o "public/images/products/biblioth-que-seminyak_3.jpg" "https://lh3.googleusercontent.com/d/1j6FS1RNtQ0dZcFy74S2Po2xLI2vO-F8x" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-seminyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-seminyak_4.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-seminyak_4.jpg" "https://drive.google.com/uc?export=download&id=1oUWhKQnIFmaW1rri2jbQ9k0ezFaKnbY0" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-seminyak_4.jpg" ] && file "public/images/products/biblioth-que-seminyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-seminyak_4.jpg"
    curl -sL -o "public/images/products/biblioth-que-seminyak_4.jpg" "https://lh3.googleusercontent.com/d/1oUWhKQnIFmaW1rri2jbQ9k0ezFaKnbY0" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-seminyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-blokus_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-blokus_1.jpg" "https://drive.google.com/uc?export=download&id=1eOEkET0gpuq9V2DTjbm06EmwKdj3Vyrf" 2>/dev/null
  if [ -s "public/images/products/buffet-blokus_1.jpg" ] && file "public/images/products/buffet-blokus_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-blokus_1.jpg"
    curl -sL -o "public/images/products/buffet-blokus_1.jpg" "https://lh3.googleusercontent.com/d/1eOEkET0gpuq9V2DTjbm06EmwKdj3Vyrf" 2>/dev/null
    if [ -s "public/images/products/buffet-blokus_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-blokus_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-blokus_2.jpg" "https://drive.google.com/uc?export=download&id=144teDq7EXhvkgTJ7aTsfGl74FDmAs17N" 2>/dev/null
  if [ -s "public/images/products/buffet-blokus_2.jpg" ] && file "public/images/products/buffet-blokus_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-blokus_2.jpg"
    curl -sL -o "public/images/products/buffet-blokus_2.jpg" "https://lh3.googleusercontent.com/d/144teDq7EXhvkgTJ7aTsfGl74FDmAs17N" 2>/dev/null
    if [ -s "public/images/products/buffet-blokus_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-blokus_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-blokus_3.jpg" "https://drive.google.com/uc?export=download&id=1aQC4TcN8WT34G9U3HicbSLGb_f1hqB4a" 2>/dev/null
  if [ -s "public/images/products/buffet-blokus_3.jpg" ] && file "public/images/products/buffet-blokus_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-blokus_3.jpg"
    curl -sL -o "public/images/products/buffet-blokus_3.jpg" "https://lh3.googleusercontent.com/d/1aQC4TcN8WT34G9U3HicbSLGb_f1hqB4a" 2>/dev/null
    if [ -s "public/images/products/buffet-blokus_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-blokus_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-blokus_4.jpg" "https://drive.google.com/uc?export=download&id=1OnMzH7wSda-EsOE9yF7PVhdmRE-5G4rL" 2>/dev/null
  if [ -s "public/images/products/buffet-blokus_4.jpg" ] && file "public/images/products/buffet-blokus_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-blokus_4.jpg"
    curl -sL -o "public/images/products/buffet-blokus_4.jpg" "https://lh3.googleusercontent.com/d/1OnMzH7wSda-EsOE9yF7PVhdmRE-5G4rL" 2>/dev/null
    if [ -s "public/images/products/buffet-blokus_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-1p-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=1p4XhJXBAtkx47fK-j3pw4Q0-a64-pVjG" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-1p-krepyak_1.jpg" ] && file "public/images/products/buffet-evolia-1p-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-1p-krepyak_1.jpg"
    curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/1p4XhJXBAtkx47fK-j3pw4Q0-a64-pVjG" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-1p-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-1p-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=1qjRa0xe2jdBxIiAyxnkF72Jhs8GugvB4" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-1p-krepyak_2.jpg" ] && file "public/images/products/buffet-evolia-1p-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-1p-krepyak_2.jpg"
    curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/1qjRa0xe2jdBxIiAyxnkF72Jhs8GugvB4" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-1p-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-1p-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=1VCR21FYyzEoiZjvPMPHryccf3KyXBagg" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-1p-krepyak_3.jpg" ] && file "public/images/products/buffet-evolia-1p-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-1p-krepyak_3.jpg"
    curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/1VCR21FYyzEoiZjvPMPHryccf3KyXBagg" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-1p-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-1p-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1DFtlMAdwAP_aH3bcBrMQAIFOMGnPngc7" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-1p-krepyak_4.jpg" ] && file "public/images/products/buffet-evolia-1p-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-1p-krepyak_4.jpg"
    curl -sL -o "public/images/products/buffet-evolia-1p-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1DFtlMAdwAP_aH3bcBrMQAIFOMGnPngc7" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-1p-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-bloc_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-bloc_1.jpg" "https://drive.google.com/uc?export=download&id=1gfpTHPMZEwUdJ-EC-bA-nGlK4hH_hB9G" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-bloc_1.jpg" ] && file "public/images/products/buffet-evolia-2p-bloc_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-bloc_1.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-bloc_1.jpg" "https://lh3.googleusercontent.com/d/1gfpTHPMZEwUdJ-EC-bA-nGlK4hH_hB9G" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-bloc_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-bloc_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-bloc_2.jpg" "https://drive.google.com/uc?export=download&id=1A9FS8jHT5BbxGn1gXXtfRaLrDUi35UPl" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-bloc_2.jpg" ] && file "public/images/products/buffet-evolia-2p-bloc_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-bloc_2.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-bloc_2.jpg" "https://lh3.googleusercontent.com/d/1A9FS8jHT5BbxGn1gXXtfRaLrDUi35UPl" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-bloc_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-bloc_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-bloc_3.jpg" "https://drive.google.com/uc?export=download&id=1ftEGRVhRG2yeMdt0-noGMkGetKUm9WPY" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-bloc_3.jpg" ] && file "public/images/products/buffet-evolia-2p-bloc_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-bloc_3.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-bloc_3.jpg" "https://lh3.googleusercontent.com/d/1ftEGRVhRG2yeMdt0-noGMkGetKUm9WPY" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-bloc_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-bloc_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-bloc_4.jpg" "https://drive.google.com/uc?export=download&id=1u5kumsGR9L_6Lr81-dDW22Gd5EqEh5YE" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-bloc_4.jpg" ] && file "public/images/products/buffet-evolia-2p-bloc_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-bloc_4.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-bloc_4.jpg" "https://lh3.googleusercontent.com/d/1u5kumsGR9L_6Lr81-dDW22Gd5EqEh5YE" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-bloc_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-krepyak_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_1.jpg" "https://drive.google.com/uc?export=download&id=1qAVAdUx5MALMTejWsaMHyTVwO82O9uP2" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-krepyak_1.jpg" ] && file "public/images/products/buffet-evolia-2p-krepyak_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-krepyak_1.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_1.jpg" "https://lh3.googleusercontent.com/d/1qAVAdUx5MALMTejWsaMHyTVwO82O9uP2" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-krepyak_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-krepyak_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_2.jpg" "https://drive.google.com/uc?export=download&id=1AchjXCGzepmlgMUmL3TgeIG-9oBs1Vb7" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-krepyak_2.jpg" ] && file "public/images/products/buffet-evolia-2p-krepyak_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-krepyak_2.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_2.jpg" "https://lh3.googleusercontent.com/d/1AchjXCGzepmlgMUmL3TgeIG-9oBs1Vb7" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-krepyak_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-krepyak_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_3.jpg" "https://drive.google.com/uc?export=download&id=12PZwGsdXxIw6elHoBXbXZBQAUcr1DNFJ" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-krepyak_3.jpg" ] && file "public/images/products/buffet-evolia-2p-krepyak_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-krepyak_3.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_3.jpg" "https://lh3.googleusercontent.com/d/12PZwGsdXxIw6elHoBXbXZBQAUcr1DNFJ" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-krepyak_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-2p-krepyak_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_4.jpg" "https://drive.google.com/uc?export=download&id=1omiaO13erfwiFxcGYMlcUrb8Ep3ZhdSt" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-2p-krepyak_4.jpg" ] && file "public/images/products/buffet-evolia-2p-krepyak_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-2p-krepyak_4.jpg"
    curl -sL -o "public/images/products/buffet-evolia-2p-krepyak_4.jpg" "https://lh3.googleusercontent.com/d/1omiaO13erfwiFxcGYMlcUrb8Ep3ZhdSt" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-2p-krepyak_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-3p-bloc_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-3p-bloc_1.jpg" "https://drive.google.com/uc?export=download&id=1ie5rfsHKqlOqkISckyP5TIXWNyuyySva" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-3p-bloc_1.jpg" ] && file "public/images/products/buffet-evolia-3p-bloc_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-3p-bloc_1.jpg"
    curl -sL -o "public/images/products/buffet-evolia-3p-bloc_1.jpg" "https://lh3.googleusercontent.com/d/1ie5rfsHKqlOqkISckyP5TIXWNyuyySva" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-3p-bloc_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-3p-bloc_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-3p-bloc_2.jpg" "https://drive.google.com/uc?export=download&id=17GfHezGe1ifiChJeU2lQlfKuhYJCxCR0" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-3p-bloc_2.jpg" ] && file "public/images/products/buffet-evolia-3p-bloc_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-3p-bloc_2.jpg"
    curl -sL -o "public/images/products/buffet-evolia-3p-bloc_2.jpg" "https://lh3.googleusercontent.com/d/17GfHezGe1ifiChJeU2lQlfKuhYJCxCR0" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-3p-bloc_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-3p-bloc_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-3p-bloc_3.jpg" "https://drive.google.com/uc?export=download&id=1Pb5XjjxqHRUH9RWBkofA_Mru4FY4GSKz" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-3p-bloc_3.jpg" ] && file "public/images/products/buffet-evolia-3p-bloc_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-3p-bloc_3.jpg"
    curl -sL -o "public/images/products/buffet-evolia-3p-bloc_3.jpg" "https://lh3.googleusercontent.com/d/1Pb5XjjxqHRUH9RWBkofA_Mru4FY4GSKz" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-3p-bloc_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-3p-bloc_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-3p-bloc_4.jpg" "https://drive.google.com/uc?export=download&id=1JGo9t_BNkgF1BkINXDSKr9wwhCNML8h-" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-3p-bloc_4.jpg" ] && file "public/images/products/buffet-evolia-3p-bloc_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-3p-bloc_4.jpg"
    curl -sL -o "public/images/products/buffet-evolia-3p-bloc_4.jpg" "https://lh3.googleusercontent.com/d/1JGo9t_BNkgF1BkINXDSKr9wwhCNML8h-" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-3p-bloc_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-4p-bloc_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-4p-bloc_1.jpg" "https://drive.google.com/uc?export=download&id=14_2nFtrhGYUjli7HkJBOpOVToqtLpj5W" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-4p-bloc_1.jpg" ] && file "public/images/products/buffet-evolia-4p-bloc_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-4p-bloc_1.jpg"
    curl -sL -o "public/images/products/buffet-evolia-4p-bloc_1.jpg" "https://lh3.googleusercontent.com/d/14_2nFtrhGYUjli7HkJBOpOVToqtLpj5W" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-4p-bloc_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-4p-bloc_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-4p-bloc_2.jpg" "https://drive.google.com/uc?export=download&id=1xIpqSv0DiGMf5fcE-my77E3_T492HxZc" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-4p-bloc_2.jpg" ] && file "public/images/products/buffet-evolia-4p-bloc_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-4p-bloc_2.jpg"
    curl -sL -o "public/images/products/buffet-evolia-4p-bloc_2.jpg" "https://lh3.googleusercontent.com/d/1xIpqSv0DiGMf5fcE-my77E3_T492HxZc" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-4p-bloc_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-4p-bloc_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-4p-bloc_3.jpg" "https://drive.google.com/uc?export=download&id=1WvXfMiZqIImCg32rWVpHPu-0BuOhY0FM" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-4p-bloc_3.jpg" ] && file "public/images/products/buffet-evolia-4p-bloc_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-4p-bloc_3.jpg"
    curl -sL -o "public/images/products/buffet-evolia-4p-bloc_3.jpg" "https://lh3.googleusercontent.com/d/1WvXfMiZqIImCg32rWVpHPu-0BuOhY0FM" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-4p-bloc_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-evolia-4p-bloc_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-evolia-4p-bloc_4.jpg" "https://drive.google.com/uc?export=download&id=1azQLuajD51su9-6FvuGyntAiSYZvQs1Z" 2>/dev/null
  if [ -s "public/images/products/buffet-evolia-4p-bloc_4.jpg" ] && file "public/images/products/buffet-evolia-4p-bloc_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-evolia-4p-bloc_4.jpg"
    curl -sL -o "public/images/products/buffet-evolia-4p-bloc_4.jpg" "https://lh3.googleusercontent.com/d/1azQLuajD51su9-6FvuGyntAiSYZvQs1Z" 2>/dev/null
    if [ -s "public/images/products/buffet-evolia-4p-bloc_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-hexagonal_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-hexagonal_1.jpg" "https://drive.google.com/uc?export=download&id=1uqoBXbHkeM_S2qijC6ghDMdHKMq7nyTM" 2>/dev/null
  if [ -s "public/images/products/buffet-hexagonal_1.jpg" ] && file "public/images/products/buffet-hexagonal_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-hexagonal_1.jpg"
    curl -sL -o "public/images/products/buffet-hexagonal_1.jpg" "https://lh3.googleusercontent.com/d/1uqoBXbHkeM_S2qijC6ghDMdHKMq7nyTM" 2>/dev/null
    if [ -s "public/images/products/buffet-hexagonal_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-hexagonal_2.jpg" ]; then
  curl -sL -o "public/images/products/buffet-hexagonal_2.jpg" "https://drive.google.com/uc?export=download&id=1Q-gGKAbSYGz4qIjrSutzySV2OFQrquuz" 2>/dev/null
  if [ -s "public/images/products/buffet-hexagonal_2.jpg" ] && file "public/images/products/buffet-hexagonal_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-hexagonal_2.jpg"
    curl -sL -o "public/images/products/buffet-hexagonal_2.jpg" "https://lh3.googleusercontent.com/d/1Q-gGKAbSYGz4qIjrSutzySV2OFQrquuz" 2>/dev/null
    if [ -s "public/images/products/buffet-hexagonal_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-hexagonal_3.jpg" ]; then
  curl -sL -o "public/images/products/buffet-hexagonal_3.jpg" "https://drive.google.com/uc?export=download&id=1egFEpDqY6tsOXwqVpY61allu3iWsg1AM" 2>/dev/null
  if [ -s "public/images/products/buffet-hexagonal_3.jpg" ] && file "public/images/products/buffet-hexagonal_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-hexagonal_3.jpg"
    curl -sL -o "public/images/products/buffet-hexagonal_3.jpg" "https://lh3.googleusercontent.com/d/1egFEpDqY6tsOXwqVpY61allu3iWsg1AM" 2>/dev/null
    if [ -s "public/images/products/buffet-hexagonal_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-hexagonal_4.jpg" ]; then
  curl -sL -o "public/images/products/buffet-hexagonal_4.jpg" "https://drive.google.com/uc?export=download&id=19iMsvA2Np6R09ME3RYu7t7ybEB11dlK9" 2>/dev/null
  if [ -s "public/images/products/buffet-hexagonal_4.jpg" ] && file "public/images/products/buffet-hexagonal_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-hexagonal_4.jpg"
    curl -sL -o "public/images/products/buffet-hexagonal_4.jpg" "https://lh3.googleusercontent.com/d/19iMsvA2Np6R09ME3RYu7t7ybEB11dlK9" 2>/dev/null
    if [ -s "public/images/products/buffet-hexagonal_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-tewah-1p_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-tewah-1p_1.jpg" "https://drive.google.com/uc?export=download&id=1ImlCNCJ4ujB9_iPTL9sx2GFG54dz4CLo" 2>/dev/null
  if [ -s "public/images/products/buffet-tewah-1p_1.jpg" ] && file "public/images/products/buffet-tewah-1p_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-tewah-1p_1.jpg"
    curl -sL -o "public/images/products/buffet-tewah-1p_1.jpg" "https://lh3.googleusercontent.com/d/1ImlCNCJ4ujB9_iPTL9sx2GFG54dz4CLo" 2>/dev/null
    if [ -s "public/images/products/buffet-tewah-1p_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-tewah-2p_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-tewah-2p_1.jpg" "https://drive.google.com/uc?export=download&id=1gZYhb92-zf9c1QC1J176Gjp3sPWmbZcq" 2>/dev/null
  if [ -s "public/images/products/buffet-tewah-2p_1.jpg" ] && file "public/images/products/buffet-tewah-2p_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-tewah-2p_1.jpg"
    curl -sL -o "public/images/products/buffet-tewah-2p_1.jpg" "https://lh3.googleusercontent.com/d/1gZYhb92-zf9c1QC1J176Gjp3sPWmbZcq" 2>/dev/null
    if [ -s "public/images/products/buffet-tewah-2p_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/buffet-tewah-3p_1.jpg" ]; then
  curl -sL -o "public/images/products/buffet-tewah-3p_1.jpg" "https://drive.google.com/uc?export=download&id=15S40YodU4cnoH3XdRYG3mrvOlFvJwC9D" 2>/dev/null
  if [ -s "public/images/products/buffet-tewah-3p_1.jpg" ] && file "public/images/products/buffet-tewah-3p_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/buffet-tewah-3p_1.jpg"
    curl -sL -o "public/images/products/buffet-tewah-3p_1.jpg" "https://lh3.googleusercontent.com/d/15S40YodU4cnoH3XdRYG3mrvOlFvJwC9D" 2>/dev/null
    if [ -s "public/images/products/buffet-tewah-3p_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-damier_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-damier_1.jpg" "https://drive.google.com/uc?export=download&id=1IUwfrCtwbKaPsl-KuIzdtH3FPSx3RLiz" 2>/dev/null
  if [ -s "public/images/products/chaise-damier_1.jpg" ] && file "public/images/products/chaise-damier_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-damier_1.jpg"
    curl -sL -o "public/images/products/chaise-damier_1.jpg" "https://lh3.googleusercontent.com/d/1IUwfrCtwbKaPsl-KuIzdtH3FPSx3RLiz" 2>/dev/null
    if [ -s "public/images/products/chaise-damier_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-damier_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-damier_2.jpg" "https://drive.google.com/uc?export=download&id=1o2oC2VWLAbnd6QRc1yts3KlZOiKlhAwR" 2>/dev/null
  if [ -s "public/images/products/chaise-damier_2.jpg" ] && file "public/images/products/chaise-damier_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-damier_2.jpg"
    curl -sL -o "public/images/products/chaise-damier_2.jpg" "https://lh3.googleusercontent.com/d/1o2oC2VWLAbnd6QRc1yts3KlZOiKlhAwR" 2>/dev/null
    if [ -s "public/images/products/chaise-damier_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-damier_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-damier_3.jpg" "https://drive.google.com/uc?export=download&id=1wuZdEnI5YEXdQo0YgzVItTCRLwqCwDaJ" 2>/dev/null
  if [ -s "public/images/products/chaise-damier_3.jpg" ] && file "public/images/products/chaise-damier_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-damier_3.jpg"
    curl -sL -o "public/images/products/chaise-damier_3.jpg" "https://lh3.googleusercontent.com/d/1wuZdEnI5YEXdQo0YgzVItTCRLwqCwDaJ" 2>/dev/null
    if [ -s "public/images/products/chaise-damier_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-jardin-hampton_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-jardin-hampton_1.jpg" "https://drive.google.com/uc?export=download&id=1TK_60U4gDXYYaOMGA7LXmWUXBUMcWFtW" 2>/dev/null
  if [ -s "public/images/products/chaise-de-jardin-hampton_1.jpg" ] && file "public/images/products/chaise-de-jardin-hampton_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-jardin-hampton_1.jpg"
    curl -sL -o "public/images/products/chaise-de-jardin-hampton_1.jpg" "https://lh3.googleusercontent.com/d/1TK_60U4gDXYYaOMGA7LXmWUXBUMcWFtW" 2>/dev/null
    if [ -s "public/images/products/chaise-de-jardin-hampton_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-jardin-hampton_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-jardin-hampton_2.jpg" "https://drive.google.com/uc?export=download&id=17degKBO6_mMjdZUdxYqPLmzBPIBW9KSx" 2>/dev/null
  if [ -s "public/images/products/chaise-de-jardin-hampton_2.jpg" ] && file "public/images/products/chaise-de-jardin-hampton_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-jardin-hampton_2.jpg"
    curl -sL -o "public/images/products/chaise-de-jardin-hampton_2.jpg" "https://lh3.googleusercontent.com/d/17degKBO6_mMjdZUdxYqPLmzBPIBW9KSx" 2>/dev/null
    if [ -s "public/images/products/chaise-de-jardin-hampton_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-jardin-hampton_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-jardin-hampton_3.jpg" "https://drive.google.com/uc?export=download&id=1R1yIJkopi1Pegh8-cSWG33AYyQipLPX_" 2>/dev/null
  if [ -s "public/images/products/chaise-de-jardin-hampton_3.jpg" ] && file "public/images/products/chaise-de-jardin-hampton_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-jardin-hampton_3.jpg"
    curl -sL -o "public/images/products/chaise-de-jardin-hampton_3.jpg" "https://lh3.googleusercontent.com/d/1R1yIJkopi1Pegh8-cSWG33AYyQipLPX_" 2>/dev/null
    if [ -s "public/images/products/chaise-de-jardin-hampton_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-dowel_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-dowel_1.jpg" "https://drive.google.com/uc?export=download&id=1AhL-UQVERIBgfOPyZYDOtfSsBUtyLJ9E" 2>/dev/null
  if [ -s "public/images/products/chaise-dowel_1.jpg" ] && file "public/images/products/chaise-dowel_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-dowel_1.jpg"
    curl -sL -o "public/images/products/chaise-dowel_1.jpg" "https://lh3.googleusercontent.com/d/1AhL-UQVERIBgfOPyZYDOtfSsBUtyLJ9E" 2>/dev/null
    if [ -s "public/images/products/chaise-dowel_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-dowel_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-dowel_2.jpg" "https://drive.google.com/uc?export=download&id=1H6hjO9m0LjnVCgCB3932TQZElhdk0iGv" 2>/dev/null
  if [ -s "public/images/products/chaise-dowel_2.jpg" ] && file "public/images/products/chaise-dowel_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-dowel_2.jpg"
    curl -sL -o "public/images/products/chaise-dowel_2.jpg" "https://lh3.googleusercontent.com/d/1H6hjO9m0LjnVCgCB3932TQZElhdk0iGv" 2>/dev/null
    if [ -s "public/images/products/chaise-dowel_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-dowel_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-dowel_3.jpg" "https://drive.google.com/uc?export=download&id=1nzScrg0SvkxbvtUzweMJg5v6kQWqyvrd" 2>/dev/null
  if [ -s "public/images/products/chaise-dowel_3.jpg" ] && file "public/images/products/chaise-dowel_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-dowel_3.jpg"
    curl -sL -o "public/images/products/chaise-dowel_3.jpg" "https://lh3.googleusercontent.com/d/1nzScrg0SvkxbvtUzweMJg5v6kQWqyvrd" 2>/dev/null
    if [ -s "public/images/products/chaise-dowel_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-hampton_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-hampton_1.jpg" "https://drive.google.com/uc?export=download&id=11-zdcNXmB_fSpMfqynXEYyae9ZUO_r3P" 2>/dev/null
  if [ -s "public/images/products/chaise-hampton_1.jpg" ] && file "public/images/products/chaise-hampton_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-hampton_1.jpg"
    curl -sL -o "public/images/products/chaise-hampton_1.jpg" "https://lh3.googleusercontent.com/d/11-zdcNXmB_fSpMfqynXEYyae9ZUO_r3P" 2>/dev/null
    if [ -s "public/images/products/chaise-hampton_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-hampton_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-hampton_2.jpg" "https://drive.google.com/uc?export=download&id=1L0jVp7WtohkiHT7zNcG0L-QuaDJvNhiH" 2>/dev/null
  if [ -s "public/images/products/chaise-hampton_2.jpg" ] && file "public/images/products/chaise-hampton_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-hampton_2.jpg"
    curl -sL -o "public/images/products/chaise-hampton_2.jpg" "https://lh3.googleusercontent.com/d/1L0jVp7WtohkiHT7zNcG0L-QuaDJvNhiH" 2>/dev/null
    if [ -s "public/images/products/chaise-hampton_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-hampton_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-hampton_3.jpg" "https://drive.google.com/uc?export=download&id=1XHv0oTYjW9K7vY4FTGX9gSA9i2woc3qB" 2>/dev/null
  if [ -s "public/images/products/chaise-hampton_3.jpg" ] && file "public/images/products/chaise-hampton_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-hampton_3.jpg"
    curl -sL -o "public/images/products/chaise-hampton_3.jpg" "https://lh3.googleusercontent.com/d/1XHv0oTYjW9K7vY4FTGX9gSA9i2woc3qB" 2>/dev/null
    if [ -s "public/images/products/chaise-hampton_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-haute-jardin_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-haute-jardin_1.jpg" "https://drive.google.com/uc?export=download&id=1XYfWO_tLhlWAXLSy_djts-q38tNTpWnI" 2>/dev/null
  if [ -s "public/images/products/chaise-haute-jardin_1.jpg" ] && file "public/images/products/chaise-haute-jardin_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-haute-jardin_1.jpg"
    curl -sL -o "public/images/products/chaise-haute-jardin_1.jpg" "https://lh3.googleusercontent.com/d/1XYfWO_tLhlWAXLSy_djts-q38tNTpWnI" 2>/dev/null
    if [ -s "public/images/products/chaise-haute-jardin_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-haute-jardin_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-haute-jardin_2.jpg" "https://drive.google.com/uc?export=download&id=1qQdz2IZG3VbgnZ1KMquH_QXOJfgSqBMM" 2>/dev/null
  if [ -s "public/images/products/chaise-haute-jardin_2.jpg" ] && file "public/images/products/chaise-haute-jardin_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-haute-jardin_2.jpg"
    curl -sL -o "public/images/products/chaise-haute-jardin_2.jpg" "https://lh3.googleusercontent.com/d/1qQdz2IZG3VbgnZ1KMquH_QXOJfgSqBMM" 2>/dev/null
    if [ -s "public/images/products/chaise-haute-jardin_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-henry_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-henry_1.jpg" "https://drive.google.com/uc?export=download&id=11-zdcNXmB_fSpMfqynXEYyae9ZUO_r3P" 2>/dev/null
  if [ -s "public/images/products/chaise-henry_1.jpg" ] && file "public/images/products/chaise-henry_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-henry_1.jpg"
    curl -sL -o "public/images/products/chaise-henry_1.jpg" "https://lh3.googleusercontent.com/d/11-zdcNXmB_fSpMfqynXEYyae9ZUO_r3P" 2>/dev/null
    if [ -s "public/images/products/chaise-henry_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-henry_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-henry_2.jpg" "https://drive.google.com/uc?export=download&id=1L0jVp7WtohkiHT7zNcG0L-QuaDJvNhiH" 2>/dev/null
  if [ -s "public/images/products/chaise-henry_2.jpg" ] && file "public/images/products/chaise-henry_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-henry_2.jpg"
    curl -sL -o "public/images/products/chaise-henry_2.jpg" "https://lh3.googleusercontent.com/d/1L0jVp7WtohkiHT7zNcG0L-QuaDJvNhiH" 2>/dev/null
    if [ -s "public/images/products/chaise-henry_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-henry_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-henry_3.jpg" "https://drive.google.com/uc?export=download&id=1XHv0oTYjW9K7vY4FTGX9gSA9i2woc3qB" 2>/dev/null
  if [ -s "public/images/products/chaise-henry_3.jpg" ] && file "public/images/products/chaise-henry_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-henry_3.jpg"
    curl -sL -o "public/images/products/chaise-henry_3.jpg" "https://lh3.googleusercontent.com/d/1XHv0oTYjW9K7vY4FTGX9gSA9i2woc3qB" 2>/dev/null
    if [ -s "public/images/products/chaise-henry_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-jaya_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-jaya_1.jpg" "https://drive.google.com/uc?export=download&id=155e_AFMLJHxkOmob2R1XVcnqCmY2eflp" 2>/dev/null
  if [ -s "public/images/products/chaise-jaya_1.jpg" ] && file "public/images/products/chaise-jaya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-jaya_1.jpg"
    curl -sL -o "public/images/products/chaise-jaya_1.jpg" "https://lh3.googleusercontent.com/d/155e_AFMLJHxkOmob2R1XVcnqCmY2eflp" 2>/dev/null
    if [ -s "public/images/products/chaise-jaya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-jaya_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-jaya_2.jpg" "https://drive.google.com/uc?export=download&id=1iu5OVGY3pvBOhwwA2tjsqRnRNIAsDhyx" 2>/dev/null
  if [ -s "public/images/products/chaise-jaya_2.jpg" ] && file "public/images/products/chaise-jaya_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-jaya_2.jpg"
    curl -sL -o "public/images/products/chaise-jaya_2.jpg" "https://lh3.googleusercontent.com/d/1iu5OVGY3pvBOhwwA2tjsqRnRNIAsDhyx" 2>/dev/null
    if [ -s "public/images/products/chaise-jaya_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-jaya_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-jaya_3.jpg" "https://drive.google.com/uc?export=download&id=1_uPjnH7Xq5Zke2VgTlcf4gIjR_pwlvKx" 2>/dev/null
  if [ -s "public/images/products/chaise-jaya_3.jpg" ] && file "public/images/products/chaise-jaya_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-jaya_3.jpg"
    curl -sL -o "public/images/products/chaise-jaya_3.jpg" "https://lh3.googleusercontent.com/d/1_uPjnH7Xq5Zke2VgTlcf4gIjR_pwlvKx" 2>/dev/null
    if [ -s "public/images/products/chaise-jaya_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-julia_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-julia_1.jpg" "https://drive.google.com/uc?export=download&id=1eKnFQO6kbhmZNn51bgpJ0-BKJYw_BNgX" 2>/dev/null
  if [ -s "public/images/products/chaise-julia_1.jpg" ] && file "public/images/products/chaise-julia_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-julia_1.jpg"
    curl -sL -o "public/images/products/chaise-julia_1.jpg" "https://lh3.googleusercontent.com/d/1eKnFQO6kbhmZNn51bgpJ0-BKJYw_BNgX" 2>/dev/null
    if [ -s "public/images/products/chaise-julia_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-julia_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-julia_2.jpg" "https://drive.google.com/uc?export=download&id=1IB1AdFQejxIInYgyCl4yrm29WZRXGK9l" 2>/dev/null
  if [ -s "public/images/products/chaise-julia_2.jpg" ] && file "public/images/products/chaise-julia_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-julia_2.jpg"
    curl -sL -o "public/images/products/chaise-julia_2.jpg" "https://lh3.googleusercontent.com/d/1IB1AdFQejxIInYgyCl4yrm29WZRXGK9l" 2>/dev/null
    if [ -s "public/images/products/chaise-julia_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-julia_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-julia_3.jpg" "https://drive.google.com/uc?export=download&id=1Yg8uAgYxCrZveYM59YaXsAPCXmHJ9azl" 2>/dev/null
  if [ -s "public/images/products/chaise-julia_3.jpg" ] && file "public/images/products/chaise-julia_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-julia_3.jpg"
    curl -sL -o "public/images/products/chaise-julia_3.jpg" "https://lh3.googleusercontent.com/d/1Yg8uAgYxCrZveYM59YaXsAPCXmHJ9azl" 2>/dev/null
    if [ -s "public/images/products/chaise-julia_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-julia_4.jpg" ]; then
  curl -sL -o "public/images/products/chaise-julia_4.jpg" "https://drive.google.com/uc?export=download&id=1yxgQ-HGwiEio1lyt4TLGsH6r6R-vFba-" 2>/dev/null
  if [ -s "public/images/products/chaise-julia_4.jpg" ] && file "public/images/products/chaise-julia_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-julia_4.jpg"
    curl -sL -o "public/images/products/chaise-julia_4.jpg" "https://lh3.googleusercontent.com/d/1yxgQ-HGwiEio1lyt4TLGsH6r6R-vFba-" 2>/dev/null
    if [ -s "public/images/products/chaise-julia_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-kond_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-kond_1.jpg" "https://drive.google.com/uc?export=download&id=1OuLCTT8t32dhhXRJd4OWLQosRbXwvAt_" 2>/dev/null
  if [ -s "public/images/products/chaise-kond_1.jpg" ] && file "public/images/products/chaise-kond_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-kond_1.jpg"
    curl -sL -o "public/images/products/chaise-kond_1.jpg" "https://lh3.googleusercontent.com/d/1OuLCTT8t32dhhXRJd4OWLQosRbXwvAt_" 2>/dev/null
    if [ -s "public/images/products/chaise-kond_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-kond_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-kond_2.jpg" "https://drive.google.com/uc?export=download&id=1Chdr_ELGFJWq-LbXJGvqxKjVz7uqcTKm" 2>/dev/null
  if [ -s "public/images/products/chaise-kond_2.jpg" ] && file "public/images/products/chaise-kond_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-kond_2.jpg"
    curl -sL -o "public/images/products/chaise-kond_2.jpg" "https://lh3.googleusercontent.com/d/1Chdr_ELGFJWq-LbXJGvqxKjVz7uqcTKm" 2>/dev/null
    if [ -s "public/images/products/chaise-kond_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-kond_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-kond_3.jpg" "https://drive.google.com/uc?export=download&id=1B5jrkYareTLVIK5dhRaRSNO10Nd69bMT" 2>/dev/null
  if [ -s "public/images/products/chaise-kond_3.jpg" ] && file "public/images/products/chaise-kond_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-kond_3.jpg"
    curl -sL -o "public/images/products/chaise-kond_3.jpg" "https://lh3.googleusercontent.com/d/1B5jrkYareTLVIK5dhRaRSNO10Nd69bMT" 2>/dev/null
    if [ -s "public/images/products/chaise-kond_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-lono_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-lono_1.jpg" "https://drive.google.com/uc?export=download&id=1jK0Plzc8cO6KQyDYO34tZ-pTHEZ6Vm3U" 2>/dev/null
  if [ -s "public/images/products/chaise-lono_1.jpg" ] && file "public/images/products/chaise-lono_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-lono_1.jpg"
    curl -sL -o "public/images/products/chaise-lono_1.jpg" "https://lh3.googleusercontent.com/d/1jK0Plzc8cO6KQyDYO34tZ-pTHEZ6Vm3U" 2>/dev/null
    if [ -s "public/images/products/chaise-lono_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-lono_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-lono_2.jpg" "https://drive.google.com/uc?export=download&id=1DO9yKRLJCRpAijPztZlD3kw02rOt3lh5" 2>/dev/null
  if [ -s "public/images/products/chaise-lono_2.jpg" ] && file "public/images/products/chaise-lono_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-lono_2.jpg"
    curl -sL -o "public/images/products/chaise-lono_2.jpg" "https://lh3.googleusercontent.com/d/1DO9yKRLJCRpAijPztZlD3kw02rOt3lh5" 2>/dev/null
    if [ -s "public/images/products/chaise-lono_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-lono_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-lono_3.jpg" "https://drive.google.com/uc?export=download&id=1JgrQYJAiUsYYcftbt0tPf6Bj6_b8xxAB" 2>/dev/null
  if [ -s "public/images/products/chaise-lono_3.jpg" ] && file "public/images/products/chaise-lono_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-lono_3.jpg"
    curl -sL -o "public/images/products/chaise-lono_3.jpg" "https://lh3.googleusercontent.com/d/1JgrQYJAiUsYYcftbt0tPf6Bj6_b8xxAB" 2>/dev/null
    if [ -s "public/images/products/chaise-lono_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-nagasaki_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-nagasaki_1.jpg" "https://drive.google.com/uc?export=download&id=1yDgV6RAAKVTOw-2nSWE2wlVeoK27mkbw" 2>/dev/null
  if [ -s "public/images/products/chaise-nagasaki_1.jpg" ] && file "public/images/products/chaise-nagasaki_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-nagasaki_1.jpg"
    curl -sL -o "public/images/products/chaise-nagasaki_1.jpg" "https://lh3.googleusercontent.com/d/1yDgV6RAAKVTOw-2nSWE2wlVeoK27mkbw" 2>/dev/null
    if [ -s "public/images/products/chaise-nagasaki_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-nagasaki_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-nagasaki_2.jpg" "https://drive.google.com/uc?export=download&id=1rI6ORs-G0mvcR9B4cY-XLvpPP3rXt_OJ" 2>/dev/null
  if [ -s "public/images/products/chaise-nagasaki_2.jpg" ] && file "public/images/products/chaise-nagasaki_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-nagasaki_2.jpg"
    curl -sL -o "public/images/products/chaise-nagasaki_2.jpg" "https://lh3.googleusercontent.com/d/1rI6ORs-G0mvcR9B4cY-XLvpPP3rXt_OJ" 2>/dev/null
    if [ -s "public/images/products/chaise-nagasaki_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-nagasaki_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-nagasaki_3.jpg" "https://drive.google.com/uc?export=download&id=1Uh9nTVGDFJ1Uc4DgUC-LZSCwZ6fadkzX" 2>/dev/null
  if [ -s "public/images/products/chaise-nagasaki_3.jpg" ] && file "public/images/products/chaise-nagasaki_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-nagasaki_3.jpg"
    curl -sL -o "public/images/products/chaise-nagasaki_3.jpg" "https://lh3.googleusercontent.com/d/1Uh9nTVGDFJ1Uc4DgUC-LZSCwZ6fadkzX" 2>/dev/null
    if [ -s "public/images/products/chaise-nagasaki_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-nagasaki_4.jpg" ]; then
  curl -sL -o "public/images/products/chaise-nagasaki_4.jpg" "https://drive.google.com/uc?export=download&id=1CGQyukOIovgwANiH1VMte67H-rEkCTC7" 2>/dev/null
  if [ -s "public/images/products/chaise-nagasaki_4.jpg" ] && file "public/images/products/chaise-nagasaki_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-nagasaki_4.jpg"
    curl -sL -o "public/images/products/chaise-nagasaki_4.jpg" "https://lh3.googleusercontent.com/d/1CGQyukOIovgwANiH1VMte67H-rEkCTC7" 2>/dev/null
    if [ -s "public/images/products/chaise-nagasaki_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-rasint_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-rasint_1.jpg" "https://drive.google.com/uc?export=download&id=1YVGbkeoEr6jc2VcaQJU27yGbWzUbTPsJ" 2>/dev/null
  if [ -s "public/images/products/chaise-rasint_1.jpg" ] && file "public/images/products/chaise-rasint_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-rasint_1.jpg"
    curl -sL -o "public/images/products/chaise-rasint_1.jpg" "https://lh3.googleusercontent.com/d/1YVGbkeoEr6jc2VcaQJU27yGbWzUbTPsJ" 2>/dev/null
    if [ -s "public/images/products/chaise-rasint_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-rasint_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-rasint_2.jpg" "https://drive.google.com/uc?export=download&id=1qph7ouMNG-TXLWLSYeT8W7MBjN30Ibln" 2>/dev/null
  if [ -s "public/images/products/chaise-rasint_2.jpg" ] && file "public/images/products/chaise-rasint_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-rasint_2.jpg"
    curl -sL -o "public/images/products/chaise-rasint_2.jpg" "https://lh3.googleusercontent.com/d/1qph7ouMNG-TXLWLSYeT8W7MBjN30Ibln" 2>/dev/null
    if [ -s "public/images/products/chaise-rasint_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-rattan_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-rattan_1.jpg" "https://drive.google.com/uc?export=download&id=1oofaH2Y5vLmNV5o0J7DN03yzva-WbS4a" 2>/dev/null
  if [ -s "public/images/products/chaise-rattan_1.jpg" ] && file "public/images/products/chaise-rattan_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-rattan_1.jpg"
    curl -sL -o "public/images/products/chaise-rattan_1.jpg" "https://lh3.googleusercontent.com/d/1oofaH2Y5vLmNV5o0J7DN03yzva-WbS4a" 2>/dev/null
    if [ -s "public/images/products/chaise-rattan_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-rivi-ra_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-rivi-ra_1.jpg" "https://drive.google.com/uc?export=download&id=19CUh7QdqDnEFzXyL87ibjHbVrb1sctle" 2>/dev/null
  if [ -s "public/images/products/chaise-rivi-ra_1.jpg" ] && file "public/images/products/chaise-rivi-ra_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-rivi-ra_1.jpg"
    curl -sL -o "public/images/products/chaise-rivi-ra_1.jpg" "https://lh3.googleusercontent.com/d/19CUh7QdqDnEFzXyL87ibjHbVrb1sctle" 2>/dev/null
    if [ -s "public/images/products/chaise-rivi-ra_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-rivi-ra_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-rivi-ra_2.jpg" "https://drive.google.com/uc?export=download&id=1wgqfC4VNkRwV-AhfaBA0lYtrDawFEG35" 2>/dev/null
  if [ -s "public/images/products/chaise-rivi-ra_2.jpg" ] && file "public/images/products/chaise-rivi-ra_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-rivi-ra_2.jpg"
    curl -sL -o "public/images/products/chaise-rivi-ra_2.jpg" "https://lh3.googleusercontent.com/d/1wgqfC4VNkRwV-AhfaBA0lYtrDawFEG35" 2>/dev/null
    if [ -s "public/images/products/chaise-rivi-ra_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-rivi-ra_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-rivi-ra_3.jpg" "https://drive.google.com/uc?export=download&id=100PcbEwKWS4ziKM39AOvBnN5YByTrKv7" 2>/dev/null
  if [ -s "public/images/products/chaise-rivi-ra_3.jpg" ] && file "public/images/products/chaise-rivi-ra_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-rivi-ra_3.jpg"
    curl -sL -o "public/images/products/chaise-rivi-ra_3.jpg" "https://lh3.googleusercontent.com/d/100PcbEwKWS4ziKM39AOvBnN5YByTrKv7" 2>/dev/null
    if [ -s "public/images/products/chaise-rivi-ra_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-ruji_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-ruji_1.jpg" "https://drive.google.com/uc?export=download&id=1ZjYF_SnHY1PoSCIL5AXAMJdSKHVWUCXL" 2>/dev/null
  if [ -s "public/images/products/chaise-ruji_1.jpg" ] && file "public/images/products/chaise-ruji_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-ruji_1.jpg"
    curl -sL -o "public/images/products/chaise-ruji_1.jpg" "https://lh3.googleusercontent.com/d/1ZjYF_SnHY1PoSCIL5AXAMJdSKHVWUCXL" 2>/dev/null
    if [ -s "public/images/products/chaise-ruji_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-ruji_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-ruji_2.jpg" "https://drive.google.com/uc?export=download&id=1aqiOAe7si1WyUKNr2WDcyXdc60bk5xKJ" 2>/dev/null
  if [ -s "public/images/products/chaise-ruji_2.jpg" ] && file "public/images/products/chaise-ruji_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-ruji_2.jpg"
    curl -sL -o "public/images/products/chaise-ruji_2.jpg" "https://lh3.googleusercontent.com/d/1aqiOAe7si1WyUKNr2WDcyXdc60bk5xKJ" 2>/dev/null
    if [ -s "public/images/products/chaise-ruji_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-ruji_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-ruji_3.jpg" "https://drive.google.com/uc?export=download&id=1k340eIqDCZLpXM_Oe9rvX1lqKl4uZwDD" 2>/dev/null
  if [ -s "public/images/products/chaise-ruji_3.jpg" ] && file "public/images/products/chaise-ruji_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-ruji_3.jpg"
    curl -sL -o "public/images/products/chaise-ruji_3.jpg" "https://lh3.googleusercontent.com/d/1k340eIqDCZLpXM_Oe9rvX1lqKl4uZwDD" 2>/dev/null
    if [ -s "public/images/products/chaise-ruji_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-sandi_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-sandi_1.jpg" "https://drive.google.com/uc?export=download&id=1nbd-Gs5js7ooieLHV-xvMQdLlLrr8_ou" 2>/dev/null
  if [ -s "public/images/products/chaise-sandi_1.jpg" ] && file "public/images/products/chaise-sandi_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-sandi_1.jpg"
    curl -sL -o "public/images/products/chaise-sandi_1.jpg" "https://lh3.googleusercontent.com/d/1nbd-Gs5js7ooieLHV-xvMQdLlLrr8_ou" 2>/dev/null
    if [ -s "public/images/products/chaise-sandi_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-sandi_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-sandi_2.jpg" "https://drive.google.com/uc?export=download&id=1sR8P-v9c4xFbwPgNb4DkoNU4jUg2W8l9" 2>/dev/null
  if [ -s "public/images/products/chaise-sandi_2.jpg" ] && file "public/images/products/chaise-sandi_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-sandi_2.jpg"
    curl -sL -o "public/images/products/chaise-sandi_2.jpg" "https://lh3.googleusercontent.com/d/1sR8P-v9c4xFbwPgNb4DkoNU4jUg2W8l9" 2>/dev/null
    if [ -s "public/images/products/chaise-sandi_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-sandi_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-sandi_3.jpg" "https://drive.google.com/uc?export=download&id=1zlwW8kFEPyaZL8MGP5ra7ES5tgly_5zP" 2>/dev/null
  if [ -s "public/images/products/chaise-sandi_3.jpg" ] && file "public/images/products/chaise-sandi_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-sandi_3.jpg"
    curl -sL -o "public/images/products/chaise-sandi_3.jpg" "https://lh3.googleusercontent.com/d/1zlwW8kFEPyaZL8MGP5ra7ES5tgly_5zP" 2>/dev/null
    if [ -s "public/images/products/chaise-sandi_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-stockholm-jaya_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-stockholm-jaya_1.jpg" "https://drive.google.com/uc?export=download&id=1cf7ggnzeghHx4YzYEWNu4CwStIIAi8st" 2>/dev/null
  if [ -s "public/images/products/chaise-stockholm-jaya_1.jpg" ] && file "public/images/products/chaise-stockholm-jaya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-stockholm-jaya_1.jpg"
    curl -sL -o "public/images/products/chaise-stockholm-jaya_1.jpg" "https://lh3.googleusercontent.com/d/1cf7ggnzeghHx4YzYEWNu4CwStIIAi8st" 2>/dev/null
    if [ -s "public/images/products/chaise-stockholm-jaya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-upin_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-upin_1.jpg" "https://drive.google.com/uc?export=download&id=1ZB5jFzKQ8m4AtCt9C6yxHKNO20ylyN3R" 2>/dev/null
  if [ -s "public/images/products/chaise-upin_1.jpg" ] && file "public/images/products/chaise-upin_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-upin_1.jpg"
    curl -sL -o "public/images/products/chaise-upin_1.jpg" "https://lh3.googleusercontent.com/d/1ZB5jFzKQ8m4AtCt9C6yxHKNO20ylyN3R" 2>/dev/null
    if [ -s "public/images/products/chaise-upin_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-upin_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-upin_2.jpg" "https://drive.google.com/uc?export=download&id=1nSFDjyoR13uORV-GJRXw80b0p5VThmzF" 2>/dev/null
  if [ -s "public/images/products/chaise-upin_2.jpg" ] && file "public/images/products/chaise-upin_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-upin_2.jpg"
    curl -sL -o "public/images/products/chaise-upin_2.jpg" "https://lh3.googleusercontent.com/d/1nSFDjyoR13uORV-GJRXw80b0p5VThmzF" 2>/dev/null
    if [ -s "public/images/products/chaise-upin_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-upin_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-upin_3.jpg" "https://drive.google.com/uc?export=download&id=1HI8tjf22iHVQ9C_MfPFwLoGpd7wYdmQT" 2>/dev/null
  if [ -s "public/images/products/chaise-upin_3.jpg" ] && file "public/images/products/chaise-upin_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-upin_3.jpg"
    curl -sL -o "public/images/products/chaise-upin_3.jpg" "https://lh3.googleusercontent.com/d/1HI8tjf22iHVQ9C_MfPFwLoGpd7wYdmQT" 2>/dev/null
    if [ -s "public/images/products/chaise-upin_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/etag-re-kolum_1.jpg" ]; then
  curl -sL -o "public/images/products/etag-re-kolum_1.jpg" "https://drive.google.com/uc?export=download&id=1VRXeR1g-oD79kfeEEFuJcHUJogfbQoaJ" 2>/dev/null
  if [ -s "public/images/products/etag-re-kolum_1.jpg" ] && file "public/images/products/etag-re-kolum_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/etag-re-kolum_1.jpg"
    curl -sL -o "public/images/products/etag-re-kolum_1.jpg" "https://lh3.googleusercontent.com/d/1VRXeR1g-oD79kfeEEFuJcHUJogfbQoaJ" 2>/dev/null
    if [ -s "public/images/products/etag-re-kolum_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/etag-re-kolum_2.jpg" ]; then
  curl -sL -o "public/images/products/etag-re-kolum_2.jpg" "https://drive.google.com/uc?export=download&id=1QK09x4GQOVnsyOu_CbJfXE1WC6qOni3i" 2>/dev/null
  if [ -s "public/images/products/etag-re-kolum_2.jpg" ] && file "public/images/products/etag-re-kolum_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/etag-re-kolum_2.jpg"
    curl -sL -o "public/images/products/etag-re-kolum_2.jpg" "https://lh3.googleusercontent.com/d/1QK09x4GQOVnsyOu_CbJfXE1WC6qOni3i" 2>/dev/null
    if [ -s "public/images/products/etag-re-kolum_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/etag-re-kolum_3.jpg" ]; then
  curl -sL -o "public/images/products/etag-re-kolum_3.jpg" "https://drive.google.com/uc?export=download&id=1LKRPkuj8e1_B9pkUqWtrgPJJFJDKErkw" 2>/dev/null
  if [ -s "public/images/products/etag-re-kolum_3.jpg" ] && file "public/images/products/etag-re-kolum_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/etag-re-kolum_3.jpg"
    curl -sL -o "public/images/products/etag-re-kolum_3.jpg" "https://lh3.googleusercontent.com/d/1LKRPkuj8e1_B9pkUqWtrgPJJFJDKErkw" 2>/dev/null
    if [ -s "public/images/products/etag-re-kolum_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/etag-re-kolum_4.jpg" ]; then
  curl -sL -o "public/images/products/etag-re-kolum_4.jpg" "https://drive.google.com/uc?export=download&id=1bpJAGsFfH8ze2_pcy2vaLfhlkQUrD1El" 2>/dev/null
  if [ -s "public/images/products/etag-re-kolum_4.jpg" ] && file "public/images/products/etag-re-kolum_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/etag-re-kolum_4.jpg"
    curl -sL -o "public/images/products/etag-re-kolum_4.jpg" "https://lh3.googleusercontent.com/d/1bpJAGsFfH8ze2_pcy2vaLfhlkQUrD1El" 2>/dev/null
    if [ -s "public/images/products/etag-re-kolum_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-cozy-rattan_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-cozy-rattan_1.jpg" "https://drive.google.com/uc?export=download&id=1Tkmk9EjZvED_gJqs1lQTuVVNCM8E9OkR" 2>/dev/null
  if [ -s "public/images/products/fauteuil-cozy-rattan_1.jpg" ] && file "public/images/products/fauteuil-cozy-rattan_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-cozy-rattan_1.jpg"
    curl -sL -o "public/images/products/fauteuil-cozy-rattan_1.jpg" "https://lh3.googleusercontent.com/d/1Tkmk9EjZvED_gJqs1lQTuVVNCM8E9OkR" 2>/dev/null
    if [ -s "public/images/products/fauteuil-cozy-rattan_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-cozy-rattan_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-cozy-rattan_2.jpg" "https://drive.google.com/uc?export=download&id=1ID-Osz-YX0GD5nY-57hkOKZp7jQtS1Ve" 2>/dev/null
  if [ -s "public/images/products/fauteuil-cozy-rattan_2.jpg" ] && file "public/images/products/fauteuil-cozy-rattan_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-cozy-rattan_2.jpg"
    curl -sL -o "public/images/products/fauteuil-cozy-rattan_2.jpg" "https://lh3.googleusercontent.com/d/1ID-Osz-YX0GD5nY-57hkOKZp7jQtS1Ve" 2>/dev/null
    if [ -s "public/images/products/fauteuil-cozy-rattan_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-cozy-rattan_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-cozy-rattan_3.jpg" "https://drive.google.com/uc?export=download&id=1b3enjZa-fBWdCG6cKC0F5Cu8AGGuymQY" 2>/dev/null
  if [ -s "public/images/products/fauteuil-cozy-rattan_3.jpg" ] && file "public/images/products/fauteuil-cozy-rattan_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-cozy-rattan_3.jpg"
    curl -sL -o "public/images/products/fauteuil-cozy-rattan_3.jpg" "https://lh3.googleusercontent.com/d/1b3enjZa-fBWdCG6cKC0F5Cu8AGGuymQY" 2>/dev/null
    if [ -s "public/images/products/fauteuil-cozy-rattan_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-elisabeth_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-elisabeth_1.jpg" "https://drive.google.com/uc?export=download&id=1AuK6LOef91oCsZhZccIV0anbu1pfrhi6" 2>/dev/null
  if [ -s "public/images/products/fauteuil-elisabeth_1.jpg" ] && file "public/images/products/fauteuil-elisabeth_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-elisabeth_1.jpg"
    curl -sL -o "public/images/products/fauteuil-elisabeth_1.jpg" "https://lh3.googleusercontent.com/d/1AuK6LOef91oCsZhZccIV0anbu1pfrhi6" 2>/dev/null
    if [ -s "public/images/products/fauteuil-elisabeth_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-elisabeth_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-elisabeth_2.jpg" "https://drive.google.com/uc?export=download&id=14zQSfYI76O5pWrd9wKRKQ5hpJg1bHN1e" 2>/dev/null
  if [ -s "public/images/products/fauteuil-elisabeth_2.jpg" ] && file "public/images/products/fauteuil-elisabeth_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-elisabeth_2.jpg"
    curl -sL -o "public/images/products/fauteuil-elisabeth_2.jpg" "https://lh3.googleusercontent.com/d/14zQSfYI76O5pWrd9wKRKQ5hpJg1bHN1e" 2>/dev/null
    if [ -s "public/images/products/fauteuil-elisabeth_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-elisabeth_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-elisabeth_3.jpg" "https://drive.google.com/uc?export=download&id=1cpgWKoUU1rGpruF79wBsR2ZBK2Pk19EQ" 2>/dev/null
  if [ -s "public/images/products/fauteuil-elisabeth_3.jpg" ] && file "public/images/products/fauteuil-elisabeth_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-elisabeth_3.jpg"
    curl -sL -o "public/images/products/fauteuil-elisabeth_3.jpg" "https://lh3.googleusercontent.com/d/1cpgWKoUU1rGpruF79wBsR2ZBK2Pk19EQ" 2>/dev/null
    if [ -s "public/images/products/fauteuil-elisabeth_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-hiro_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-hiro_1.jpg" "https://drive.google.com/uc?export=download&id=12DKWJDricyKzJCq30uxqp0N5JSbIfncy" 2>/dev/null
  if [ -s "public/images/products/fauteuil-hiro_1.jpg" ] && file "public/images/products/fauteuil-hiro_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-hiro_1.jpg"
    curl -sL -o "public/images/products/fauteuil-hiro_1.jpg" "https://lh3.googleusercontent.com/d/12DKWJDricyKzJCq30uxqp0N5JSbIfncy" 2>/dev/null
    if [ -s "public/images/products/fauteuil-hiro_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-hiro_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-hiro_2.jpg" "https://drive.google.com/uc?export=download&id=1Z1I9xjQ1qTIQSKtpVn-chmzj3nK-3bRt" 2>/dev/null
  if [ -s "public/images/products/fauteuil-hiro_2.jpg" ] && file "public/images/products/fauteuil-hiro_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-hiro_2.jpg"
    curl -sL -o "public/images/products/fauteuil-hiro_2.jpg" "https://lh3.googleusercontent.com/d/1Z1I9xjQ1qTIQSKtpVn-chmzj3nK-3bRt" 2>/dev/null
    if [ -s "public/images/products/fauteuil-hiro_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-marina_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-marina_1.jpg" "https://drive.google.com/uc?export=download&id=1TJNI-20hY1XTgZ94sFSR7GbG_J_CcFzy" 2>/dev/null
  if [ -s "public/images/products/fauteuil-marina_1.jpg" ] && file "public/images/products/fauteuil-marina_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-marina_1.jpg"
    curl -sL -o "public/images/products/fauteuil-marina_1.jpg" "https://lh3.googleusercontent.com/d/1TJNI-20hY1XTgZ94sFSR7GbG_J_CcFzy" 2>/dev/null
    if [ -s "public/images/products/fauteuil-marina_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-marina_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-marina_2.jpg" "https://drive.google.com/uc?export=download&id=1-u15WauL899PXuP80Q1zraOHecCc9rmr" 2>/dev/null
  if [ -s "public/images/products/fauteuil-marina_2.jpg" ] && file "public/images/products/fauteuil-marina_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-marina_2.jpg"
    curl -sL -o "public/images/products/fauteuil-marina_2.jpg" "https://lh3.googleusercontent.com/d/1-u15WauL899PXuP80Q1zraOHecCc9rmr" 2>/dev/null
    if [ -s "public/images/products/fauteuil-marina_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-marina_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-marina_3.jpg" "https://drive.google.com/uc?export=download&id=1calqf37ITAx0qbUXqSyXWBkauBrxGly3" 2>/dev/null
  if [ -s "public/images/products/fauteuil-marina_3.jpg" ] && file "public/images/products/fauteuil-marina_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-marina_3.jpg"
    curl -sL -o "public/images/products/fauteuil-marina_3.jpg" "https://lh3.googleusercontent.com/d/1calqf37ITAx0qbUXqSyXWBkauBrxGly3" 2>/dev/null
    if [ -s "public/images/products/fauteuil-marina_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-marina_4.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-marina_4.jpg" "https://drive.google.com/uc?export=download&id=1tV8u6_axz5d34ftMfrW0I7prx88M07gG" 2>/dev/null
  if [ -s "public/images/products/fauteuil-marina_4.jpg" ] && file "public/images/products/fauteuil-marina_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-marina_4.jpg"
    curl -sL -o "public/images/products/fauteuil-marina_4.jpg" "https://lh3.googleusercontent.com/d/1tV8u6_axz5d34ftMfrW0I7prx88M07gG" 2>/dev/null
    if [ -s "public/images/products/fauteuil-marina_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-aura_1.jpg" ]; then
  curl -sL -o "public/images/products/table-aura_1.jpg" "https://drive.google.com/uc?export=download&id=1KYBDsPLwX_I7vsN-0jgvPmDGHhuHT_mR" 2>/dev/null
  if [ -s "public/images/products/table-aura_1.jpg" ] && file "public/images/products/table-aura_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-aura_1.jpg"
    curl -sL -o "public/images/products/table-aura_1.jpg" "https://lh3.googleusercontent.com/d/1KYBDsPLwX_I7vsN-0jgvPmDGHhuHT_mR" 2>/dev/null
    if [ -s "public/images/products/table-aura_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-aura_2.jpg" ]; then
  curl -sL -o "public/images/products/table-aura_2.jpg" "https://drive.google.com/uc?export=download&id=16LfVOsMPDngd-K6r5uYkFgRbJhAJjo0e" 2>/dev/null
  if [ -s "public/images/products/table-aura_2.jpg" ] && file "public/images/products/table-aura_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-aura_2.jpg"
    curl -sL -o "public/images/products/table-aura_2.jpg" "https://lh3.googleusercontent.com/d/16LfVOsMPDngd-K6r5uYkFgRbJhAJjo0e" 2>/dev/null
    if [ -s "public/images/products/table-aura_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-aura_3.jpg" ]; then
  curl -sL -o "public/images/products/table-aura_3.jpg" "https://drive.google.com/uc?export=download&id=1PzIiykcNVvU51YGIQWojH2Yb0vUoxjug" 2>/dev/null
  if [ -s "public/images/products/table-aura_3.jpg" ] && file "public/images/products/table-aura_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-aura_3.jpg"
    curl -sL -o "public/images/products/table-aura_3.jpg" "https://lh3.googleusercontent.com/d/1PzIiykcNVvU51YGIQWojH2Yb0vUoxjug" 2>/dev/null
    if [ -s "public/images/products/table-aura_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-aura_4.jpg" ]; then
  curl -sL -o "public/images/products/table-aura_4.jpg" "https://drive.google.com/uc?export=download&id=1dRnjkRCfrP7T7KyjfhCRJnC6VKdgipGl" 2>/dev/null
  if [ -s "public/images/products/table-aura_4.jpg" ] && file "public/images/products/table-aura_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-aura_4.jpg"
    curl -sL -o "public/images/products/table-aura_4.jpg" "https://lh3.googleusercontent.com/d/1dRnjkRCfrP7T7KyjfhCRJnC6VKdgipGl" 2>/dev/null
    if [ -s "public/images/products/table-aura_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-minimalis_1.jpg" ]; then
  curl -sL -o "public/images/products/table-minimalis_1.jpg" "https://drive.google.com/uc?export=download&id=17LRdINh7tzGrJntIxzYAwTFbGGFCdf6Y" 2>/dev/null
  if [ -s "public/images/products/table-minimalis_1.jpg" ] && file "public/images/products/table-minimalis_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-minimalis_1.jpg"
    curl -sL -o "public/images/products/table-minimalis_1.jpg" "https://lh3.googleusercontent.com/d/17LRdINh7tzGrJntIxzYAwTFbGGFCdf6Y" 2>/dev/null
    if [ -s "public/images/products/table-minimalis_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-minimalis_2.jpg" ]; then
  curl -sL -o "public/images/products/table-minimalis_2.jpg" "https://drive.google.com/uc?export=download&id=1xMVnDGHPeoWrOSsD-YGc4CdStnpqzDDh" 2>/dev/null
  if [ -s "public/images/products/table-minimalis_2.jpg" ] && file "public/images/products/table-minimalis_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-minimalis_2.jpg"
    curl -sL -o "public/images/products/table-minimalis_2.jpg" "https://lh3.googleusercontent.com/d/1xMVnDGHPeoWrOSsD-YGc4CdStnpqzDDh" 2>/dev/null
    if [ -s "public/images/products/table-minimalis_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-minimalis_3.jpg" ]; then
  curl -sL -o "public/images/products/table-minimalis_3.jpg" "https://drive.google.com/uc?export=download&id=1v5KR2TFwVrHGqTvvZW75fRu3npev88iG" 2>/dev/null
  if [ -s "public/images/products/table-minimalis_3.jpg" ] && file "public/images/products/table-minimalis_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-minimalis_3.jpg"
    curl -sL -o "public/images/products/table-minimalis_3.jpg" "https://lh3.googleusercontent.com/d/1v5KR2TFwVrHGqTvvZW75fRu3npev88iG" 2>/dev/null
    if [ -s "public/images/products/table-minimalis_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-minimalis_4.jpg" ]; then
  curl -sL -o "public/images/products/table-minimalis_4.jpg" "https://drive.google.com/uc?export=download&id=1jfhKyfQgSv2bKxFIlJn4KP502mULF4uu" 2>/dev/null
  if [ -s "public/images/products/table-minimalis_4.jpg" ] && file "public/images/products/table-minimalis_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-minimalis_4.jpg"
    curl -sL -o "public/images/products/table-minimalis_4.jpg" "https://lh3.googleusercontent.com/d/1jfhKyfQgSv2bKxFIlJn4KP502mULF4uu" 2>/dev/null
    if [ -s "public/images/products/table-minimalis_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-nature_1.jpg" ]; then
  curl -sL -o "public/images/products/table-nature_1.jpg" "https://drive.google.com/uc?export=download&id=1ltAGhhJhj-XZleoTmKuoJ8NosoJgEgkC" 2>/dev/null
  if [ -s "public/images/products/table-nature_1.jpg" ] && file "public/images/products/table-nature_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-nature_1.jpg"
    curl -sL -o "public/images/products/table-nature_1.jpg" "https://lh3.googleusercontent.com/d/1ltAGhhJhj-XZleoTmKuoJ8NosoJgEgkC" 2>/dev/null
    if [ -s "public/images/products/table-nature_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-nature_2.jpg" ]; then
  curl -sL -o "public/images/products/table-nature_2.jpg" "https://drive.google.com/uc?export=download&id=1KO9upYdi364ulEGi1Hgo4olSdqg_cNt1" 2>/dev/null
  if [ -s "public/images/products/table-nature_2.jpg" ] && file "public/images/products/table-nature_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-nature_2.jpg"
    curl -sL -o "public/images/products/table-nature_2.jpg" "https://lh3.googleusercontent.com/d/1KO9upYdi364ulEGi1Hgo4olSdqg_cNt1" 2>/dev/null
    if [ -s "public/images/products/table-nature_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-nature_3.jpg" ]; then
  curl -sL -o "public/images/products/table-nature_3.jpg" "https://drive.google.com/uc?export=download&id=1sTsYcBFMKuNq2OIi6yg_2wRKvfAk7Ska" 2>/dev/null
  if [ -s "public/images/products/table-nature_3.jpg" ] && file "public/images/products/table-nature_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-nature_3.jpg"
    curl -sL -o "public/images/products/table-nature_3.jpg" "https://lh3.googleusercontent.com/d/1sTsYcBFMKuNq2OIi6yg_2wRKvfAk7Ska" 2>/dev/null
    if [ -s "public/images/products/table-nature_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-nature_4.jpg" ]; then
  curl -sL -o "public/images/products/table-nature_4.jpg" "https://drive.google.com/uc?export=download&id=1Fxl6MOQGj1shmKPQRuY3WzjiZXx1jYww" 2>/dev/null
  if [ -s "public/images/products/table-nature_4.jpg" ] && file "public/images/products/table-nature_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-nature_4.jpg"
    curl -sL -o "public/images/products/table-nature_4.jpg" "https://lh3.googleusercontent.com/d/1Fxl6MOQGj1shmKPQRuY3WzjiZXx1jYww" 2>/dev/null
    if [ -s "public/images/products/table-nature_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-scandivian_1.jpg" ]; then
  curl -sL -o "public/images/products/table-scandivian_1.jpg" "https://drive.google.com/uc?export=download&id=1nF2zH-jOA7LNMoheaH-BsYkSi24cWc8m" 2>/dev/null
  if [ -s "public/images/products/table-scandivian_1.jpg" ] && file "public/images/products/table-scandivian_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-scandivian_1.jpg"
    curl -sL -o "public/images/products/table-scandivian_1.jpg" "https://lh3.googleusercontent.com/d/1nF2zH-jOA7LNMoheaH-BsYkSi24cWc8m" 2>/dev/null
    if [ -s "public/images/products/table-scandivian_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-scandivian_2.jpg" ]; then
  curl -sL -o "public/images/products/table-scandivian_2.jpg" "https://drive.google.com/uc?export=download&id=1Zw5welPUGGUAPeHnH9iYlJp0eewv8cgh" 2>/dev/null
  if [ -s "public/images/products/table-scandivian_2.jpg" ] && file "public/images/products/table-scandivian_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-scandivian_2.jpg"
    curl -sL -o "public/images/products/table-scandivian_2.jpg" "https://lh3.googleusercontent.com/d/1Zw5welPUGGUAPeHnH9iYlJp0eewv8cgh" 2>/dev/null
    if [ -s "public/images/products/table-scandivian_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-scandivian_3.jpg" ]; then
  curl -sL -o "public/images/products/table-scandivian_3.jpg" "https://drive.google.com/uc?export=download&id=1UmCgcRrsluLUcjt1rmKVqAl3MbXn2-PX" 2>/dev/null
  if [ -s "public/images/products/table-scandivian_3.jpg" ] && file "public/images/products/table-scandivian_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-scandivian_3.jpg"
    curl -sL -o "public/images/products/table-scandivian_3.jpg" "https://lh3.googleusercontent.com/d/1UmCgcRrsluLUcjt1rmKVqAl3MbXn2-PX" 2>/dev/null
    if [ -s "public/images/products/table-scandivian_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-scandivian_4.jpg" ]; then
  curl -sL -o "public/images/products/table-scandivian_4.jpg" "https://drive.google.com/uc?export=download&id=1Zw5welPUGGUAPeHnH9iYlJp0eewv8cgh" 2>/dev/null
  if [ -s "public/images/products/table-scandivian_4.jpg" ] && file "public/images/products/table-scandivian_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-scandivian_4.jpg"
    curl -sL -o "public/images/products/table-scandivian_4.jpg" "https://lh3.googleusercontent.com/d/1Zw5welPUGGUAPeHnH9iYlJp0eewv8cgh" 2>/dev/null
    if [ -s "public/images/products/table-scandivian_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tabouret-boro_1.jpg" ]; then
  curl -sL -o "public/images/products/tabouret-boro_1.jpg" "https://drive.google.com/uc?export=download&id=1QSa_3grHzvD579SJ7x3gzy11sLAnzxDI" 2>/dev/null
  if [ -s "public/images/products/tabouret-boro_1.jpg" ] && file "public/images/products/tabouret-boro_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tabouret-boro_1.jpg"
    curl -sL -o "public/images/products/tabouret-boro_1.jpg" "https://lh3.googleusercontent.com/d/1QSa_3grHzvD579SJ7x3gzy11sLAnzxDI" 2>/dev/null
    if [ -s "public/images/products/tabouret-boro_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/tabouret-boro_2.jpg" ]; then
  curl -sL -o "public/images/products/tabouret-boro_2.jpg" "https://drive.google.com/uc?export=download&id=1cJ_oezcIo1JZ5AenHK9Dqt_hebfhJElv" 2>/dev/null
  if [ -s "public/images/products/tabouret-boro_2.jpg" ] && file "public/images/products/tabouret-boro_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/tabouret-boro_2.jpg"
    curl -sL -o "public/images/products/tabouret-boro_2.jpg" "https://lh3.googleusercontent.com/d/1cJ_oezcIo1JZ5AenHK9Dqt_hebfhJElv" 2>/dev/null
    if [ -s "public/images/products/tabouret-boro_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cav-vin_1.jpg" ]; then
  curl -sL -o "public/images/products/cav-vin_1.jpg" "https://drive.google.com/uc?export=download&id=1zEdYTNxyv-_DRGR5z5QvU-5hoeA1Idet" 2>/dev/null
  if [ -s "public/images/products/cav-vin_1.jpg" ] && file "public/images/products/cav-vin_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cav-vin_1.jpg"
    curl -sL -o "public/images/products/cav-vin_1.jpg" "https://lh3.googleusercontent.com/d/1zEdYTNxyv-_DRGR5z5QvU-5hoeA1Idet" 2>/dev/null
    if [ -s "public/images/products/cav-vin_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cav-vin_2.jpg" ]; then
  curl -sL -o "public/images/products/cav-vin_2.jpg" "https://drive.google.com/uc?export=download&id=1shnr3vGpiNxaULuENHOOPLDMbHmWQkPo" 2>/dev/null
  if [ -s "public/images/products/cav-vin_2.jpg" ] && file "public/images/products/cav-vin_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cav-vin_2.jpg"
    curl -sL -o "public/images/products/cav-vin_2.jpg" "https://lh3.googleusercontent.com/d/1shnr3vGpiNxaULuENHOOPLDMbHmWQkPo" 2>/dev/null
    if [ -s "public/images/products/cav-vin_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cav-vin_3.jpg" ]; then
  curl -sL -o "public/images/products/cav-vin_3.jpg" "https://drive.google.com/uc?export=download&id=1tSp1q1O5t8gOYUDClZVJ55pKRDeL3DGO" 2>/dev/null
  if [ -s "public/images/products/cav-vin_3.jpg" ] && file "public/images/products/cav-vin_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cav-vin_3.jpg"
    curl -sL -o "public/images/products/cav-vin_3.jpg" "https://lh3.googleusercontent.com/d/1tSp1q1O5t8gOYUDClZVJ55pKRDeL3DGO" 2>/dev/null
    if [ -s "public/images/products/cav-vin_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/cav-vin_4.jpg" ]; then
  curl -sL -o "public/images/products/cav-vin_4.jpg" "https://drive.google.com/uc?export=download&id=1ODcYM9etaHF0720jd-QO8r8fx0TfQhNm" 2>/dev/null
  if [ -s "public/images/products/cav-vin_4.jpg" ] && file "public/images/products/cav-vin_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/cav-vin_4.jpg"
    curl -sL -o "public/images/products/cav-vin_4.jpg" "https://lh3.googleusercontent.com/d/1ODcYM9etaHF0720jd-QO8r8fx0TfQhNm" 2>/dev/null
    if [ -s "public/images/products/cav-vin_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padang_1.jpg" ]; then
  curl -sL -o "public/images/products/padang_1.jpg" "https://drive.google.com/uc?export=download&id=11yUuzaEC3BYYsADvGPmnMP0TImKUyzod" 2>/dev/null
  if [ -s "public/images/products/padang_1.jpg" ] && file "public/images/products/padang_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padang_1.jpg"
    curl -sL -o "public/images/products/padang_1.jpg" "https://lh3.googleusercontent.com/d/11yUuzaEC3BYYsADvGPmnMP0TImKUyzod" 2>/dev/null
    if [ -s "public/images/products/padang_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padang_2.jpg" ]; then
  curl -sL -o "public/images/products/padang_2.jpg" "https://drive.google.com/uc?export=download&id=1Sh1s36GOjm6niMr8Wi-TFP0Wa3mDC6gJ" 2>/dev/null
  if [ -s "public/images/products/padang_2.jpg" ] && file "public/images/products/padang_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padang_2.jpg"
    curl -sL -o "public/images/products/padang_2.jpg" "https://lh3.googleusercontent.com/d/1Sh1s36GOjm6niMr8Wi-TFP0Wa3mDC6gJ" 2>/dev/null
    if [ -s "public/images/products/padang_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padang_3.jpg" ]; then
  curl -sL -o "public/images/products/padang_3.jpg" "https://drive.google.com/uc?export=download&id=1vOWkEYTrFCb6fggc8VhshNexQI-s2QIn" 2>/dev/null
  if [ -s "public/images/products/padang_3.jpg" ] && file "public/images/products/padang_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padang_3.jpg"
    curl -sL -o "public/images/products/padang_3.jpg" "https://lh3.googleusercontent.com/d/1vOWkEYTrFCb6fggc8VhshNexQI-s2QIn" 2>/dev/null
    if [ -s "public/images/products/padang_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/padang_4.jpg" ]; then
  curl -sL -o "public/images/products/padang_4.jpg" "https://drive.google.com/uc?export=download&id=14tzgs585R2xOcmG-oI-f1UGl-9Zf-xuX" 2>/dev/null
  if [ -s "public/images/products/padang_4.jpg" ] && file "public/images/products/padang_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/padang_4.jpg"
    curl -sL -o "public/images/products/padang_4.jpg" "https://lh3.googleusercontent.com/d/14tzgs585R2xOcmG-oI-f1UGl-9Zf-xuX" 2>/dev/null
    if [ -s "public/images/products/padang_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/milano_1.jpg" ]; then
  curl -sL -o "public/images/products/milano_1.jpg" "https://drive.google.com/uc?export=download&id=1ENGkokE8ILVRuVkUnJ5UZr7DgFtcFuM0" 2>/dev/null
  if [ -s "public/images/products/milano_1.jpg" ] && file "public/images/products/milano_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/milano_1.jpg"
    curl -sL -o "public/images/products/milano_1.jpg" "https://lh3.googleusercontent.com/d/1ENGkokE8ILVRuVkUnJ5UZr7DgFtcFuM0" 2>/dev/null
    if [ -s "public/images/products/milano_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/milano_2.jpg" ]; then
  curl -sL -o "public/images/products/milano_2.jpg" "https://drive.google.com/uc?export=download&id=1OI5qLA2sBzD96wXIUTaKTuy-YGupBdnB" 2>/dev/null
  if [ -s "public/images/products/milano_2.jpg" ] && file "public/images/products/milano_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/milano_2.jpg"
    curl -sL -o "public/images/products/milano_2.jpg" "https://lh3.googleusercontent.com/d/1OI5qLA2sBzD96wXIUTaKTuy-YGupBdnB" 2>/dev/null
    if [ -s "public/images/products/milano_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/milano_3.jpg" ]; then
  curl -sL -o "public/images/products/milano_3.jpg" "https://drive.google.com/uc?export=download&id=1CsU8GUWQ-i3Oaa61-3g31CH9Jvh639NM" 2>/dev/null
  if [ -s "public/images/products/milano_3.jpg" ] && file "public/images/products/milano_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/milano_3.jpg"
    curl -sL -o "public/images/products/milano_3.jpg" "https://lh3.googleusercontent.com/d/1CsU8GUWQ-i3Oaa61-3g31CH9Jvh639NM" 2>/dev/null
    if [ -s "public/images/products/milano_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/milano_4.jpg" ]; then
  curl -sL -o "public/images/products/milano_4.jpg" "https://drive.google.com/uc?export=download&id=1IxQp07_mD-a36ehpo1xL8mHus_wRQfKN" 2>/dev/null
  if [ -s "public/images/products/milano_4.jpg" ] && file "public/images/products/milano_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/milano_4.jpg"
    curl -sL -o "public/images/products/milano_4.jpg" "https://lh3.googleusercontent.com/d/1IxQp07_mD-a36ehpo1xL8mHus_wRQfKN" 2>/dev/null
    if [ -s "public/images/products/milano_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-carr-e-slats_1.jpg" ]; then
  curl -sL -o "public/images/products/table-carr-e-slats_1.jpg" "https://drive.google.com/uc?export=download&id=19dNn5zfrFf4PZmgPhF4nQfMdBRCHMsRe" 2>/dev/null
  if [ -s "public/images/products/table-carr-e-slats_1.jpg" ] && file "public/images/products/table-carr-e-slats_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-carr-e-slats_1.jpg"
    curl -sL -o "public/images/products/table-carr-e-slats_1.jpg" "https://lh3.googleusercontent.com/d/19dNn5zfrFf4PZmgPhF4nQfMdBRCHMsRe" 2>/dev/null
    if [ -s "public/images/products/table-carr-e-slats_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-carr-e-slats_2.jpg" ]; then
  curl -sL -o "public/images/products/table-carr-e-slats_2.jpg" "https://drive.google.com/uc?export=download&id=1OQ8K-adSejzsNBaaGl1yKb02DWwYGXS2" 2>/dev/null
  if [ -s "public/images/products/table-carr-e-slats_2.jpg" ] && file "public/images/products/table-carr-e-slats_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-carr-e-slats_2.jpg"
    curl -sL -o "public/images/products/table-carr-e-slats_2.jpg" "https://lh3.googleusercontent.com/d/1OQ8K-adSejzsNBaaGl1yKb02DWwYGXS2" 2>/dev/null
    if [ -s "public/images/products/table-carr-e-slats_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-carr-e-slats_3.jpg" ]; then
  curl -sL -o "public/images/products/table-carr-e-slats_3.jpg" "https://drive.google.com/uc?export=download&id=1K0LrKf8aBUgg7PpOUPIV6eG5-_nat7-Q" 2>/dev/null
  if [ -s "public/images/products/table-carr-e-slats_3.jpg" ] && file "public/images/products/table-carr-e-slats_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-carr-e-slats_3.jpg"
    curl -sL -o "public/images/products/table-carr-e-slats_3.jpg" "https://lh3.googleusercontent.com/d/1K0LrKf8aBUgg7PpOUPIV6eG5-_nat7-Q" 2>/dev/null
    if [ -s "public/images/products/table-carr-e-slats_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-carr-e-slats_4.jpg" ]; then
  curl -sL -o "public/images/products/table-carr-e-slats_4.jpg" "https://drive.google.com/uc?export=download&id=1RAAjigN-nX6kiWDXhh4zi1aKcgQPIkaY" 2>/dev/null
  if [ -s "public/images/products/table-carr-e-slats_4.jpg" ] && file "public/images/products/table-carr-e-slats_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-carr-e-slats_4.jpg"
    curl -sL -o "public/images/products/table-carr-e-slats_4.jpg" "https://lh3.googleusercontent.com/d/1RAAjigN-nX6kiWDXhh4zi1aKcgQPIkaY" 2>/dev/null
    if [ -s "public/images/products/table-carr-e-slats_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/biblioth-que-evolia_1.jpg" ]; then
  curl -sL -o "public/images/products/biblioth-que-evolia_1.jpg" "https://drive.google.com/uc?export=download&id=1SdQ-syi5R5TilxApOaEZs3K3AhadAJVa" 2>/dev/null
  if [ -s "public/images/products/biblioth-que-evolia_1.jpg" ] && file "public/images/products/biblioth-que-evolia_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/biblioth-que-evolia_1.jpg"
    curl -sL -o "public/images/products/biblioth-que-evolia_1.jpg" "https://lh3.googleusercontent.com/d/1SdQ-syi5R5TilxApOaEZs3K3AhadAJVa" 2>/dev/null
    if [ -s "public/images/products/biblioth-que-evolia_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-mountain_1.jpg" ]; then
  curl -sL -o "public/images/products/table-mountain_1.jpg" "https://drive.google.com/uc?export=download&id=1o9CZUgJgCgALjK-Iwvn74IXtMc6ug44E" 2>/dev/null
  if [ -s "public/images/products/table-mountain_1.jpg" ] && file "public/images/products/table-mountain_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-mountain_1.jpg"
    curl -sL -o "public/images/products/table-mountain_1.jpg" "https://lh3.googleusercontent.com/d/1o9CZUgJgCgALjK-Iwvn74IXtMc6ug44E" 2>/dev/null
    if [ -s "public/images/products/table-mountain_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-mountain_2.jpg" ]; then
  curl -sL -o "public/images/products/table-mountain_2.jpg" "https://drive.google.com/uc?export=download&id=1kbUcWz926yBkTmHVTzU1lPPsUQi85o6V" 2>/dev/null
  if [ -s "public/images/products/table-mountain_2.jpg" ] && file "public/images/products/table-mountain_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-mountain_2.jpg"
    curl -sL -o "public/images/products/table-mountain_2.jpg" "https://lh3.googleusercontent.com/d/1kbUcWz926yBkTmHVTzU1lPPsUQi85o6V" 2>/dev/null
    if [ -s "public/images/products/table-mountain_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-mountain_3.jpg" ]; then
  curl -sL -o "public/images/products/table-mountain_3.jpg" "https://drive.google.com/uc?export=download&id=1c2ioqMfkISTGMmrkILA_vb5g27gHcuyH" 2>/dev/null
  if [ -s "public/images/products/table-mountain_3.jpg" ] && file "public/images/products/table-mountain_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-mountain_3.jpg"
    curl -sL -o "public/images/products/table-mountain_3.jpg" "https://lh3.googleusercontent.com/d/1c2ioqMfkISTGMmrkILA_vb5g27gHcuyH" 2>/dev/null
    if [ -s "public/images/products/table-mountain_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-luma_1.jpg" ]; then
  curl -sL -o "public/images/products/table-luma_1.jpg" "https://drive.google.com/uc?export=download&id=1jsxlLC5uAWW8ArhvaVJYXhAThP_n8D35" 2>/dev/null
  if [ -s "public/images/products/table-luma_1.jpg" ] && file "public/images/products/table-luma_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-luma_1.jpg"
    curl -sL -o "public/images/products/table-luma_1.jpg" "https://lh3.googleusercontent.com/d/1jsxlLC5uAWW8ArhvaVJYXhAThP_n8D35" 2>/dev/null
    if [ -s "public/images/products/table-luma_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-luma_2.jpg" ]; then
  curl -sL -o "public/images/products/table-luma_2.jpg" "https://drive.google.com/uc?export=download&id=1Rkb2cKhR_Ub5yMMkZHxfagEZSAUqM7tf" 2>/dev/null
  if [ -s "public/images/products/table-luma_2.jpg" ] && file "public/images/products/table-luma_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-luma_2.jpg"
    curl -sL -o "public/images/products/table-luma_2.jpg" "https://lh3.googleusercontent.com/d/1Rkb2cKhR_Ub5yMMkZHxfagEZSAUqM7tf" 2>/dev/null
    if [ -s "public/images/products/table-luma_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-luma_3.jpg" ]; then
  curl -sL -o "public/images/products/table-luma_3.jpg" "https://drive.google.com/uc?export=download&id=1MKr9lS4qyFZByJoRR76ZfEnqKPq3jrp7" 2>/dev/null
  if [ -s "public/images/products/table-luma_3.jpg" ] && file "public/images/products/table-luma_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-luma_3.jpg"
    curl -sL -o "public/images/products/table-luma_3.jpg" "https://lh3.googleusercontent.com/d/1MKr9lS4qyFZByJoRR76ZfEnqKPq3jrp7" 2>/dev/null
    if [ -s "public/images/products/table-luma_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-marbella_1.jpg" ]; then
  curl -sL -o "public/images/products/table-marbella_1.jpg" "https://drive.google.com/uc?export=download&id=1UdeSDXPwxY2NtJCVn_LTsX3FFnT6n4Xu" 2>/dev/null
  if [ -s "public/images/products/table-marbella_1.jpg" ] && file "public/images/products/table-marbella_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-marbella_1.jpg"
    curl -sL -o "public/images/products/table-marbella_1.jpg" "https://lh3.googleusercontent.com/d/1UdeSDXPwxY2NtJCVn_LTsX3FFnT6n4Xu" 2>/dev/null
    if [ -s "public/images/products/table-marbella_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-marbella_2.jpg" ]; then
  curl -sL -o "public/images/products/table-marbella_2.jpg" "https://drive.google.com/uc?export=download&id=1FnxkY9PYRixTMCNk5Qa-2MNZqW_QG_g8" 2>/dev/null
  if [ -s "public/images/products/table-marbella_2.jpg" ] && file "public/images/products/table-marbella_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-marbella_2.jpg"
    curl -sL -o "public/images/products/table-marbella_2.jpg" "https://lh3.googleusercontent.com/d/1FnxkY9PYRixTMCNk5Qa-2MNZqW_QG_g8" 2>/dev/null
    if [ -s "public/images/products/table-marbella_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-marbella_3.jpg" ]; then
  curl -sL -o "public/images/products/table-marbella_3.jpg" "https://drive.google.com/uc?export=download&id=14iOPD9c19f01NFRB6JffyG_cCYa6veTf" 2>/dev/null
  if [ -s "public/images/products/table-marbella_3.jpg" ] && file "public/images/products/table-marbella_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-marbella_3.jpg"
    curl -sL -o "public/images/products/table-marbella_3.jpg" "https://lh3.googleusercontent.com/d/14iOPD9c19f01NFRB6JffyG_cCYa6veTf" 2>/dev/null
    if [ -s "public/images/products/table-marbella_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/table-marbella_4.jpg" ]; then
  curl -sL -o "public/images/products/table-marbella_4.jpg" "https://drive.google.com/uc?export=download&id=12O2sVSyRR3LSdU3O7qMx-X34SsYks9mw" 2>/dev/null
  if [ -s "public/images/products/table-marbella_4.jpg" ] && file "public/images/products/table-marbella_4.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/table-marbella_4.jpg"
    curl -sL -o "public/images/products/table-marbella_4.jpg" "https://lh3.googleusercontent.com/d/12O2sVSyRR3LSdU3O7qMx-X34SsYks9mw" 2>/dev/null
    if [ -s "public/images/products/table-marbella_4.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-june_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-june_1.jpg" "https://drive.google.com/uc?export=download&id=1o_PufLdSHAZc8YMJvfhUbqNo24zbXHgl" 2>/dev/null
  if [ -s "public/images/products/fauteuil-june_1.jpg" ] && file "public/images/products/fauteuil-june_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-june_1.jpg"
    curl -sL -o "public/images/products/fauteuil-june_1.jpg" "https://lh3.googleusercontent.com/d/1o_PufLdSHAZc8YMJvfhUbqNo24zbXHgl" 2>/dev/null
    if [ -s "public/images/products/fauteuil-june_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-june_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-june_2.jpg" "https://drive.google.com/uc?export=download&id=11IqVZYcvDrtY7oAkKRAss07U2ktFs8KK" 2>/dev/null
  if [ -s "public/images/products/fauteuil-june_2.jpg" ] && file "public/images/products/fauteuil-june_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-june_2.jpg"
    curl -sL -o "public/images/products/fauteuil-june_2.jpg" "https://lh3.googleusercontent.com/d/11IqVZYcvDrtY7oAkKRAss07U2ktFs8KK" 2>/dev/null
    if [ -s "public/images/products/fauteuil-june_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-june_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-june_3.jpg" "https://drive.google.com/uc?export=download&id=1SVS1i1pSuGYHLoM2cmL2zb601bpUBHFv" 2>/dev/null
  if [ -s "public/images/products/fauteuil-june_3.jpg" ] && file "public/images/products/fauteuil-june_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-june_3.jpg"
    curl -sL -o "public/images/products/fauteuil-june_3.jpg" "https://lh3.googleusercontent.com/d/1SVS1i1pSuGYHLoM2cmL2zb601bpUBHFv" 2>/dev/null
    if [ -s "public/images/products/fauteuil-june_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-ad-le_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-ad-le_1.jpg" "https://drive.google.com/uc?export=download&id=1C14dVKxYNci0U-xIC4sAXx7hutC0x5gx" 2>/dev/null
  if [ -s "public/images/products/fauteuil-ad-le_1.jpg" ] && file "public/images/products/fauteuil-ad-le_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-ad-le_1.jpg"
    curl -sL -o "public/images/products/fauteuil-ad-le_1.jpg" "https://lh3.googleusercontent.com/d/1C14dVKxYNci0U-xIC4sAXx7hutC0x5gx" 2>/dev/null
    if [ -s "public/images/products/fauteuil-ad-le_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-ad-le_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-ad-le_2.jpg" "https://drive.google.com/uc?export=download&id=1m2IEfAJo3EOrKBtDVv14tIvox892uC1V" 2>/dev/null
  if [ -s "public/images/products/fauteuil-ad-le_2.jpg" ] && file "public/images/products/fauteuil-ad-le_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-ad-le_2.jpg"
    curl -sL -o "public/images/products/fauteuil-ad-le_2.jpg" "https://lh3.googleusercontent.com/d/1m2IEfAJo3EOrKBtDVv14tIvox892uC1V" 2>/dev/null
    if [ -s "public/images/products/fauteuil-ad-le_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-ad-le_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-ad-le_3.jpg" "https://drive.google.com/uc?export=download&id=1Q3nHJJLe1KheR00uDjZ5wMsU_j9pAntL" 2>/dev/null
  if [ -s "public/images/products/fauteuil-ad-le_3.jpg" ] && file "public/images/products/fauteuil-ad-le_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-ad-le_3.jpg"
    curl -sL -o "public/images/products/fauteuil-ad-le_3.jpg" "https://lh3.googleusercontent.com/d/1Q3nHJJLe1KheR00uDjZ5wMsU_j9pAntL" 2>/dev/null
    if [ -s "public/images/products/fauteuil-ad-le_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-rossolin_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-rossolin_1.jpg" "https://drive.google.com/uc?export=download&id=18E3EHisKa7h2N8BXN3_4Dr_ge6q4lZwJ" 2>/dev/null
  if [ -s "public/images/products/fauteuil-rossolin_1.jpg" ] && file "public/images/products/fauteuil-rossolin_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-rossolin_1.jpg"
    curl -sL -o "public/images/products/fauteuil-rossolin_1.jpg" "https://lh3.googleusercontent.com/d/18E3EHisKa7h2N8BXN3_4Dr_ge6q4lZwJ" 2>/dev/null
    if [ -s "public/images/products/fauteuil-rossolin_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-rossolin_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-rossolin_2.jpg" "https://drive.google.com/uc?export=download&id=1sQ9vcugVQ117g2b1b6ajm6Mr7QiVspPL" 2>/dev/null
  if [ -s "public/images/products/fauteuil-rossolin_2.jpg" ] && file "public/images/products/fauteuil-rossolin_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-rossolin_2.jpg"
    curl -sL -o "public/images/products/fauteuil-rossolin_2.jpg" "https://lh3.googleusercontent.com/d/1sQ9vcugVQ117g2b1b6ajm6Mr7QiVspPL" 2>/dev/null
    if [ -s "public/images/products/fauteuil-rossolin_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-rossolin_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-rossolin_3.jpg" "https://drive.google.com/uc?export=download&id=1DRZVJq7MS5eOX7s07d40U-zCfHxIcdIy" 2>/dev/null
  if [ -s "public/images/products/fauteuil-rossolin_3.jpg" ] && file "public/images/products/fauteuil-rossolin_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-rossolin_3.jpg"
    curl -sL -o "public/images/products/fauteuil-rossolin_3.jpg" "https://lh3.googleusercontent.com/d/1DRZVJq7MS5eOX7s07d40U-zCfHxIcdIy" 2>/dev/null
    if [ -s "public/images/products/fauteuil-rossolin_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-neya_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-neya_1.jpg" "https://drive.google.com/uc?export=download&id=1BaMybfmruTCtdt0f9juKK6xjoBmFrKvn" 2>/dev/null
  if [ -s "public/images/products/chaise-neya_1.jpg" ] && file "public/images/products/chaise-neya_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-neya_1.jpg"
    curl -sL -o "public/images/products/chaise-neya_1.jpg" "https://lh3.googleusercontent.com/d/1BaMybfmruTCtdt0f9juKK6xjoBmFrKvn" 2>/dev/null
    if [ -s "public/images/products/chaise-neya_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-neya_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-neya_2.jpg" "https://drive.google.com/uc?export=download&id=1kB_VY8YhpuYRC5TMt4WcVFLLPcPBeoGl" 2>/dev/null
  if [ -s "public/images/products/chaise-neya_2.jpg" ] && file "public/images/products/chaise-neya_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-neya_2.jpg"
    curl -sL -o "public/images/products/chaise-neya_2.jpg" "https://lh3.googleusercontent.com/d/1kB_VY8YhpuYRC5TMt4WcVFLLPcPBeoGl" 2>/dev/null
    if [ -s "public/images/products/chaise-neya_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-coloniale-henry_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-coloniale-henry_1.jpg" "https://drive.google.com/uc?export=download&id=10ovXyzY_3e_qWH-b8WQaxsXGr-Q_XJVi" 2>/dev/null
  if [ -s "public/images/products/chaise-coloniale-henry_1.jpg" ] && file "public/images/products/chaise-coloniale-henry_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-coloniale-henry_1.jpg"
    curl -sL -o "public/images/products/chaise-coloniale-henry_1.jpg" "https://lh3.googleusercontent.com/d/10ovXyzY_3e_qWH-b8WQaxsXGr-Q_XJVi" 2>/dev/null
    if [ -s "public/images/products/chaise-coloniale-henry_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-coloniale-henry_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-coloniale-henry_2.jpg" "https://drive.google.com/uc?export=download&id=1LglNXhfQJL-v9jMC3Jw5m4OkGtt0IKSt" 2>/dev/null
  if [ -s "public/images/products/chaise-coloniale-henry_2.jpg" ] && file "public/images/products/chaise-coloniale-henry_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-coloniale-henry_2.jpg"
    curl -sL -o "public/images/products/chaise-coloniale-henry_2.jpg" "https://lh3.googleusercontent.com/d/1LglNXhfQJL-v9jMC3Jw5m4OkGtt0IKSt" 2>/dev/null
    if [ -s "public/images/products/chaise-coloniale-henry_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-coloniale-henry_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-coloniale-henry_3.jpg" "https://drive.google.com/uc?export=download&id=138CBc30eFhuQsGBwmHbvo8L5knJvWQeX" 2>/dev/null
  if [ -s "public/images/products/chaise-coloniale-henry_3.jpg" ] && file "public/images/products/chaise-coloniale-henry_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-coloniale-henry_3.jpg"
    curl -sL -o "public/images/products/chaise-coloniale-henry_3.jpg" "https://lh3.googleusercontent.com/d/138CBc30eFhuQsGBwmHbvo8L5knJvWQeX" 2>/dev/null
    if [ -s "public/images/products/chaise-coloniale-henry_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-eve_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-eve_1.jpg" "https://drive.google.com/uc?export=download&id=1Q7kmrGCIp0AdgbHc65EEdhCz6BoGMGeQ" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-eve_1.jpg" ] && file "public/images/products/chaise-de-bar-eve_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-eve_1.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-eve_1.jpg" "https://lh3.googleusercontent.com/d/1Q7kmrGCIp0AdgbHc65EEdhCz6BoGMGeQ" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-eve_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-eve_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-eve_2.jpg" "https://drive.google.com/uc?export=download&id=1wrZYbAXigtzd6kEjD_sZr6fExSPLGXT_" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-eve_2.jpg" ] && file "public/images/products/chaise-de-bar-eve_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-eve_2.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-eve_2.jpg" "https://lh3.googleusercontent.com/d/1wrZYbAXigtzd6kEjD_sZr6fExSPLGXT_" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-eve_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-eve_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-eve_3.jpg" "https://drive.google.com/uc?export=download&id=1uJTaV3UBvKSZf9PHWygMnUBv03_wbO9F" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-eve_3.jpg" ] && file "public/images/products/chaise-de-bar-eve_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-eve_3.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-eve_3.jpg" "https://lh3.googleusercontent.com/d/1uJTaV3UBvKSZf9PHWygMnUBv03_wbO9F" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-eve_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-andara_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-andara_1.jpg" "https://drive.google.com/uc?export=download&id=1te_1tCyz0EOSBY7gYfl6d6XCNh8WG77G" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-andara_1.jpg" ] && file "public/images/products/chaise-de-bar-andara_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-andara_1.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-andara_1.jpg" "https://lh3.googleusercontent.com/d/1te_1tCyz0EOSBY7gYfl6d6XCNh8WG77G" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-andara_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-andara_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-andara_2.jpg" "https://drive.google.com/uc?export=download&id=1uoIkFOLsmxSS43EgTb5Oi0rh7CU4N9S9" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-andara_2.jpg" ] && file "public/images/products/chaise-de-bar-andara_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-andara_2.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-andara_2.jpg" "https://lh3.googleusercontent.com/d/1uoIkFOLsmxSS43EgTb5Oi0rh7CU4N9S9" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-andara_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-yeni_1.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-yeni_1.jpg" "https://drive.google.com/uc?export=download&id=1oICA-3ZvXyGitkcoK9mBA-3gyJ-I0DsA" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-yeni_1.jpg" ] && file "public/images/products/chaise-de-bar-yeni_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-yeni_1.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-yeni_1.jpg" "https://lh3.googleusercontent.com/d/1oICA-3ZvXyGitkcoK9mBA-3gyJ-I0DsA" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-yeni_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-yeni_2.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-yeni_2.jpg" "https://drive.google.com/uc?export=download&id=1r2n1sHBBaEwOYytozaU3GSnseBUbT_i4" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-yeni_2.jpg" ] && file "public/images/products/chaise-de-bar-yeni_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-yeni_2.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-yeni_2.jpg" "https://lh3.googleusercontent.com/d/1r2n1sHBBaEwOYytozaU3GSnseBUbT_i4" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-yeni_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/chaise-de-bar-yeni_3.jpg" ]; then
  curl -sL -o "public/images/products/chaise-de-bar-yeni_3.jpg" "https://drive.google.com/uc?export=download&id=19bCDHFUwuKTGBb7hQ58st4ZKqgEuwC2Q" 2>/dev/null
  if [ -s "public/images/products/chaise-de-bar-yeni_3.jpg" ] && file "public/images/products/chaise-de-bar-yeni_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/chaise-de-bar-yeni_3.jpg"
    curl -sL -o "public/images/products/chaise-de-bar-yeni_3.jpg" "https://lh3.googleusercontent.com/d/19bCDHFUwuKTGBb7hQ58st4ZKqgEuwC2Q" 2>/dev/null
    if [ -s "public/images/products/chaise-de-bar-yeni_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-dayu_1.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-dayu_1.jpg" "https://drive.google.com/uc?export=download&id=1VjpkYtZ__tFylK5qz4i5_EJvijiD-K5l" 2>/dev/null
  if [ -s "public/images/products/fauteuil-dayu_1.jpg" ] && file "public/images/products/fauteuil-dayu_1.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-dayu_1.jpg"
    curl -sL -o "public/images/products/fauteuil-dayu_1.jpg" "https://lh3.googleusercontent.com/d/1VjpkYtZ__tFylK5qz4i5_EJvijiD-K5l" 2>/dev/null
    if [ -s "public/images/products/fauteuil-dayu_1.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-dayu_2.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-dayu_2.jpg" "https://drive.google.com/uc?export=download&id=1BioTAtZ00GXC4iZ4qq-VV-cOUv2AjElQ" 2>/dev/null
  if [ -s "public/images/products/fauteuil-dayu_2.jpg" ] && file "public/images/products/fauteuil-dayu_2.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-dayu_2.jpg"
    curl -sL -o "public/images/products/fauteuil-dayu_2.jpg" "https://lh3.googleusercontent.com/d/1BioTAtZ00GXC4iZ4qq-VV-cOUv2AjElQ" 2>/dev/null
    if [ -s "public/images/products/fauteuil-dayu_2.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi

TOTAL=$((TOTAL+1))
if [ ! -f "public/images/products/fauteuil-dayu_3.jpg" ]; then
  curl -sL -o "public/images/products/fauteuil-dayu_3.jpg" "https://drive.google.com/uc?export=download&id=1-RuZSr8PGWd0qdTQZphU1jhAolF3z7ed" 2>/dev/null
  if [ -s "public/images/products/fauteuil-dayu_3.jpg" ] && file "public/images/products/fauteuil-dayu_3.jpg" | grep -q "image"; then
    SUCCESS=$((SUCCESS+1))
  else
    rm -f "public/images/products/fauteuil-dayu_3.jpg"
    curl -sL -o "public/images/products/fauteuil-dayu_3.jpg" "https://lh3.googleusercontent.com/d/1-RuZSr8PGWd0qdTQZphU1jhAolF3z7ed" 2>/dev/null
    if [ -s "public/images/products/fauteuil-dayu_3.jpg" ]; then
      SUCCESS=$((SUCCESS+1))
    else
      FAIL=$((FAIL+1))
    fi
  fi
else
  SUCCESS=$((SUCCESS+1))
fi
if [ $((TOTAL % 50)) -eq 0 ]; then echo "  Progression: $TOTAL/737 (OK: $SUCCESS, Échec: $FAIL)"; fi


echo ""
echo "=== Terminé ==="
echo "Total: $TOTAL images"
echo "Téléchargées: $SUCCESS"
echo "Échouées: $FAIL"
echo ""
echo "Les images sont dans public/images/products/"
echo "Taille totale:"
du -sh public/images/products/