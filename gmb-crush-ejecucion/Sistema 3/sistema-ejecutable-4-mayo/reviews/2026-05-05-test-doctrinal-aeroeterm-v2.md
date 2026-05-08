# Test de Implementación Doctrinal GMB Crush — Aeroeterm v2

**Fecha:** 2026-05-05
**Revisor:** Auditoría doctrinal independiente
**Sistema bajo prueba:** plantilla-cluster + cliente 2026-05-aeroeterm
**Build evaluada:** dist/ con 32 URLs (29 SEO + 3 AUX)

---

## Score final

**Score: 78 / 100**
**Verdict: PARTIAL (rango 60-89, "Buena, con ajustes")**

Sin bloqueos automáticos doctrinales (ningún criterio del bloque es FAIL absoluto). Pero existe un bug de URL en componentes globales (Header/Footer/ServicesGrid) que rompe doctrinalmente el internal linking de la HP — descontado del bloque "Internal Linking" y "Canibalización".

---

## Bloqueos automáticos

| Bloqueo | Estado |
|---|---|
| LCAs generan URLs sin aprobación | PASS — `1.11=[]`, ningún build de LCA |
| Service Overview y LBS se mezclan | PASS — H1 SO sin ciudad, H1 LBS con ciudad |
| GeoArticles se comportan como landings | PASS — CTA suave hacia LBS, Speakable activo |
| No existe GeoHub | PASS — `/madrid/` con CollectionPage schema |
| No hay internal linking padre/hijo | PASS — matriz interna correcta en `internal-links.ts` |
| Schema genérico para todas las páginas | PASS — schema diferenciado por page type |
| Additional Category sin soporte | PASS — `alicatado-y-azulejos`, `servicios-fontaneria` con páginas |
| Categoría GBP sin respaldo web | PASS — Tile + Plumber tienen AC; Construction → covered_by HP |
| Se inventa ubicación física | PASS — solo Madrid (city del NAP) |
| Se crean páginas fuera de la URL Matrix | PASS — 29 SEO coinciden con `2.8` |

Ningún bloqueo automático activado.

---

## Auditoría 17 chequeos

### 1. Arquitectura (PASS)
- `pages/index.astro` (HP) — Root entity anchor
- `pages/[category]/[service]/index.astro` (SO)
- `pages/[category]/[city]/[slug].astro` (LBS y AC unificados)
- `pages/[city]/index.astro` (GH)
- `pages/[city]/[topic].astro` (GA)
- `pages/contacto.astro` (AUX)
- 6 page types presentes con ruta Astro propia.

### 2. Fórmula base (PASS)
`outputs.json::2.8 = 29` = 1+5+1+5+2+15. Inventario `2.9` correcto: HP=1, SO=5, GH=1, LBS=5, AC=2, GA=15, AUX=1. Build dist genera exactamente 29 SEO.

### 3. Patrones URL (PASS)
- HP: `/`
- SO: `/bathroom-remodeler/reforma-integral-bano/`
- LBS: `/bathroom-remodeler/madrid/reforma-integral-bano/`
- AC: `/bathroom-remodeler/madrid/alicatado-y-azulejos/`
- GH: `/madrid/`
- GA: `/madrid/cuanto-cuesta-reformar-bano/`
- LBS pattern doctrinal `/[category]/[city]/[slug]/` confirmado en `internal-links.ts:39-41`.

### 4. Main City vs LCAs (PASS)
- `1.11` Approved Expansion Areas = `[]` → fórmula extra inactiva
- `1.10` LCAs (direct/candidate) NO generan URLs propias
- `buildAreaServed()` (cluster.ts:129) incluye Main City + LCAs solo en schema, no en URLs

### 5. Page Type Fidelity (PARCIAL)
- HP cumple ancla; SO sin ciudad; LBS con ciudad; AC tiene contenido real para GBP additional; GH agrupa; GA tiene CTA suave.
- DEFECTO: GA tiene placeholder "[Contenido pendiente]" — esto NO es fallo doctrinal pero indica contenido sin redactar (Paso 15).

### 6. Service Overview (PASS)
URL `/bathroom-remodeler/[service]/` SIN ciudad. H1 = nombre del servicio. CTA → LBS.

