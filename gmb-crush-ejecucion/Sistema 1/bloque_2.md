# Bloque 2 — Arquitectura (Pasos 4, 5, 6 y 7)
# Outputs: 4.1–4.15 · 5.1–5.10 · 6.1–6.17 · 7.1–7.15 (57 outputs)

## Objetivo
Construir las reglas operativas de arquitectura que gobiernan el cluster completo:
- Paso 4: fijar las reglas de URL (dominio canónico, patrones por page type, validaciones anti-canibalización)
- Paso 5: definir las specs completas por page type (función, H1, meta, word count, schema, CTA, internal links)
- Paso 6: establecer la arquitectura interna de contenido por page type y las reglas de uso de LCAs
- Paso 7: definir el grafo de enlaces internos, anchors variados, breadcrumbs y mapa de inbound

---

## REGLAS GLOBALES DE BLOQUE 2

### Slug canónico — fórmula heredada del Bloque 1
```
slugify(text) =
  lowercase(text)
  → eliminar tildes y diacríticos (á→a, é→e, í→i, ó→o, ú→u, ñ→n)
  → reemplazar cualquier carácter no alfanumérico por '-'
  → colapsar guiones consecutivos en uno
  → eliminar guiones al inicio y al final
```

### Patrones URL por page type (Paso 4)
```
Homepage             /
Service Overview     /{primary-cat-slug}/{service-slug}/
GeoHub Main City     /{main-city-slug}/                             ← Option A (default)
                     /{primary-cat-slug}/{main-city-slug}/          ← Option B
LBS                  /{primary-cat-slug}/{main-city-slug}/{service-slug}/
Additional Category  /{primary-cat-slug}/{main-city-slug}/{additional-slug}/
GeoArticle           /{main-city-slug}/{topic-slug}/                ← Option A (default)
                     /{primary-cat-slug}/{main-city-slug}/{topic-slug}/ ← Option B
Auxiliar             /contacto/
```

### Trailing slash — convención global
```
Decidido en Paso 4 (default: Yes). Aplica idéntico a TODAS las URLs del cluster.
No se mezcla con-slash y sin-slash.
```

### LCAs — regla crítica de arquitectura
```
Local Coverage Areas → mención en contenido + schema areaServed + NO URL base
Para que una LCA genere URL → debe pasar a AEA en 1.11 (Phase 1: E=0 por defecto)
LCAs sin URL → NO reciben anchors <a href="...">; solo menciones textuales
```

### Blacklist de URL — validaciones obligatorias
```
Prohibido en slugs: near-me | cerca-de-mi | cerca-mi | best | cheap | top-rated | mejor | barato | top
Prohibido: implicar oficina física en zonas sin NAP real
Prohibido: pares de URLs con la misma intención local + servicio (canibalización)
```

### Schema por page type (heredado del Bloque 1, confirmado en Paso 5)
```
Homepage              → Organization + WebSite + LocalBusiness + FAQPage + Speakable
Service Overview      → Service + WebPage + BreadcrumbList + Speakable
GeoHub                → CollectionPage + BreadcrumbList + LocalBusiness (opc)
LBS                   → LocalBusiness + BreadcrumbList + FAQPage (opc) + Speakable (opc)
Additional Category   → Service (con areaServed) + BreadcrumbList + FAQPage (opc)
GeoArticle            → Article + FAQPage + BreadcrumbList + Speakable
```

### Word count doctrinal por page type (Paso 5)
```
Homepage:               900–1,300 palabras
Service Overview:       850–1,000 palabras
LBS:                    800–1,000 palabras
Additional Category:    800–1,000 palabras
GeoHub:                 700–1,100 palabras
GeoArticle:             1,000–1,500 palabras
```

### CTA por funnel position (Paso 5)
```
Homepage:              Llamar ahora (alta intención conversión)
Service Overview:      Solicitar presupuesto (consultivo)
LBS:                   Llamar ahora (alta intención local)
Additional Category:   Solicitar presupuesto (consultivo)
GeoHub:                Llamar ahora (hub local)
GeoArticle:            Leer LBS / Llamar (navegación al funnel comercial)
```

### Cinco principios de cobertura local (Paso 6)
```
P1 — Main City crea arquitectura: una sola ciudad principal genera URLs base
P2 — LCAs enriquecen contenido: viven en texto, FAQs y areaServed, no en path
P3 — AEAs crean URLs solo si se aprueban: umbral demanda + competencia + contenido único
P4 — Mencionar zona ≠ crear página: señal GEO ≠ arquitectura URL
P5 — No falsa ubicación: nunca afirmar oficina física donde no existe
```

### Reglas de internal linking (Paso 7)
```
R1 — Enlazar arriba/abajo/lateral: up (padre) + down (hijos/soporte) + lateral (hermanos)
R2 — Homepage distribuye: S SO + 1 GeoHub + 1 contacto
R3 — SO empuja local: cada SO → su LBS Main City
R4 — GeoHub organiza: enlaza a TODAS las páginas locales (LBS + AC + GAs)
R5 — LBS conecta: SO padre + GeoHub + related LBS + matching GAs
R6 — AC se integra: GeoHub + LBS relacionados
R7 — GeoArticle booster: matching LBS + GeoHub
R8 — LCAs sin URL: solo texto, 0 anchors a URLs inexistentes
R9 — Anchor text: exact match + partial + branded + CTA + informational
R10 — Contextuales primero: body > nav/footer; intro + FAQs + related resources
```

### Breadcrumbs por page type (Paso 7)
```
Homepage               Home
Service Overview       Home > {Primary Category} > {Service Name}
GeoHub Main City       Home > {Main City}
LBS                    Home > {Primary Category} > {Main City} > {Service Name}
Additional Category    Home > {Primary Category} > {Main City} > {Additional Category Name}
GeoArticle             Home > {Main City} > {Article Topic Title}
```

### Matriz de enlaces obligatorios — 14 conexiones (Paso 7)
```
1.  Homepage      → Service Overview Pages (S)          — reforzar servicios principales
2.  Homepage      → Main City GeoHub                    — reforzar ciudad principal
3.  Homepage      → /contacto/                          — conversión y NAP
4.  SO            → LBS Main City correspondiente       — empujar landing local
5.  SO            → Related SOs                         — autoridad temática
6.  GeoHub        → todas las LBS Main City             — organizar silo local
7.  GeoHub        → Additional Category Pages           — soporte GBP
8.  GeoHub        → GeoArticles                         — recursos locales
9.  LBS           → SO padre                            — relación temática
10. LBS           → GeoHub Main City                    — relación geográfica
11. LBS           → related LBS mismo cluster           — cluster local
12. LBS           → matching GeoArticles                — profundidad semántica
13. GeoArticle    → matching LBS                        — pasar autoridad
14. GeoArticle    → GeoHub Main City                    — reforzar ciudad
```

---

## PASO 4 — URL RULES (outputs 4.1–4.15)

### 4.1 Canonical Domain
- **Fuente:** `doctrina_gmb_crush` ← heredado de 1.2 Website URL
- **Método:** Tomar el dominio declarado en el intake (1.2). Aplicar como única versión válida (una sola combinación de www/non-www + HTTPS) en todas las URLs absolutas, schema y enlaces internos. El resto de variantes redirigen 301.
- **Regla crítica:** No mezclar www con non-www ni HTTP con HTTPS en ninguna URL del cluster.
- **Ejemplo correcto:** `https://www.cerrajerosmadrid24h.com` — única versión canónica.
- **Errores prohibidos:** `http://www.cerrajerosmadrid24h.com` / mezclar versiones en schema y matriz.
- **Status:** `confirmed` si viene del intake. `placeholder` si no está declarado.

### 4.2 Trailing Slash rule
- **Fuente:** `arquitectura_tecnica`
- **Método:** Decidir Yes (slash final en todas) o No (nunca slash final). Default: **Yes**. La decisión aplica idéntica a TODAS las URLs del cluster sin excepción.
- **Regla crítica:** No publicar una URL con y otra sin trailing slash para el mismo path. Todas consistentes.
- **Ejemplo correcto (Yes):** `/cerrajero/madrid/cerrajero-urgente/`
- **Ejemplo incorrecto:** mezclar `/cerrajero/madrid/cerrajero-urgente` y `/cerrajero/madrid/cerrajero-urgente/`
- **Status:** `confirmed`

