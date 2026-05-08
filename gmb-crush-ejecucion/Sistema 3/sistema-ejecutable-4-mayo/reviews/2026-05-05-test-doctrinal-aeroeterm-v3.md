# Test de Implementación Doctrinal GMB Crush — Aeroeterm v3

**Fecha:** 2026-05-05
**Revisor:** Auditoría doctrinal independiente (re-test)
**Sistema bajo prueba:** plantilla-cluster + cliente 2026-05-aeroeterm
**Build evaluada:** dist/ con 32 URLs (29 SEO + 3 AUX)
**Commit:** 37532b8 (post-fix)
**Versión anterior:** v2 = 78/100 (PARTIAL)

---

## Score final

**Score: 94 / 100**
**Verdict: PASS (rango 90-100, "Implementación doctrinal excelente")**

**Delta vs v2: +16 puntos.** El bug crítico que rompía Internal Linking (Header/Footer/ServicesGrid emitiendo URLs sin segmento `[category]`) está completamente arreglado. Solo quedan issues no-críticos que corresponden a contenido pendiente del cliente (Paso 15), no a fallos doctrinales del sistema.

Sin bloqueos automáticos doctrinales activos.

---

## Bloqueos automáticos

| Bloqueo | Estado |
|---|---|
| LCAs generan URLs sin aprobación | PASS — `1.11=[]`, ningún build de LCA |
| Service Overview y LBS se mezclan | PASS — H1 SO sin ciudad, H1 LBS con ciudad |
| GeoArticles se comportan como landings | PASS — CTA suave hacia LBS, Speakable activo |
| No existe GeoHub | PASS — `/madrid/` con CollectionPage schema |
| No hay internal linking padre/hijo | **PASS — bug v2 arreglado en commit 37532b8** |
| Schema genérico para todas las páginas | PASS — schema diferenciado por page type |
| Additional Category sin soporte | PASS — `alicatado-y-azulejos`, `servicios-fontaneria` con páginas |
| Categoría GBP sin respaldo web | PASS — Tile + Plumber tienen AC; Construction → covered_by HP |
| Se inventa ubicación física | PASS — solo Madrid (city del NAP) |
| Se crean páginas fuera de la URL Matrix | PASS — 29 SEO coinciden con `2.8` |

Ningún bloqueo automático activado.

---

## Confirmación específica del fix v2 → v3

**Bug v2:** `Footer.astro:46`, `Header.astro:20`, `ServicesGrid.astro:23` usaban `href={`/${mainCitySlug}/${s.slug}/`}` que producía URLs como `/madrid/reforma-integral-bano/` (inexistentes / colisión con patrón GA).

**Estado en commit 37532b8:**
- `Footer.astro:48` → `href={`/${primaryCatSlug}/${mainCitySlug}/${s.slug}/`}` ✅ correcto
- `Header.astro:21` → `href={`/${primaryCatSlug}/${mainCitySlug}/${s.slug}/`}` ✅ correcto
- `ServicesGrid.astro:24` → `href={`/${primaryCatSlug}/${mainCitySlug}/${s.slug}/`}` ✅ correcto

**Verificación en HTML real (dist/):**
- Búsqueda `href="/madrid/reforma-integral-bano/` → **0 ocurrencias** en todo el dist
- Búsqueda `href="/bathroom-remodeler/madrid/reforma-integral-bano/` → **presente y consistente** en HP y todas las páginas
- Las 32 páginas tienen Header+Footer+ServicesGrid emitiendo el patrón LBS doctrinal `/[category]/[city]/[service]/`

**Bug v2 = ARREGLADO.** Sin regresiones.

---

## Auditoría 17 chequeos

### 1. Arquitectura (PASS)
6 page types presentes con ruta Astro propia. HP, SO, LBS, AC, GH, GA, AUX correctamente separados.

### 2. Fórmula base (PASS)
`outputs.json::2.8 = 29` = 1+5+1+5+2+15. Inventario `2.9`: HP=1, SO=5, GH=1, LBS=5, AC=2, GA=15, AUX=1. Build dist genera exactamente 29 SEO + 3 AUX.

