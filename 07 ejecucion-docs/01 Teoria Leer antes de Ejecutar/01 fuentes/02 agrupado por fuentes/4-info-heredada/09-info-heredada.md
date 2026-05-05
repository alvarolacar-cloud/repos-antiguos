# Fuente 09 — `Info heredada`

> **Qué es:** valor que ya existe en un output upstream y se usa tal cual o transformado por una regla simple del paso (slugify, count, suma, mapping doctrinal, filtro, composición, validación binaria, cross-ref).
> **Tool / método:** lectura del output `← X.Y` referenciado en "Hereda info de pasos anteriores". No requiere tool externa.

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya fuente es `Info heredada` — outputs que se construyen exclusivamente reciclando o transformando información de outputs anteriores, sin ejecutar ninguna fuente externa nueva. Detalle completo de cada output (qué es / para qué sirve / dato que buscamos / hereda info / cómo se obtiene).

---

## Distribución por bloque

| Bloque | Outputs `Info heredada` | Total bloque | % heredados |
|---|---:|---:|---:|
| 1 Fundamentos | 23 | 42 | ~55% |
| 2 Arquitectura | 38 | 57 | ~67% |
| 3 Priorización | 33 | 43 | ~77% |
| 4 Automatización | 35 | 41 | ~85% |
| 5 Salida a Mercado | 25 | 39 | ~64% |
| 6 Info que falta | — | — | (agregador, sin outputs propios) |
| 7 GBP | 7 | 20 | ~35% |
| **Total** | **161** | **242** | **~67%** |

> Bloque 4 tiene el % más alto porque el pseudocódigo + auxiliary prompts + SOP final son destilaciones de Bloques 1-3. Bloque 7 tiene el % más bajo porque incluye decisiones reales de cliente (modelo negocio, fotos, plan reseñas).

---

## Tipos de transformación que aplica `Info heredada`

| Transformación | Ejemplo |
|---|---|
| **Lectura directa** | 1.7 Main City lee city del 1.4 NAP |
| **Slugify** | 2.2 Primary Category Slug = slugify(1.5) |
| **Count** | 2.5 Variable S = count(1.9 Servicios principales) |
| **Suma** | 8.8 Total Score = sum(8.2-8.7) |
| **Mapping doctrinal** | 8.9 Tier = thresholds(8.8) → P1/P2/P3/P4 |
| **Filtro** | 10.4 Fase 1 = filter(2.9, page_type ∈ {HP, SO, GH}) |
| **Composición** | 5.1 Spec Homepage = aplicar plantilla sobre 1.1 + 1.4 + 1.13 + 1.14 + 4.3 |
| **Validación binaria** | 4.13 Slugs limpios = validate(slugs) → pass/fail |
| **Cross-ref** | 13.2 12 Sistemas = cross-ref a Pasos 1-12 |

---

# Outputs detallados (161 total)

## Bloque 1 — Fundamentos (23 outputs)

### Paso 1 (3 outputs)

#### 1.1 Business Name
- **Qué es:** nombre comercial canónico del cliente.
- **Para qué sirve:** brand anchor en Homepage H1 (5.1), schema Organization, anchors branded (7.9), GBP listing (14.1+).
- **Dato que buscamos:** `[nombre comercial del cliente]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 1 (Nombre del negocio).
- **Cómo se obtiene:** Lo cogemos directamente del preflight.
  - **Fuente:** `Info heredada`.

#### 1.7 Main City
- **Qué es:** ciudad principal de operación del cluster (city del NAP).
- **Para qué sirve:** ancla geográfica de toda la arquitectura. Alimenta 4.5 GeoHub Style, 4.6 LBS pattern, 4.8 GeoArticle pattern, schemas, contenido.
- **Dato que buscamos:** `[ciudad principal extraída del NAP]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP (campo `City`).
- **Cómo se obtiene:** Lo extraemos directamente del NAP del cliente — la ciudad de la dirección que nos dio.
  - **Fuente:** `Info heredada`.

#### 1.8 Physical Location City
- **Qué es:** ciudad de presencia física real del negocio.
- **Para qué sirve:** validación anti-fake-location (5.10, 9.7, 4.14). Normalmente coincide con Main City.
- **Dato que buscamos:** `[ciudad de presencia física del negocio]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 3 (Dirección con CP).
- **Cómo se obtiene:** Lo cogemos del preflight — la ciudad donde el negocio tiene presencia física real.
  - **Fuente:** `Info heredada`.

### Paso 2 — Fórmula Maestra (14 outputs)

#### 2.1 Planned GBP Categories Status
- **Qué es:** estado de las categorías GBP en el flujo web-first (`Planned` hasta crear el GBP en Paso 14).
- **Para qué sirve:** marca conceptualmente que las categorías están propuestas pero no confirmadas en Google.
- **Dato que buscamos:** `[categorías 1.5 + 1.6 marcadas como Planned]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category + 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Tomamos las categorías que ya tenemos planeadas y las marcamos con estado `Planned`. Pasarán a `Confirmed` cuando se cree el GBP en el Paso 14.
  - **Fuente:** `Info heredada`.

#### 2.2 Primary Category Slug
- **Qué es:** slug del primary category (kebab-case, sin acentos).
- **Para qué sirve:** componente de URLs en patrones 4.4, 4.6, 4.7.
- **Dato que buscamos:** `[slug kebab-case de la primary category]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category.
- **Cómo se obtiene:** Aplicamos slugify al nombre de la primary category (lowercase, sin acentos, kebab-case).
  - **Fuente:** `Info heredada`.

#### 2.3 Main City Slug
- **Qué es:** slug de la Main City (kebab-case).
- **Para qué sirve:** componente de URLs en patrones 4.5, 4.6, 4.7, 4.8.
- **Dato que buscamos:** `[slug kebab-case de Main City]`.
- **Hereda info de pasos anteriores:** 1.7 Main City.
- **Cómo se obtiene:** Aplicamos slugify al nombre de la Main City.
  - **Fuente:** `Info heredada`.

#### 2.4 Service Slugs
- **Qué es:** slugs de cada uno de los S core services.
- **Para qué sirve:** componente de URLs en patrones 4.4, 4.6.
- **Dato que buscamos:** `[lista de S slugs kebab-case, uno por core service]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales (S=5).
- **Cómo se obtiene:** Aplicamos slugify a cada uno de los 5 core services.
  - **Fuente:** `Info heredada`.

#### 2.5 Variable S
- **Qué es:** entero — número de core services aplicables a la Main City.
- **Para qué sirve:** factor de la fórmula maestra `1 + S + 1 + S + A + G×S`.
- **Dato que buscamos:** `[count de core services aplicables a Main City]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales.
- **Cómo se obtiene:** Contamos los core services. Típicamente S=5.
  - **Fuente:** `Info heredada`.

#### 2.6 Variable A
- **Qué es:** entero — número de Additional Categories que necesitan página propia.
- **Para qué sirve:** factor de la fórmula maestra (genera A páginas AC).
- **Dato que buscamos:** `[count de Additional Categories no cubiertas por core services]`.
- **Hereda info de pasos anteriores:** 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Contamos las Additional Categories clasificadas como "página propia" en 1.6.
  - **Fuente:** `Info heredada`.

#### 2.7 Variable G
- **Qué es:** entero — GeoArticles per service.
- **Para qué sirve:** factor multiplicador (genera G×S GeoArticles).
- **Dato que buscamos:** `[entero G heredado de 1.12, default 3]`.
- **Hereda info de pasos anteriores:** 1.12 GeoArticles per Service.
- **Cómo se obtiene:** Lo cogemos directo de 1.12. Default doctrinal G=3.
  - **Fuente:** `Info heredada`.

#### 2.8 Total páginas SEO base
- **Qué es:** total entero del cluster base aplicando fórmula maestra.
- **Para qué sirve:** dimensiona producción, calendario (10.9), QA (9.X), priorización (8.X).
- **Dato que buscamos:** `[total entero según fórmula 1+S+1+S+A+G×S]`.
- **Hereda info de pasos anteriores:** 2.5 Variable S + 2.6 Variable A + 2.7 Variable G.
- **Cómo se obtiene:** Aplicamos la fórmula maestra con los valores de S, A, G. Por ejemplo: con S=5, A=0, G=3 → 1+5+1+5+0+15 = 27 páginas.
  - **Fuente:** `Info heredada`.

#### 2.9 Inventario por tipo de página
- **Qué es:** desglose del total por page type (HP / SO / GH / LBS / AC / GA).
- **Para qué sirve:** alimenta 10.4-10.6 Fases, 11.X funciones generate_*(), 8.10 Publish Phase.
- **Dato que buscamos:** `[count por page type: 1 HP + S SO + 1 GH + S LBS + A AC + G×S GAs]`.
- **Hereda info de pasos anteriores:** 2.5 Variable S + 2.6 Variable A + 2.7 Variable G.
- **Cómo se obtiene:** Desglosamos la fórmula maestra por page type. Resultado: 1 Homepage + S Service Overview + 1 GeoHub + S LBS + A Additional Category + G×S GeoArticle.
  - **Fuente:** `Info heredada`.

#### 2.10 Optional Expansion Formula
- **Qué es:** fórmula activable para sub-clusters de expansión.
- **Para qué sirve:** ejecuta cuando 1.11 Approved Expansion ≠ vacío. Replica fórmula base por área aprobada.
- **Dato que buscamos:** `[fórmula declarada inactiva en Phase 1; activa cuando Approved Expansion declaradas]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** En Phase 1 está inactiva por defecto (1.11 vacío). Cuando se aprueban zonas de expansión, replica la fórmula maestra por cada zona.
  - **Fuente:** `Info heredada`.

#### 2.11 Validación anti-duplicación
- **Qué es:** validación binaria — Additional Categories vs core services no duplican intención.
- **Para qué sirve:** evita crear AC para algo ya cubierto por SO/LBS.
- **Cómo se asigna:**
  - **Pass** → 0 duplicados detectados.
  - **Fail** → ≥1 Additional Category duplica intención de core service.
- **Dato que buscamos:** `[resultado del check: pass/fail + lista de duplicados detectados]`.
- **Hereda info de pasos anteriores:** 1.6 Additional Categories + 1.9 Servicios principales.
- **Cómo se obtiene:** Comparamos cada Additional Category con los core services semánticamente. Si alguna AC ya está cubierta por un core service, marca duplicado.
  - **Fuente:** `Info heredada`.

#### 2.12 Validación dependencias
- **Qué es:** validación de orden estructural (HP → SO → GH → LBS → AC → GAs).
- **Para qué sirve:** evita publicar páginas que dependan de upstream no creado.
- **Cómo se asigna:**
  - **Pass** → orden topológico respetado.
  - **Fail** → algún hijo declarado antes que su parent.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo de página.
- **Cómo se obtiene:** Validamos que en el inventario no haya hijos antes que su parent (LBS antes que SO, GAs antes que LBS, etc.).
  - **Fuente:** `Info heredada`.

#### 2.13 Validación LCAs fuera fórmula
- **Qué es:** validación binaria — ninguna LCA genera URL en la fórmula base.
- **Para qué sirve:** evita inflar el cluster con URLs `/{lca}/`.
- **Cómo se asigna:**
  - **Pass** → 0 URLs LCA detectadas.
  - **Fail** → al menos 1 URL `/{lca}/` en la matriz.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 Direct + Candidate LCAs.
- **Cómo se obtiene:** Comprobamos que ninguna LCA aparece como URL en la fórmula base.
  - **Fuente:** `Info heredada`.

