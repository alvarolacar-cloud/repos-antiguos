#!/bin/bash
# new-cliente.sh — Crea una nueva carpeta de cliente desde la plantilla
#
# Uso:
#   SCRIPTS/new-cliente.sh aeroeterm 2026-05
#
# Resultado:
#   CLIENTES/2026-05-aeroeterm/
#   ├── 00-preflight.md       (copia de CLIENTES/_plantilla/)
#   ├── outputs.json          (copia vacía, IA la rellena)
#   ├── 01-web.md             (copia de la plantilla)
#   ├── 02-pendientes.md      (copia de la plantilla)
#   ├── 03-gbp.md             (copia de la plantilla)
#   ├── README.md             (copia de la plantilla)
#   └── cluster/              (copia de PLANTILLA-CLUSTER/, sin node_modules ni dist)

set -e

# Validar argumentos
if [ "$#" -ne 2 ]; then
  echo "Error: faltan argumentos."
  echo ""
  echo "Uso: $0 [slug-cliente] [YYYY-MM]"
  echo "Ejemplo: $0 aeroeterm 2026-05"
  exit 1
fi

SLUG="$1"
FECHA="$2"

# Validar formato fecha
if ! [[ "$FECHA" =~ ^[0-9]{4}-[0-9]{2}$ ]]; then
  echo "Error: fecha debe tener formato YYYY-MM (ej. 2026-05)"
  exit 1
fi

# Validar formato slug
if ! [[ "$SLUG" =~ ^[a-z0-9-]+$ ]]; then
  echo "Error: slug debe ser kebab-case (solo a-z, 0-9, -)"
  exit 1
fi

# Calcular paths (raíz = padre de SCRIPTS/)
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLIENT_DIR="$ROOT_DIR/CLIENTES/${FECHA}-${SLUG}"
PLANTILLA_CLIENTE="$ROOT_DIR/CLIENTES/_plantilla"
PLANTILLA_CLUSTER="$ROOT_DIR/PLANTILLA-CLUSTER"

# Verificar que no existe ya
if [ -d "$CLIENT_DIR" ]; then
  echo "Error: el cliente $CLIENT_DIR ya existe."
  exit 1
fi

# Verificar que existen las plantillas
if [ ! -d "$PLANTILLA_CLIENTE" ]; then
  echo "Error: no existe $PLANTILLA_CLIENTE"
  exit 1
fi
if [ ! -d "$PLANTILLA_CLUSTER" ]; then
  echo "Error: no existe $PLANTILLA_CLUSTER"
  exit 1
fi

echo "▶ Creando cliente: $FECHA-$SLUG"
echo ""

# 1. Copiar plantilla cliente entera (00/01/02/03/outputs.json/README.md)
echo "▶ Copiando CLIENTES/_plantilla/ → CLIENTES/${FECHA}-${SLUG}/ ..."
cp -r "$PLANTILLA_CLIENTE" "$CLIENT_DIR"

# 2. Copiar PLANTILLA-CLUSTER → cluster/ (sin node_modules ni dist)
echo "▶ Copiando PLANTILLA-CLUSTER/ → ${FECHA}-${SLUG}/cluster/ ..."
mkdir -p "$CLIENT_DIR/cluster"
# Copia explícita para evitar arrastrar node_modules / dist / .astro si existen
cp -r "$PLANTILLA_CLUSTER/src"             "$CLIENT_DIR/cluster/"
cp    "$PLANTILLA_CLUSTER/package.json"    "$CLIENT_DIR/cluster/"
cp    "$PLANTILLA_CLUSTER/astro.config.mjs" "$CLIENT_DIR/cluster/"
cp    "$PLANTILLA_CLUSTER/tailwind.config.js" "$CLIENT_DIR/cluster/"
cp    "$PLANTILLA_CLUSTER/tsconfig.json"   "$CLIENT_DIR/cluster/"
# pnpm-lock.yaml: copia si existe (acelera install determinista)
if [ -f "$PLANTILLA_CLUSTER/pnpm-lock.yaml" ]; then
  cp "$PLANTILLA_CLUSTER/pnpm-lock.yaml" "$CLIENT_DIR/cluster/"
fi

# 3. Sembrar slug + fecha_arranque en outputs.json (sin tocar el resto de la estructura)
# Si está jq disponible, usarlo; si no, sed conservador.
OUTPUTS_FILE="$CLIENT_DIR/outputs.json"
if [ -f "$OUTPUTS_FILE" ]; then
  if command -v jq >/dev/null 2>&1; then
    TMP=$(mktemp)
    jq --arg slug "$SLUG" --arg fecha "$FECHA" \
       '.slug = $slug | .fecha_arranque = $fecha' \
       "$OUTPUTS_FILE" > "$TMP" && mv "$TMP" "$OUTPUTS_FILE"
  else
    # Fallback sed: sólo sustituye los pares vacíos exactos de la plantilla.
    # TODO: verificar — depende de que la plantilla mantenga "slug": "" y "fecha_arranque": "" exactos.
    sed -i.bak \
      -e "s/\"slug\": \"\"/\"slug\": \"$SLUG\"/" \
      -e "s/\"fecha_arranque\": \"\"/\"fecha_arranque\": \"$FECHA\"/" \
      "$OUTPUTS_FILE" && rm -f "$OUTPUTS_FILE.bak"
  fi
fi

echo ""
echo "✅ Cliente creado: $CLIENT_DIR"
echo ""
echo "Siguiente paso:"
echo "  1. Rellena $CLIENT_DIR/00-preflight.md (los 2 datos mínimos: dirección + qué hace)"
echo "  2. Lanza la IA → ejecuta Bloques 1-5 → puebla outputs.json y 01-web.md"
echo "  3. Build + deploy:  SCRIPTS/deploy.sh $SLUG"