### 4.3 Homepage URL
- **Fuente:** `doctrina_gmb_crush`
- **Método:** La Homepage SIEMPRE vive en `/`. No hay decisión — es doctrina. No se permite `/home/`, `/inicio/`, `/index/`, `/madrid-cerrajero/`.
- **Regla crítica:** La homepage es la raíz del dominio y el Root Entity Anchor del negocio.
- **Status:** `confirmed` (valor fijo = `/`)

### 4.4 Service Overview URL pattern
- **Fuente:** `doctrina_gmb_crush` ← slugs de 2.2 + 2.4
- **Método:** Aplicar `/{primary-cat-slug}/{service-slug}/` para cada uno de los S core services heredados de 1.9. Los slugs vienen de 2.2 (primary category) y 2.4 (service slugs). Genera S URLs de Service Overview.
- **Regla crítica:** Las SO no llevan ciudad en la URL. Su función es pilar temático no geolocalizado.
- **Errores prohibidos:** `/cerrajero-urgente-madrid/` / `/madrid/cerrajero-urgente/` / `/services/cerrajero-urgente/`
- **Ejemplo correcto:** `/cerrajero/cerrajero-urgente/` (slug primary-cat = `cerrajero`, slug service = `cerrajero-urgente`)
- **Status:** `confirmed`

### 4.5 Main City GeoHub URL Style
- **Fuente:** `doctrina_gmb_crush` ← heredado de 3.2 GeoHub URL Style
- **Método:** Aplicar la decisión ya tomada en 3.2: Option A (`/{main-city-slug}/`) por defecto, u Option B (`/{primary-cat-slug}/{main-city-slug}/`) si el cliente lo justificó. La decisión es contractual; una vez tomada aplica idéntica al cluster.
- **Regla crítica:** No mezclar Option A y Option B en el mismo cluster.
- **Errores prohibidos:** `/areas-we-serve/madrid/` / `/locations/madrid/` / `/service-area/madrid/`
- **Ejemplo correcto (Option A):** `/madrid/`
- **Status:** `confirmed`

### 4.6 Location-Based Service URL pattern
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar `/{primary-cat-slug}/{main-city-slug}/{service-slug}/` para cada core service en la Main City. Genera S LBS Pages. Patrón fijo, sin variaciones.
- **Regla crítica:** LBS = categoría + ciudad + servicio. Siempre en este orden, sin inversiones.
- **Errores prohibidos:** `/madrid/cerrajero-urgente/` / `/cerrajero-urgente/madrid/` / `/cerrajero/cerrajero-urgente-madrid/`
- **Ejemplo correcto:** `/cerrajero/madrid/cerrajero-urgente/`
- **Status:** `confirmed`

### 4.7 Additional Category URL pattern
- **Fuente:** `doctrina_gmb_crush` ← slugs de 3.3
- **Método:** Aplicar `/{primary-cat-slug}/{main-city-slug}/{additional-slug}/` para cada Additional Category con página propia (A categorías efectivas del Paso 1.6). Slugs heredados de 3.3. Mismo patrón que LBS.
- **Regla crítica:** Una AC que coincide en intención con un core service NO genera URL adicional (ya se valida en 2.11).
- **Errores prohibidos:** `/duplicado-llaves-madrid/` / `/cerrajero/duplicado-llaves/` (sin ciudad)
- **Ejemplo correcto:** `/cerrajero/madrid/duplicado-llaves/`
- **Status:** `confirmed`

### 4.8 GeoArticle URL pattern
- **Fuente:** `doctrina_gmb_crush` ← topics de 3.4
- **Método:** Aplicar Option A (`/{main-city-slug}/{topic-slug}/`) por defecto, u Option B (`/{primary-cat-slug}/{main-city-slug}/{topic-slug}/`) si el cliente quiere GeoArticles bajo Primary Category. Topics validados con keyword research (3.4). Genera G × S GeoArticles.
- **Regla crítica:** GeoArticles son boosters semánticos. Su URL refleja un tema long-tail, NO compite con LBS.
- **Errores prohibidos:** `/blog/cerrajero-urgente-madrid/` / usar la URL de LBS para el artículo
- **Ejemplo correcto (Option A):** `/madrid/cuanto-cuesta-un-cerrajero-urgente/`
- **Status:** `confirmed`

### 4.9 LCAs no generan URLs (regla)
- **Fuente:** `doctrina_gmb_crush` ← 1.10
- **Método:** Confirmar que ninguna LCA (Direct ni Candidate) heredada de 1.10 genera una fila o segmento de path en la URL Matrix base. Las LCAs se mencionan en contenido y schema `areaServed`, no como URLs.
- **Regla crítica:** `count(URLs adicionales por LCA) = 0` en Phase 1.
- **Para generar URL de LCA:** debe pasar a AEA en 1.11 (umbral: demanda + competencia + contenido único + valor comercial).
- **Status:** `confirmed` (valor = 0 URLs adicionales; lista de LCAs confirmadas sin URL)

### 4.10 Approved Expansion URLs
- **Fuente:** `arquitectura_tecnica` ← 1.11
- **Método:** Si E ≥ 1 en 1.11, aplicar los mismos patrones del cluster con la zona aprobada como segmento city:
  - `/{aea-slug}/` — Expansion GeoHub
  - `/{primary-cat-slug}/{aea-slug}/{service-slug}/` — Expansion LBS
  - `/{primary-cat-slug}/{aea-slug}/{additional-slug}/` — Expansion AC
  - `/{aea-slug}/{topic-slug}/` — Expansion GeoArticle
  Si E = 0 (Phase 1 default) → output = "E=0 → 0 URLs de expansión generadas".
- **Regla crítica:** Expansion cluster se mantiene separado de la base; no contamina la URL Matrix principal.
- **Status:** `confirmed` (Phase 1 default = "None / E=0")

### 4.11 Validación No near-me
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Revisar cada URL candidata del cluster contra blacklist: `near-me`, `cerca-de-mi`, `cerca-mi`, `near`, equivalentes en cualquier idioma. La intención near-me se sirve con Main City + LBS, no con slug literal.
- **Regla crítica:** 0 URLs del cluster pueden contener estos patrones.
- **Status:** `confirmed` (flag OK / lista de URLs rechazadas si las hay)

### 4.12 Validación No adjetivos vacíos
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Revisar cada URL candidata contra blacklist: `best`, `cheap`, `top-rated`, `urgent-cheap`, `mejor`, `barato`, `top`, equivalentes. Estos adjetivos no aportan SEO local y pueden violar políticas de Google.
- **Regla crítica:** 0 URLs del cluster pueden contener estos adjetivos.
- **Status:** `confirmed` (flag OK / lista de URLs rechazadas si las hay)

### 4.13 Validación Slugs limpios
- **Fuente:** `doctrina_gmb_crush` ← 2.2
- **Método:** Validar que CADA slug del cluster (primary category, main city, services, additional categories, topic slugs) cumple la transformación slugify estándar:
  - lowercase ✓
  - sin diacríticos (á→a, ñ→n...) ✓
  - solo alfanumérico + guiones medios ✓
  - sin underscores, mayúsculas, símbolos especiales ✓
  - sin guiones iniciales/finales ✓
- **Regla crítica:** Slugs no derivados del nombre real del servicio se rechazan.
- **Errores prohibidos:** `CerrajeroUrgente` / `cerrajero_urgente` / `cerrajería-urgente` (con tilde)
- **Status:** `confirmed` (flag OK)

### 4.14 Validación No falsa ubicación
- **Fuente:** `doctrina_gmb_crush` ← 1.8 + 1.11
- **Método:** Para cada URL con segmento city, aplicar regla:
  ```
  IF city == NAP_city (1.8)    → válida
  IF city == approved_AEA (1.11) → válida (módulo expansión)
  ELSE                          → rechazar (falsa ubicación)
  ```
  Validar que NINGUNA URL implica oficina física en zonas donde el negocio no opera.
- **Regla crítica:** Ciudad en URL debe corresponder al NAP físico o a una AEA aprobada explícitamente.
- **Errores prohibidos:** `/cerrajero/almagro/cerrajero-urgente/` si Almagro no es AEA; `/chamberi/` sin AEA.
- **Status:** `confirmed` (flag OK + lista de cities validadas)