#### 2.14 Validación auditabilidad del total
- **Qué es:** validación binaria — el total 2.8 se desglosa rastreablemente por page type.
- **Para qué sirve:** integridad de la fórmula (cada página del total tiene origen rastreable).
- **Cómo se asigna:**
  - **Pass** → suma del desglose 2.9 = total 2.8.
  - **Fail** → discrepancia entre suma desglose y total.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 2.8 Total páginas + 2.9 Inventario por tipo.
- **Cómo se obtiene:** Sumamos el desglose por page type y comprobamos que coincide con el total.
  - **Fuente:** `Info heredada`.

### Paso 3 — Matriz Base (6 outputs)

#### 3.1 Spreadsheet Name
- **Qué es:** nombre del spreadsheet de la matriz URL.
- **Para qué sirve:** convención de nomenclatura para identificar el doc del cluster.
- **Dato que buscamos:** `[nombre del spreadsheet aplicando convención]`.
- **Hereda info de pasos anteriores:** 1.1 Business Name.
- **Cómo se obtiene:** Aplicamos la convención `[Cliente] – GMB Crush Website Architecture`.
  - **Fuente:** `Info heredada`.

#### 3.3 Additional Category Slugs
- **Qué es:** slugs de las Additional Categories que necesitan página propia.
- **Para qué sirve:** componente de URLs en patrón 4.7.
- **Dato que buscamos:** `[lista de slugs kebab-case de las A categorías con página propia]`.
- **Hereda info de pasos anteriores:** 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Aplicamos slugify a cada Additional Category con página propia.
  - **Fuente:** `Info heredada`.

#### 3.5 URL Matrix completa
- **Qué es:** tabla N filas × 20 columnas con todas las URLs derivadas de la fórmula maestra.
- **Para qué sirve:** **artefacto central del sistema**. Alimenta prácticamente todos los outputs de Bloques 2-5.
- **Dato que buscamos:** `[matriz N×20 con todas las URLs y metadatos asignados]`.
- **Hereda info de pasos anteriores:** 2.8 Total páginas + 2.9 Inventario por tipo + outputs 1.X y 2.X relevantes.
- **Cómo se obtiene:** Generamos una fila por cada URL del inventario aplicando los patrones de URL del Paso 4 y los metadatos doctrinales.
  - **Fuente:** `Info heredada`.

#### 3.6 IDs por tipo de página
- **Qué es:** convención de IDs `[PageType-Index]` (HP-001, SO-001..S, GH-001, LBS-001..S, AC-001..A, GA-001..(G×S)).
- **Para qué sirve:** identifica unívocamente cada URL en cross-refs, QA, deploy.
- **Dato que buscamos:** `[ID único por fila siguiendo convención PageType-Index]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Aplicamos la convención `[PageType-Index]` por fila de la matriz.
  - **Fuente:** `Info heredada`.

#### 3.13 Validación LCAs sin filas base
- **Qué es:** validación binaria — ninguna LCA genera fila URL en la matriz base.
- **Para qué sirve:** integridad estructural (LCAs viven en `areaServed`/contenido, no en URLs).
- **Cómo se asigna:**
  - **Pass** → 0 filas con LCA en URL.
  - **Fail** → ≥1 fila con `/{lca}/` en URL.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 Direct + Candidate LCAs + 3.5 URL Matrix.
- **Cómo se obtiene:** Comprobamos que ninguna LCA aparece como path en la URL Matrix.
  - **Fuente:** `Info heredada`.

#### 3.14 Validación matriz cerrada antes de contenido
- **Qué es:** validación binaria — todas las celdas del 3.5 están rellenas antes de pasar al Paso 5.
- **Para qué sirve:** integridad pre-Bloque 2 (no se puede empezar Page Type Rules con matriz incompleta).
- **Cómo se asigna:**
  - **Pass** → todas las celdas no-vacías.
  - **Fail** → al menos 1 celda vacía.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Inspeccionamos visualmente o con script que todas las celdas de la matriz están rellenas antes de avanzar al Bloque 2.
  - **Fuente:** `Info heredada`.

---

## Bloque 2 — Arquitectura (38 outputs)

### Paso 4 — URL Rules (5 outputs)

#### 4.1 Canonical Domain
- **Qué es:** dominio canónico del cluster en formato HTTPS + www + trailing slash.
- **Para qué sirve:** todas las URLs heredan este dominio. Schema canonical, sitemap, redirects.
- **Dato que buscamos:** `[dominio canónico aplicado HTTPS+www+trailing]`.
- **Hereda info de pasos anteriores:** 1.2 Website URL / Canonical Domain.
- **Cómo se obtiene:** Cogemos el dominio del intake y forzamos formato HTTPS + www + trailing slash.
  - **Fuente:** `Info heredada`.

#### 4.5 Main City GeoHub URL Style
- **Qué es:** estilo elegido para GeoHub (Option A o B según 3.2).
- **Para qué sirve:** afecta a 4.8 GeoArticle pattern + estructura del silo geográfico.
- **Dato que buscamos:** `[Option A o Option B heredado de 3.2]`.
- **Hereda info de pasos anteriores:** 3.2 GeoHub URL Style.
- **Cómo se obtiene:** Cogemos el estilo elegido en 3.2.
  - **Fuente:** `Info heredada`.

#### 4.10 Approved Expansion URLs
- **Qué es:** URLs generadas por sub-clusters de expansión (vacío en Phase 1).
- **Para qué sirve:** activa cuando 1.11 ≠ vacío. Genera sub-cluster por área aprobada.
- **Dato que buscamos:** `[lista URLs vacía en Phase 1, se rellena cuando AEAs declaradas]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Vacío por defecto en Phase 1. Cuando se aprueban AEAs, se generan URLs por cada área.
  - **Fuente:** `Info heredada`.

#### 4.13 Validación Slugs limpios
- **Qué es:** validación binaria — todos los slugs en kebab-case, lowercase, sin acentos.
- **Para qué sirve:** evita problemas técnicos (URL encoding, redirects, canonical).
- **Cómo se asigna:**
  - **Pass** → todos los slugs match `^[a-z0-9-]+$`.
  - **Fail** → al menos 1 slug con mayúscula, acento o caracter especial.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 2.2 + 2.3 + 2.4 + 3.3 (todos los slugs).
- **Cómo se obtiene:** Validamos cada slug contra el regex `^[a-z0-9-]+$`.
  - **Fuente:** `Info heredada`.

#### 4.14 Validación No falsa ubicación
- **Qué es:** validación binaria — URLs solo usan Main City (1.7) o Approved Expansion (1.11), nunca otras.
- **Para qué sirve:** evita anti-pattern fake-location (atribuirse ciudades donde no operas).
- **Cómo se asigna:**
  - **Pass** → todas las URLs match Main City o AEA.
  - **Fail** → al menos 1 URL con ciudad no autorizada.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.8 Physical Location City + 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Cruzamos las URLs vs ciudades autorizadas (Main City + AEAs aprobadas).
  - **Fuente:** `Info heredada`.

### Paso 5 — Page Type Rules (7 outputs)

#### 5.1 Spec Homepage (Root Entity Anchor)
- **Qué es:** spec completo de la Homepage (purpose / H1 / meta / word count / sections / FAQ / CTA / schema / links).
- **Para qué sirve:** alimenta 6.6 Homepage Content Architecture, 11.4 generate_homepage(), 15.3 Homepage redactada, 17.5 Page construida.
- **Dato que buscamos:** `[spec Homepage rellenado con inputs heredados según template doctrinal]`.
- **Hereda info de pasos anteriores:** 1.1 Business Name + 1.4 Full NAP + 1.13 Preferred CTA + 1.14 Trust Signals + 4.3 Homepage URL.
- **Cómo se obtiene:** Aplicamos el spec doctrinal de Homepage rellenando los inputs heredados (nombre, NAP, CTA, trust, URL).
  - **Fuente:** `Info heredada`.

#### 5.2 Spec Service Overview (Topical Authority Pillar)
- **Qué es:** spec completo de SO (replicado a S core services).
- **Para qué sirve:** alimenta 6.7, 11.5 generate_service_overview(), 15.4 SO redactadas.
- **Dato que buscamos:** `[spec SO rellenado × S core services]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 2.4 Service Slugs + 4.4 SO URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal de SO replicado a cada uno de los S core services.
  - **Fuente:** `Info heredada`.

#### 5.3 Spec LBS (Main City Converter)
- **Qué es:** spec de LBS — schema LocalBusiness con `areaServed` = LCAs.
- **Para qué sirve:** alimenta 6.8, 11.7 generate_lbs(), 15.5 LBS redactadas.
- **Dato que buscamos:** `[spec LBS × S × Main City con LocalBusiness schema + areaServed]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios + 1.10 LCAs + 2.4 Service Slugs + 4.6 LBS URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal LBS × S × Main City. Schema LocalBusiness con `areaServed` = LCAs reales.
  - **Fuente:** `Info heredada`.

#### 5.4 Spec Additional Category (GBP AC Support)
- **Qué es:** spec de AC para Additional Categories con página propia.
- **Para qué sirve:** alimenta 6.9, 11.8 generate_additional_category(), 15.6 AC redactada.
- **Dato que buscamos:** `[spec AC rellenado × A categorías con página propia]`.
- **Hereda info de pasos anteriores:** 1.6 Additional Categories + 3.3 AC Slugs + 4.7 AC URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal AC a cada Additional Category con página propia.
  - **Fuente:** `Info heredada`.

#### 5.5 Spec GeoHub (Main City Silo Container)
- **Qué es:** spec del GeoHub.
- **Para qué sirve:** alimenta 6.10, 11.6 generate_geohub(), 15.7 GeoHub redactada.
- **Dato que buscamos:** `[spec GeoHub para Main City con services + ACs + LCAs section + GA ideas]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.10 LCAs + 2.3 Main City Slug + 4.5 GeoHub URL Style.
- **Cómo se obtiene:** Aplicamos el spec doctrinal GeoHub al Main City.
  - **Fuente:** `Info heredada`.

#### 5.6 Spec GeoArticle (Semantic Booster)
- **Qué es:** spec de GA — boost semántico con LCAs como ejemplos.
- **Para qué sirve:** alimenta 6.11, 11.9 generate_geoarticles(), 15.8 GAs redactados.
- **Dato que buscamos:** `[spec GA × G×S con LCAs como ejemplos semánticos]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 3.4 GeoArticle Topics + 4.8 GA URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal GA a cada combinación de G×S topics.
  - **Fuente:** `Info heredada`.

#### 5.10 Validación No false location claims
- **Qué es:** validación binaria — `address` schema = NAP físico real, `areaServed` = LCAs reales.
- **Para qué sirve:** evita anti-pattern fake location (lo que también validan 4.14 + 9.7).
- **Cómo se asigna:**
  - **Pass** → schema coherente con NAP + LCAs reales.
  - **Fail** → ≥1 inconsistencia.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.8 Physical Location City + 1.10 LCAs + 4.14 No falsa ubicación.
- **Cómo se obtiene:** Comprobamos que el schema `address` coincide con el NAP real y `areaServed` lista solo LCAs reales.
  - **Fuente:** `Info heredada`.

### Paso 6 — Estructura de Contenido + LCAs (13 outputs)

#### 6.1 Principio 1 — Main City crea arquitectura
- **Qué es:** principio doctrinal — la Main City es el ancla geográfica única que estructura el cluster.
- **Para qué sirve:** filtro QA aplicable a toda la arquitectura.
- **Dato que buscamos:** `[principio aplicado como filtro: 1 Main City única estructura el cluster]`.
- **Hereda info de pasos anteriores:** 1.7 Main City.
- **Cómo se obtiene:** Aplicamos el principio: la Main City es la única ciudad que estructura URLs y schemas.
  - **Fuente:** `Info heredada`.

