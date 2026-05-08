# CLIENTES/_plantilla — Plantilla por cliente

Esta carpeta es la **plantilla canónica**. No se ejecuta nada aquí. Cada cliente nuevo
es una copia íntegra de esta carpeta vía:

```bash
SCRIPTS/new-cliente.sh [slug] [YYYY-MM]
# ejemplo:
SCRIPTS/new-cliente.sh aeroeterm 2026-05
```

El script crea `CLIENTES/2026-05-[slug]/` copiando este `_plantilla/` y añade una
copia de `PLANTILLA-CLUSTER/` dentro como `cluster/` (cada cliente puede tweakearlo).

---

## Archivos de esta plantilla

| Archivo | Quién lo rellena | Cuándo |
|---|---|---|
| `00-preflight.md` | Operador | Antes de arrancar la IA — 2 datos mínimos (dirección + qué hace) |
| `outputs.json` | IA | Output trazable canónico (Bloques 0-5+7). Estructura fija, valores vacíos. |
| `01-web.md` | IA | Volcado §8 Consolidados de los Bloques 1-5 |
| `02-pendientes.md` | IA + Operador | Sección A bloquea GBP; Sección B son mejoras asíncronas |
| `03-gbp.md` | IA | Bloque 7 (Paso 14 GBP). Sólo se ejecuta cuando 02-pendientes.md Sección A está vacía |

---

## Flujo

1. `SCRIPTS/new-cliente.sh slug 2026-05` → crea carpeta cliente
2. Operador rellena `00-preflight.md` (2 datos mínimos)
3. IA ejecuta Bloques 1-5 → puebla `outputs.json` y `01-web.md`
4. `SCRIPTS/deploy.sh slug` → build + deploy a Cloudflare Pages
5. IA puebla `02-pendientes.md` con los ⚠
6. Cliente cierra Sección A → IA ejecuta `03-gbp.md`

---

## Reglas

- **No renombrar IDs en `outputs.json`** — son canónicos.
- **No inventar datos.** Si no hay dato → status `⚠ placeholder` o `⚠ inferido`,
  nunca un valor falso con status `confirmed`.
- **`hereda_de`** marca dependencias entre outputs — respetarlas para trazabilidad.
- **Cada cliente tiene su propio `cluster/`** (copia de `PLANTILLA-CLUSTER/`) para
  poder customizar layout/tokens sin contaminar la plantilla maestra.