### 4.15 Validación No duplicar intención
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Para cada par de URLs candidatas del cluster, verificar que NO comparten la misma intención local + servicio. Fórmula:
  ```
  IF intent(URL_A) == intent(URL_B) AND city(URL_A) == city(URL_B):
    consolidar en canónica + redirigir 301 la perdedora
  ```
  Documentar consolidaciones realizadas.
- **Regla crítica:** One URL = one primary intent. Sin variaciones que compitan.
- **Errores prohibidos:** `/cerrajero/madrid/cerrajero-urgente/` + `/cerrajero/madrid/urgencias-cerrajero/` (misma intención)
- **Status:** `confirmed` (flag OK + consolidaciones documentadas)

---

## PASO 5 — PAGE TYPE RULES (outputs 5.1–5.10)

### 5.1 Spec Homepage (Root Entity Anchor)
- **Fuente:** `doctrina_gmb_crush` ← 1.1 + 1.4 + 1.13 + 1.14 + 4.3
- **Método:** Aplicar spec con inputs heredados. Generar los 12 sub-outputs:
  1. **Función:** Root Entity Anchor — concentra señales de marca y entidad; establece marca, categoría GBP, Main City, servicios, cobertura y contacto
  2. **Patrón URL:** `/`
  3. **H1 (template):** `[Brand Name] — [Primary Service] de confianza en [Main City]`
  4. **Meta Title (template):** `[Primary Service] en [Main City] | [Brand Name]`
  5. **Meta Descripción (template):** `¿Necesitas [Primary Service] en [Main City]? [Brand Name] ofrece servicio local, soporte experto y respuesta rápida. Llama hoy.`
  6. **Word count:** 900–1,300
  7. **Estructura:** H1 → Intro (marca + servicio + Main City) → Quick Answer → Servicios principales → Vista previa cobertura local (3–5 LCAs ligeras) → Bloques de confianza → Sección FAQ → Bloque NAP → CTA → Enlaces internos → Schema
  8. **Schema:** Organization + WebSite + LocalBusiness + FAQPage + Speakable
  9. **Internal links:** S SO Pages + GeoHub + AC (si A>0) + /contacto/
  10. **Ejemplo rellenado:** con datos reales del cliente
  11. **Ejemplos incorrectos:** homepage sin servicios / sin NAP / sin enlaces a SO
  12. **Regla final:** Homepage = Root Entity Anchor; no puede mezclarse con otro page type
- **Regla crítica:** No es una página decorativa; establece entidad local completa (marca + categoría + Main City + NAP + servicios + señales de confianza).
- **Status:** `confirmed`

### 5.2 Spec Service Overview (Topical Authority Pillar)
- **Fuente:** `doctrina_gmb_crush` ← 1.9 + 2.4 + 4.4
- **Método:** Aplicar spec replicada a los S core services. Generar 12 sub-outputs por instancia:
  1. **Función:** Topical Authority Pillar — pilar temático no geolocalizado
  2. **Patrón URL:** `/{primary-cat-slug}/{service-slug}/`
  3. **H1 (template):** `Servicios profesionales de [Service] por [Brand Name]`
  4. **Meta Title:** `[Service] por [Brand Name] | Expertos en [Primary Category]`
  5. **Meta Descripción:** `¿Necesitas [Service] de confianza? [Brand Name] ofrece soluciones expertas, rápidas y cuidadosas. Consulta el proceso y sus beneficios.`
  6. **Word count:** 850–1,000
  7. **Estructura:** H1 → Intro no local → H2 Authority → H2 Uniqueness → H2 Depth → H2 Intent → H2 Optimization → Bullet sections → FAQs → CTA → Enlaces internos → Schema
  8. **Schema:** Service + WebPage + BreadcrumbList + Speakable
  9. **Internal links:** Homepage + otras SO relacionadas + LBS Main City correspondiente + GeoArticle relevante
  10–12. Ejemplo + Incorrectos + Regla final
- **Regla crítica:** La SO NO menciona Main City como target principal. No incluir ciudad en H1 ni H2 principales. Debe enlazar a su LBS como puente al funnel.
- **Errores prohibidos:** Usar `/cerrajero/madrid/cerrajero-urgente/` como SO / thin content < 400 palabras
- **Status:** `confirmed` (S instancias = una por core service)

### 5.3 Spec LBS (Main City Converter)
- **Fuente:** `doctrina_gmb_crush` ← 1.9 + 1.10 + 2.4 + 4.6
- **Método:** Aplicar spec replicada a S core services × Main City. Generar 12 sub-outputs:
  1. **Función:** Main City Converter — convierte búsquedas locales de alta intención (servicio + Main City)
  2. **Patrón URL:** `/{primary-cat-slug}/{main-city-slug}/{service-slug}/`
  3. **H1 (template):** `[Brand Name] — [Service] en [Main City]`
  4. **Meta Title:** `Top [Service] en [Main City] | [Brand Name]`
  5. **Meta Descripción:** `¿Necesitas [Service] en [Main City]? [Brand Name] ayuda con [problema 1], [problema 2] y [problema 3]. Llama para soporte local.`
  6. **Word count:** 800–1,000
  7. **Estructura:** H1 → Intro local 100–150 words (mencionando 2–4 LCAs naturalmente) → Quick Local Answer → H2 Authority → H2 Uniqueness → H2 Depth → H2 Local Pain Points → **H2 Local Coverage Areas Served (2–4 LCAs)** → H2 Related Services in [Main City] → FAQs (con cobertura natural) → CTA → Enlaces internos → Schema
  8. **Schema:** LocalBusiness + BreadcrumbList + FAQPage (opc) + Speakable (opc) — `areaServed` incluye TODAS las LCAs declaradas (1.10)
  9. **Internal links:** SO padre + GeoHub + 2–3 related LBS + matching GAs (G artículos del servicio) + /contacto/
  10–12. Ejemplo + Incorrectos + Regla final
- **Regla crítica:** LBS es la página comercial más importante. Debe tener intro localizada, H2 de cobertura, FAQs naturales y schema LocalBusiness con `areaServed` completo.
- **Errores prohibidos:** Mezclar Madrid y LCAs como targets iguales / afirmar oficina en LCA / combinar dos servicios en una misma LBS
- **Status:** `confirmed` (S instancias)

### 5.4 Spec Additional Category (GBP AC Support)
- **Fuente:** `doctrina_gmb_crush` ← 1.6 + 3.3 + 4.7
- **Método:** Aplicar spec a cada AC con página propia (A instancias efectivas). Generar 12 sub-outputs:
  1. **Función:** GBP Additional Category Support — soporta categoría GBP adicional no cubierta por core service
  2. **Patrón URL:** `/{primary-cat-slug}/{main-city-slug}/{additional-slug}/`
  3. **H1 (template):** `[Brand Name] — [Additional Service] experto en [Main City]`
  4. **Meta Title:** `[Additional Service] en [Main City] | [Brand Name]`
  5. **Meta Descripción:** `¿Necesitas [Additional Service] en [Main City]? [Brand Name] ofrece ayuda fiable para [caso 1], [caso 2] y [caso 3]. Llama hoy.`
  6. **Word count:** 800–1,000
  7. **Estructura:** H1 → Intro con problema local → H2 Authority → H2 Uniqueness → H2 Depth → H2 Intent → H2 Optimization → **Local Coverage Use Case (2–4 LCAs como escenarios)** → FAQs → CTA → Enlaces internos → Schema
  8. **Schema:** Service (con `areaServed`) + BreadcrumbList + FAQPage (opc) + Speakable (opc)
  9. **Internal links:** GeoHub + LBS Main City relacionadas + GeoArticles relevantes + /contacto/
  10–12. Ejemplo + Incorrectos + Regla final
- **Regla crítica:** La AC NO debe duplicar un core service. Validar contra 2.11 (anti-duplicación). Si coincide en intención → consolidar con SO/LBS existente, no crear página propia.
- **Status:** `confirmed` (A instancias efectivas; puede ser 0 si A=0)