#### 6.2 Principio 2 — LCAs enriquecen contenido
- **Qué es:** principio doctrinal — LCAs van en contenido + `areaServed`, 0 URLs `/{lca}/`.
- **Para qué sirve:** filtro QA.
- **Dato que buscamos:** `[principio aplicado: LCAs en contenido + areaServed, 0 URLs LCA]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs.
- **Cómo se obtiene:** Aplicamos el principio: LCAs van en contenido y schema, nunca como URL.
  - **Fuente:** `Info heredada`.

#### 6.3 Principio 3 — AEAs crean URLs solo si se aprueban
- **Qué es:** principio doctrinal — solo Approved Expansion Areas (1.11) generan URLs propias.
- **Para qué sirve:** filtro QA + control de inflación del cluster.
- **Dato que buscamos:** `[principio aplicado: solo AEAs aprobadas → URLs]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Aplicamos el principio: solo zonas con AEA aprobada generan URLs propias.
  - **Fuente:** `Info heredada`.

#### 6.5 Principio 5 — No falsa ubicación
- **Qué es:** principio doctrinal — schema, NAP y contenido alineados con ubicación física real.
- **Para qué sirve:** filtro QA.
- **Dato que buscamos:** `[principio aplicado: 0 inconsistencias schema/NAP/contenido]`.
- **Hereda info de pasos anteriores:** 1.8 Physical Location City.
- **Cómo se obtiene:** Aplicamos el principio: lo que decimos en contenido y schema coincide con la ubicación física real.
  - **Fuente:** `Info heredada`.

#### 6.6 Homepage Content Architecture
- **Qué es:** arquitectura de contenido de la Homepage (Hero, Quick Answer, Service Menu, Local Coverage Preview, Trust, FAQ, CTA, Schema).
- **Para qué sirve:** alimenta 15.3 Homepage redactada, 17.5 Page construida.
- **Dato que buscamos:** `[arquitectura Homepage con secciones doctrinales]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.1 Spec Homepage.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal de Homepage al spec.
  - **Fuente:** `Info heredada`.

#### 6.7 Service Overview Content Architecture
- **Qué es:** arquitectura de SO × S instancias.
- **Para qué sirve:** alimenta 15.4.
- **Dato que buscamos:** `[arquitectura SO × S instancias]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.2 Spec SO.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal SO × S core services.
  - **Fuente:** `Info heredada`.

#### 6.8 Location-Based Service Content Architecture
- **Qué es:** arquitectura de LBS × S × Main City.
- **Para qué sirve:** alimenta 15.5.
- **Dato que buscamos:** `[arquitectura LBS × S × Main City]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.3 Spec LBS.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal LBS.
  - **Fuente:** `Info heredada`.

#### 6.9 Additional Category Content Architecture
- **Qué es:** arquitectura de AC × A instancias.
- **Para qué sirve:** alimenta 15.6.
- **Dato que buscamos:** `[arquitectura AC × A instancias]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.4 Spec AC.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal AC.
  - **Fuente:** `Info heredada`.

#### 6.10 GeoHub Content Architecture
- **Qué es:** arquitectura del GeoHub (services available, ACs, LCAs section, GA ideas, schema).
- **Para qué sirve:** alimenta 15.7.
- **Dato que buscamos:** `[arquitectura GeoHub Main City]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.5 Spec GeoHub.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal GeoHub.
  - **Fuente:** `Info heredada`.

#### 6.11 GeoArticle Content Architecture
- **Qué es:** arquitectura de GA × G×S instancias (con LCAs como ejemplos semánticos).
- **Para qué sirve:** alimenta 15.8.
- **Dato que buscamos:** `[arquitectura GA × G×S]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.6 Spec GA.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal GA con LCAs como ejemplos semánticos.
  - **Fuente:** `Info heredada`.

#### 6.12 Tabla de uso de LCAs por page type
- **Qué es:** matriz fila-por-page-type indicando dónde y cómo se usan LCAs.
- **Para qué sirve:** alimenta 11.10 inject_local_coverage(), 9.6 Local Coverage QA.
- **Dato que buscamos:** `[matriz N filas (page types) × 5 cols (FAQ, intro, body, schema, anchors) con uso permitido]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs.
- **Cómo se obtiene:** Generamos la matriz aplicando reglas doctrinales sobre dónde puede usarse cada LCA por page type.
  - **Fuente:** `Info heredada`.

#### 6.15 Reviews y trust blocks contextualizados
- **Qué es:** mapping de trust signals (1.14) a cada page type según funnel position.
- **Para qué sirve:** alimenta 15.X (Hero blocks por page type).
- **Dato que buscamos:** `[mapping trust signals × page types según funnel]`.
- **Hereda info de pasos anteriores:** 1.14 Trust Signals.
- **Cómo se obtiene:** Mapeamos cada trust signal al page type donde mejor encaja según funnel position.
  - **Fuente:** `Info heredada`.

#### 6.17 Schema `areaServed` coherente
- **Qué es:** validación binaria — `areaServed` lista solo zonas reales (NO zonas inventadas).
- **Para qué sirve:** filtro QA, evita anti-pattern fake-area.
- **Cómo se asigna:**
  - **Pass** → todas las zonas en `areaServed` están en LCAs reales.
  - **Fail** → ≥1 zona inventada.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs.
- **Cómo se obtiene:** Cruzamos `areaServed` schema con la lista de LCAs reales.
  - **Fuente:** `Info heredada`.

### Paso 7 — Internal Linking Rules (13 outputs)

#### 7.2 Regla 2 — Homepage distribuye autoridad
- **Qué es:** regla doctrinal — Homepage outbound respeta matriz 7.11.
- **Para qué sirve:** filtro QA Homepage.
- **Dato que buscamos:** `[regla aplicada al outbound de Homepage]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que la Homepage enlaza outbound a SO + GeoHub + LBS clave según matriz.
  - **Fuente:** `Info heredada`.

#### 7.3 Regla 3 — SO empuja versión local
- **Qué es:** regla doctrinal — cada SO enlaza a su LBS correspondiente.
- **Para qué sirve:** filtro QA SO.
- **Dato que buscamos:** `[regla aplicada × S SO: cada SO → LBS]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada SO empuja su versión local correspondiente (LBS).
  - **Fuente:** `Info heredada`.

#### 7.4 Regla 4 — GeoHub organiza Main City
- **Qué es:** regla doctrinal — GeoHub outbound a SO + LBS + AC + GAs de Main City.
- **Para qué sirve:** filtro QA GeoHub.
- **Dato que buscamos:** `[regla aplicada al outbound del GeoHub]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que el GeoHub enlaza a todos los SO + LBS + AC + GAs de la Main City.
  - **Fuente:** `Info heredada`.

#### 7.5 Regla 5 — LBS conecta servicio y ciudad
- **Qué es:** regla doctrinal — LBS enlaza a parent SO + GeoHub + lateral LBS + GAs + contacto.
- **Para qué sirve:** filtro QA LBS.
- **Dato que buscamos:** `[regla aplicada × S LBS]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada LBS tiene los 5 enlaces obligatorios (SO padre, GeoHub, LBS lateral, GAs, contacto).
  - **Fuente:** `Info heredada`.

#### 7.6 Regla 6 — AC se integra en silo local
- **Qué es:** regla doctrinal — AC enlaza a GeoHub padre + lateral con LBS relacionadas.
- **Para qué sirve:** filtro QA AC.
- **Dato que buscamos:** `[regla aplicada × A AC]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada AC enlaza al GeoHub padre y a LBS relacionadas lateral.
  - **Fuente:** `Info heredada`.

#### 7.7 Regla 7 — GeoArticle pasa relevancia a landing
- **Qué es:** regla doctrinal — cada GA enlaza a su matching LBS + GeoHub + GA relacionado.
- **Para qué sirve:** filtro QA GAs (prevenir GAs huérfanos).
- **Dato que buscamos:** `[regla aplicada × G×S GAs]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada GA tiene los 3 enlaces clave (LBS matching, GeoHub, GA relacionado).
  - **Fuente:** `Info heredada`.

#### 7.8 Regla 8 — LCAs sin URL no reciben enlaces
- **Qué es:** validación binaria — 0 URLs del cluster enlazan a `/{lca}/` (porque no existen).
- **Para qué sirve:** filtro QA, integridad cluster.
- **Cómo se asigna:**
  - **Pass** → 0 enlaces a `/{lca}/`.
  - **Fail** → ≥1 enlace a LCA.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs + 4.9 LCAs no generan URLs.
- **Cómo se obtiene:** Validamos que ninguna URL del cluster enlaza a un path con LCA.
  - **Fuente:** `Info heredada`.

#### 7.9 Regla 9 — Anchor text variado
- **Qué es:** catálogo de tipos de anchor (branded / exact / partial / topic / generic / CTA) con distribución doctrinal.
- **Para qué sirve:** alimenta 11.12 assign_internal_links(), evita over-optimization.
- **Dato que buscamos:** `[catálogo de anchors aplicado a la matriz de enlaces con distribución doctrinal]`.
- **Hereda info de pasos anteriores:** 1.1 Business Name + 1.13 Preferred CTA.
- **Cómo se obtiene:** Aplicamos el catálogo doctrinal de tipos de anchor para evitar over-optimization de exact match.
  - **Fuente:** `Info heredada`.

#### 7.11 Matriz de enlaces obligatorios por page type
- **Qué es:** matriz N filas (combinaciones source-target) × 4 cols (source, target, anchor, direction).
- **Para qué sirve:** **artefacto central de linking**. Alimenta 9.11, 11.12, 15.X, 17.4.
- **Dato que buscamos:** `[matriz fila-por-conexión con source / target / anchor / direction]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Generamos la matriz de enlaces aplicando las reglas 7.1-7.10 sobre la URL Matrix.
  - **Fuente:** `Info heredada`.

#### 7.12 Ejemplo completo de enlaces para LBS modelo
- **Qué es:** ejemplo aplicado a una LBS modelo con todos sus enlaces resueltos.
- **Para qué sirve:** referencia para 17.X (constructor).
- **Dato que buscamos:** `[ejemplo redactado de LBS con enlaces completos según matriz]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Redactamos un ejemplo completo de LBS modelo con todos los enlaces resueltos como referencia.
  - **Fuente:** `Info heredada`.

#### 7.13 Breadcrumbs por page type
- **Qué es:** jerarquía Home > Categoría > Ciudad > Servicio aplicada por page type.
- **Para qué sirve:** alimenta 17.4 Header+Footer+Layout, schema BreadcrumbList.
- **Dato que buscamos:** `[breadcrumb jerarquía por page type]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Aplicamos la jerarquía Home > Categoría > Ciudad > Servicio por page type.
  - **Fuente:** `Info heredada`.

#### 7.14 Inbound links esperados (cross-cutting)
- **Qué es:** validación — cada URL recibe el mínimo de inbound según matriz 7.11.
- **Para qué sirve:** filtro QA cross-cutting.
- **Cómo se asigna:**
  - **Pass** → todas las URLs ≥ inbound mínimo doctrinal.
  - **Fail** → ≥1 URL con inbound insuficiente.
