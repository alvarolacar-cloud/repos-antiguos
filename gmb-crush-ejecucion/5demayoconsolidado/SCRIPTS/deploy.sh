#!/bin/bash
# deploy.sh — Build + deploy a Cloudflare Pages del cluster de un cliente
#
# Uso:
#   SCRIPTS/deploy.sh aeroeterm
#
# Requiere:
#   - Cliente ya creado en CLIENTES/[YYYY-MM]-[slug]/cluster/
#   - outputs.json existe en CLIENTES/[YYYY-MM]-[slug]/outputs.json
#   - CLOUDFLARE_API_TOKEN y CLOUDFLARE_ACCOUNT_ID en env vars
#   - pnpm + wrangler instalados (npm i -g wrangler pnpm)

set -e

if [ "$#" -ne 1 ]; then
  echo "Error: falta argumento."
  echo ""
  echo "Uso: $0 [slug-cliente]"
  echo "Ejemplo: $0 aeroeterm"
  exit 1
fi

SLUG="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Encontrar la carpeta del cliente (puede haber varias fechas, cogemos la primera)
# Usamos shopt -s nullglob para que si no hay match, el array quede vacío.
shopt -s nullglob
CLIENT_DIRS=("$ROOT_DIR/CLIENTES/"*"-${SLUG}")
shopt -u nullglob

if [ "${#CLIENT_DIRS[@]}" -eq 0 ]; then
  echo "Error: no encuentro carpeta de cliente con slug '$SLUG' en $ROOT_DIR/CLIENTES/"
  echo "       Crea primero: SCRIPTS/new-cliente.sh $SLUG YYYY-MM"
  exit 1
fi

CLIENT_DIR="${CLIENT_DIRS[0]}"
CLUSTER_DIR="$CLIENT_DIR/cluster"
OUTPUTS_FILE="$CLIENT_DIR/outputs.json"

if [ ! -d "$CLUSTER_DIR" ]; then
  echo "Error: no existe $CLUSTER_DIR"
  exit 1
fi

if [ ! -f "$OUTPUTS_FILE" ]; then
  echo "Error: no existe $OUTPUTS_FILE — la IA aún no ha generado el cluster del cliente."
  exit 1
fi

# Validación mínima: outputs.json no debe tener slug vacío
# (si tienes jq disponible, mejor; si no, grep conservador)
if command -v jq >/dev/null 2>&1; then
  SLUG_IN_JSON=$(jq -r '.slug // ""' "$OUTPUTS_FILE")
  if [ -z "$SLUG_IN_JSON" ]; then
    echo "Error: outputs.json tiene slug vacío. Rellena 00-preflight.md y deja a la IA poblarlo."
    exit 1
  fi
fi

# Validar env vars Cloudflare
if [ -z "$CLOUDFLARE_API_TOKEN" ]; then
  echo "Error: CLOUDFLARE_API_TOKEN no está en env. Configúralo antes de deployar."
  exit 1
fi
if [ -z "$CLOUDFLARE_ACCOUNT_ID" ]; then
  echo "Error: CLOUDFLARE_ACCOUNT_ID no está en env."
  exit 1
fi

echo "▶ Cliente : $(basename "$CLIENT_DIR")"
echo "▶ Cluster : $CLUSTER_DIR"
echo "▶ Outputs : $OUTPUTS_FILE"
echo ""

# 1. Build local — desde dentro del cluster, con CLUSTER_PATH apuntando al outputs.json del cliente.
#    cluster.ts hace resolve(process.cwd(), CLUSTER_PATH) → ../outputs.json sube de cluster/ a la raíz cliente.
echo "▶ Build local (pnpm build con CLUSTER_PATH=../outputs.json)..."
cd "$CLUSTER_DIR"
pnpm install --frozen-lockfile 2>/dev/null || pnpm install
CLUSTER_PATH=../outputs.json pnpm build

if [ ! -d "dist" ]; then
  echo "Error: build falló — no existe dist/"
  exit 1
fi

# 2. Deploy a Cloudflare Pages
PROJECT_NAME="${SLUG}-cluster"
echo ""
echo "▶ Deploy a Cloudflare Pages: $PROJECT_NAME"
wrangler pages deploy ./dist --project-name="$PROJECT_NAME" --commit-dirty=true

echo ""
echo "✅ Deploy completo. URL temporal en el output de wrangler arriba."
echo ""
echo "Siguientes pasos:"
echo "  1. Verifica que el sitio responde: curl -I https://$PROJECT_NAME.pages.dev"
echo "  2. Configura dominio custom en Cloudflare Pages dashboard si aplica"
echo "  3. Sube el sitemap a Google Search Console"