### 5.5 Spec GeoHub (Main City Silo Container)
- **Fuente:** `doctrina_gmb_crush` ← 1.7 + 1.10 + 2.3 + 4.5
- **Método:** Aplicar spec al GeoHub Main City (1 instancia por cluster). Generar 12 sub-outputs:
  1. **Función:** Main City Silo Container — índice geográfico del cluster; agrupa servicios + categorías + artículos + cobertura + confianza
  2. **Patrón URL:** `/{main-city-slug}/` (Option A) o `/{primary-cat-slug}/{main-city-slug}/` (Option B) según 3.2
  3. **H1 (template):** `[Brand Name] — [Industry] Servicios en [Main City]`
  4. **Meta Title:** `[Industry] Servicios en [Main City] | [Brand Name]`
  5. **Meta Descripción:** `Descubre servicios de [Industry] de confianza en [Main City] de [Brand Name]. Servicios locales, recursos útiles, áreas de cobertura y formas de contactar.`
  6. **Word count:** 700–1,100
  7. **Estructura:** H1 → City intro → Menú de servicios (S LBS links) → Additional Category Menu (A AC links si A>0) → **Local Coverage Areas Section (TODAS las LCAs declaradas)** → GeoArticle Resources (G×S GAs listados) → Trust Signals → CTA → Enlaces internos → Schema
  8. **Schema:** CollectionPage + BreadcrumbList + LocalBusiness (opc si física presencia) — `areaServed` completo
  9. **Internal links:** Homepage + S LBS Main City + A AC Pages + G×S GeoArticles + /contacto/
  10–12. Ejemplo + Incorrectos + Regla final
- **Regla crítica:** GeoHub es el lugar más natural para listar TODAS las LCAs sin crear URLs por cada zona. El lugar "casa semántica" de las LCAs.
- **Errores prohibidos:** GeoHub solo con texto de ciudad / GeoHub sin enlaces a servicios / anchors a LCAs sin URL
- **Status:** `confirmed` (1 instancia por cluster)

### 5.6 Spec GeoArticle (Semantic Booster)
- **Fuente:** `doctrina_gmb_crush` ← 1.7 + 3.4 + 4.8
- **Método:** Aplicar spec a G × S GeoArticles. Generar 12 sub-outputs:
  1. **Función:** Semantic Booster — apoya la landing comercial (matching LBS) con contenido long-tail informativo
  2. **Patrón URL:** `/{main-city-slug}/{topic-slug}/`
  3. **H1 (template):** `[Article Topic] en [Main City]`
  4. **Meta Title:** `[Article Topic] en [Main City] | [Brand Name]`
  5. **Meta Descripción:** `Aprende sobre [Article Topic] en [Main City]: qué esperar, errores comunes, factores locales y cuándo llamar a [Brand Name].`
  6. **Word count:** 1,000–1,500
  7. **Estructura:** H1 → Intro contextual (problema/pregunta del usuario) → H2 Problema → H2 Local Context → H2 Opciones / Mistakes → H2 When to Call → **H2 Local Examples (LCAs como landmarks)** → FAQs (3–4 con menciones locales naturales) → CTA → Enlaces internos → Schema
  8. **Schema:** Article + FAQPage + BreadcrumbList + Speakable
  9. **Internal links:** Matching LBS Main City + GeoHub + GAs relacionados + /contacto/ (opc)
  10–12. Ejemplo + Incorrectos + Regla final
- **Regla crítica:** GeoArticle NO es landing comercial. Es booster semántico. Debe enlazar prominentemente a su matching LBS para transferir autoridad. No usar LCAs como primary location target.
- **Errores prohibidos:** Escrito como landing de venta / sin enlace a matching LBS / artículo huérfano sin matching LBS asignado
- **Status:** `confirmed` (G×S instancias)

### 5.7 Validación Schema por tipo de página
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar como filtro de QA a las 6 page types del cluster antes de cerrar specs. Verificar que cada page type lleva el schema correcto según mapeo doctrinal (ver Reglas Globales de Bloque 2). El implementador NO decide schema en build-time.
- **Regla crítica:** Usar Article en una landing comercial = error crítico. Usar LocalBusiness con dirección falsa = riesgo E-E-A-T.
- **Status:** `confirmed` (flag OK — 6 page types con schema diferenciado)

### 5.8 Validación Word count por intención
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar que cada page type produce contenido dentro del rango doctrinal (ver Reglas Globales de Bloque 2). No se trata de inflar palabras sino de cubrir intención, proceso, beneficios, FAQs, contexto local y enlaces.
- **Regla crítica:** Thin content < 400 palabras es rechazado. Relleno de palabras para llegar al número también.
- **Errores prohibidos:** Landings de 250 palabras / artículos de 400 palabras sin profundidad / repetir bloques para inflar
- **Status:** `confirmed` (flag OK — rangos validados en 6 page types)

### 5.9 Validación CTA adaptado al page type
- **Fuente:** `doctrina_gmb_crush` ← 1.13
- **Método:** Verificar que cada page type usa el CTA correcto según funnel position (ver Reglas Globales de Bloque 2). El Preferred CTA del 1.13 es el default pero se adapta al funnel.
- **Regla crítica:** No usar el mismo CTA genérico en las 28 páginas. GeoArticles no usan CTAs agresivos de venta.
- **Errores prohibidos:** "Llama hoy" repetido en cada página sin variación / sin CTA en artículos / CTA agresivo en contenido informativo
- **Status:** `confirmed` (flag OK — CTAs diferenciados por funnel position)

### 5.10 Validación No false location claims
- **Fuente:** `doctrina_gmb_crush` ← 1.8 + 1.10 + 4.14
- **Método:** Verificar que ninguna page type afirma oficina física en zonas donde el negocio no opera. Regla:
  ```
  Local Coverage Area (areaServed) ≠ dirección física (address)
  ```
  Validar que el `address` en schema corresponde al NAP físico real (1.4) y que `areaServed` lista solo zonas atendidas (no inventadas para SEO).
- **Regla crítica:** "Nuestra oficina en [LCA]" cuando no existe = riesgo E-E-A-T y puede degradar GBP.
- **Errores prohibidos:** LocalBusiness address en zona de cobertura sin sede / schema city ≠ NAP city
- **Status:** `confirmed` (flag OK — 0 afirmaciones de oficina en LCAs)

---

## PASO 6 — CONTENT ARCHITECTURE + ÁREAS DE COBERTURA LOCAL (outputs 6.1–6.17)

### 6.1 Principio 1 — Main City crea arquitectura
- **Fuente:** `doctrina_gmb_crush` ← 1.7
- **Método:** Aplicar como filtro de QA al revisar la arquitectura del cluster. Verificar que ninguna URL genera segmento city distinto a la Main City declarada (salvo AEAs aprobadas). La Main City es el eje; LCAs y AEAs son capas separadas.
- **Regla crítica:** Un solo Main City slug en todas las URLs base. Almagro ≠ Main City.
- **Errores prohibidos:** Almagro como eje de URL sin AEA / cambiar Main City por bloque / LCAs al mismo nivel jerárquico que Main City
- **Status:** `confirmed` (flag OK)

### 6.2 Principio 2 — LCAs enriquecen contenido
- **Fuente:** `doctrina_gmb_crush` ← 1.10 + 4.9
- **Método:** Confirmar que las LCAs declaradas en 1.10 aparecen en contenido (texto, FAQs, ejemplos) y en schema `areaServed`, pero NO como segmentos de path en ninguna URL base.
- **Regla crítica:** `count(URLs base con LCA como segmento) = 0`
- **Errores prohibidos:** Crear páginas por cada LCA / listar zonas donde no se atiende / usar LCA como H1 principal / mencionar 30 zonas sin contexto (keyword stuffing)
- **Status:** `confirmed` (flag OK + lista de LCAs confirmadas sin URL)

### 6.3 Principio 3 — AEAs crean URLs solo si se aprueban
- **Fuente:** `doctrina_gmb_crush` ← 1.11 + 4.10
- **Método:** Verificar que el campo Approved Expansion Areas (1.11) esté vacío o contenga solo zonas que cumplen el umbral: demanda de búsqueda + competidores la trabajan + contenido único posible + valor comercial + no finge oficina física. En Phase 1 default E=0.
- **Regla crítica:** Una LCA no se convierte en AEA automáticamente. Es una decisión consciente con umbral verificado.
- **Errores prohibidos:** Aprobar todas las zonas / crear expansión sin contenido único / AEA solo por keyword research sin valor comercial / mezclar AEA con base sin separar sub-cluster
- **Status:** `confirmed` (flag OK; Phase 1: E=0)