- **Dato que buscamos:** `[resultado del check + URLs con inbound insuficiente]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Cruzamos el inbound count de cada URL con el threshold doctrinal mínimo.
  - **Fuente:** `Info heredada`.

#### 7.15 Expansion linking separado (cross-cutting)
- **Qué es:** regla — sub-clusters de expansión tienen linking aislado del cluster base.
- **Para qué sirve:** evita sangrar autoridad del base hacia sub-clusters no consolidados.
- **Dato que buscamos:** `[regla aplicada solo si E≥1: sub-cluster aislado]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Vacío en Phase 1. Si E≥1, aplicamos la regla: el sub-cluster de expansión tiene linking aislado del base.
  - **Fuente:** `Info heredada`.

---

## Bloque 3 — Priorización (33 outputs)

### Paso 8 — Priority Score (8 outputs)

#### 8.5 Local Relevance
- **Qué es:** score 1-5 — coherencia URL + schema + contenido vs NAP/Main City/LCAs.
- **Para qué sirve:** factor L del Priority Score.
- **Cómo se asigna:**
  - **5** → URL + schema + contenido alineados perfectamente con NAP + Main City + LCAs.
  - **3** → 2 de 3 alineados.
  - **1** → ≤1 alineado.
- **Dato que buscamos:** `[score basado en inspección URL + schema + contenido vs NAP/Main City/LCAs]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.8 Physical Location City + 1.10 LCAs.
- **Cómo se obtiene:** Inspeccionamos URL + schema + contenido de cada página y comparamos con NAP/Main City/LCAs reales.
  - **Fuente:** `Info heredada`.

#### 8.7 Conversion Urgency
- **Qué es:** score 1-5 — ventana de decisión + queries de urgencia del servicio.
- **Para qué sirve:** factor U del Priority Score.
- **Cómo se asigna:**
  - **5** → servicios con queries `urgente`/`24h`/`ahora`/`emergencia` (ej: cerrajero urgente).
  - **3** → servicios con ventana de decisión media (ej: reforma puntual).
  - **1** → servicios sin urgencia (ej: contenido informacional).
- **Dato que buscamos:** `[clasificación servicio por ventana de decisión + presencia de queries de urgencia en KR]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 1.13 Preferred CTA.
- **Cómo se obtiene:** Cruzamos el tipo de servicio + la urgencia del CTA + las queries de urgencia que aparecen en KR.
  - **Fuente:** `Info heredada`.

#### 8.8 Total Score por página
- **Qué es:** suma simple de los 6 factores (8.2-8.7), rango 6-30.
- **Para qué sirve:** alimenta 8.9 Tiers, 8.10 Phase, 8.14 Inventario priorizado, 13.7 Tabla URL.
- **Dato que buscamos:** `[entero 6-30 = R+I+G+L+C+U]`.
- **Hereda info de pasos anteriores:** 8.2-8.7 (los 6 factores).
- **Cómo se obtiene:** Sumamos los 6 factores con peso 1.
  - **Fuente:** `Info heredada`.

#### 8.9 Priority Tiers
- **Qué es:** mapping doctrinal del score total a tier.
- **Para qué sirve:** alimenta 8.10 Publish Phase, 10.4-10.6 Fases, 13.7 Tabla.
- **Cómo se asigna:**
  - **P1** → 26-30.
  - **P2** → 21-25.
  - **P3** → 16-20.
  - **P4** → 10-15.
  - **Hold** → 6-9.
- **Dato que buscamos:** `[tier P1-P4 o Hold según score]`.
- **Hereda info de pasos anteriores:** 8.8 Total Score.
- **Cómo se obtiene:** Aplicamos el mapping doctrinal score → tier.
  - **Fuente:** `Info heredada`.

#### 8.10 Publish Phase derivada
- **Qué es:** fase de publicación derivada del Tier × dependencias estructurales.
- **Para qué sirve:** alimenta 10.4-10.8 Fases, 10.10 Matriz de dependencias.
- **Dato que buscamos:** `[phase 1-4 según tier × dependencias]`.
- **Hereda info de pasos anteriores:** 8.9 Priority Tiers + 2.10 Optional Expansion Formula.
- **Cómo se obtiene:** Cruzamos el Tier con las dependencias estructurales (parent ya en phase anterior).
  - **Fuente:** `Info heredada`.

#### 8.11 Validación Landing antes que GeoArticle
- **Qué es:** validación binaria — phase(parent) < phase(GA) por fila.
- **Para qué sirve:** evita publicar GAs huérfanos sin LBS padre.
- **Cómo se asigna:**
  - **Pass** → todas las GAs publicadas en phase ≥ phase(parent).
  - **Fail** → ≥1 GA con phase < phase(parent).
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 8.10 Publish Phase.
- **Cómo se obtiene:** Validamos por fila que phase(parent) < phase(GA).
  - **Fuente:** `Info heredada`.

#### 8.13 Validación LCAs sin score
- **Qué es:** validación binaria — 0 LCAs en el inventario priorizado (porque no son URLs).
- **Para qué sirve:** integridad estructural.
- **Cómo se asigna:**
  - **Pass** → 0 intersecciones LCA × inventario.
  - **Fail** → ≥1 LCA con score asignado.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs + 4.9 LCAs no generan URLs.
- **Cómo se obtiene:** Comprobamos que ninguna LCA aparece en el inventario priorizado.
  - **Fuente:** `Info heredada`.

#### 8.14 Inventario priorizado completo
- **Qué es:** tabla N filas con score + tier + phase por URL.
- **Para qué sirve:** **artefacto central de priorización**. Alimenta 9.1 QA por página, 10.X Fases, 13.7 Tabla URL.
- **Dato que buscamos:** `[tabla N filas con score + tier + phase por URL]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 8.8 Total Score + 8.9 Tiers + 8.10 Phase.
- **Cómo se obtiene:** Generamos la tabla cruzando URL Matrix con scores, tiers y phases.
  - **Fuente:** `Info heredada`.

### Paso 9 — QA Checklist (15 outputs)

#### 9.1 Plantilla de QA por página
- **Qué es:** formulario de 10 campos por URL del inventario priorizado.
- **Para qué sirve:** template para 9.14 Final Publish Gate, 18.X Auditorías.
- **Dato que buscamos:** `[plantilla 10 campos: URL/Tipo/H1/Meta/Schema/WC/Links/CTA/Coverage/Validación]`.
- **Hereda info de pasos anteriores:** 8.14 Inventario priorizado.
- **Cómo se obtiene:** Generamos un formulario de 10 campos por cada URL del inventario priorizado.
  - **Fuente:** `Info heredada`.

#### 9.2 Regla 1 — URL QA
- **Qué es:** validación binaria por URL — match con patrón doctrinal del page type.
- **Para qué sirve:** filtro 1 del Final Publish Gate (9.14).
- **Cómo se asigna:** Pass → URL match patrón 4.3-4.8 / Fail → URL desviada del patrón.
- **Dato que buscamos:** `[resultado check por URL]`.
- **Hereda info de pasos anteriores:** 4.3-4.8 URL patterns.
- **Cómo se obtiene:** Comparamos cada URL contra el patrón doctrinal de su page type.
  - **Fuente:** `Info heredada`.

#### 9.3 Regla 2 — Page Type QA
- **Qué es:** validación binaria — H1 + estructura + schema match con spec del page type.
- **Para qué sirve:** filtro 2 del Final Publish Gate.
- **Dato que buscamos:** `[resultado check por URL]`.
- **Hereda info de pasos anteriores:** 5.1-5.6 Specs + 6.6-6.11 Content Architecture.
- **Cómo se obtiene:** Inspeccionamos H1 + estructura + schema de cada URL contra el spec doctrinal.
  - **Fuente:** `Info heredada`.

#### 9.4 Regla 3 — One service only
- **Qué es:** validación binaria — cada URL local cubre 1 solo servicio.
- **Para qué sirve:** filtro 3 del Gate. Evita pages mezclando servicios.
- **Dato que buscamos:** `[resultado check + URLs con múltiples servicios]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 5.3-5.6 Specs.
- **Cómo se obtiene:** Inspeccionamos H1 + body de cada URL local y validamos que cubre 1 solo servicio.
  - **Fuente:** `Info heredada`.

#### 9.5 Regla 4 — One Main City only
- **Qué es:** validación binaria — cada URL cubre 1 sola Main City.
- **Para qué sirve:** filtro 4 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 1.7 Main City.
- **Cómo se obtiene:** Inspeccionamos H1 + breadcrumb + cobertura de cada URL.
  - **Fuente:** `Info heredada`.

#### 9.6 Regla 5 — Local Coverage QA
- **Qué es:** validación binaria — LCAs en contenido + areaServed correctos.
- **Para qué sirve:** filtro 5 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs + 4.14 No falsa ubicación.
- **Cómo se obtiene:** Validamos que las LCAs aparecen en contenido y areaServed correctamente.
  - **Fuente:** `Info heredada`.

#### 9.7 Regla 6 — No fake location
- **Qué es:** validación binaria — schema + copy alineados con ubicación física real.
- **Para qué sirve:** filtro 6 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 1.4 NAP + 1.8 Physical Location + 4.14 + 5.10.
- **Cómo se obtiene:** Inspeccionamos schema + copy contra ubicación física real.
  - **Fuente:** `Info heredada`.

#### 9.8 Regla 7 — Metadata QA
- **Qué es:** validación binaria — H1 + meta title + meta description coherentes.
- **Para qué sirve:** filtro 7 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 5.1-5.6 Specs.
- **Cómo se obtiene:** Validamos H1 + meta title + meta description de cada URL contra el spec.
  - **Fuente:** `Info heredada`.

#### 9.9 Regla 8 — Word count QA
- **Qué es:** validación binaria — word count dentro de rango doctrinal por page type.
- **Para qué sirve:** filtro 8 del Gate.
- **Dato que buscamos:** `[resultado check + WC por page]`.
- **Hereda info de pasos anteriores:** 5.8 Validación Word count.
- **Cómo se obtiene:** Verificamos el word count contra los rangos doctrinales por page type.
  - **Fuente:** `Info heredada`.

#### 9.10 Regla 9 — Schema QA
- **Qué es:** validación binaria — JSON-LD válido + areaServed coherente.
- **Para qué sirve:** filtro 9 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 5.7 Validación Schema + 6.17 areaServed coherente.
- **Cómo se obtiene:** Validamos JSON-LD por page type + areaServed coherente con LCAs.
  - **Fuente:** `Info heredada`.

#### 9.11 Regla 10 — Enlaces internos QA
- **Qué es:** validación binaria — cada URL cumple matriz 7.11.
- **Para qué sirve:** filtro 10 del Gate.
- **Dato que buscamos:** `[resultado check + URLs con enlaces faltantes]`.
- **Hereda info de pasos anteriores:** 7.11 Matriz de enlaces.
- **Cómo se obtiene:** Cruzamos cada URL con la matriz de enlaces obligatorios.
  - **Fuente:** `Info heredada`.

#### 9.12 Regla 11 — Canibalización QA
- **Qué es:** validación binaria — cada URL cubre intención única, 0 pares solapados.
- **Para qué sirve:** filtro 11 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 4.15 Validación No duplicar intención.
- **Cómo se obtiene:** Cruzamos URLs por intención semántica y detectamos pares solapados.
  - **Fuente:** `Info heredada`.

#### 9.13 Regla 12 — CTA QA
- **Qué es:** validación binaria — CTA adaptado al page type según funnel.
- **Para qué sirve:** filtro 12 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 5.9 Validación CTA + 1.13 Preferred CTA.
- **Cómo se obtiene:** Validamos que el CTA de cada URL respeta el funnel position del page type.
  - **Fuente:** `Info heredada`.

