#!/bin/bash
# qa-check.sh — Ejecuta validaciones doctrinales sobre el cluster generado de un cliente
#
# Uso:
#   ./scripts/qa-check.sh aeroeterm
#
# Tests cubiertos (versión MVP):
#   1. Build pasa (astro check + astro build)
#   2. URLs cumplen patrones (no near-me, no adjetivos vacíos, kebab-case)
#   3. Frases prohibidas (rastros IA): grep en HTML generado
#   4. NAP coherente: aparece el mismo NAP en HP + footer + página contacto
#   5. Schemas JSON-LD presentes en cada página
#   6. Sin `[pendiente]` huérfanos (no documentados en pendientes.md)
#   7. Fidelidad doctrinal: 0 invenciones del v1 (29 filas, S_efectiva, FAQPage en HP, etc.)
#
# Implementación completa pendiente. Esta versión MVP es bash + grep — la versión final será TypeScript con AST parsing.

set -e

if [ "$#" -ne 1 ]; then
  echo "Uso: $0 [slug-cliente]"
  exit 1
fi

SLUG="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLIENT_DIRS=("$ROOT_DIR/clientes/"*"-${SLUG}")
CLIENT_DIR="${CLIENT_DIRS[0]}"
CLUSTER_DIR="$CLIENT_DIR/cluster"
DIST_DIR="$CLUSTER_DIR/dist"

ERRORS=0

echo "▶ QA Check para cliente: $SLUG"
echo ""

# Test 1: Build pasa
echo "▶ Test 1/7: Build local..."
cd "$CLUSTER_DIR"
if ! pnpm build > /tmp/build.log 2>&1; then
  echo "  ❌ Build falló. Ver /tmp/build.log"
  ERRORS=$((ERRORS+1))
else
  echo "  ✅ Build OK"
fi

if [ ! -d "$DIST_DIR" ]; then
  echo "  ❌ No existe $DIST_DIR — abortando QA."
  exit 1
fi

# Test 2: URLs blacklist
echo "▶ Test 2/7: Blacklist URLs (near-me, adjetivos vacíos)..."
BAD_URLS=$(find "$DIST_DIR" -type d \( -name "*near-me*" -o -name "*best*" -o -name "*cheap*" -o -name "*top*" \) | wc -l)
if [ "$BAD_URLS" -gt 0 ]; then
  echo "  ❌ Encontradas $BAD_URLS URLs con palabras blacklist"
  ERRORS=$((ERRORS+1))
else
  echo "  ✅ Sin URLs en blacklist"
fi

# Test 3: Frases prohibidas (rastros IA)
echo "▶ Test 3/7: Rastros IA en HTML..."
PROHIBIDAS=("como modelo de lenguaje" "es importante destacar" "en el dinámico mundo" "sumérgete en")
RASTROS=0
for frase in "${PROHIBIDAS[@]}"; do
  COUNT=$(grep -ri "$frase" "$DIST_DIR" --include="*.html" 2>/dev/null | wc -l)
  if [ "$COUNT" -gt 0 ]; then
    echo "  ❌ Frase prohibida encontrada: '$frase' ($COUNT veces)"
    RASTROS=$((RASTROS+COUNT))
  fi
done
if [ "$RASTROS" -eq 0 ]; then
  echo "  ✅ Sin rastros IA"
else
  ERRORS=$((ERRORS+1))
fi

# Test 4: NAP coherente (phone aparece igual en HP + contacto + footer)
echo "▶ Test 4/7: NAP coherente..."
PHONE=$(jq -r '.nap.phone' "$CLUSTER_DIR/src/data/cliente.json" 2>/dev/null || echo "")
if [ -z "$PHONE" ] || [[ "$PHONE" == "[TELÉFONO PENDIENTE]" ]]; then
  echo "  ⚠  Phone es placeholder (válido si está en pendientes.md)"
else
  HP_HAS_PHONE=$(grep -c "$PHONE" "$DIST_DIR/index.html" || echo 0)
  CONTACT_HAS_PHONE=$(grep -c "$PHONE" "$DIST_DIR/contacto/index.html" || echo 0)
  if [ "$HP_HAS_PHONE" -ge 1 ] && [ "$CONTACT_HAS_PHONE" -ge 1 ]; then
    echo "  ✅ NAP coherente (phone en HP + contacto)"
  else
    echo "  ❌ NAP no aparece en todas las páginas (HP=$HP_HAS_PHONE, contacto=$CONTACT_HAS_PHONE)"
    ERRORS=$((ERRORS+1))
  fi
fi

# Test 5: Schemas JSON-LD
echo "▶ Test 5/7: Schemas JSON-LD..."
HP_SCHEMAS=$(grep -c 'application/ld+json' "$DIST_DIR/index.html" || echo 0)
if [ "$HP_SCHEMAS" -ge 3 ]; then
  echo "  ✅ HP tiene $HP_SCHEMAS schemas JSON-LD (esperado ≥3: Org+WebSite+LocalBusiness)"
else
  echo "  ❌ HP solo tiene $HP_SCHEMAS schemas (esperado ≥3)"
  ERRORS=$((ERRORS+1))
fi

# Test 6: Placeholders huérfanos (sin documentar en pendientes.md)
echo "▶ Test 6/7: Placeholders documentados..."
HUERFANOS=$(grep -roh '\[[A-ZÁÉÍÓÚÑ_ ]\+ PENDIENTE\]' "$DIST_DIR" --include="*.html" 2>/dev/null | sort -u | wc -l)
if [ "$HUERFANOS" -eq 0 ]; then
  echo "  ✅ Sin placeholders huérfanos en HTML"
else
  echo "  ⚠  $HUERFANOS placeholders en HTML — verificar que están documentados en pendientes.md"
fi

# Test 7: Fidelidad doctrinal v2 (sin invenciones del v1)
echo "▶ Test 7/7: Fidelidad doctrinal..."
INVENCIONES=("29 filas" "580 celdas" "S_efectiva" "Local entity" "FAQPage en HP")
ENC=0
for inv in "${INVENCIONES[@]}"; do
  COUNT=$(grep -ri "$inv" "$CLUSTER_DIR/src" 2>/dev/null | wc -l)
  if [ "$COUNT" -gt 0 ]; then
    echo "  ❌ Invención del v1 detectada: '$inv'"
    ENC=$((ENC+1))
  fi
done
if [ "$ENC" -eq 0 ]; then
  echo "  ✅ Sin invenciones del v1"
else
  ERRORS=$((ERRORS+1))
fi

# Resumen
echo ""
echo "═══════════════════════════════"
if [ "$ERRORS" -eq 0 ]; then
  echo "✅ QA PASS — listo para deploy"
  exit 0
else
  echo "❌ QA FAIL — $ERRORS test(s) fallaron"
  exit 1
fi
