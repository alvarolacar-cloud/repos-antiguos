#!/bin/bash
# new-cliente.sh — Crea una nueva carpeta de cliente desde la plantilla
#
# Uso:
#   ./scripts/new-cliente.sh aeroeterm 2026-05
#
# Resultado:
#   clientes/2026-05-aeroeterm/
#   ├── preflight.md          (template a rellenar por el operador)
#   ├── cluster/              (copia de plantilla-cluster con cliente.json placeholder)
#   ├── pendientes.md         (vacío al inicio)
#   └── README.md             (instrucciones específicas)

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

# Calcular paths
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLIENT_DIR="$ROOT_DIR/clientes/${FECHA}-${SLUG}"
PLANTILLA_DIR="$ROOT_DIR/plantilla-cluster"

# Verificar que no existe ya
if [ -d "$CLIENT_DIR" ]; then
  echo "Error: el cliente $CLIENT_DIR ya existe."
  exit 1
fi

# Verificar que existe la plantilla
if [ ! -d "$PLANTILLA_DIR" ]; then
  echo "Error: no existe $PLANTILLA_DIR"
  exit 1
fi

echo "▶ Creando cliente: $FECHA-$SLUG"
echo ""

# 1. Crear estructura
mkdir -p "$CLIENT_DIR"

# 2. Copiar plantilla-cluster (sin node_modules ni dist)
echo "▶ Copiando plantilla-cluster → cluster/ ..."
mkdir -p "$CLIENT_DIR/cluster"
cp -r "$PLANTILLA_DIR/src" "$CLIENT_DIR/cluster/"
cp "$PLANTILLA_DIR/package.json" "$CLIENT_DIR/cluster/"
cp "$PLANTILLA_DIR/astro.config.mjs" "$CLIENT_DIR/cluster/"
cp "$PLANTILLA_DIR/tailwind.config.js" "$CLIENT_DIR/cluster/"
cp "$PLANTILLA_DIR/tsconfig.json" "$CLIENT_DIR/cluster/"

# 3. Crear preflight.md
cat > "$CLIENT_DIR/preflight.md" << 'PREFLIGHT_EOF'
# Preflight — [CLIENTE_NOMBRE_AQUI]

> 8 inputs del cliente. Rellénalos antes de arrancar la ejecución.
> Las credenciales (6-8) NO van en este markdown — viven en env vars del sistema.

---

## 1. Nombre del negocio

`[CLIENTE_NOMBRE]`

## 2. Qué hace (descripción corta)

`[Descripción 1-2 frases del servicio principal]`

## 3. Dirección con código postal

`[Calle y número, CP, Ciudad]`

> Si es móvil sin local físico: `Servicio móvil — Main City: [ciudad]`

## 4. Estado del GBP

- [ ] Not Created (default web-first)
- [ ] Created (sin verificar)
- [ ] Verified
- [ ] Pending Verification
- [ ] Suspended

## 5. Ciudades para análisis Local Pack

`[Main City + 1-2 comparables sectoriales]`

---

## Credenciales de deploy (NO pegar tokens reales aquí)

### 6. Token de GitHub
- **Estado:** [ ] Provisto en env / [ ] Pendiente
- **Variable de entorno:** `GITHUB_TOKEN`

### 7. ID account de Cloudflare
- **Estado:** [ ] Provisto en env / [ ] Pendiente
- **Variable de entorno:** `CLOUDFLARE_ACCOUNT_ID`

### 8. Token de Cloudflare
- **Estado:** [ ] Provisto en env / [ ] Pendiente
- **Variable de entorno:** `CLOUDFLARE_API_TOKEN`
PREFLIGHT_EOF

# 4. Crear pendientes.md (vacío)
cat > "$CLIENT_DIR/pendientes.md" << 'PENDIENTES_EOF'
# Pendientes — [CLIENTE]

> Lista viva de outputs con `⚠ inferido` o `⚠ placeholder`.
> Se vacía a medida que el cliente entrega datos / operador ejecuta tools.
> El GBP NO se crea hasta que esta lista esté vacía.

| Output ID | Output | Status | Acción pendiente | Quién | Fecha |
|---|---|---|---|---|---|
| (vacío al cierre del Bloque 5; se rellena con los `⚠` heredados) | | | | | |

---

## Cómo cerrar un `⚠`

1. Obtener el dato real (cliente entrega o operador ejecuta tool)
2. Actualizar el output en `cluster/src/data/cliente.json`
3. Si afecta HTML publicado → `pnpm build && pnpm deploy` (re-deploy)
4. Eliminar fila de esta tabla
PENDIENTES_EOF

# 5. Crear README.md específico
cat > "$CLIENT_DIR/README.md" << EOF
# Cliente: $SLUG ($FECHA)

> Carpeta de ejecución del sistema GMB Crush v2 para este cliente.

## Pasos

1. **Rellenar preflight.md** con los 8 datos del cliente.
2. **Ejecutar Local Pack** en Madrid + ciudades benchmark → editar \`cluster/src/data/cliente.json\` con: primary_category, additional_categories, services, lcas, trust_signals, preferred_cta.
3. **(Opcional) Keyword Research** → si tienes acceso, refina topics de GAs en \`cliente.json\`. Si no, queda \`⚠ inferido\`.
4. **Build local:**
   \`\`\`bash
   cd cluster
   pnpm install
   pnpm build
   \`\`\`
5. **Deploy a Cloudflare Pages:**
   \`\`\`bash
   ../../scripts/deploy.sh $SLUG
   \`\`\`
6. **Pendientes:** todos los \`⚠\` van a \`pendientes.md\`. Cuando se vacía → arrancar GBP.

---

## Estado actual

- [x] Carpeta cliente creada
- [ ] Preflight rellenado
- [ ] Local Pack ejecutado
- [ ] Build local OK
- [ ] Deploy a Cloudflare Pages
- [ ] Pendientes vacíos
- [ ] GBP creado
- [ ] GBP verificado
EOF

echo ""
echo "✅ Cliente creado: $CLIENT_DIR"
echo ""
echo "Siguiente paso:"
echo "  1. Rellenar $CLIENT_DIR/preflight.md"
echo "  2. Editar $CLIENT_DIR/cluster/src/data/cliente.json"
echo "  3. Build: cd $CLIENT_DIR/cluster && pnpm install && pnpm build"