#### 9.14 Final Publish Gate
- **Qué es:** consolidación de las 12 reglas anteriores en gate binario.
- **Para qué sirve:** **gate crítico de Bloque 3**. Sin Pass aquí, no se publica nada en Paso 18.
- **Cómo se asigna:** Pass → todas las 12 reglas Pass por URL / Fail → ≥1 regla Fail en cualquier URL.
- **Dato que buscamos:** `[resultado consolidado: pass/fail por URL + listado de fallos]`.
- **Hereda info de pasos anteriores:** 9.2-9.13 (las 12 reglas).
- **Cómo se obtiene:** Consolidamos los resultados de las 12 reglas en un gate binario por URL.
  - **Fuente:** `Info heredada`.

#### 9.15 GBP Not Created QA Checklist
- **Qué es:** 7 checks específicos para flujo web-first (cuando GBP=Not Created).
- **Para qué sirve:** filtro adicional cuando se aplica web-first. Alimenta 12.7, 14.1.
- **Cómo se asigna:** Pass → 7 checks Pass / Fail → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 7 checks web-first]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle Status.
- **Cómo se obtiene:** Inspeccionamos copy + schema + footer contra los 7 checks específicos web-first.
  - **Fuente:** `Info heredada`.

### Paso 10 — Producción en Fases (10 outputs)

#### 10.4 Fase 1 — Entity Foundation
- **Qué es:** lista de páginas page_type ∈ {HP, SO, GH} del inventario priorizado.
- **Para qué sirve:** primera fase de producción (semanas 1-2 típicamente).
- **Dato que buscamos:** `[lista de páginas {HP, SO, GH} ordenadas por phase]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo + 8.10 Publish Phase.
- **Cómo se obtiene:** Filtramos el inventario priorizado por page_type ∈ {HP, SO, GH}.
  - **Fuente:** `Info heredada`.

#### 10.5 Fase 2 — Main City Conversion Layer
- **Qué es:** lista de páginas page_type ∈ {LBS, AC} ordenadas por Priority Tier.
- **Para qué sirve:** segunda fase (conversión local).
- **Dato que buscamos:** `[lista de páginas {LBS, AC} ordenadas por tier]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo + 8.10 Publish Phase.
- **Cómo se obtiene:** Filtramos el inventario priorizado por page_type ∈ {LBS, AC}.
  - **Fuente:** `Info heredada`.

#### 10.6 Fase 3 — Main City Semantic Expansion
- **Qué es:** lista de páginas page_type = GeoArticle ordenadas por Priority Tier.
- **Para qué sirve:** tercera fase (expansión semántica).
- **Dato que buscamos:** `[lista de GAs ordenados por tier]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo + 8.10 Publish Phase.
- **Cómo se obtiene:** Filtramos el inventario priorizado por page_type = GeoArticle.
  - **Fuente:** `Info heredada`.

#### 10.7 Fase 4 — Optimization Loop
- **Qué es:** cadencia de revisión y optimización post-launch.
- **Para qué sirve:** cuarta fase (mejora continua).
- **Dato que buscamos:** `[cadencia revisión según calendario]`.
- **Hereda info de pasos anteriores:** 10.9 Calendario semanal.
- **Cómo se obtiene:** Definimos cadencia de revisión según el calendario de publicación.
  - **Fuente:** `Info heredada`.

#### 10.8 Fase 5 — Optional Expansion Module
- **Qué es:** activación del módulo de expansión (solo si 1.11 ≠ vacío).
- **Para qué sirve:** quinta fase (sub-clusters de expansión).
- **Dato que buscamos:** `[módulo activo solo si AEAs declaradas]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Activa solo si hay Approved Expansion Areas declaradas.
  - **Fuente:** `Info heredada`.

#### 10.9 Calendario semanal de publicación
- **Qué es:** distribución de páginas por semana respetando Capacity.
- **Para qué sirve:** plan operativo de Bloque 5 (qué se redacta cada semana). **El deploy del Paso 18.6 sigue este calendario** — múltiples deploys, uno por fase completada.
- **Dato que buscamos:** `[calendario semana × páginas según capacity + fases]`.
- **Hereda info de pasos anteriores:** 10.1 Publishing Capacity + 10.4-10.8 Fases.
- **Cómo se obtiene:** Distribuimos las páginas de las fases por semana respetando la Capacity doctrinal.
  - **Fuente:** `Info heredada`.

#### 10.10 Matriz de dependencias de publicación
- **Qué es:** cruce Parent Page × Publish Phase por URL.
- **Para qué sirve:** alimenta 11.14 check_dependencies(), evita publicar hijos sin parent.
- **Dato que buscamos:** `[matriz dependencias parent×phase]`.
- **Hereda info de pasos anteriores:** 3.7 Parent Page + 8.10 Publish Phase.
- **Cómo se obtiene:** Cruzamos Parent Page con Publish Phase por URL.
  - **Fuente:** `Info heredada`.

#### 10.12 Checklist pre-publicación
- **Qué es:** checks finales antes de pasar a Bloque 5.
- **Para qué sirve:** integridad pre-Bloque 5.
- **Cómo se asigna:** Pass → todos los checks pasan / Fail → ≥1 check no pasa.
- **Dato que buscamos:** `[resultado consolidado checklist]`.
- **Hereda info de pasos anteriores:** 10.4-10.10.
- **Cómo se obtiene:** Validamos cada check del checklist contra los outputs heredados.
  - **Fuente:** `Info heredada`.

#### 10.13 Validación Bloques 1-2 cerrados
- **Qué es:** validación binaria — todos los outputs upstream en `confirmed` o `validated`.
- **Para qué sirve:** integridad sistema (no avanzar con `⚠ inferido` o `⚠ placeholder`).
- **Cómo se asigna:** Pass → todos cerrados / Fail → ≥1 con status `⚠`.
- **Dato que buscamos:** `[resultado consolidado de status upstream]`.
- **Hereda info de pasos anteriores:** Bloques 1+2 + Pasos 8+9.
- **Cómo se obtiene:** Inspeccionamos el status de cada output upstream y comprobamos que todos están en `confirmed` o `validated`.
  - **Fuente:** `Info heredada`.

#### 10.14 GBP Creation & Website Alignment (sección separada)
- **Qué es:** referencia adelantada al Paso 14 (GBP creado post-Paso 18).
- **Para qué sirve:** marca conceptualmente el web-first flow (GBP después de web LIVE).
- **Dato que buscamos:** `[sección referenciada al Paso 14]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle Status + Paso-14 (forward).
- **Cómo se obtiene:** Cross-ref adelantado al Paso 14 que se ejecuta en Bloque 7.
  - **Fuente:** `Info heredada`.

---

## Bloque 4 — Automatización (35 outputs)

### Paso 11 — Pseudocódigo del Sistema (16 outputs)

> Cada output es una función pseudo-código que codifica la lógica del sistema. Todos `Info heredada` (heredan de Bloques 1-3 y aplican transformación programática).

#### 11.1 Función `load_inputs()`
- **Qué es:** función pseudo-código que carga §8 de cada a-doc + preflight en estructura dict.
- **Para qué sirve:** input para todas las demás funciones del Paso 11.
- **Dato que buscamos:** `[firma + cuerpo de la función load_inputs()]`.
- **Hereda info de pasos anteriores:** Paso-01 + Paso-02 + Paso-03.
- **Cómo se obtiene:** Codificamos la función que lee §8 de cada a-doc + preflight y devuelve un dict estructurado.
  - **Fuente:** `Info heredada`.

#### 11.2 Función `normalize_slugs()`
- **Qué es:** función pseudo-código — slugify estándar aplicado a 4 grupos de slugs.
- **Para qué sirve:** output normalizado para generate_*().
- **Dato que buscamos:** `[firma + cuerpo función normalize_slugs()]`.
- **Hereda info de pasos anteriores:** 2.2 + 2.3 + 2.4 + 3.3 (los 4 grupos de slugs).
- **Cómo se obtiene:** Codificamos slugify + lo aplicamos a los 4 grupos.
  - **Fuente:** `Info heredada`.

#### 11.3 Función `validate_categories()`
- **Qué es:** función pseudo-código — comparar Additional vs core, aplicar criterio cobertura.
- **Para qué sirve:** alimenta validación 2.11.
- **Dato que buscamos:** `[firma + cuerpo función validate_categories()]`.
- **Hereda info de pasos anteriores:** 2.7 Variable G + 2.12 Validación dependencias.
- **Cómo se obtiene:** Codificamos la comparación Additional vs core con criterio cobertura.
  - **Fuente:** `Info heredada`.

#### 11.4 Función `generate_homepage()`
- **Qué es:** función pseudo-código — aplicar spec 5.1 a Homepage.
- **Para qué sirve:** generación automatizada de Homepage.
- **Dato que buscamos:** `[firma + cuerpo función generate_homepage()]`.
- **Hereda info de pasos anteriores:** 4.3 Homepage URL + 5.1 Spec Homepage.
- **Cómo se obtiene:** Codificamos generate_homepage() aplicando el spec doctrinal.
  - **Fuente:** `Info heredada`.

#### 11.5 Función `generate_service_overview()`
- **Qué es:** función pseudo-código — aplicar spec 5.2 × S core services.
- **Para qué sirve:** generación de S SO pages.
- **Dato que buscamos:** `[firma + cuerpo función generate_service_overview()]`.
- **Hereda info de pasos anteriores:** 4.4 SO URL pattern + 5.4 Spec AC.
- **Cómo se obtiene:** Codificamos generate_service_overview() iterando × S.
  - **Fuente:** `Info heredada`.

#### 11.6 Función `generate_geohub()`
- **Qué es:** función pseudo-código — aplicar spec 5.5 al GeoHub.
- **Para qué sirve:** generación de GeoHub Main City.
- **Dato que buscamos:** `[firma + cuerpo función generate_geohub()]`.
- **Hereda info de pasos anteriores:** 4.5 GeoHub URL Style + 5.7 Validación Schema + 3.2.
- **Cómo se obtiene:** Codificamos generate_geohub() aplicando el spec.
  - **Fuente:** `Info heredada`.

#### 11.7 Función `generate_lbs()`
- **Qué es:** función pseudo-código — aplicar spec 5.3 × S × Main City.
- **Para qué sirve:** generación de S LBS pages.
- **Dato que buscamos:** `[firma + cuerpo función generate_lbs()]`.
- **Hereda info de pasos anteriores:** 4.6 LBS URL pattern + 5.5 Spec GeoHub.
- **Cómo se obtiene:** Codificamos generate_lbs() iterando × S × Main City.
  - **Fuente:** `Info heredada`.

#### 11.8 Función `generate_additional_category()`
- **Qué es:** función pseudo-código — aplicar spec 5.4 a A categorías efectivas.
- **Para qué sirve:** generación de A AC pages.
- **Dato que buscamos:** `[firma + cuerpo función generate_additional_category()]`.
- **Hereda info de pasos anteriores:** 4.7 AC URL pattern + 5.6 Spec GA + 3.3 AC Slugs.
- **Cómo se obtiene:** Codificamos generate_additional_category() iterando × A.
  - **Fuente:** `Info heredada`.

#### 11.9 Función `generate_geoarticles()`
- **Qué es:** función pseudo-código — aplicar spec 5.6 a G×S combinaciones.
- **Para qué sirve:** generación de G×S GAs.
- **Dato que buscamos:** `[firma + cuerpo función generate_geoarticles()]`.
- **Hereda info de pasos anteriores:** 4.8 GA URL pattern + 5.8 Word count + 3.4 GA Topics.
- **Cómo se obtiene:** Codificamos generate_geoarticles() iterando × G×S.
  - **Fuente:** `Info heredada`.

#### 11.10 Función `inject_local_coverage()`
- **Qué es:** función pseudo-código — itera páginas, mapea page_type → LCAs según matriz 6.12.
- **Para qué sirve:** inyección automatizada de LCAs sin generar URLs.
- **Dato que buscamos:** `[firma + cuerpo función inject_local_coverage()]`.
- **Hereda info de pasos anteriores:** 6.2 Principio LCAs + 6.12 Tabla LCAs + 6.17 areaServed.
- **Cómo se obtiene:** Codificamos inject_local_coverage() iterando páginas + mapping según matriz 6.12.
  - **Fuente:** `Info heredada`.

#### 11.11 Función `generate_expansion()` (opcional)
- **Qué es:** función pseudo-código — replica generate_*() por Approved Expansion Area.
- **Para qué sirve:** generación de sub-clusters cuando 1.11 ≠ vacío.
- **Dato que buscamos:** `[firma + cuerpo función generate_expansion()]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas + 4.10 AEA URLs.
- **Cómo se obtiene:** Codificamos generate_expansion() replicando lógica generate_*() por AEA. Vacío si E=0.
  - **Fuente:** `Info heredada`.

