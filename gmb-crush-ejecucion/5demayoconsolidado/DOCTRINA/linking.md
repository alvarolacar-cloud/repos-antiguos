# Linking interno

> 15 reglas que rigen los enlaces internos del cluster. Aplicadas por `plantilla-cluster/src/lib/internal-links.ts` y validadas por `scripts/qa-check.ts` test 10.

---

## Las 10 reglas doctrinales

### 7.1 Enlazar arriba/abajo/lateral

Cada URL del cluster tiene enlaces en **3 direcciones**:

```
Arriba   → al "padre" (LBS → SO padre, GA → LBS padre)
Abajo    → al "hijo"  (HP → SO, SO → LBS, GH → LBS, LBS → GAs)
Lateral  → al "hermano" (SO ↔ SO del mismo silo, LBS ↔ LBS de la misma ciudad)
```

### 7.2 Homepage distribuye autoridad

`HP` enlaza a:
- Los `S` Service Overviews
- El GeoHub Main City
- Las `A` Additional Categories
- La página contacto

### 7.3 Service Overview empuja a versión local

`SO /[primary-cat-slug]/[service-slug]/` enlaza a su `LBS /[main-city-slug]/[service-slug]/` correspondiente.

### 7.4 GeoHub organiza Main City

`GH /[main-city-slug]/` enlaza a:
- Los `S` LBS de la ciudad
- Los `G×S` GeoArticles de la ciudad

### 7.5 LBS conecta servicio y ciudad

`LBS /[main-city]/[service]/` enlaza a:
- `SO` padre (servicio en general)
- `GH` Main City (índice ciudad)
- 2-3 GAs hijas relacionadas con su servicio

### 7.6 AC se integra en silo local

`AC /[additional-slug]/` enlaza al LBS Madrid del servicio core más relacionado (si lo hay), o al GH Main City.

### 7.7 GeoArticle pasa relevancia a landing

`GA /[main-city]/[topic]/` enlaza con CTA inline a su **LBS padre** (no SO).

> **Importante:** GA → LBS padre. NO GA → SO. El LBS captura intent local; el SO no.

### 7.8 LCAs sin URL no reciben enlaces

Las LCAs (`Lista`, `Salamanca`, `Chamberí`, etc.) son **menciones de copy + entry de `areaServed` schema**, NO links. Si aparecen como enlaces en algún sitio, falla `scripts/qa-check.ts`.

### 7.9 Anchor text variado (5 categorías)

```
1. Branded   → "AEROETERM", "AEROETERM Madrid"
2. Exact     → "reforma integral baño Madrid"
3. Partial   → "presupuesto reforma baño"
4. Topic     → "reforma de baños en Madrid"
5. Generic   → "ver más", "leer más", "consultar"
```

> **⚠ Fidelidad:** el original lista **5 categorías**. La "6ª categoría Local entity" detectada en auditoría era invento. Solo 5.

> **NO existen porcentajes doctrinales** del tipo `~15% branded / ~25% exact / ~10% generic`. El original NO asigna %. Solo dice "variar". Cualquier % es invento.

### 7.10 Enlaces contextuales primero

Prioridad de localización del enlace dentro de la página:

```
1. Inline en párrafo                  → más valor SEO
2. Card / sección destacada           → valor medio
3. Sidebar / aside                    → valor menor
4. Footer                             → menor (excepto NAP)
```

---

## Las 5 reglas operativas (matrices y ejemplos)

### 7.11 Matriz de enlaces obligatorios por page type

| Page Type | Outbound mínimos | Inbound esperados |
|---|---|---|
| HP | S SO + 1 GH + A AC + 1 contacto = `S+A+2` | desde Footer de TODAS las páginas (breadcrumb root) |
| SO | 1 LBS hijo + 1 contacto + 2 SO laterales = 4 | desde HP + breadcrumbs |
| GH | S LBS + G×S GAs = `S + G×S` | desde HP + Footer |
| LBS | 1 SO padre + 1 GH + 2-3 GAs hijas + 1 contacto = 5-6 | desde HP (si P1) + GH + GAs hijas |
| AC | 1 LBS relacionado + 1 GH + 1 contacto = 3 | desde HP + Footer |
| GA | 1 LBS padre + 2 GAs laterales + 1 contacto = 4 | desde GH + LBS padre |

### 7.12 Ejemplo enlaces LBS modelo

`LBS /madrid/reforma-integral-bano/`:

```
Outbound:
  → /reforma-integral-bano/                       (SO padre)
  → /madrid/                                      (GH Main City)
  → /madrid/cuanto-cuesta-reformar-bano/          (GA hija 1)
  → /madrid/tiempo-reforma-bano-entera/           (GA hija 2)
  → /madrid/permisos-licencia-reforma-bano/       (GA hija 3)
  → /contacto/                                    (auxiliar)
  → /                                             (HP, vía breadcrumb)

Inbound esperados:
  ← /                                             (HP, card servicio)
  ← /madrid/                                      (GH índice servicios)
  ← /madrid/cuanto-cuesta-reformar-bano/          (GA → LBS padre, regla 7.7)
  ← /reforma-integral-bano/                       (SO → LBS, regla 7.3)
```

### 7.13 Breadcrumbs por page type

```
HP        →  Inicio
SO        →  Inicio > [Servicio]
LBS       →  Inicio > [Servicio] > [Main City]
                                  ó
              Inicio > [Main City] > [Servicio]    (según GeoHub URL Style)
AC        →  Inicio > [Categoría]
GH        →  Inicio > [Main City]
GA        →  Inicio > [Main City] > [Topic]
```

Schema BreadcrumbList JSON-LD obligatorio en todos excepto HP.

### 7.14 Inbound links esperados

**0 páginas huérfanas.** Cada URL recibe ≥3 enlaces internos contextuales.

`scripts/qa-check.ts` test 10:
```
for url in cluster:
   inbound_count = count_links_pointing_to(url)
   assert inbound_count >= 3, f"Página huérfana: {url}"
```

### 7.15 Expansion linking separado

Si `E > 0` (Approved Expansion Areas activadas), las URLs de expansión (`/[area-aprobada]/...`) tienen su propia matriz de linking. NO se mezclan con la matriz Main City.

Por defecto (`E=0`), esta regla NO aplica.

---

## Implementación

### Componentes Astro

```
plantilla-cluster/src/components/
├── BreadcrumbNav.astro       (regla 7.13)
├── InternalLinks.astro       (helper para enlaces inline)
└── RelatedPages.astro        (cards de "páginas relacionadas")
```

### Lib

```
plantilla-cluster/src/lib/
├── internal-links.ts         (lógica de qué enlaces lleva cada page type)
└── breadcrumbs.ts             (genera breadcrumbs según page type + URL)
```

### QA tests

```
scripts/qa-check.ts:
  test_outbound_minimos(page, page_type)    → cumple matriz 7.11?
  test_inbound_3_minimo(page, all_pages)    → ≥3 inbound?
  test_anchor_text_variado(page)            → no repetir mismo anchor + sale de las 5 categorías
  test_lcas_sin_links(page)                 → 0 enlaces apuntando a LCAs
  test_breadcrumbs(page, page_type)         → schema BreadcrumbList correcto
  test_no_porcentajes_doctrinales(page)     → fidelidad regla 7.9
```