### 6.4 Principio 4 — Mencionar zona ≠ crear página
- **Fuente:** `doctrina_gmb_crush` ← 7.8
- **Método:** Revisar el contenido de cada page type y verificar que las LCAs aparecen solo como menciones textuales puras, NO como anchors `<a href="/zona/">` hacia URLs inexistentes. No aparecen en breadcrumbs ni en menús de navegación.
- **Regla crítica:** Si una zona no tiene URL aprobada, no puede ser anchor. Mencionar ≠ enlazar.
- **Errores prohibidos:** `<a href="/almagro/">Almagro</a>` sin que `/almagro/` exista / LCA en breadcrumb / crear página por presión de KW sin valor comercial
- **Status:** `confirmed` (flag OK)

### 6.5 Principio 5 — No falsa ubicación
- **Fuente:** `doctrina_gmb_crush` ← 1.8 + 4.14 + 5.10
- **Método:** Revisar el contenido de cada page type. Para cada mención de LCA verificar que usa lenguaje de cobertura ("atendemos", "cubrimos", "según disponibilidad") y NO de presencia física ("oficina", "tienda", "sede"). El schema `address` = NAP físico único (1.4).
- **Regla crítica:** Cobertura de servicio (`areaServed`) ≠ dirección física (`address`). Confundirlos es riesgo E-E-A-T y puede degradar el LocalBusiness en GBP.
- **Errores prohibidos:** "Nuestra oficina en Salamanca" si no existe / schema address con city = LCA / mapa de ubicación no real
- **Status:** `confirmed` (flag OK)

### 6.6 Homepage Content Architecture
- **Fuente:** `doctrina_gmb_crush` ← 3.5 + Paso 5
- **Método:** Aplicar arquitectura de **11 bloques** a la URL `/`:
  1. H1 (Brand + Servicio + Main City)
  2. Intro (1–2 párrafos value prop)
  3. Quick Answer (resumen de servicios)
  4. Servicios principales (S SO links con descripción breve)
  5. **Vista previa de cobertura local (3–5 LCAs en bloque service-area-preview)**
  6. Bloques de confianza (4 trust signals de 1.14)
  7. Sección FAQ (4 preguntas, FAQPage schema)
  8. Bloque NAP (heredado 1.4)
  9. CTA (heredado 1.13)
  10. Enlaces internos (8 outbound: S SO + GeoHub + contacto)
  11. Schema (Organization + WebSite + LocalBusiness + FAQPage + Speakable)
- **Uso de LCAs:** mencionar 3–5 LCAs de forma ligera en el bloque service-area-preview. NO lista masiva de zonas ni LCAs como target principal.
- **Regla crítica:** La homepage refuerza marca, categoría, Main City, servicios y cobertura real sin crear URLs innecesarias.
- **Errores prohibidos:** Homepage con 30 zonas sin contexto / sin NAP / sin enlaces a SO / orientada a LCA al mismo nivel que Main City
- **Status:** `confirmed`

### 6.7 Service Overview Content Architecture
- **Fuente:** `doctrina_gmb_crush` ← 3.5 + Paso 5
- **Método:** Aplicar arquitectura de **12 bloques** a cada SO (`/{primary-cat-slug}/{service-slug}/`):
  1. H1 (servicio sin Main City como target principal)
  2. Intro no local (descripción general del servicio)
  3–7. H2 Authority / Uniqueness / Depth / Intent / Optimization
  8. Bullet sections (sub-temas relacionados)
  9. FAQs (sobre el servicio en general, NO localizadas)
  10. CTA (1.13)
  11. **Enlaces internos (incluye link a LBS Main City correspondiente)**
  12. Schema (Service + WebPage + BreadcrumbList)
- **Uso de LCAs:** NO se usan. Esta página no debe mencionar Main City o LCAs como objetivo principal.
- **Regla crítica:** Service Overview = servicio sin localización. H1 y H2 principales sin ciudad. Enlaza a LBS Main City como puente al funnel.
- **Errores prohibidos:** H1 con city / bloque de cobertura local en SO / no enlazar a LBS / repetir contenido de LBS (canibalización)
- **Status:** `confirmed` (S instancias)

### 6.8 LBS Content Architecture
- **Fuente:** `doctrina_gmb_crush` ← 3.5 + Paso 5
- **Método:** Aplicar arquitectura de **13 bloques** a cada LBS (`/{primary-cat-slug}/{main-city-slug}/{service-slug}/`):
  1. H1 (servicio + Main City)
  2. **Intro local 100–150 words (mencionando 2–4 LCAs naturalmente)**
  3. Quick Local Answer
  4–7. H2 Authority / Uniqueness / Depth / Local Pain Points
  8. **H2 Local Coverage Areas Served (2–4 LCAs)**
  9. H2 Related Services in [Main City]
  10. FAQs (con cobertura natural — ver 6.16)
  11. CTA
  12. **Enlaces internos (SO padre + GeoHub + related LBS + matching GAs)**
  13. Schema (LocalBusiness + BreadcrumbList con `areaServed` completo)
- **Uso de LCAs:** Intro (2–4 LCAs naturales) + H2 dedicado de cobertura + FAQs naturales + schema `areaServed`.
- **Regla crítica:** LBS menciona cobertura local sin dejar de ser servicio + Main City. No desplaza Main City como target.
- **Errores prohibidos:** H1 con LCA al mismo nivel / crear página por cada LCA / afirmar oficina en LCA / combinar dos servicios en una LBS
- **Status:** `confirmed` (S instancias)

### 6.9 Additional Category Content Architecture
- **Fuente:** `doctrina_gmb_crush` ← 3.5 + Paso 5
- **Método:** Aplicar arquitectura de **12 bloques** a cada AC efectiva (`/{primary-cat-slug}/{main-city-slug}/{additional-slug}/`):
  1. H1 (categoría adicional + Main City)
  2. Intro con problema local
  3–7. H2 Authority / Uniqueness / Depth / Intent / Optimization
  8. **Local Coverage Use Case (2–4 LCAs como escenarios reales)**
  9. FAQs
  10. CTA
  11. **Enlaces internos (GeoHub + LBS relacionados)**
  12. Schema (Service + BreadcrumbList)
- **Uso de LCAs:** LCAs como escenarios locales para explicar casos de uso reales de la categoría adicional.
- **Regla crítica:** AC contextualizada localmente pero no multiplicada por zonas no aprobadas.
- **Errores prohibidos:** Crear `/cerrajero/almagro/duplicado-llaves/` sin AEA / no conectar con GeoHub / tratar AC como core service / copiar contenido de LBS (canibalización)
- **Status:** `confirmed` (A instancias; si A=0, output = no aplica)

### 6.10 GeoHub Content Architecture
- **Fuente:** `doctrina_gmb_crush` ← 3.5 + Paso 5
- **Método:** Aplicar arquitectura de **10 bloques** al GeoHub (`/{main-city-slug}/`):
  1. H1 (Brand + Service + Main City)
  2. City intro (presentación de la ciudad y el servicio)
  3. Menú de servicios (S LBS links con descripción breve)
  4. Additional Category Menu (A AC links si A>0)
  5. **Local Coverage Areas Section (TODAS las LCAs Direct + Candidate declaradas)**
  6. GeoArticle Resources (G×S GAs listados como recursos)
  7. Trust Signals (4–5 globales)
  8. CTA
  9. **Enlaces internos (S+A+G×S outbound según 7.4)**
  10. Schema (CollectionPage + BreadcrumbList + `areaServed` completo)
- **Uso de LCAs:** El GeoHub es la "casa semántica" de las LCAs. Listar TODAS de forma clara en sección dedicada sin crear URLs por zona.
- **Regla crítica:** GeoHub organiza Main City, servicios y cobertura real. No debe tener solo texto de ciudad ni enlazar a URLs inexistentes de LCAs.
- **Errores prohibidos:** GeoHub sin menú de servicios / sin sección de cobertura / anchors a `/almagro/` sin AEA / GeoHub como artículo de ciudad sin estructura de hub
- **Status:** `confirmed` (1 instancia)