#### 11.12 Función `assign_internal_links()`
- **Qué es:** función pseudo-código — lookup matriz 7.11 + selección anchor por catálogo 7.9.
- **Para qué sirve:** asignación automatizada de enlaces internos.
- **Dato que buscamos:** `[firma + cuerpo función assign_internal_links()]`.
- **Hereda info de pasos anteriores:** 7.9 Anchor catálogo + 7.11 Matriz enlaces.
- **Cómo se obtiene:** Codificamos assign_internal_links() haciendo lookup matriz + selección anchor.
  - **Fuente:** `Info heredada`.

#### 11.13 Función `score_priority()`
- **Qué es:** función pseudo-código — 6 funciones de medición + suma + mapeo tier/phase (thresholds 26/21/16/10).
- **Para qué sirve:** scoring automatizado de Bloque 3.
- **Dato que buscamos:** `[firma + cuerpo función score_priority()]`.
- **Hereda info de pasos anteriores:** 8.1-8.10 (fórmula + factores + tiers + phase).
- **Cómo se obtiene:** Codificamos las 6 funciones de medición + suma + mapeo tier/phase.
  - **Fuente:** `Info heredada`.

#### 11.14 Función `check_dependencies()`
- **Qué es:** función pseudo-código — lookup parents + comparar phases + bloquear conflictos.
- **Para qué sirve:** integridad de matriz de dependencias.
- **Dato que buscamos:** `[firma + cuerpo función check_dependencies()]`.
- **Hereda info de pasos anteriores:** 8.11 Validación Landing antes que GA + 10.10 Matriz dependencias.
- **Cómo se obtiene:** Codificamos check_dependencies() haciendo lookup parents + comparando phases.
  - **Fuente:** `Info heredada`.

#### 11.15 Función `run_qa()`
- **Qué es:** función pseudo-código — 5 funciones QA + consolidación gate + opcional GBP checklist.
- **Para qué sirve:** ejecución automatizada del Final Publish Gate.
- **Dato que buscamos:** `[firma + cuerpo función run_qa()]`.
- **Hereda info de pasos anteriores:** 9.2-9.13 (las 12 reglas).
- **Cómo se obtiene:** Codificamos las 5 funciones QA + consolidación del gate.
  - **Fuente:** `Info heredada`.

#### 11.16 Función `output_matrices()`
- **Qué es:** función pseudo-código — serializa páginas scored + link_matrix en 3 estructuras tabulares.
- **Para qué sirve:** output final del pseudocódigo.
- **Dato que buscamos:** `[firma + cuerpo función output_matrices()]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 3.8 Schema + 7.11 Matriz enlaces.
- **Cómo se obtiene:** Codificamos output_matrices() serializando las 3 estructuras tabulares.
  - **Fuente:** `Info heredada`.

### Paso 12 — Master Prompt (11 outputs)

#### 12.1 Master Prompt principal
- **Qué es:** prompt completo (~580 líneas) que un LLM puede ejecutar end-to-end para producir los outputs de planning de Bloques 1-3.
- **Para qué sirve:** alternativa "all-in-one" al flujo manual. **No se ejecuta en el flujo actual** (manual paso a paso).
- **Dato que buscamos:** `[prompt completo ~580 líneas con 7 secciones + placeholders]`.
- **Hereda info de pasos anteriores:** Paso-11 + Bloques 1-3.
- **Cómo se obtiene:** Componemos las 7 secciones literales del original con placeholders para los inputs.
  - **Fuente:** `Info heredada`.

#### 12.2 Auxiliary Prompt URL Matrix
- **Qué es:** prompt aislado para generar la URL Matrix.
- **Para qué sirve:** **se aplica en Bloque 5 Redacción** cuando la matriz no se generó manualmente.
- **Dato que buscamos:** `[prompt aislado URL Matrix con ROLE simplificado]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 4.3-4.8 URL patterns.
- **Cómo se obtiene:** Aislamos la sección URL Matrix del Master Prompt + simplificamos el ROLE.
  - **Fuente:** `Info heredada`.

#### 12.3 Auxiliary Prompt Content Architecture
- **Qué es:** prompt aislado para generar Content Architecture por page type.
- **Para qué sirve:** **se aplica en Bloque 5 Redacción** (15.3-15.7).
- **Dato que buscamos:** `[prompt aislado Content Architecture]`.
- **Hereda info de pasos anteriores:** 5.3-5.8 Specs + 6.6-6.11 Content Architecture.
- **Cómo se obtiene:** Aislamos la sección Content Architecture del Master Prompt.
  - **Fuente:** `Info heredada`.

#### 12.4 Auxiliary Prompt GeoArticles
- **Qué es:** prompt aislado para generar GeoArticles.
- **Para qué sirve:** **se aplica en Bloque 5 Redacción** (15.8).
- **Dato que buscamos:** `[prompt aislado GeoArticles + integración keyword research]`.
- **Hereda info de pasos anteriores:** 3.4 GA Topics + 8.11 Validación landing antes que GA.
- **Cómo se obtiene:** Aislamos la sección GA del Master Prompt + integramos keyword research.
  - **Fuente:** `Info heredada`.

#### 12.5 Auxiliary Prompt QA
- **Qué es:** prompt aislado para ejecutar QA Checklist.
- **Para qué sirve:** alternativa al QA manual del Paso 9.
- **Dato que buscamos:** `[prompt aislado QA]`.
- **Hereda info de pasos anteriores:** 9.2-9.13 (las 12 reglas QA).
- **Cómo se obtiene:** Aislamos la sección QA del Master Prompt.
  - **Fuente:** `Info heredada`.

#### 12.7 Web-First GBP Rule
- **Qué es:** regla embebida en Master Prompt que activa flujo web-first cuando GBP=Not Created.
- **Para qué sirve:** alimenta 14.1, 9.15.
- **Dato que buscamos:** `[regla web-first activada condicionalmente según GBP status]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle Status + 9.15 GBP Not Created Checklist.
- **Cómo se obtiene:** Embebemos la regla en el Master Prompt + la activamos condicionalmente según GBP status.
  - **Fuente:** `Info heredada`.

#### 12.8 14 Reglas operativas (§22-§34 original)
- **Qué es:** reglas operativas literales del original consolidadas en sección del prompt.
- **Para qué sirve:** referencia operativa del Master Prompt.
- **Dato que buscamos:** `[14 reglas literales del original]`.
- **Hereda info de pasos anteriores:** Bloques 1-3.
- **Cómo se obtiene:** Compilamos las reglas desde los pasos origen y las consolidamos en sección del prompt.
  - **Fuente:** `Info heredada`.

#### 12.9 Inputs Validation embedded
- **Qué es:** checks de validación de inputs embebidos en Master Prompt.
- **Para qué sirve:** evita que el LLM genere outputs con inputs corruptos.
- **Dato que buscamos:** `[checks validación embebidos en sección 8 del prompt]`.
- **Hereda info de pasos anteriores:** Paso-01 1.X + Paso-02 2.X.
- **Cómo se obtiene:** Compilamos los checks desde §3 Heredados + integramos en sección 8 del prompt.
  - **Fuente:** `Info heredada`.

#### 12.10 Executive Summary template
- **Qué es:** plantilla con placeholders rellenados por el prompt al final.
- **Para qué sirve:** output final del Master Prompt (resumen ejecutivo del cluster).
- **Dato que buscamos:** `[plantilla executive summary con placeholders]`.
- **Hereda info de pasos anteriores:** Paso-01 + Paso-02 + Paso-08.
- **Cómo se obtiene:** Compilamos la plantilla con placeholders que el prompt rellena al final.
  - **Fuente:** `Info heredada`.

#### 12.11 Validación prompt produce los 20 outputs del Master Prompt
- **Qué es:** validación binaria — el output del Master genera los 20 outputs declarados en TASK.
- **Para qué sirve:** integridad del prompt.
- **Cómo se asigna:** Pass → 20 outputs producidos / Fail → ≥1 output faltante.
- **Dato que buscamos:** `[resultado check 20 outputs producidos]`.
- **Hereda info de pasos anteriores:** 12.1-12.5.
- **Cómo se obtiene:** Inspeccionamos la salida del Master Prompt y comprobamos que se produjeron los 20 outputs declarados.
  - **Fuente:** `Info heredada`.

#### 12.12 Validación prompt cumple web-first
- **Qué es:** validación binaria — Master Prompt aplica los 7 sub-checks de 9.15 cuando GBP=Not Created.
- **Para qué sirve:** integridad web-first.
- **Dato que buscamos:** `[resultado check 7 sub-checks web-first]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle + 9.15 GBP Not Created Checklist.
- **Cómo se obtiene:** Comprobamos que la salida del prompt cumple los 7 sub-checks de 9.15.
  - **Fuente:** `Info heredada`.

### Paso 13 — Sistema Final Operativo (8 outputs)

#### 13.1 Resumen ejecutivo (principio §20 + fórmula §21 + aplicación §22)
- **Qué es:** principio doctrinal + fórmula + aplicación al cluster.
- **Para qué sirve:** opening del SOP.
- **Dato que buscamos:** `[principio + fórmula + aplicación al cluster del cliente]`.
- **Hereda info de pasos anteriores:** 1.X + 2.X.
- **Cómo se obtiene:** Compilamos principio doctrinal + fórmula + aplicación al cluster.
  - **Fuente:** `Info heredada`.

#### 13.2 12 Sistemas literales (§7-§18 original)
- **Qué es:** cross-ref literal a cada uno de los 12 pasos del sistema.
- **Para qué sirve:** índice del SOP.
- **Dato que buscamos:** `[lista de los 12 pasos del original con cross-refs]`.
- **Hereda info de pasos anteriores:** Pasos 1-12.
- **Cómo se obtiene:** Cross-ref literal a cada uno de los 12 pasos del sistema.
  - **Fuente:** `Info heredada`.

#### 13.3 7 Módulos A-G literales (§29-§35 original)
- **Qué es:** módulos Entidad / Servicios / Categorías / Cobertura / Expansión / Schema / Tracking.
- **Para qué sirve:** estructura modular del SOP.
- **Dato que buscamos:** `[7 módulos compilados desde pasos origen]`.
- **Hereda info de pasos anteriores:** 1.X + 6.X + 8.X + 13.8.
- **Cómo se obtiene:** Compilamos los 7 módulos (A-G) desde pasos origen.
  - **Fuente:** `Info heredada`.

