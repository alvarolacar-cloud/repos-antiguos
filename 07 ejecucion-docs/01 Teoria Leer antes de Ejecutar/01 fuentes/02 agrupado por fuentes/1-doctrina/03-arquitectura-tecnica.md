# Fuente 03 — `Arquitectura técnica`

> **Qué es:** decisión técnica de stack / convención / configuración del cluster web.
> **Tool / método:** operador aplica stack canónico (Astro 5 + Tailwind v3 + pnpm + Cloudflare) y convenciones técnicas (trailing slash, URL style GeoHub, deploy config).

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya `Fuente` es `Arquitectura técnica`, con el detalle completo de cada output.

---

## Outputs (4 total)

### 3.2 GeoHub URL Style
- **Qué es:** estilo de URL del GeoHub de la Main City — Option A `/[main-city]/` o Option B `/[primary-cat]/[main-city]/`.
- **Para qué sirve:** decisión técnica que afecta a 4.5, 4.8, 5.5 (Spec GeoHub).
- **Cómo se asigna:**
  - **Option A** `/[main-city]/` → cuando el GeoHub es el ancla geográfica principal (default).
  - **Option B** `/[primary-cat]/[main-city]/` → cuando el GeoHub debe vivir bajo el silo de categoría.
- **Dato que buscamos:** `[Option A o Option B según contexto del cluster]`.
- **Cómo se obtiene:** Decisión técnica del operador según el stack canónico — por defecto Option A.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** Default Option A. Cambiar a B solo cuando hay razón estratégica (ej: cluster muy categoría-céntrico).

### 4.2 Trailing Slash
- **Qué es:** decisión global Yes/No sobre trailing slash en URLs.
- **Para qué sirve:** consistencia en toda la matriz, redirects, canonical.
- **Cómo se asigna:**
  - **Yes** (default) → todas las URLs terminan en `/`.
  - **No** → todas las URLs sin slash final.
- **Dato que buscamos:** `[Yes o No, coherente para todas las URLs del cluster]`.
- **Cómo se obtiene:** Decisión técnica del operador — por defecto Yes (con trailing slash) según stack canónico.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** Default Yes. Aplicar coherentemente a todas las URLs.

### 17.2 Proyecto Astro 5 + Tailwind v3 + pnpm
- **Qué es:** proyecto base Astro 5 + Tailwind v3 + pnpm con tailwind.config copiado de Paso 16.
- **Para qué sirve:** scaffolding del cluster.
- **Dato que buscamos:** `[proyecto Astro funcional con Tailwind config aplicado]`.
- **Cómo se obtiene:** Creamos el proyecto Astro con Tailwind y pnpm como stack canónico, copiando el tailwind.config del Paso 16.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** `pnpm create astro` + `pnpm add -D tailwindcss` + copia tailwind.config Paso-16.

### 18.5 Configuración Cloudflare
- **Qué es:** deploy-config.md + config aplicada en Cloudflare dashboard (Pages + DNS).
- **Para qué sirve:** infraestructura de deploy.
- **Dato que buscamos:** `[deploy-config + Pages project + DNS records aplicados]`.
- **Hereda info de pasos anteriores:** Bloque 0 Inputs 7+8 (Cloudflare Account ID + Token).
- **Cómo se obtiene:** Aplicamos el stack canónico Cloudflare usando las credenciales del preflight.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** Crear deploy-config.md + aplicar config Pages + DNS via wrangler/dashboard usando Account ID + Token del preflight.

---

## Resumen

- **Total outputs con `Arquitectura técnica`:** 4
- Puros: 4
- Combinados: 0

**Pasos donde aparece como fuente principal:** 3, 4, 17, 18.

> **Convenciones técnicas canónicas que cubre esta fuente:**
> - **Stack:** Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages
> - **Trailing Slash:** decisión coherente para todo el cluster (default Yes)
> - **GeoHub URL style:** Option A `/[main-city]/` (default) o B `/[primary-cat]/[main-city]/` según contexto
> - **Deploy:** Cloudflare Pages con auto-deploy desde main; DNS TXT para verificación GSC
>
> Cualquier desviación de estas convenciones debe documentarse como divergencia ad-hoc en `02fuentes-y-outputs.md`.
