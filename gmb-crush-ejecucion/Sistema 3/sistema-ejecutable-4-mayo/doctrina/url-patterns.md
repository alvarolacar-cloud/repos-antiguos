# URL patterns y slugify

> Reglas para construir las URLs del cluster. Aplicadas por `scripts/slugify.ts` y `scripts/generate-pages.ts`.

---

## Patterns por page type

| Page Type | URL pattern | Ejemplo (cliente cerrajero Madrid) |
|---|---|---|
| Homepage | `/` | `/` |
| Service Overview | `/[primary-cat-slug]/[service-slug]/` | `/cerrajero/cerrajero-urgente/` |
| LBS | `/[main-city-slug]/[service-slug]/` | `/madrid/cerrajero-urgente/` |
| Additional Category | `/[additional-slug]/` | `/duplicado-llaves/` |
| GeoHub Option A | `/[main-city-slug]/` | `/madrid/` |
| GeoHub Option B | `/[primary-cat-slug]/[main-city-slug]/` | `/cerrajero/madrid/` |
| GeoArticle | `/[main-city-slug]/[topic-slug]/` | `/madrid/cuanto-cuesta-cambiar-cerradura/` |
| Auxiliary Contact | `/contacto/` | `/contacto/` |

### GeoHub URL Style (decisión por cliente)

- **Option A** (`/madrid/`) — default. Más limpio.
- **Option B** (`/cerrajero/madrid/`) — más "service-first". Usar si el operador lo prefiere.

Esta decisión se toma una vez por cluster. Aplica a todas las URLs locales. Vive en `cliente.json` → `geohub_url_style`.

---

## Reglas de slugs

### Reglas universales

```
1. Lowercase                      → `Madrid` → `madrid`
2. Sin acentos / diacríticos      → `aerotermia` (no `aerotérmia`)
3. Kebab-case (separador `-`)      → `cerrajero-urgente` (no `cerrajero_urgente`)
4. Sin espacios                   → reemplazar por `-`
5. Sin caracteres especiales      → solo `[a-z0-9-]`
6. Sin guiones consecutivos       → `--` → `-`
7. Sin guion al inicio o final    → `-cerrajero-` → `cerrajero`
```

### Implementación

```typescript
// scripts/slugify.ts (pseudocódigo)
function slugify(input: string): string {
  return input
    .toLowerCase()
    .normalize("NFD").replace(/[̀-ͯ]/g, "") // acentos
    .replace(/[^a-z0-9\s-]/g, "")                      // caracteres especiales
    .replace(/\s+/g, "-")                              // espacios → guion
    .replace(/-+/g, "-")                               // guiones consecutivos
    .replace(/^-|-$/g, "");                            // guion inicio/fin
}
```

Tests obligatorios (van en `scripts/qa-check.ts`):

```
slugify("Cerrajero urgente")          === "cerrajero-urgente"
slugify("Reformas de baño en Madrid") === "reformas-de-bano-en-madrid"
slugify("AEROETERM")                  === "aeroeterm"
slugify("Marqués de Valdecilla 16")   === "marques-de-valdecilla-16"
```

---

## Trailing slash

**Default doctrinal:** `Yes`. Todas las URLs del cluster terminan en `/`.

Implementación Astro: `astro.config.mjs` → `trailingSlash: "always"`.

---

## Canonical Domain

**Formato obligatorio:** `https://www.[dominio]/`

```
✅ https://www.aeroeterm.com/
✅ https://www.cerrajerosmadrid24h.com/

❌ http://aeroeterm.com           (sin HTTPS)
❌ https://aeroeterm.com          (sin www)
❌ https://www.aeroeterm.com      (sin trailing slash)
❌ https://www.aeroeterm.com/index.html
```

---

## Blacklists (palabras prohibidas en URLs)

### Blacklist 1 — `near-me`

NO usar `near-me`, `cerca-de-mi`, `cerca-mi`, `nearby`. La doctrina prohíbe explícitamente.

### Blacklist 2 — Adjetivos vacíos

NO usar adjetivos genéricos sin valor SEO:

```
❌ best, mejor, top, top-rated
❌ cheap, barato, economico, low-cost
❌ professional, profesional
❌ trusted, fiable, confiable
❌ quick, rapido, fast
❌ free, gratis (excepto si forma parte del nombre del servicio: "presupuesto-gratis")
```

### Blacklist 3 — Falsa ubicación

NO crear URLs con ciudades donde el negocio NO tiene presencia operativa.

```
❌ Cliente con NAP en Madrid + Local Pack benchmark en Barcelona
   → NO crear `/barcelona/cerrajero/`
```

Las ciudades benchmark del Local Pack se usan para **comparar** competidores, no como zona operativa.

---

## Validaciones automáticas

`scripts/qa-check.ts` ejecuta:

```
test_url_pattern(url, page_type)            → matches el pattern doctrinal?
test_no_near_me(url)                         → 0 matches blacklist 1
test_no_empty_adjectives(url)                → 0 matches blacklist 2
test_no_fake_location(url, main_city, lcas)  → 0 ciudades fuera de zona operativa
test_canonical_format(url)                   → HTTPS+www+trailing
test_slug_clean(url)                         → solo `[a-z0-9-/]`
```

Si cualquier test falla, deploy se aborta.