### 6.11 GeoArticle Content Architecture
- **Fuente:** `doctrina_gmb_crush` ← 3.5 + Paso 5
- **Método:** Aplicar arquitectura de **11 bloques** a cada GA (`/{main-city-slug}/{topic-slug}/`):
  1. H1 (long-tail topic + opcionalmente Main City)
  2. Intro contextual (problema/pregunta del usuario)
  3–6. H2 Problem / Local Context / Options-Mistakes / When to Call
  7. **H2 Local Examples (LCAs como landmarks semánticos)**
  8. FAQs (3–4 sobre el topic con menciones locales naturales)
  9. CTA
  10. **Enlaces internos (matching LBS Main City + GeoHub)**
  11. Schema (Article + FAQPage + BreadcrumbList)
- **Uso de LCAs:** LCAs como ejemplos semánticos y contexto real. Son landmarks para anclar el tópico al mundo real del usuario; el tópico long-tail sigue siendo lo principal.
- **Regla crítica:** GeoArticle NO es landing comercial. Debe enlazar prominentemente a matching LBS para transferir autoridad. No pretender presencia física en LCA.
- **Errores prohibidos:** Escrito como sales landing / sin enlace a matching LBS / GA huérfano / fake office en LCA / GA con LCA como primary location target
- **Status:** `confirmed` (G×S instancias)

### 6.12 Tabla de uso de LCAs por page type
- **Fuente:** `doctrina_gmb_crush` ← 1.10
- **Método:** Derivar de los outputs 6.6–6.11 la tabla consolidada 6×7:

| Page Type | ¿Usa LCAs? | Cómo las usa |
|---|---|---|
| Homepage | Sí, ligero | Service area preview (3–5 LCAs ligeras) |
| Service Overview | No | No debe ser local |
| Location-Based Service | Sí | Intro, pain points, H2 cobertura, FAQs |
| Additional Category | Sí | Escenarios locales y casos de uso |
| GeoHub | Sí, recomendado | Sección principal de cobertura (TODAS las LCAs) |
| GeoArticle | Sí | Ejemplos semánticos, contexto, landmarks, FAQs |

- **Regla:** Table de referencia para QA de contenido. Si una page type usa LCAs de forma incorrecta (ej. SO con LCA como target), alertar.
- **Status:** `confirmed`

### 6.13 Ejemplo práctico completo (sección cobertura)
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Tomar la LBS principal del cluster y aplicar el output 6.8 para generar el set ejemplar de sección de cobertura. Sirve como template para que la IA replique en otras LBS, AC y GAs del cluster.
- **Plantilla para LBS modelo:**
  ```
  H2: [Service] en [Main City] y zonas de cobertura cercanas

  Texto:
  [Brand Name] ayuda a clientes en [Main City] con [servicio principal],
  [caso 1] y [caso 2]. También cubrimos Local Coverage Areas como
  [LCA 1], [LCA 2], [LCA 3] y [LCA 4] según disponibilidad.
  Estas zonas son señales GEO de proximidad que refuerzan la relevancia
  local mientras la página sigue enfocada en el servicio de
  [servicio] en [Main City].
  ```
- **Regla:** Texto de cobertura en lenguaje de servicio ("cubrimos", "atendemos", "según disponibilidad"). Nunca lenguaje de presencia física ("oficina", "sede").
- **Status:** `confirmed` (texto modelo redactado para LBS principal del cluster)

### 6.14 FAQ ejemplo
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Generar 1–2 FAQs ejemplo por LBS y GeoHub con la pauta correcta: pregunta natural del usuario + respuesta que confirma cobertura sin inventar oficina física.
- **Plantilla:**
  ```
  Pregunta:
  ¿Ofrecéis [service] en [LCA 1], [LCA 2] y [LCA 3]?

  Respuesta:
  Sí. [Brand Name] atiende solicitudes en [Main City] y zonas de
  cobertura cercanas según disponibilidad.
  Esta página se centra en [service] en [Main City] y aclara
  la cobertura local real.
  ```
- **Regla crítica:** Una FAQ por zona sin valor nuevo = spam temático. Las FAQs agrupan zonas si la respuesta es similar. Nunca responder con promesas de oficina inexistente.
- **Errores prohibidos:** 10 FAQs casi idénticas cambiando solo la zona / keyword stuffing de LCAs / responder con fake location
- **Status:** `confirmed`

### 6.15 Reviews y trust blocks contextualizados
- **Fuente:** `doctrina_gmb_crush` ← 1.14
- **Método:** Mapear los trust signals heredados de 1.14 a cada page type según funnel position. NO copiar el mismo bloque de reseñas en todas las páginas.
  ```
  Homepage           → trust signals globales (entidad)
  Service Overview   → no críticos (pilar temático)
  GeoHub             → trust signals globales (autoridad ciudad)
  LBS                → trust signals + reviews locales
  Additional Cat.    → similar a LBS
  GeoArticle         → trust signals contextuales si encajan
  ```
- **Regla crítica:** Reviews y trust blocks van según rol del funnel. Sin reviews reales no usar Reviews schema (riesgo penalty Google).
- **Errores prohibidos:** Mismo bloque de reseñas en las 28 páginas / reviews de una zona como si fueran de otra / certificaciones inventadas
- **Status:** `confirmed` (flag OK)

### 6.16 FAQs con cobertura natural
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar como filtro de QA en cada page type con FAQs (Homepage, LBS, AC, GeoHub, GA). Verificar:
  - Cada FAQ responde pregunta real del usuario
  - Las FAQs agrupan zonas si la respuesta es similar (no una por LCA)
  - Respuesta útil, sin repetición artificial
  - No hay keyword stuffing de zonas (8 LCAs concatenadas en una respuesta)
  ```
  SÍ: FAQs que agrupan zonas con respuesta similar
  NO: una FAQ por LCA con texto repetido cambiando solo el área
  ```
- **Regla crítica:** Solo FAQs que aportan valor entran al FAQPage schema.
- **Status:** `confirmed` (flag OK)

### 6.17 Schema areaServed coherente
- **Fuente:** `doctrina_gmb_crush` ← 1.10 + 1.4
- **Método:** Verificar en cada page type con schema LocalBusiness (Homepage, LBS, GeoHub):
  ```
  areaServed = [Main City] + [TODAS las LCAs Direct + Candidate declaradas en 1.10]
  address    = NAP físico real (1.4) — UNA sola dirección
  ```
  NO añadir ciudades no atendidas solo por SEO. NO poner LCA como `address`.
- **Regla crítica:** Coherencia entre contenido y schema es crucial para E-E-A-T. El campo `address` es inmutable y corresponde al NAP físico.
- **Errores prohibidos:** LCA como `address` / `areaServed` con ciudades no atendidas (Valencia, Barcelona) / omitir `areaServed` cuando la cobertura es clave
- **Status:** `confirmed` (flag OK — `areaServed` con Main City + todas las LCAs declaradas)

---

## PASO 7 — INTERNAL LINKING RULES (outputs 7.1–7.15)

### 7.1 Regla 1 — Enlazar arriba/abajo/lateral
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Para cada page type del cluster, verificar que tiene las 3 direcciones de enlace:
  - **UP:** enlace a su página padre en la jerarquía
  - **DOWN:** enlace a páginas hijas o de soporte
  - **LATERAL:** enlace a páginas relacionadas del mismo silo
  Si una dirección está vacía, revisar si es por diseño (Homepage no tiene UP) o falta enlace.
- **Regla crítica:** Todo enlace interno conecta vertical (arriba/abajo) o lateralmente. Ningún enlace aleatorio sin relación arquitectónica.
- **Validación:** Cruzar contra 7.11 Matriz de enlaces obligatorios.
- **Status:** `confirmed` (flag OK — aplicado a todas las URLs del cluster)

### 7.2 Regla 2 — Homepage distribuye autoridad
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Verificar que `/` enlaza a:
  - S Service Overview Pages (1 por core service)
  - 1 Main City GeoHub
  - 1 Página de contacto (`/contacto/`)
  Total mínimo: S + 2 outbound. NO enlazar a LCAs sin URL aprobada.
- **Regla crítica:** Homepage no debe enlazar a LCAs sin AEA. Su función es distribuir autoridad a la arquitectura base.
- **Errores prohibidos:** Homepage enlaza a 100 zonas / no enlaza a servicios / solo footer links / enlaza a `/almagro/` sin AEA
- **Status:** `confirmed`