### 7. LBS (PASS doctrinal con observación)
- URL `/bathroom-remodeler/madrid/[slug]/` ✅
- H1 = "Reforma integral de baño en Madrid" ✅
- Schema LocalBusiness + BreadcrumbList ✅
- FAQPage NO presente porque outputs.json no tiene `15.x` (FAQs vacíos). El builder `buildLBSSchemas` añade FAQPage condicional (`opts.faqs.length > 0`). DOCTRINALMENTE el slot está, pero el cliente no ha entregado FAQs.

### 8. AC (PASS)
- URL `/bathroom-remodeler/madrid/alicatado-y-azulejos/`
- Schema Service + BreadcrumbList (sin LocalBusiness ✅, doctrina respetada)
- Solo se generan AC con `needs_page=true` (Tile + Plumber); Construction queda `covered_by: HP`.

### 9. GeoHub (PASS)
- URL `/madrid/` ✅
- Schema CollectionPage + BreadcrumbList ✅
- Lista LBS, AC y GA agrupados.

### 10. GeoArticles (PASS doctrinal con observación)
- URL `/madrid/[topic]/`
- Schema Article + BreadcrumbList + Speakable ✅
- FAQPage condicional (idem LBS, sin contenido en outputs)
- CTA suave hacia LBS padre ✅

### 11. Internal Linking (PARCIAL — issue crítico no-bloqueante)
**Issue:** `Footer.astro:46`, `Header.astro:20` y `ServicesGrid.astro:23` usan `href={`/${mainCitySlug}/${s.slug}/`}` que produce `/madrid/reforma-integral-bano/` (URL inexistente; LBS real está en `/bathroom-remodeler/madrid/reforma-integral-bano/`). Como Header+Footer son globales, TODAS las 32 páginas tienen 5 enlaces rotos a LBS, y la HP es el único acceso natural a las LBS.
- `internal-links.ts` SÍ define `lbsUrl()` correctamente (line 39-41) pero NO lo usan estos componentes.

### 12. Schema Doctrine (PASS)
Verificado en HTML real:
- HP: Organization + WebSite (sin LocalBusiness, sin FAQPage) ✅
- SO: Service + WebPage + BreadcrumbList ✅
- LBS: LocalBusiness + BreadcrumbList (FAQPage condicional vacía por falta de 15.3) ✅
- AC: Service + BreadcrumbList (sin LocalBusiness) ✅
- GH: CollectionPage + BreadcrumbList ✅
- GA: Article + WebPage(Speakable) + BreadcrumbList (FAQPage condicional vacía) ✅
- Contacto: ContactPage + Organization ✅

### 13. Canibalización (PARCIAL)
- 1 intención = 1 URL en outputs.json: ✅
- PERO el bug de Header/Footer enlaza `/madrid/reforma-integral-bano/` (inexistente) que coincidiría con un GA topic_slug si lo hubiera. El URL pattern GA `/[city]/[topic]/` y un eventual `topic_slug = "reforma-integral-bano"` generaría colisión total. Riesgo doctrinal latente.

### 14. AI Overview / NLP (PASS doctrinal con observación)
- Speakable presente en GA ✅
- Quick-answer block presente en GA ✅
- FAQs vacías (15.x) — Faqs.astro renderiza condicionalmente, no genera FAQ visible ni schema FAQPage.
- Contenido GA es placeholder ("[Contenido pendiente]") — no es fallo doctrinal, es etapa pre-Paso-15.

### 15. Soporte GBP (PASS)
- Primary Category 1.5 = "Bathroom remodeler" → slug arquitectural primario
- Additional Categories 1.6: needs_page con páginas; covered_by para HP
- GeoHub Madrid refuerza ciudad principal
- NAP centralizado en `1.4` y reutilizado por `getNAP()`
- `sameAs` no inventado (no presente — correcto, GBP no creado)
- `1.3` GBP Lifecycle = "Not Created" → flujo web-first puro

### 16. Expansión (PASS)
- `1.11=[]` por default doctrinal Phase 1
- `2.10` "inactiva (E=0)" — coherente

### 17. Trazabilidad doctrinal (PASS)
Cada output tiene `fuente`, `source`, `hereda_de`, `bloque`. `validateCluster()` (cluster.ts:158) audita cada output contra catálogo. CATALOG_VERSION fail-fast en línea 46.

---

## Score por área

