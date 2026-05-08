#!/bin/bash
# deploy.sh — Build + deploy a Cloudflare Pages del cluster de un cliente
#
# Uso:
#   ./scripts/deploy.sh aeroeterm
#
# Requiere:
#   - El cliente ya creado en clientes/[fecha]-[slug]/cluster/
#   - CLOUDFLARE_API_TOKEN y CLOUDFLARE_ACCOUNT_ID en env vars
#   - wrangler instalado (npm install -g wrangler)

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

# Encontrar la carpeta del cliente (puede haber múltiples fechas, cogemos la más reciente)
CLIENT_DIRS=("$ROOT_DIR/clientes/"*"-${SLUG}")
if [ ! -d "${CLIENT_DIRS[0]}" ]; then
  echo "Error: no encuentro carpeta de cliente con slug '$SLUG' en $ROOT_DIR/clientes/"
  exit 1
fi
CLIENT_DIR="${CLIENT_DIRS[0]}"
CLUSTER_DIR="$CLIENT_DIR/cluster"

if [ ! -d "$CLUSTER_DIR" ]; then
  echo "Error: no existe $CLUSTER_DIR"
  exit 1
fi

# Validar env vars
if [ -z "$CLOUDFLARE_API_TOKEN" ]; then
  echo "Error: CLOUDFLARE_API_TOKEN no está en env. Configúralo antes de deployar."
  exit 1
fi

if [ -z "$CLOUDFLARE_ACCOUNT_ID" ]; then
  echo "Error: CLOUDFLARE_ACCOUNT_ID no está en env."
  exit 1
fi

echo "▶ Cluster: $CLUSTER_DIR"
echo ""

# 1. Build local
echo "▶ Build local (pnpm build)..."
cd "$CLUSTER_DIR"
pnpm install --frozen-lockfile 2>/dev/null || pnpm install
pnpm build

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
echo "  1. Verifica que el sitio responde con: curl -I https://$PROJECT_NAME.pages.dev"
echo "  2. Configura dominio custom en Cloudflare Pages dashboard si aplica"
echo "  3. Sube el sitemap a Google Search Console"