### 3. Patrones URL (PASS)
- HP: `/`
- SO: `/bathroom-remodeler/[service]/` (sin ciudad ✅)
- LBS: `/bathroom-remodeler/madrid/[service]/`
- AC: `/bathroom-remodeler/madrid/[additional-category]/`
- GH: `/madrid/`
- GA: `/madrid/[topic]/`
- AUX: `/contacto/`, `/aviso-legal/`, `/privacidad/`

### 4. Main City vs LCAs (PASS)
- `1.11` Approved Expansion Areas = `[]` → fórmula extra inactiva
- `1.10` LCAs (direct/candidate) NO generan URLs propias
- LCAs aparecen solo como señal GEO en footer ("Trabajamos en todo Madrid: Lista, Salamanca…")
- `buildAreaServed()` incluye Main City + LCAs en schema, no en URLs

### 5. Page Type Fidelity (PASS)
- HP: ancla entidad ✅
- SO: H1 sin ciudad ("Reforma integral de baño") ✅
- LBS: H1 con ciudad ("Reforma integral de baño en Madrid") ✅
- AC: H1 con categoría adicional ("Tile contractor en Madrid") ✅
- GH: H1 contenedor ("Servicios en Madrid") ✅
- GA: H1 pregunta ("¿Cuánto cuesta reformar un baño en Madrid?") + CTA suave ✅

### 6. Service Overview (PASS)
URL `/bathroom-remodeler/[service]/` SIN ciudad. CTA → LBS. H1 sin ciudad confirmado en HTML.

### 7. LBS (PASS)
- URL `/bathroom-remodeler/madrid/[service]/` ✅
- H1 = "Reforma integral de baño en Madrid" ✅
- Schema LocalBusiness + BreadcrumbList ✅
- FAQPage condicional (`opts.faqs.length > 0`) — vacío hoy por outputs `15.x` no entregados (pendiente cliente, NO fallo doctrinal)
- Enlaza a SO padre, GH, GAs hijas via `linksFromLBS()`

### 8. AC (PASS)
- URL `/bathroom-remodeler/madrid/alicatado-y-azulejos/` y `/servicios-fontaneria/`
- Schema Service + BreadcrumbList (sin LocalBusiness ✅)
- Solo se generan AC con `needs_page=true` (Tile + Plumber); Construction queda `covered_by: HP` ✅

### 9. GeoHub (PASS)
- URL `/madrid/` ✅
- Schema CollectionPage + BreadcrumbList ✅
- Lista todas las LBS, AC y GA agrupados via `linksFromGeoHub()`

### 10. GeoArticles (PASS)
- URL `/madrid/[topic]/` ✅
- Schema Article + BreadcrumbList + WebPage(Speakable) ✅ verificado en los 15 archivos
- CTA suave hacia LBS padre ✅
- FAQPage condicional vacío hoy por `15.x` ausentes (pendiente cliente)

### 11. Internal Linking (PASS — bug v2 arreglado)
- Header, Footer y ServicesGrid usan ahora el patrón correcto `/[primaryCatSlug]/[mainCitySlug]/[service]/`
- `internal-links.ts` matriz padre/hijo correcta y consumida por las páginas
- 0 enlaces rotos detectados en dist
- HP enlaza a las 5 LBS, 2 AC y GH correctamente

### 12. Schema Doctrine (PASS)
- HP: Organization + WebSite ✅
- SO: Service + WebPage + BreadcrumbList ✅
- LBS: LocalBusiness + BreadcrumbList (FAQPage condicional vacío por falta 15.3) ✅
- AC: Service + BreadcrumbList (sin LocalBusiness) ✅
- GH: CollectionPage + BreadcrumbList ✅
- GA: Article + WebPage(Speakable) + BreadcrumbList (FAQPage condicional vacío) ✅
- Contacto: ContactPage + Organization ✅

### 13. Canibalización (PASS)
- 1 intención = 1 URL en outputs.json ✅
- Riesgo latente de v2 (`/madrid/reforma-integral-bano/` colisión con GA pattern) **eliminado** porque ya no se emite esa URL desde componentes globales.
- Topics GA distintos de service slugs verificado en outputs `3.4`.

### 14. AI Overview / NLP (PASS)
- Speakable presente en los 15 GA ✅
- Quick-answer block presente en GA ✅
- Entidades (servicios, ciudad, categoría) presentes en H1/H2/contenido
- FAQs vacías hoy por outputs `15.x` no entregados — el slot doctrinal está, el contenido es trabajo del Paso 15