### 7.3 Regla 3 — SO empuja versión local
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Para cada Service Overview Page, verificar que enlaza a su LBS Main City correspondiente (relación 1:1). Patrón:
  ```
  /{primary-cat-slug}/{service-slug}/  →  /{primary-cat-slug}/{main-city-slug}/{service-slug}/
  ```
  Genera S conexiones SO → LBS. Anchor ejemplo: "cerrajero urgente en [Main City]".
- **Regla crítica:** Sin este enlace, la SO queda como pilar temático aislado y la LBS pierde contexto del servicio padre.
- **Errores prohibidos:** SO sin versión local / enlazar a LCA sin AEA / solo anchors genéricos ("haz clic aquí")
- **Status:** `confirmed` (S conexiones SO → LBS)

### 7.4 Regla 4 — GeoHub organiza Main City
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Verificar que `/{main-city-slug}/` enlaza a TODAS las páginas locales del cluster:
  - S LBS Pages
  - A AC Pages (si A>0)
  - G×S GeoArticles
  Total: S + A + (G×S) outbound desde GeoHub.
  Fórmula para Cerrajeros ejemplo: 5 + 1 + 15 = 21 outbound.
- **Regla crítica:** GeoHub es el índice de la Main City. Si falta alguna página local, el silo queda incompleto y esa página pierde inbound desde el hub geográfico.
- **Errores prohibidos:** GeoHub sin service menu / enlaza a zonas sin URL / solo texto de ciudad / sin enlaces a GeoArticles
- **Status:** `confirmed` (S + A + G×S outbound)

### 7.5 Regla 5 — LBS conecta servicio y ciudad
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Para cada LBS, generar el set de 6–7 enlaces:
  - 1 SO padre (UP topical)
  - 1 GeoHub Main City (UP geo)
  - 2–3 related LBS del mismo silo (LATERAL)
  - G matching GeoArticles del servicio (DOWN depth)
  - 1 /contacto/ (CTA)
  Total por LBS: 6–7 outbound. Total cluster (S=5): ~30–35 enlaces.
- **Regla crítica:** LBS enlaza hacia arriba a SO + GeoHub, lateralmente a otros LBS y AC del cluster, hacia abajo a sus GAs.
- **Errores prohibidos:** LBS sin GeoHub / sin artículos / con enlaces a LCAs sin URL / sin SO padre / solo contacto
- **Status:** `confirmed` (6–7 outbound por LBS)

### 7.6 Regla 6 — AC se integra en silo local
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Para cada AC efectiva, generar enlaces a:
  - 1 GeoHub Main City
  - 2–3 LBS relacionadas (proximidad temática — ¿qué servicios consumen los mismos clientes?)
  - Otras AC si A>1
  Total: mínimo 3 outbound por AC.
- **Regla crítica:** AC no debe quedar como página secundaria aislada. Integrada en silo local o no tiene valor arquitectónico.
- **Errores prohibidos:** AC huérfana / solo enlaza a homepage / no conecta con GeoHub / duplicada con SO (canibalización)
- **Status:** `confirmed` (si A=0, no aplica)

### 7.7 Regla 7 — GeoArticle pasa relevancia a landing
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Para cada GA, generar 2 enlaces obligatorios:
  - Matching LBS Main City (transferencia de autoridad) — identificar según `[topic-slug]` asociado al service
  - GeoHub Main City (geo anchor)
  - Opcional: GA relacionado si existe relación temática
  Total: 15 conexiones GA → LBS + 15 conexiones GA → GeoHub = 30 enlaces (para G=3, S=5).
- **Regla crítica:** Sin el enlace a la LBS, el artículo no cumple su función de booster semántico. Queda como contenido informativo aislado.
- **Errores prohibidos:** GA sin enlace a LBS / GA enlaza a LCA sin URL / GA sin enlace a GeoHub / GA con enlace a homepage en lugar de LBS específica
- **Status:** `confirmed` (G×S conexiones GA → LBS)

### 7.8 Regla 8 — LCAs sin URL no reciben enlaces
- **Fuente:** `doctrina_gmb_crush` ← 1.10 + 4.9
- **Método:** Antes de generar cada anchor, validar que el target existe en la URL Matrix (3.5). Si la zona referenciada no tiene URL en la matriz → NO generar anchor → mantener solo mención textual.
  ```
  LCA sin URL → mención textual en contenido + schema areaServed
            ↛  NO <a href="/lca/"> + NO breadcrumb con LCA + NO footer links
  ```
- **Regla crítica:** Crear anchors a URLs inexistentes genera errores 404 y degrada la experiencia de crawl.
- **Errores prohibidos:** `<a href="/almagro/">Almagro</a>` sin que `/almagro/` exista / LCA en breadcrumb / footer con enlaces a áreas sin página / simular con hashtags
- **Status:** `confirmed` (0 anchors a URLs inexistentes)

### 7.9 Regla 9 — Anchor text variado
- **Fuente:** `doctrina_gmb_crush` ← 1.1 + 1.13
- **Método:** Para cada enlace generado por Reglas 1–8, seleccionar categoría de anchor según contexto:

| Categoría | Cuándo usar | Ejemplo |
|---|---|---|
| Exact match | Con prudencia, para LBS y SO | "cerrajero urgente en Madrid" |
| Partial | Intro, párrafos | "servicios de cerrajería" |
| Branded | CTA blocks, menciones de marca | "[Brand Name]" |
| CTA | Bloques CTA, final de sección | "Llama hoy" |
| Informational | Related resources, artículos | "Conoce más sobre cerrajero urgente" |

- **Regla crítica:** Nunca repetir el mismo anchor en múltiples enlaces del cluster. 100% exact match parece mecánico y puede derivar en manual penalty.
- **Errores prohibidos:** Mismo anchor 20 veces / solo exact match / anchors genéricos "haz clic aquí" / "información importante"
- **Status:** `confirmed` (mix de 5 categorías aplicado)

### 7.10 Regla 10 — Enlaces contextuales primero
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Al generar el contenido de cada page type (Paso 6), incluir los enlaces internos requeridos (Reglas 1–9) integrados en:
  - Intro / opening paragraph
  - Body paragraphs
  - Secciones de servicios
  - FAQs (responses)
  - Related resources sections
  - CTA blocks
  Los enlaces de menú/footer son estructurales (bajo valor por enlace). Los contextuales en body tienen más peso temático.
- **Regla crítica:** Ninguna página válida tiene SOLO enlaces en footer/menú sin ninguno en el body.
- **Errores prohibidos:** Todos los enlaces en footer / solo menú sin contextuales / bloque de "enlaces relacionados" genérico al final sin contexto
- **Status:** `confirmed` (body links priorizados)

### 7.11 Matriz de enlaces obligatorios por page type
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Consolidar las Reglas 1–10 en la tabla de 14 conexiones source → target (ver Reglas Globales de Bloque 2). Es el handoff al Paso 18 (QA + deploy). Si un enlace de la matriz falta en una página, el QA lo marca como "missing required link" y bloquea publicación hasta corrección.
- **Regla crítica:** La matriz es contractual. Sin los 14 tipos de conexión completos, el silo está incompleto.
- **Status:** `confirmed` (tabla consolidada de 14 conexiones)

### 7.12 Ejemplo completo enlaces para LBS modelo
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Tomar la LBS principal del cluster y aplicar Reglas 1–10. Generar set ejemplar:
  ```
  Source: /{primary-cat-slug}/{main-city-slug}/{service-slug-principal}/

  Required outbound links (6):
    1. /{primary-cat-slug}/{service-slug}/           (SO padre)
    2. /{main-city-slug}/                            (GeoHub)
    3. /{primary-cat-slug}/{main-city-slug}/{related-service-1}/  (related LBS)
    4. /{primary-cat-slug}/{main-city-slug}/{related-service-2}/  (related LBS)
    5. /{main-city-slug}/{topic-slug-1}/             (matching GA)
    6. /contacto/                                    (CTA)

  Anchor distribution: branded ×1 + exact match ×1 + partial ×2 + informational ×1 + CTA ×1
  ```
  Sirve como template para replicar en las otras LBS del cluster.
- **Status:** `confirmed` (set inbound/outbound + anchors para LBS modelo)