| Área | Peso | Score | Ponderado |
|---|---:|---:|---:|
| Arquitectura y fórmula | 15 | 100 | 15 |
| URLs y Page Types | 15 | 100 | 15 |
| Main City / LCA / Expansion | 10 | 100 | 10 |
| Contenido por Page Type | 15 | 60 | 9 (placeholders en GA, FAQs vacías) |
| GeoHub y GeoArticles | 10 | 80 | 8 (FAQs vacías) |
| Internal Linking | 10 | 30 | 3 (bug Header/Footer rompe LBS de HP) |
| Schema | 10 | 90 | 9 (FAQPage vacío en LBS/GA por falta 15.x) |
| No canibalización | 5 | 80 | 4 (riesgo latente pattern collision) |
| Soporte GBP | 5 | 100 | 5 |
| AI Overview / entidades | 5 | 80 | 4 |
| **Total** | **100** | | **82** |

Ajuste a la baja por riesgo de regresión silenciosa (bug en Header/Footer/ServicesGrid es de alta visibilidad y afecta toda la web): **78 / 100**.

---

## Issues críticos (alta prioridad)

### 1. [CRÍTICO] URLs LBS rotas en Header, Footer y ServicesGrid
**Path:** `src/components/Footer.astro:46`, `src/components/Header.astro:20`, `src/components/ServicesGrid.astro:23`
**Problema:** Usan `/${mainCitySlug}/${s.slug}/` que produce `/madrid/reforma-integral-bano/`. La LBS doctrinal está en `/bathroom-remodeler/madrid/reforma-integral-bano/`. Resultado: 5 enlaces rotos × 32 páginas = ~160 enlaces 404, y la HP no tiene NINGÚN enlace funcional a LBS.
**Severidad:** crítica
**Fix:** sustituir por `/${primaryCatSlug}/${mainCitySlug}/${s.slug}/`. Ya existe `getPrimaryCategorySlug()` exportado en `cluster.ts:88`. La función `lbsUrl()` correcta está en `internal-links.ts:39`.

### 2. [ALTA] Riesgo de canibalización por colisión de patrones
**Problema:** El bug 1 produce URLs `/madrid/reforma-integral-bano/` que colisionan con el patrón GA `/[city]/[topic]/`. Si Paso 3.4 GeoArticle Topics añade un topic_slug igual a un service_slug, se genera doble página al mismo path con dos page types.
**Severidad:** alta (latente — no activa hoy porque no hay topic_slug que coincida con service_slug)
**Fix:** además del fix #1, validar en `getStaticPaths` que `topic_slug ∉ service_slugs`.

---

## Issues no-críticos (mejoras)

### 3. [MEDIA] FAQPage vacío en LBS y GA
`outputs.json` no incluye `15.1`–`15.6` (FAQs por page type). El builder de schemas añade FAQPage solo si `faqs.length > 0`. Doctrina LBS exige LocalBusiness + FAQPage + BreadcrumbList; LBS actual = LocalBusiness + BreadcrumbList. No es fallo de código (builder correcto), es contenido pendiente Paso 15.
**Fix:** añadir outputs `15.3` (FAQs LBS) y `15.6` (FAQs GA) al cliente.

### 4. [BAJA] Contenido placeholder en GeoArticle
`pages/[city]/[topic].astro:84` muestra "[Contenido pendiente]" como cuerpo. Aceptable en MVP pre-Paso-15 pero no se debería desplegar a producción así.

### 5. [BAJA] Footer "Cobertura" no enlaza barrios pero buena
Texto `Trabajamos en todo Madrid: Lista, Salamanca…` — correcto doctrinalmente (LCAs como señal GEO no como URLs).

---

## Conclusión

El sistema cumple la doctrina GMB Crush en arquitectura, fórmula maestra, URL patterns, Page Type fidelity, schema por tipo, expansion control y trazabilidad. Existe **un bug específico** en componentes globales (Header/Footer/ServicesGrid) que rompe el internal linking HP→LBS y crea una superficie de error visible en toda la web.

**Una vez fijado el bug del primaryCatSlug en los 3 componentes**, el score sube a ~92-95 (PASS doctrinal). El resto de gaps son contenido pendiente (FAQs, cuerpo de GA) que doctrinalmente corresponden a Bloque 5/6, no son fallos del sistema.