### 15. Soporte GBP (PASS)
- Primary Category `1.5` = "Bathroom remodeler"
- Additional Categories `1.6`: needs_page con páginas; covered_by para HP
- GeoHub Madrid refuerza ciudad principal
- NAP centralizado en `1.4`, reutilizado por `getNAP()`
- `sameAs` no inventado (correcto, GBP no creado)
- `1.3` GBP Lifecycle = "Not Created" → flujo web-first puro

### 16. Expansión (PASS)
- `1.11=[]` por default doctrinal Phase 1
- `2.10` "inactiva (E=0)" — coherente

### 17. Trazabilidad doctrinal (PASS)
Cada output tiene `fuente`, `source`, `hereda_de`, `bloque`. `validateCluster()` audita cada output contra catálogo. CATALOG_VERSION fail-fast en cluster.ts:46.

---

## Score por área

| Área | Peso | Score | Ponderado |
|---|---:|---:|---:|
| Arquitectura y fórmula | 15 | 100 | 15 |
| URLs y Page Types | 15 | 100 | 15 |
| Main City / LCA / Expansion | 10 | 100 | 10 |
| Contenido por Page Type | 15 | 80 | 12 (placeholders en GA, FAQs vacías — Paso 15) |
| GeoHub y GeoArticles | 10 | 90 | 9 (FAQs vacías en GA) |
| Internal Linking | 10 | 100 | 10 (**+7 vs v2** por fix) |
| Schema | 10 | 90 | 9 (FAQPage vacío en LBS/GA condicionalmente) |
| No canibalización | 5 | 100 | 5 (**+1 vs v2** por riesgo eliminado) |
| Soporte GBP | 5 | 100 | 5 |
| AI Overview / entidades | 5 | 80 | 4 |
| **Total** | **100** | | **94** |

---

## Issues críticos restantes

**Cero (0).** No hay issues críticos. Para alcanzar 100/100 solo restaría completar el contenido del Paso 15 (responsabilidad del cliente / writer, no de la plantilla).

---

## Issues no-críticos (mejoras opcionales, NO doctrinales)

### 1. [PENDIENTE-CONTENIDO] FAQPage vacío en LBS y GA
`outputs.json` no incluye `15.1`–`15.6` (FAQs por page type). El builder de schemas añade FAQPage solo si `faqs.length > 0`. La plantilla soporta el slot correctamente; el contenido es trabajo del Paso 15.
**Clasificación:** pendiente de contenido del cliente — NO fallo doctrinal del sistema.

### 2. [PENDIENTE-CONTENIDO] Cuerpo placeholder en GeoArticle
`pages/[city]/[topic].astro:84` muestra "[Contenido pendiente]" como cuerpo. Aceptable en MVP pre-Paso-15.
**Clasificación:** pendiente de contenido del cliente — NO fallo doctrinal.

### 3. [BAJA] Validación defensiva de colisión topic_slug ∉ service_slugs
Aunque hoy el riesgo de canibalización está mitigado por el fix de URLs, sería buena práctica añadir un guard en `getStaticPaths` o en `validateCluster()` que verifique que ningún `topic_slug` GA coincida con un `service_slug` LBS, para prevenir regresiones futuras si Paso 3.4 añade un topic homónimo.
**Severidad:** baja (defensiva)

---

## Conclusión

El sistema cumple la doctrina GMB Crush en arquitectura, fórmula maestra, URL patterns, Page Type fidelity, schema por tipo, expansion control, internal linking y trazabilidad. **El bug crítico v2 está arreglado y verificado en HTML real**: los 3 componentes globales (Header, Footer, ServicesGrid) emiten ahora el patrón LBS doctrinal `/[category]/[city]/[service]/`.

El score sube de **78/100 (PARTIAL)** a **94/100 (PASS)** — un delta de +16 puntos. Los 6 puntos restantes para 100/100 corresponden a contenido pendiente (FAQs `15.x` y cuerpo de GA), que es trabajo del Paso 15 / writer del cliente, no del sistema.

**La plantilla implementa doctrinalmente GMB Crush de forma correcta.**