### 7.13 Breadcrumbs por page type
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Para cada page type, aplicar el patrón de breadcrumb (ver Reglas Globales de Bloque 2) con los nombres heredados. El último item = página actual (sin link). Los breadcrumbs NO inventan niveles de cobertura inexistentes.
- **Regla crítica:** Nunca incluir una LCA en el breadcrumb si esa LCA no tiene URL aprobada.
- **Errores prohibidos:** `Home > Almagro > ...` sin AEA / breadcrumb que no refleja la URL real / niveles inventados
- **Output:** Tabla de 6 breadcrumbs documentados (uno por page type).
- **Status:** `confirmed`

### 7.14 Inbound links esperados (cross-cutting)
- **Fuente:** `doctrina_gmb_crush` ← 3.5
- **Método:** Invertir la matriz 7.11 para generar el mapa de inbound mínimo esperado por page type:
  ```
  Homepage:            inbound desde menú (todas las páginas)
  Service Overview:    inbound desde Homepage + related SOs
  GeoHub:              inbound desde Homepage + LBS (up) + AC + GAs (up)
  LBS:                 inbound desde Homepage + SO padre + GeoHub + related LBS + matching GAs
  Additional Category: inbound desde GeoHub + related LBS
  GeoArticle:          inbound desde GeoHub + matching LBS
  ```
  Para cada URL del cluster, verificar que recibe al menos los inbound mínimos de su page type. Si una URL tiene 0 inbound = página huérfana → alertar y corregir antes de Paso 18.
- **Regla crítica:** 0 páginas huérfanas en el cluster. Todas con al menos 1 inbound contextual relevante.
- **Status:** `confirmed` (flag OK — 0 páginas huérfanas)

### 7.15 Expansion linking separado
- **Fuente:** `doctrina_gmb_crush` ← 1.11
- **Método:**
  - Si E = 0 (Phase 1 default) → output = "No aplica. E=0 en Phase 1."
  - Si E ≥ 1 (Phase 2+): crear sub-cluster de linking aislado de la base. Las AEAs generan su propio GeoHub de expansión y pages propias. El linking de expansión NO contamina la URL Matrix base hasta que el cluster expansión esté publicado.
  ```
  Expansion GeoHub (/{aea-slug}/) → Expansion LBS + Expansion AC + Expansion GAs
  Expansion LBS                   → parent SO de la base (enlace permitido)
  GeoHub base                     → Expansion GeoHub (opcional, solo si proximidad geográfica justifica)
  ```
- **Regla crítica:** Expansion linking y base linking son clusters separados. Mezclarlos antes de publicar genera 404s y QA imposible.
- **Errores prohibidos:** Enlazar expansión antes de publicar páginas / Expansion LBS enlaza a GeoHub base en vez de Expansion GeoHub / mezclar ambos sub-clusters en QA
- **Status:** `confirmed` (Phase 1: "No aplica / E=0")

---

## FORMATO DE RESPUESTA OBLIGATORIO

Responde **exclusivamente** con un JSON array. Una entrada por output. Incluye los 57 outputs (4.1–4.15, 5.1–5.10, 6.1–6.17, 7.1–7.15). Todos deben estar presentes.

```json
[
  {
    "id": "4.1",
    "value": "https://www.cerrajerosmadrid24h.com",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "4.2",
    "value": "Yes",
    "status": "confirmed",
    "source": "arquitectura_tecnica",
    "notes": null
  },
  {
    "id": "4.9",
    "value": "10 LCAs declaradas → 0 URLs generadas",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "4.11",
    "value": "OK",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "5.1",
    "value": {
      "funcion": "Root Entity Anchor",
      "patron_url": "/",
      "h1_template": "[Brand Name] — [Primary Service] de confianza en [Main City]",
      "meta_title_template": "[Primary Service] en [Main City] | [Brand Name]",
      "meta_desc_template": "¿Necesitas [Primary Service] en [Main City]? [Brand Name] ofrece servicio local, soporte experto y respuesta rápida. Llama hoy.",
      "word_count": "900–1300",
      "estructura": "H1 → Intro → Quick Answer → Servicios → Cobertura preview → Trust → FAQ → NAP → CTA → Internal links → Schema",
      "schema": "Organization + WebSite + LocalBusiness + FAQPage + Speakable",
      "internal_links": "S SO Pages + GeoHub + AC (si A>0) + /contacto/"
    },
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "5.7",
    "value": "OK",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "6.1",
    "value": "OK",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "6.6",
    "value": {
      "bloques": 11,
      "estructura": "H1 → Intro → Quick Answer → Servicios principales → Vista previa cobertura (3-5 LCAs) → Trust → FAQ → NAP → CTA → Internal links → Schema",
      "uso_lcas": "3-5 LCAs ligeras en service-area-preview"
    },
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "6.12",
    "value": [
      {"page_type": "Homepage", "usa_lcas": "Sí, ligero", "como": "Service area preview"},
      {"page_type": "Service Overview", "usa_lcas": "No", "como": "No debe ser local"},
      {"page_type": "LBS", "usa_lcas": "Sí", "como": "Intro, pain points, H2 cobertura, FAQs"},
      {"page_type": "Additional Category", "usa_lcas": "Sí", "como": "Escenarios locales y casos de uso"},
      {"page_type": "GeoHub", "usa_lcas": "Sí, recomendado", "como": "Sección principal de cobertura local (TODAS las LCAs)"},
      {"page_type": "GeoArticle", "usa_lcas": "Sí", "como": "Ejemplos semánticos, contexto, landmarks, FAQs"}
    ],
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "7.11",
    "value": [
      {"conexion": 1, "source": "Homepage", "target": "Service Overview Pages", "objetivo": "Reforzar servicios principales"},
      {"conexion": 2, "source": "Homepage", "target": "Main City GeoHub", "objetivo": "Reforzar ciudad principal"},
      {"conexion": 3, "source": "Homepage", "target": "/contacto/", "objetivo": "Conversión y NAP"},
      {"conexion": 4, "source": "Service Overview", "target": "LBS Main City", "objetivo": "Empujar landing local"},
      {"conexion": 5, "source": "Service Overview", "target": "Related SOs", "objetivo": "Autoridad temática"},
      {"conexion": 6, "source": "GeoHub", "target": "All LBS Main City", "objetivo": "Organizar silo local"},
      {"conexion": 7, "source": "GeoHub", "target": "Additional Category Pages", "objetivo": "Soporte GBP"},
      {"conexion": 8, "source": "GeoHub", "target": "GeoArticles", "objetivo": "Recursos locales"},
      {"conexion": 9, "source": "LBS", "target": "SO padre", "objetivo": "Relación temática"},
      {"conexion": 10, "source": "LBS", "target": "GeoHub Main City", "objetivo": "Relación geográfica"},
      {"conexion": 11, "source": "LBS", "target": "Related LBS mismo cluster", "objetivo": "Cluster local"},
      {"conexion": 12, "source": "LBS", "target": "Matching GeoArticles", "objetivo": "Profundidad semántica"},
      {"conexion": 13, "source": "GeoArticle", "target": "Matching LBS", "objetivo": "Pasar autoridad"},
      {"conexion": 14, "source": "GeoArticle", "target": "GeoHub Main City", "objetivo": "Reforzar ciudad"}
    ],
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "7.15",
    "value": "No aplica. E=0 en Phase 1.",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  }
]
```

### Reglas del JSON
- `notes` es obligatorio cuando `status` es `inferido` o `placeholder` — explica el razonamiento
- `notes` es null cuando `status` es `confirmed` o `validated`
- Para outputs de specs (5.1–5.6): el value puede ser un objeto con sub-outputs clave (función, URL, H1, meta, word count, estructura, schema, internal links)
- Para outputs de validación y reglas (4.11–4.15, 5.7–5.10, 6.1–6.5, 6.15–6.17, 7.1–7.10, 7.14–7.15): el value es `"OK"` o descripción del resultado
- Para outputs tabulares (6.12, 7.11, 7.13): el value es un array de objetos estructurados
- Para outputs con contenido arquitectónico (4.1–4.10, 6.6–6.11, 6.13–6.14, 7.12): el value es string descriptivo o objeto estructurado
- No omitas ningún output. Los 57 deben estar presentes (4.1–4.15, 5.1–5.10, 6.1–6.17, 7.1–7.15).
