#!/bin/bash
# qa-check.sh — Ejecuta validaciones doctrinales sobre el cluster generado de un cliente
#
# Uso:
#   SCRIPTS/qa-check.sh aeroeterm
#
# Tests cubiertos (versión MVP):
#   1. Cliente existe + outputs.json presente
#   2. Build pasa con CLUSTER_PATH=../outputs.json
#   3. URLs cumplen patrones (no near-me, no adjetivos vacíos)
#   4. Frases prohibidas (rastros IA): grep en HTML generado
#   5. NAP coherente: phone aparece en HP + contacto si no es placeholder
#   6. Schemas JSON-LD presentes en HP (≥3: Organization + WebSite + LocalBusiness)
#   7. Placeholders huérfanos (deberían estar documentados en 02-pendientes.md)
#
# Implementación bash + grep + jq. La versión final TS+AST está en
# PLANTILLA-CLUSTER/src/lib/qa-check.ts (invocable con npx tsx).

set -e

if [ "$#" -ne 1 ]; then
  echo "Uso: $0 [slug-cliente]"
  exit 1
fi

SLUG="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

shopt -s nullglob
CLIENT_DIRS=("$ROOT_DIR/CLIENTES/"*"-${SLUG}")
shopt -u nullglob

if [ "${#CLIENT_DIRS[@]}" -eq 0 ]; then
  echo "Error: no encuentro carpeta de cliente con slug '$SLUG' en $ROOT_DIR/CLIENTES/"
  exit 1
fi

CLIENT_DIR="${CLIENT_DIRS[0]}"
CLUSTER_DIR="$CLIENT_DIR/cluster"
OUTPUTS_FILE="$CLIENT_DIR/outputs.json"
PENDIENTES_FILE="$CLIENT_DIR/02-pendientes.md"
DIST_DIR="$CLUSTER_DIR/dist"

ERRORS=0

echo "▶ QA Check para cliente: $SLUG ($(basename "$CLIENT_DIR"))"
echo ""

# Test 1: Estructura del cliente
echo "▶ Test 1/7: Estructura del cliente..."
if [ ! -f "$OUTPUTS_FILE" ]; then
  echo "  ❌ Falta $OUTPUTS_FILE — la IA aún no generó el cluster."
  exit 1
fi
if [ ! -d "$CLUSTER_DIR" ]; then
  echo "  ❌ Falta $CLUSTER_DIR"
  exit 1
fi
echo "  ✅ Cliente bien estructurado"

# Test 2: Build
echo "▶ Test 2/7: Build local (CLUSTER_PATH=../outputs.json pnpm build)..."
cd "$CLUSTER_DIR"
if ! CLUSTER_PATH=../outputs.json pnpm build > /tmp/build-${SLUG}.log 2>&1; then
  echo "  ❌ Build falló. Ver /tmp/build-${SLUG}.log"
  ERRORS=$((ERRORS+1))
else
  echo "  ✅ Build OK"
fi

if [ ! -d "$DIST_DIR" ]; then
  echo "  ❌ No existe $DIST_DIR — abortando QA."
  exit 1
fi

# Test 3: URLs blacklist
echo "▶ Test 3/7: Blacklist URLs (near-me, adjetivos vacíos)..."
BAD_URLS=$(find "$DIST_DIR" -type d \( -name "*near-me*" -o -name "*best*" -o -name "*cheap*" -o -name "*top*" \) 2>/dev/null | wc -l)
if [ "$BAD_URLS" -gt 0 ]; then
  echo "  ❌ Encontradas $BAD_URLS URLs con palabras blacklist"
  ERRORS=$((ERRORS+1))
else
  echo "  ✅ Sin URLs en blacklist"
fi

# Test 4: Frases prohibidas (rastros IA)
echo "▶ Test 4/7: Rastros IA en HTML..."
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

# Test 5: NAP coherente
echo "▶ Test 5/7: NAP coherente..."
if command -v jq >/dev/null 2>&1; then
  PHONE=$(jq -r '.outputs["1.4"].value.phone // ""' "$OUTPUTS_FILE" 2>/dev/null || echo "")
else
  # TODO: verificar — sin jq no podemos extraer el phone de outputs.json de forma robusta.
  PHONE=""
fi

if [ -z "$PHONE" ] || [[ "$PHONE" == *"PENDIENTE"* ]] || [[ "$PHONE" == *"pendiente"* ]]; then
  echo "  ⚠  Phone es placeholder o vacío (válido si está en 02-pendientes.md Sección A)"
else
  HP_HAS_PHONE=$(grep -c "$PHONE" "$DIST_DIR/index.html" 2>/dev/null || echo 0)
  CONTACT_HAS_PHONE=0
  if [ -f "$DIST_DIR/contacto/index.html" ]; then
    CONTACT_HAS_PHONE=$(grep -c "$PHONE" "$DIST_DIR/contacto/index.html" 2>/dev/null || echo 0)
  fi
  if [ "$HP_HAS_PHONE" -ge 1 ] && [ "$CONTACT_HAS_PHONE" -ge 1 ]; then
    echo "  ✅ NAP coherente (phone en HP + contacto)"
  else
    echo "  ❌ NAP no aparece en todas las páginas (HP=$HP_HAS_PHONE, contacto=$CONTACT_HAS_PHONE)"
    ERRORS=$((ERRORS+1))
  fi
fi

# Test 6: Schemas JSON-LD
echo "▶ Test 6/7: Schemas JSON-LD en HP..."
if [ -f "$DIST_DIR/index.html" ]; then
  HP_SCHEMAS=$(grep -c 'application/ld+json' "$DIST_DIR/index.html" 2>/dev/null || echo 0)
  if [ "$HP_SCHEMAS" -ge 3 ]; then
    echo "  ✅ HP tiene $HP_SCHEMAS schemas JSON-LD (esperado ≥3: Org+WebSite+LocalBusiness)"
  else
    echo "  ❌ HP sólo tiene $HP_SCHEMAS schemas (esperado ≥3)"
    ERRORS=$((ERRORS+1))
  fi
else
  echo "  ❌ No existe HP ($DIST_DIR/index.html)"
  ERRORS=$((ERRORS+1))
fi

# Test 7: Placeholders huérfanos
echo "▶ Test 7/7: Placeholders documentados..."
HUERFANOS=$(grep -roh '\[[A-ZÁÉÍÓÚÑ_ ]\+ PENDIENTE\]' "$DIST_DIR" --include="*.html" 2>/dev/null | sort -u | wc -l)
if [ "$HUERFANOS" -eq 0 ]; then
  echo "  ✅ Sin placeholders huérfanos en HTML"
else
  if [ -f "$PENDIENTES_FILE" ]; then
    echo "  ⚠  $HUERFANOS placeholders en HTML — verificar que están en $PENDIENTES_FILE"
  else
    echo "  ❌ $HUERFANOS placeholders en HTML y no existe 02-pendientes.md"
    ERRORS=$((ERRORS+1))
  fi
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