#### 13.5 Workflow operativo de 21 pasos (§25 original)
- **Qué es:** workflow numerado de 21 pasos del original.
- **Para qué sirve:** **Referencia documental al original**. Con la adición del Bloque 5, el workflow real es distinto.
- **Dato que buscamos:** `[workflow 21 pasos literal del original]`.
- **Hereda info de pasos anteriores:** Bloques 1-4.
- **Cómo se obtiene:** Portamos literalmente los 21 pasos numerados del original.
  - **Fuente:** `Info heredada`.

#### 13.7 Tabla inventario URL con scores literales (§54.2 original)
- **Qué es:** scores literales 100/95/92/.../70/68/65 del original.
- **Para qué sirve:** referencia operativa al inventario priorizado.
- **Dato que buscamos:** `[tabla literal scores del original]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 8.14 Inventario priorizado.
- **Cómo se obtiene:** Portamos literalmente los scores 100/95/92/.../70/68/65 del original.
  - **Fuente:** `Info heredada`.

#### 13.8 Calendario de producción de 7 fases (§54.4 original)
- **Qué es:** calendario 7 fases × semanas 1-8 del original.
- **Para qué sirve:** **Referencia documental al original**. El operativo del flujo actual es 10.9.
- **Dato que buscamos:** `[calendario 7 fases × semanas 1-8 literal]`.
- **Hereda info de pasos anteriores:** 10.4-10.9 Fases + Calendario.
- **Cómo se obtiene:** Portamos literalmente el calendario 7 fases × semanas 1-8 del original.
  - **Fuente:** `Info heredada`.

#### 13.9 Output final del Paso 13 (§28 original) — 13 elementos
- **Qué es:** compilación de los 13 elementos del output final del Paso 13.
- **Para qué sirve:** entregable consolidado del SOP.
- **Dato que buscamos:** `[13 elementos compilados desde 13.1-13.8]`.
- **Hereda info de pasos anteriores:** 13.1-13.8.
- **Cómo se obtiene:** Compilamos los 13 elementos del output final del Paso 13.
  - **Fuente:** `Info heredada`.

#### 13.10 Relación con Paso 14 (§27 original)
- **Qué es:** referencia literal "Paso 13 entrega → Paso 14 ejecuta".
- **Para qué sirve:** marca conceptualmente la transición Bloque 4 → Bloque 7.
- **Dato que buscamos:** `[texto literal de la relación 13→14]`.
- **Hereda info de pasos anteriores:** 9.15 GBP Not Created Checklist + 10.10 Matriz dependencias.
- **Cómo se obtiene:** Portamos literalmente el texto de la relación 13→14 del original.
  - **Fuente:** `Info heredada`.

---

## Bloque 5 — Salida a Mercado (25 outputs)

### Paso 15 — Redacción de Contenido (7 outputs)

#### 15.3 Homepage redactada
- **Qué es:** copy completo de la Homepage (Hero, Quick Answer, Service Menu, Local Coverage Preview, Trust, FAQ, CTA, Schema).
- **Para qué sirve:** alimenta 17.5 Page construida.
- **Dato que buscamos:** `[copy Homepage según spec + arquitectura + Auxiliary Prompt]`.
- **Hereda info de pasos anteriores:** 5.3 Spec LBS + 6.6 Homepage Content Architecture + 12.3 Auxiliary Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture prompt a la Homepage spec para generar el copy.
  - **Fuente:** `Info heredada`.

#### 15.4 Service Overview Pages redactadas
- **Qué es:** copy de las S Service Overview pages.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy SO × S core services]`.
- **Hereda info de pasos anteriores:** 5.4 Spec AC + 6.7 SO Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture × S core services.
  - **Fuente:** `Info heredada`.

#### 15.5 Location-Based Service Pages redactadas
- **Qué es:** copy de las S LBS pages × Main City.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy LBS × S × Main City con LCAs incluidas]`.
- **Hereda info de pasos anteriores:** 5.5 Spec GeoHub + 6.8 LBS Content Architecture + 1.10 LCAs.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture × S × Main City + integramos LCAs.
  - **Fuente:** `Info heredada`.

#### 15.6 Additional Category Page redactada
- **Qué es:** copy de las A AC pages.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy AC × A categorías efectivas]`.
- **Hereda info de pasos anteriores:** 5.6 Spec GA + 6.9 AC Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture × A categorías.
  - **Fuente:** `Info heredada`.

#### 15.7 GeoHub redactada
- **Qué es:** copy del GeoHub Main City.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy GeoHub Main City con services + ACs + LCAs section + GA ideas]`.
- **Hereda info de pasos anteriores:** 5.7 Validación Schema + 6.10 GeoHub Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture con la spec GeoHub.
  - **Fuente:** `Info heredada`.

#### 15.8 GeoArticles redactados
- **Qué es:** copy de los G×S GeoArticles.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy GAs × G×S combinaciones con LCAs como ejemplos semánticos]`.
- **Hereda info de pasos anteriores:** 5.8 Word count + 6.11 GA Content Architecture + 3.4 GA Topics.
- **Cómo se obtiene:** Aplicamos el Auxiliary GeoArticles prompt × G×S combinaciones.
  - **Fuente:** `Info heredada`.

#### 15.9 Página de contacto redactada
- **Qué es:** copy de la página de contacto (NAP + form + schema).
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy Contact con NAP + form + schema]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP.
- **Cómo se obtiene:** Aplicamos plantilla básica de contacto + NAP + form + schema.
  - **Fuente:** `Info heredada`.

### Paso 16 — Diseño y Layout (4 outputs)

#### 16.2 Layout y Estructura por Sección
- **Qué es:** mapa de secciones por page type derivado de specs heredados.
- **Para qué sirve:** alimenta 16.6 Layout-Map, 17.4 Layout wrapper.
- **Dato que buscamos:** `[mapa secciones × page types derivado de specs]`.
- **Hereda info de pasos anteriores:** 5.3-5.8 Specs + 6.6-6.11 Content Architecture.
- **Cómo se obtiene:** Mapeamos las secciones por page type partiendo de los specs y arquitecturas heredadas.
  - **Fuente:** `Info heredada`.

#### 16.4 Design Tokens Tailwind
- **Qué es:** `tailwind.config.js` con tokens de 16.1.
- **Para qué sirve:** alimenta 17.2 Proyecto Astro+Tailwind, 17.3 Componentes UI.
- **Dato que buscamos:** `[tailwind.config.js con tokens visuales]`.
- **Hereda info de pasos anteriores:** 16.1 Identidad Visual.
- **Cómo se obtiene:** Convertimos los tokens visuales de 16.1 a `tailwind.config.js`.
  - **Fuente:** `Info heredada`.

#### 16.5 Reglas Críticas CSS
- **Qué es:** reglas por componente (Hero / Buttons / Cards / Grids / Forms).
- **Para qué sirve:** alimenta 17.3 Componentes UI parametrizados.
- **Dato que buscamos:** `[reglas CSS por componente: Hero, Buttons, Cards, Grids, Forms]`.
- **Hereda info de pasos anteriores:** 16.4 Design Tokens Tailwind.
- **Cómo se obtiene:** Definimos reglas por componente (Hero/Buttons/Cards/Grids/Forms) usando los tokens Tailwind.
  - **Fuente:** `Info heredada`.

#### 16.6 Layout-Map Definitivo
- **Qué es:** mapeo secciones → Components con props alineados con copy.
- **Para qué sirve:** **artefacto puente Bloque 5 → Bloque 5 Constructor**. Alimenta 17.4, 17.5.
- **Dato que buscamos:** `[mapa secciones → Components + props alineados con copy]`.
- **Hereda info de pasos anteriores:** 16.2 Layout y Estructura + 15.3-15.9 (toda la redacción).
- **Cómo se obtiene:** Mapeamos las secciones a Components Astro con props alineados con el copy de cada page.
  - **Fuente:** `Info heredada`.

### Paso 17 — Constructor del Sitio (5 outputs)

#### 17.3 7 componentes UI parametrizados
- **Qué es:** 7 componentes Astro (Hero, Section, Card, Button, Form, FAQ, Footer) con props alineados a 16.5.
- **Para qué sirve:** building blocks de las páginas.
- **Dato que buscamos:** `[7 componentes Astro con props parametrizados]`.
- **Hereda info de pasos anteriores:** 16.5 Reglas Críticas CSS.
- **Cómo se obtiene:** Construimos los 7 componentes Astro con props alineados a las reglas CSS del Paso 16.
  - **Fuente:** `Info heredada`.

#### 17.4 Header + Footer + Layout wrapper
- **Qué es:** layouts globales aplicando Layout-Map + matriz enlaces.
- **Para qué sirve:** estructura común a todas las páginas.
- **Dato que buscamos:** `[Header + Footer + BaseLayout aplicando Layout-Map + enlaces]`.
- **Hereda info de pasos anteriores:** 7.11 Matriz enlaces + 16.6 Layout-Map.
- **Cómo se obtiene:** Construimos los layouts globales aplicando el Layout-Map y la matriz de enlaces.
  - **Fuente:** `Info heredada`.

#### 17.5 N páginas construidas
- **Qué es:** páginas Astro construidas iterando URL Matrix + copy + Components + Layout-Map.
- **Para qué sirve:** **output central de Bloque 5 Constructor**. Alimenta 17.6, 17.8, 18.X.
- **Dato que buscamos:** `[N páginas Astro funcionales según URL Matrix]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 15.3-15.9 (toda la redacción) + 16.6 Layout-Map.
- **Cómo se obtiene:** Iteramos la URL Matrix y componemos cada página con BaseLayout + Components + copy.
  - **Fuente:** `Info heredada`.

#### 17.6 Schemas implementados y validados
- **Qué es:** JSON-LD embebido en cada page según mapping doctrinal.
- **Para qué sirve:** rich snippets + entidad para Google.
- **Dato que buscamos:** `[JSON-LD embebido por page con areaServed coherente]`.
- **Hereda info de pasos anteriores:** 5.9 Validación CTA + 6.17 areaServed coherente + 9.10 Schema QA.
- **Cómo se obtiene:** Embebemos JSON-LD en cada page según el mapping doctrinal y validamos con tools (Schema.org validator + Rich Results Test).
  - **Fuente:** `Info heredada`.

#### 17.8 Build local pasando
- **Qué es:** build Astro local sin errores ni warnings críticos.
- **Para qué sirve:** pre-requisito de Paso 18 (deploy).
- **Cómo se asigna:** Pass → `pnpm build` exit 0 + 0 warnings / Fail → exit ≠ 0 o warnings críticos.
- **Dato que buscamos:** `[output de pnpm build]`.
- **Hereda info de pasos anteriores:** 17.2-17.7.
- **Cómo se obtiene:** Ejecutamos `pnpm install && pnpm build` y revisamos el output.
  - **Fuente:** `Info heredada`.

### Paso 18 — QA y Deploy (6 outputs)

#### 18.1 Auditoría Técnica (16 criterios)
- **Qué es:** 16 checks técnicos ejecutados con Lighthouse + GRT + manual responsive.
- **Para qué sirve:** validación técnica pre-deploy.
- **Cómo se asigna:** Pass → 16 checks Pass / Fail → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 16 checks técnicos: Lighthouse + GRT + responsive]`.
- **Hereda info de pasos anteriores:** 4.1 Canonical Domain + 5.9 Validación CTA + 17.5 Páginas + 17.6 Schemas.
- **Cómo se obtiene:** Ejecutamos los 16 checks con tools (Lighthouse + Google Rich Results + manual responsive en 3 breakpoints).
  - **Fuente:** `Info heredada`.

#### 18.2 Auditoría de Contenido (8 criterios)
- **Qué es:** 8 checks de contenido (metadata + word count + schema + web-first verification).
- **Para qué sirve:** validación de copy pre-deploy.
- **Cómo se asigna:** Pass → 8 checks Pass / Fail → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 8 checks contenido]`.
- **Hereda info de pasos anteriores:** 15.3-15.12 + 9.8 Metadata QA + 9.9 Word count + 9.10 Schema + 9.15 GBP Not Created.
- **Cómo se obtiene:** Inspección manual + grep + cruce con redacción y NAP.
  - **Fuente:** `Info heredada`.

#### 18.3 Auditoría Visual (5 criterios)
- **Qué es:** 5 checks visuales (Layout-Map respetado + tokens aplicados + responsive + accesibilidad).
- **Para qué sirve:** validación visual pre-deploy.
- **Cómo se asigna:** Pass → 5 checks Pass / Fail → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 5 checks visuales]`.
- **Hereda info de pasos anteriores:** 16.4 Design Tokens + 16.6 Layout-Map.
- **Cómo se obtiene:** Inspección visual de las N páginas + cruce con Layout-Map y tokens.
  - **Fuente:** `Info heredada`.

#### 18.4 Auditoría de Rastros IA (6 criterios)
- **Qué es:** 6 checks contra rastros IA en 5 áreas + commits.
- **Para qué sirve:** validación anti-IA-obvious pre-deploy.
- **Dato que buscamos:** `[resultado 6 checks rastros IA]`.
- **Hereda info de pasos anteriores:** 17.7 Limpieza de rastros IA.
- **Cómo se obtiene:** grep + inspección manual de README + package.json + git log + src.
  - **Fuente:** `Info heredada`.

#### 18.6 Sitio en Producción
- **Qué es:** sitio LIVE en producción tras push a main + Cloudflare auto-deploy.
- **Para qué sirve:** **artefacto central de Bloque 5**. Alimenta Bloque 7 (GBP) y Paso 19 (tracking).
- **Dato que buscamos:** `[URL del sitio LIVE + verificación post-deploy: 200 OK + render correcto]`.
- **Hereda info de pasos anteriores:** 18.1-18.5 + Bloque 0 Input 6 (GitHub Token).
- **Cómo se obtiene:** Push a main usando el GitHub Token del preflight → Cloudflare auto-deploy → verificación post-deploy (200 OK + render). **Múltiples deploys** (uno por fase del Paso 10 según calendario 10.9) — no atómico.
  - **Fuente:** `Info heredada`.

#### 18.7 Sitemap en GSC
- **Qué es:** sitemap.xml submitted en Google Search Console + DNS TXT verificado.
- **Para qué sirve:** indexación + tracking.
- **Dato que buscamos:** `[sitemap submitted OK + DNS TXT verified]`.
- **Hereda info de pasos anteriores:** 18.6 Sitio en Producción + Bloque 0 Input 8 (Cloudflare Token para DNS).
- **Cómo se obtiene:** GSC dashboard → submit sitemap.xml → DNS TXT verification usando Cloudflare Token.
  - **Fuente:** `Info heredada`.

### Paso 19 — Acciones Futuro y Escalado (3 outputs)

#### 19.2 Estado de los 3 triggers por candidato
- **Qué es:** evaluación de los 3 triggers (volumen / posición / concurrencia) por candidato a expansión.
- **Para qué sirve:** input para 19.3 decisión escalado.
- **Cómo se asigna:**
  - **Trigger 1 — Volumen:** ≥X impresiones/mes para queries del área.
  - **Trigger 2 — Posición:** ranking top 10 conseguido en query relacionada.
  - **Trigger 3 — Concurrencia:** GBP responde + GeoArticles traen tráfico.
- **Dato que buscamos:** `[estado de los 3 triggers por área candidata: pass/fail por trigger]`.
- **Hereda info de pasos anteriores:** 19.1 Tablero de vigilancia.
- **Cómo se obtiene:** Cruzamos las métricas del Tablero con los 3 triggers doctrinales para cada área candidata.
  - **Fuente:** `Info heredada`.

#### 19.4 Log de decisiones de escalado
- **Qué es:** plantilla con 8 campos por decisión (área / fecha / score triggers / análisis SERP / decisión / fundamentación / fecha aprobación / responsable).
- **Para qué sirve:** trazabilidad de decisiones de escalado.
- **Dato que buscamos:** `[log de decisiones con 8 campos por entrada]`.
- **Hereda info de pasos anteriores:** 19.3 Análisis SERP + 13.7 Tabla URL.
- **Cómo se obtiene:** Rellenamos la plantilla con los 8 campos por cada decisión de escalado.
  - **Fuente:** `Info heredada`.

#### 19.5 URL Matrix actualizada con Approved Expansion
- **Qué es:** URL Matrix re-generada incluyendo Approved Expansion Areas.
- **Para qué sirve:** activa el sub-cluster de expansión en producción.
- **Dato que buscamos:** `[URL Matrix expandida con AEAs aprobadas]`.
- **Hereda info de pasos anteriores:** 19.4 Log de decisiones + 1.11 Approved Expansion Areas + 11.11 generate_expansion().
- **Cómo se obtiene:** Aplicamos generate_expansion() y actualizamos la URL Matrix con las AEAs aprobadas, documentando el cambio.
  - **Fuente:** `Info heredada`.

---

## Bloque 7 — GBP (7 outputs)

### Paso 14 — GBP Creation & Website Alignment (7 outputs Info heredada)

#### 14.3 NAP final aprobado
- **Qué es:** NAP consolidado final que va al GBP (cruzado contra web schema + página contacto).
- **Para qué sirve:** alimenta GBP listing.
- **Dato que buscamos:** `[NAP final aprobado coherente con web]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP.
- **Cómo se obtiene:** Aplicamos §9: cruzamos NAP web vs schema vs página contacto vs GBP. Cualquier discrepancia se resuelve antes de aprobar.
  - **Fuente:** `Info heredada`.

#### 14.5 Categoría principal confirmada
- **Qué es:** Primary Category Planned (1.5) convertida en Confirmed sin keyword stuffing.
- **Para qué sirve:** GBP listing primary category.
- **Dato que buscamos:** `[categoría primaria confirmada sin keyword stuffing]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category.
- **Cómo se obtiene:** Aplicamos §8 + §26: convertimos Planned en Confirmed validando que no hay keyword stuffing.
  - **Fuente:** `Info heredada`.

#### 14.7 Servicios del GBP mapeados a páginas web
- **Qué es:** mapping cada GBP service → SO o LBS de la web.
- **Para qué sirve:** asegura coherencia GBP ↔ web (cada servicio del GBP existe en la web).
- **Dato que buscamos:** `[mapping GBP service → URL web]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 5.4 Spec AC + 5.5 Spec GeoHub.
- **Cómo se obtiene:** Aplicamos §13: mapeamos cada servicio del GBP a su SO o LBS correspondiente en la web.
  - **Fuente:** `Info heredada`.

#### 14.8 URL de web seleccionada para el GBP
- **Qué es:** URL del campo "Website" del GBP (homepage o strongest local entity page).
- **Para qué sirve:** conecta GBP con web.
- **Dato que buscamos:** `[URL web seleccionada para el campo Website del GBP]`.
- **Hereda info de pasos anteriores:** 4.3 Homepage URL.
- **Cómo se obtiene:** Aplicamos §11: conectamos a homepage o a la strongest local entity page del cluster.
  - **Fuente:** `Info heredada`.

#### 14.16 Schema update plan
- **Qué es:** plan de añadir `sameAs` al schema de la web apuntando al GBP verificado.
- **Para qué sirve:** entity consolidation Google ↔ web.
- **Dato que buscamos:** `[plan de añadir sameAs al schema apuntando al GBP verificado]`.
- **Hereda info de pasos anteriores:** 3.8 Schema asignado.
- **Cómo se obtiene:** Aplicamos §20 + §28: añadimos `sameAs` al schema solo después de GBP verificado.
  - **Fuente:** `Info heredada`.

#### 14.17 Homepage update plan
- **Qué es:** plan de sincronizar Homepage con GBP (enlace, reseñas reales embebidas, mapa).
- **Para qué sirve:** Homepage post-GBP.
- **Dato que buscamos:** `[plan Homepage post-GBP: enlace + reseñas reales + mapa]`.
- **Hereda info de pasos anteriores:** 5.3 Spec LBS.
- **Cómo se obtiene:** Aplicamos §21: sincronizamos Homepage con GBP (enlace, reseñas reales embebidas si aplica, mapa).
  - **Fuente:** `Info heredada`.

#### 14.18 Contact page update plan
- **Qué es:** plan de sincronizar página de contacto con NAP final + enlace al GBP verificado.
- **Para qué sirve:** Contact page post-GBP.
- **Dato que buscamos:** `[plan Contact page post-GBP: NAP final + enlace GBP]`.
- **Hereda info de pasos anteriores:** 5.X Specs.
- **Cómo se obtiene:** Aplicamos §22: sincronizamos página de contacto con NAP final + enlace al GBP verificado.
  - **Fuente:** `Info heredada`.

---

## Distinción con otras fuentes

| Fuente | Quién aporta el dato | Necesita tool externa |
|---|---|---|
| `Info heredada` (esta) | Output upstream | No |
| `Doctrina GMB Crush` | Manual GMB Crush | No |
| `Cliente preflight` | Cliente (Bloque 0) | No |
| `Arquitectura técnica` | Operador (stack canónico) | No |
| `Tracking` | GSC/GA4/Rank Tracker | Sí (post-launch) |
| `Doctrina + Local Pack` | Google Maps + doctrina | Sí |
| `Doctrina + Keyword research` | Ahrefs/Semrush/KP + doctrina | Sí |
| `Doctrina + Cliente confirmación` | Cliente + doctrina | Consulta directa |
| `Doctrina + Google Search` | Google Search SERP + doctrina | Sí |

---

## Cuándo usar `Info heredada` vs Doctrina GMB Crush

**Usar `Info heredada`** cuando el output toma información de un output upstream y la transforma con una regla del paso:
- 2.5 Variable S = count(1.9) → es heredada porque el dato bruto está en 1.9
- 8.8 Total Score = sum(8.2-8.7) → es heredada porque los datos brutos están en los 6 factores

**Usar `Doctrina GMB Crush`** cuando el output ES la doctrina misma (sin transformar nada upstream):
- 1.12 GeoArticles per Service (G=3) — la doctrina dicta el número, no lo deriva de nada upstream
- 4.3 Homepage URL = `/` — la doctrina dicta la URL, no la deriva
- 8.1 Priority Score Formula = R+I+G+L+C+U — la doctrina dicta la fórmula

---

## Si el output upstream no está cerrado

Si el output upstream que `Info heredada` referencia no está en status `confirmed` o `validated`:

- **Status downstream:** se propaga el `⚠` del upstream
- **Bloqueo:** no se puede avanzar al siguiente paso/bloque hasta resolver upstream
- **Acción:** ejecutar la fuente real del upstream (Local Pack, Keyword research, etc.) para promoverlo a `confirmed`

> `Info heredada` NO requiere ejecución propia — pero depende de que sus inputs estén cerrados. Por eso los `⚠` se propagan.
