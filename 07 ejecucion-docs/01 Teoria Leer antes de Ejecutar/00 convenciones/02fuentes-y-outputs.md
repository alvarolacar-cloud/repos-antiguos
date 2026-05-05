# 02 Fuentes y Outputs del sistema GMB Crush

> Doc unificado del sistema:
> - **Parte 1:** catálogo cerrado de las **8 fuentes** válidas con qué son y cómo se ejecutan.
> - **Parte 2:** vista de los **242 outputs (5 marcados como "no aplica")** del sistema con su Fuente y método de obtención.
>
> Si vas a revisar un plan de ejecución, lee primero la tabla de Fuentes (cabecera) — si después ves `Local Pack` en una fuente, ya sabes que tienes que abrir Google Maps; si ves `Cliente preflight`, ya sabes que está rellenado en `Bloque 0`; etc.

**Tabla de contenidos:**

1. [Catálogo de Fuentes](#parte-1--catálogo-de-fuentes) — 8 fuentes con qué es + tool/método
2. [Outputs del sistema](#parte-2--outputs-del-sistema) — los 242 outputs (5 marcados como "no aplica") con su fuente

---
---

# Parte 1 — Catálogo de Fuentes

## Tabla resumen (las 8 fuentes válidas)



> Cualquier valor en la columna `Fuente` (de §5 / §8 de los a-docs) o `Fuentes para Decidir` (de los planes-ejecución) que NO esté en este catálogo es inválido.

| # | Fuente | Qué es | Tool / método |
|---|---|---|---|
| 1 | `Doctrina GMB Crush` | Valor que dicta literalmente la doctrina del manual GMB Crush | Lectura del a-doc del paso. La IA aplica la regla literal sin tools externas |
| 2 | `Cliente preflight` | Valor declarado por el cliente — preflight inicial (8 campos del Bloque 0) + inputs adicionales durante la ejecución sin filtro doctrinal (NAP completo, web de referencia para extracción de tokens visuales) | Lectura de `02 ejecución/Bloque 0 Preflight/00preflight.md` para inputs iniciales + consulta directa al cliente durante ejecución para inputs adicionales. Tokens/credenciales se leen de entorno seguro, no del markdown |
| 3 | `Cliente preflight + Doctrina GMB Crush` | Doctrina dicta el set válido o la regla + cliente declara cuál aplica según su realidad (preflight inicial o durante ejecución) | Doctrina del paso dicta categorías/valores válidos + cliente declara su valor concreto |
| 4 | `Arquitectura técnica` | Decisión técnica de stack / convención / configuración del cluster web | Operador aplica stack canónico (Astro 5 + Tailwind v3 + pnpm + Cloudflare) y convenciones técnicas (trailing slash, URL style GeoHub, deploy config) |
| 5 | `Tracking` | Datos reales de la web ya publicada o decisiones de configuración del stack de tracking | Google Search Console + GA4 + Rank Tracker + GMB Crush Geo Grid + UTM builder. Para datos post-launch: mínimo 30 días post-deploy |
| 6 | `Doctrina + Local Pack` | Doctrina dicta cómo interpretar el dato bruto del Local Pack. **Incluye los casos donde la doctrina no aporta en el output** (marcados explícitamente como "la doctrina no aporta en este output" — son Local Pack puro) | Google Maps clean session → buscar `[servicio] [ciudad]` → extraer top 5 (categoría, servicios, áreas, signals, reviews) + aplicar criterio doctrinal del paso cuando aporte |
| 7 | `Doctrina + Keyword research` | Doctrina dicta cómo filtrar e interpretar los datos de búsqueda. **Incluye los casos donde la doctrina no aporta** (marcados como "la doctrina no aporta en este output" — son Keyword research puro) | Ahrefs / Semrush / Google Keyword Planner → filtrar por intent + validar volumen + dificultad SERP top 10 + aplicar criterio doctrinal del paso cuando aporte |
| 8 | `Doctrina + Google Search` | Dato extraído de una búsqueda directa en Google (SERP completo: anuncios, orgánicos, AI Overview si aparece, related searches, PAA, snippets). **Incluye los casos donde la doctrina no aporta** (marcados como "la doctrina no aporta en este output" — son Google Search puro) | Google Search en sesión limpia → buscar `[query]` → leer SERP → extraer datos cualitativos (precios visibles, fuentes citadas, snippets informativos, queries relacionadas) + aplicar criterio doctrinal del paso cuando aporte |
| — | `Info heredada` (notación) | Valor que ya existe en un output upstream y se usa tal cual o transformado por una regla simple del paso (slugify, count, suma, mapping doctrinal). No es una fuente que genere valor nuevo, es trazabilidad | Lectura del output `← X.Y` referenciado en "Hereda info de pasos anteriores". No requiere tool externa |

> **Unificación de fuentes (refactor):** las fuentes standalone `Local Pack`, `Keyword research`, `Cliente confirmación` y `Google Search` se eliminaron del catálogo. Todos los outputs que las usaban se unificaron en sus respectivas combinaciones doctrinales (`Doctrina + X`).
>
> **Unificación adicional (`Doctrina + Cliente confirmación` eliminado):** la fuente `Doctrina + Cliente confirmación` también se eliminó. Sus 6 outputs se reasignaron así: los 4 con criterio doctrinal (14.1, 14.2, 14.4, 14.11) → `Cliente preflight + Doctrina GMB Crush`; los 2 sin criterio doctrinal (1.4, 16.1) → `Cliente preflight` (expandido a "todos los inputs del cliente"). Este movimiento simplifica el catálogo: todos los inputs del cliente viven bajo `Cliente preflight` (puro o combinado con doctrina), sin distinción entre "preflight inicial" y "confirmación durante ejecución".

> **Organización de archivos en `01 fuentes/` (carpeta raíz del repo):**
>
> ```
> 01 fuentes/
> ├── 00-fuentes-en-uso.md               ← Lista canónica de las 8 fuentes activas
> ├── 01 todos los outputs y fuentes/    ← Vista A: 01-todos-los-outputs.md (vista comprehensiva 242 outputs)
> └── 02 agrupado por fuentes/           ← Vista B: 8 archivos individuales por categoría
>     ├── 1-doctrina/                    — 01 Doctrina GMB Crush, 03 Arquitectura técnica, 04 Tracking
>     ├── 2-cliente-preflight/           — 02 Cliente preflight (puro + combinado con doctrina)
>     ├── 3-tools-externas/              — 05 D+Local Pack, 06 D+Keyword Research, 08 D+Google Search
>     └── 4-info-heredada/               — 09 Info heredada
> ```

> **Importante:** la fuente declara **de dónde sale el dato canónicamente**, no si la fuente se ha ejecutado. Si la fuente requiere tool externa y la IA no puede ejecutarla en el momento, la fuente NO cambia — lo que cambia es el **status** del output (`confirmed` / `⚠ inferido` / `validated` / `⚠ placeholder`). Detalle de status en `00convenciones.md` §2.

---

## Notación de herencia (no es fuente)

Además de las 8 fuentes formales, la columna `Fuentes para Decidir` admite la **notación de herencia** `← X.Y`:

```text
← X.Y    Hereda valor (y por tanto Fuente) del output X.Y
```

**Ejemplos:**
- `← 1.4` significa "hereda del output 1.4 (Full NAP)" — la Fuente real es la del output 1.4 (`Cliente preflight`)
- `← 1.4 + Doctrina GMB Crush` significa "hereda + doctrina añade criterio" — combinación
- `← 2.5 + 2.6 + 2.7` significa "hereda 3 outputs y los compone" — todos heredados
- `← Paso-03 §4 intake` significa "hereda del intake §4 del Paso 3" — herencia cross-paso

La herencia **no es una fuente nueva** — es trazabilidad. La Fuente real del output es la del origen heredado.

---

## Validación

Para cada output declarado en un a-doc, el valor de la columna `Fuente` o `Fuentes para Decidir` debe:

1. **Estar literalmente en el catálogo de 8 arriba**, o
2. **Ser una notación de herencia válida** (`← X.Y` apuntando a un output existente), o
3. **Combinar herencia + fuente formal** (`← X.Y + Fuente`)

Cualquier otra etiqueta (e.g. `Doctrina`, `Local Pack` puro cuando debería ser `Doctrina + Local Pack`, `Cliente confirma`, `Preflight N`, `Operador decisión`, `Diseño`, `IA sin respaldo`, `Datos de búsqueda`, `Competidores`, `Decisión de diseño`) es inválida — son etiquetas operativas o conceptuales que se mapean al catálogo formal y deben sustituirse.

---

## Por qué el catálogo es cerrado

Sin un catálogo cerrado, cada paso podría inventar etiquetas distintas (`SEO research`, `Análisis sectorial`, `Estimación AI`...) y la trazabilidad se rompe. Las 8 fuentes se organizan en **4 categorías**:

### Categoría 1 — Doctrina (3 fuentes)

Decisiones canónicas del sistema GMB Crush. No requieren tool externa. Vienen del manual doctrinal o son convenciones del operador alineadas con el sistema.

- **Doctrina del manual** → `Doctrina GMB Crush`
- **Decisión técnica del stack** → `Arquitectura técnica` (stack canónico Astro / Tailwind / Cloudflare)
- **Tracking (setup o post-launch)** → `Tracking`

### Categoría 2 — Cliente (2 fuentes)

Inputs declarados por el cliente — preflight inicial + inputs adicionales durante la ejecución.

- **Cliente sin filtro doctrinal** → `Cliente preflight` (preflight inicial + NAP completo, web ref durante ejecución)
- **Cliente con filtro doctrinal** → `Cliente preflight + Doctrina GMB Crush` (doctrina dicta set válido + cliente declara cuál aplica — ej. estado GBP, modelo negocio)

### Categoría 3 — Tools externas (3 fuentes)

Combinaciones doctrinales: la doctrina dicta cómo interpretar el dato bruto que viene de una tool/ejecución externa. **Incluyen los casos donde la doctrina no aporta** (marcados como "la doctrina no aporta en este output" — son la tool externa pura).

- **Análisis competitivo Maps** → `Doctrina + Local Pack`
- **Tools de keyword research** → `Doctrina + Keyword research`
- **Búsqueda directa Google (SERP qualitative)** → `Doctrina + Google Search`

### Categoría 4 — Info heredada (notación, no fuente)

Estructural: valor que ya existe upstream y se recicla. Notación `← X.Y`. No genera valor nuevo, solo trazabilidad.

- **Valor que ya existe upstream** → `← X.Y` (la fuente real es la del output heredado)

---

Eso es todo. Si necesitas una fuente que no está aquí, la respuesta correcta NO es inventarla — es revisar si encaja en alguna existente o si el output realmente debería tener otra fuente.

> **Por qué `Operador decisión` NO está en el catálogo:** versiones anteriores incluían `Operador decisión` como fuente genérica. Era ambigua: cualquier output podía etiquetarse así sin trazabilidad real. Se sustituyó por la fuente específica `Arquitectura técnica` (decisiones de stack/convenciones) y se reasignaron los outputs que decían "operador decide" a fuentes más precisas (Doctrina, Local Pack, Tracking, Cliente preflight). Si encuentras `Operador decisión` en algún a-doc, es residuo a corregir.

> **Por qué `Diseño` NO es una fuente:** decisiones visuales/UX no son fuentes formales. Los assets visuales reales (logo, colores, fotos) salen de `Cliente preflight`; las reglas estéticas las dicta la `Doctrina GMB Crush` (specs Paso 5, layouts Paso 16); los CTAs salen de `Doctrina + Local Pack` (qué CTAs usa el top 5).

> **Por qué `IA sin respaldo` NO es una fuente:** versiones anteriores del catálogo incluían `IA sin respaldo` como fuente. Era un error conceptual — "la IA infirió sin tool externa" describe un **status** (no se ejecutó la fuente canónica), no una fuente nueva. La fuente canónica sigue siendo `Local Pack` o `Keyword research` o lo que toque; lo que indica que la IA estimó es el Status `⚠ inferido`.

---

## Divergencias documentadas del operador

Se permiten combinaciones ad-hoc fuera del catálogo cuando el operador las autoriza explícitamente y se documentan en el commit. Casos actuales:

| Output | Fuente ad-hoc | Razón | Commit |
|---|---|---|---|
| `14.14 Estrategia de reseñas reales` | `Doctrina + Local Pack` (la doctrina no aporta) | El a-doc original GMB Crush §15 cubre reseñas con doctrina genérica como constraint negativo; el operador autorizó usar benchmarking del top 5 GBP competidores como input operativo principal (volumen, frecuencia, patrones, métodos). Tras unificación de fuentes, queda como `Doctrina + Local Pack` con nota "la doctrina no aporta en este output" — §15 sigue siendo constraint, no filtro | `11fb6ec` |
| `1.4 NAP físico` (Cerrajeros Madrid 24h ejemplo) | NAP completo enriquecido más allá del original | El original solo dice "Madrid"; el operador autorizó datos físicos completos (Calle Rafael Calvo 12, 28010) por ser más realistas | `2ba4013` |

---
---

# Parte 2 — Outputs del sistema

## Resumen agregado por bloque

| Bloque | Pasos | Outputs | Doctrina pura | Heredados | Mixtos |
|---|---|---:|---:|---:|---:|
| 0 Preflight | — | 8 inputs | — | — | — |
| 1 Fundamentos | 1, 2, 3 | 42 | 5 | 21 | 15 |
| 2 Arquitectura | 4, 5, 6, 7 | 57 | 23 | 27 | 7 |
| 3 Priorización | 8, 9, 10 | 43 | 10 | 25 | 8 |
| 4 Automatización | 11, 12, 13 | 41 | 7 | 33 | 1 |
| 5 Salida a Mercado | 15, 16, 17, 18, 19 | 39 | 8 | 23 | 8 |
| 6 GBP | 14 | 20 | 3 | 8 | 9 |
| **Total** | **14** | **242** | **56** | **137** | **49** |

> **Doctrina pura** = outputs cuya Fuente es solo `Doctrina GMB Crush`.
> **Heredados** = outputs que solo heredan vía `← X.Y` de otros pasos.
> **Mixtos** = outputs que combinan herencia + alguna fuente nueva (input cliente, decisión, análisis).

---

## Bloque 0 — Preflight (8 inputs del cliente)

> No son outputs propiamente dichos — son los inputs mínimos que el operador entrega al sistema. Todos `Cliente preflight`. Los 5 primeros derivan en outputs del Paso 1; los 3 últimos alimentan el deploy en Paso 18.

### Campos de negocio (5)

| Campo | Fuente | Cómo se obtiene |
|---|---|---|
| 1. Nombre del negocio | `Cliente preflight` | Cliente declara |
| 2. Qué hace (descripción corta) | `Cliente preflight` | Cliente declara |
| 3. Dirección con CP | `Cliente preflight` | Cliente declara |
| 4. Estado del GBP | `Cliente preflight` | Cliente declara (Not Created / Created / Verified / Pending / Suspended) |
| 5. Ciudades para análisis Local Pack | `Cliente preflight` | Cliente declara |

### Credenciales de deploy (3)

| Campo | Fuente | Cómo se obtiene |
|---|---|---|
| 6. Token de GitHub | `Cliente preflight` | Cliente provee Personal Access Token con permisos sobre el repo del cluster (push + actions) |
| 7. ID account de Cloudflare | `Cliente preflight` | Cliente provee Account ID de Cloudflare (visible en dashboard) |
| 8. Token de Cloudflare | `Cliente preflight` | Cliente provee API Token con permisos sobre Pages + DNS del dominio del cluster |

> **⚠ Aviso de seguridad:** los tokens y credenciales (campos 6-8) son sensibles. NO se guardan literalmente en el preflight markdown — se guardan en variables de entorno / secrets manager / `.env` fuera de git. El preflight solo declara que el cliente los HA PROVISTO y dónde están almacenados. Los outputs downstream que los consumen (Paso 18) los leen del entorno seguro.

---

## Bloque 1 — Fundamentos (42 outputs)

### Paso 1 — Intake Form (14 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 1.1 Business Name | `Cliente preflight` | Lo declara el cliente (Preflight 1) |
| 1.2 Website URL / Canonical Domain | `Cliente preflight` | Slugify(nombre) + `.com` (propuesto) o lo declara el cliente — formato HTTPS + www + trailing slash |
| 1.3 GBP Lifecycle Status | `Cliente preflight` + `Doctrina GMB Crush` | Default web-first según preflight; doctrina marca timing/verification/URL |
| 1.4 Full NAP (8 campos) | `Cliente preflight` | La doctrina no aporta criterio. Cliente declara los 8 campos (street + city + ZIP del preflight; phone, email confirmados durante ejecución del Paso 1) |
| 1.5 Planned Primary GBP Category | `Doctrina + Local Pack` | Análisis Local Pack — categoría más repetida en el top 5 |
| 1.6 Planned Additional GBP Categories | `Doctrina + Local Pack` | Categorías secundarias frecuentes; clasificar cubierta/página propia |
| 1.7 Main City | `← 1.4` (City) | Ciudad extraída del NAP |
| 1.8 Physical Location City | `Cliente preflight` | Ciudad de presencia física, normalmente = Main City |
| 1.9 Servicios principales (S=5) | `Doctrina + Local Pack` | Top 5 frecuencia en Local Pack |
| 1.10 Direct + Candidate LCAs | `← 1.4` + `Doctrina + Local Pack` | Direct: barrio/distrito del NAP. Candidate: zonas en 2+ competidores top, validables con test GEO |
| 1.11 Approved Expansion Areas | `Tracking` | Default vacío en Phase 1; se rellena con datos post-launch (rankings + tráfico + cobertura geo) |
| 1.12 GeoArticles per Service (G) | `Doctrina GMB Crush` | Default doctrinal G=3 |
| 1.13 Preferred CTA | `Doctrina + Local Pack` | **La doctrina no aporta en este output**. Según urgencia del servicio + benchmarking top 5 competidores (Llamar ahora / Reservar online / Solicitar presupuesto / Contactar) — selección directa del CTA dominante en el top 5 |
| 1.14 Trust Signals | `Doctrina + Local Pack` | Estándar del sector + diferenciadores extraídos de competidores top 5 |

### Paso 2 — Fórmula Maestra (14 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 2.1 Planned GBP Categories Status | `← 1.5 + 1.6` | Marcar como `Planned` hasta que se cree el GBP en Paso 14 |
| 2.2 Primary Category Slug | `← Paso-03 §4 intake` | Heredado del Paso 3 — referenciado aquí porque la fórmula maestra necesita el slug |
| 2.3 Main City Slug | `← Paso-03 §4 intake` | Heredado del Paso 3 |
| 2.4 Service Slugs | `← Paso-03 §4 intake` | Heredado del Paso 3 — aplicado a cada core service |
| 2.5 Variable S | `← 1.9` | Contar core services aplicables a la Main City |
| 2.6 Variable A | `← 1.6` | Contar Additional Categories que necesitan página propia |
| 2.7 Variable G | `← 1.12` | Hereda directo de 1.12 |
| 2.8 Total páginas SEO base | `← 2.5 + 2.6 + 2.7` | Aplicar fórmula maestra `1 + S + 1 + S + A + G×S` |
| 2.9 Inventario por tipo de página | `← 2.5 + 2.6 + 2.7` | Desglose de la fórmula 2.8 por page type |
| 2.10 Optional Expansion Formula | `← 1.11` | Declarar fórmula de expansión inactiva en Phase 1 |
| 2.11 Validación anti-duplicación | `← 1.6 + 1.9` | Cruzar Additional Categories vs core services y consolidar duplicados |
| 2.12 Validación dependencias | `← 2.9` | Validar orden HP → SO → GH → LBS → AC → GAs |
| 2.13 Validación LCAs fuera fórmula | `← 1.10` | Confirmar que ninguna LCA genera URL en la fórmula base |
| 2.14 Validación auditabilidad del total | `← 2.8 + 2.9` | Validar que el total se desglosa rastreablemente por page type |

### Paso 3 — Matriz Base (14 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 3.1 Spreadsheet Name | `← 1.1` | Convención `[Cliente] – GMB Crush Website Architecture` |
| 3.2 GeoHub URL Style | `Arquitectura técnica` | Option A `/[main-city]/` o B `/[primary-cat]/[main-city]/` |
| 3.3 Additional Category Slugs | `← 1.6` | Slugify aplicado a las Additional Categories que necesitan página propia |
| 3.4 GeoArticle Topics propuestos | `← 1.9` + `Doctrina + Keyword research` | Keyword research por core service + filtrar por intent GEO + validar volumen |
| 3.5 URL Matrix completa | `← 2.8 + 2.9` + outputs 1.X y 2.X relevantes | Generar matriz N filas × 20 columnas con todas las URLs derivadas de la fórmula |
| 3.6 IDs por tipo de página | `← 3.5` | Convención `[PageType-Index]` aplicada por fila (HP-001, SO-001..S, GH-001, LBS-001..S, AC-001..A, GA-001..(G×S)) |
| 3.7 Parent Page declarado por fila | `← 3.5` + `Doctrina GMB Crush` | Mapear jerarquía padre→hijo según doctrina |
| 3.8 Schema asignado desde matriz | `← 3.5` + `Doctrina GMB Crush` | Mapping doctrinal por page type |
| 3.9 Enlaces internos Required por fila | `← 3.5` + `Doctrina GMB Crush` | Listado contractual por page type según doctrina |
| 3.10 Priority y Publish Phase por fila | `← 3.5` + `Doctrina GMB Crush` | Doctrina: HP P1, LBS P1, SO P2, GH P2, GAs P3-4 |
| 3.11 Default Page Status | `Doctrina GMB Crush` | `Planned` (default al cerrar matriz) |
| 3.12 Notes estratégicas por fila | `no aplica` | **No aplica como output formal** — las notas operativas son comentarios libres del operador en la columna "Notes" del 3.5 URL Matrix, no son un output con fuente declarada |
| 3.13 Validación LCAs sin filas base | `← 1.10 + 3.5` | Confirmar que ninguna LCA genera fila URL en la matriz |
| 3.14 Validación matriz cerrada antes de contenido | `← 3.5` | Validar que todas las celdas de la matriz están rellenas |

---

## Bloque 2 — Arquitectura (57 outputs)

### Paso 4 — URL Rules (15 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 4.1 Canonical Domain | `← 1.2` | Tomar el dominio del intake; doctrina dicta HTTPS + www |
| 4.2 Trailing Slash | `Arquitectura técnica` | Decisión global (Yes/No); coherente y aplicable a todas las URLs del cluster |
| 4.3 Homepage URL | `Doctrina GMB Crush` | Doctrina — Homepage siempre es raíz `/` |
| 4.4 Service Overview URL pattern | `Doctrina GMB Crush` | Doctrina — `/[primary-cat-slug]/[service-slug]/` |
| 4.5 Main City GeoHub URL Style | `← 3.2` | Hereda el estilo elegido en Paso-03 3.2 |
| 4.6 Location-Based Service URL pattern | `Doctrina GMB Crush` | Doctrina — `/[primary-cat-slug]/[main-city-slug]/[service-slug]/` |
| 4.7 Additional Category URL pattern | `Doctrina GMB Crush` | Doctrina — `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/` |
| 4.8 GeoArticle URL pattern | `Doctrina GMB Crush` | Doctrina — `/[main-city-slug]/[topic-slug]/` |
| 4.9 LCAs no generan URLs | `← 1.10` + `Doctrina GMB Crush` | Doctrina — LCAs viven en contenido y `areaServed`, no en path |
| 4.10 Approved Expansion URLs | `← 1.11` | Sin expansión en Phase 1 (default vacío) |
| 4.11 Validación No "near me" | `Doctrina GMB Crush` | Comprobar URLs contra blacklist `near-me` |
| 4.12 Validación No adjetivos vacíos | `Doctrina GMB Crush` | Comprobar URLs contra blacklist (best, cheap, top-rated, etc.) |
| 4.13 Validación Slugs limpios | `← 2.2` | Comprobar slugs (lowercase, sin acentos, kebab-case) |
| 4.14 Validación No falsa ubicación | `← 1.8 + 1.11` | Comprobar que las URLs solo usan Main City o Approved Expansion |
| 4.15 Validación No duplicar intención | `Doctrina GMB Crush` | Cruzar URLs por intención (servicio + ciudad + topic) y descartar duplicados |

### Paso 5 — Page Type Rules (10 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 5.1 Spec Homepage (Root Entity Anchor) | `← 1.1 + 1.4 + 1.13 + 1.14 + 4.3` | Aplicar la spec con inputs heredados |
| 5.2 Spec Service Overview (Topical Authority Pillar) | `← 1.9 + 2.4 + 4.4` | Aplicar spec replicada a los S core services |
| 5.3 Spec LBS (Main City Converter) | `← 1.9 + 1.10 + 2.4 + 4.6` | Aplicar spec × S × Main City; schema LocalBusiness con `areaServed` = LCAs |
| 5.4 Spec Additional Category (GBP AC Support) | `← 1.6 + 3.3 + 4.7` | Aplicar spec a cada AC con página propia |
| 5.5 Spec GeoHub (Main City Silo Container) | `← 1.7 + 1.10 + 2.3 + 4.5` | Aplicar spec al GeoHub Main City |
| 5.6 Spec GeoArticle (Semantic Booster) | `← 1.7 + 3.4 + 4.8` | Aplicar spec a G×S GAs |
| 5.7 Validación Schema por tipo de página | `Doctrina GMB Crush` | Aplicar la regla a las 6 page types como filtro de QA |
| 5.8 Validación Word count por intención | `Doctrina GMB Crush` | Aplicar la regla a las 6 page types (rangos doctrinales por page type) |
| 5.9 Validación CTA adaptado al page type | `← 1.13` + `Doctrina GMB Crush` | Mapear CTAs a page types según funnel position |
| 5.10 Validación No false location claims | `← 1.8 + 1.10 + 4.14` | Validar `address` schema = NAP físico real y `areaServed` real |

### Paso 6 — Estructura de Contenido + LCAs (17 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 6.1 Principio 1 — Main City crea arquitectura | `← 1.7` | Aplicar la regla como filtro de QA |
| 6.2 Principio 2 — LCAs enriquecen contenido | `← 1.10` | Aplicar la regla (LCAs en contenido + areaServed; 0 URLs `/{lca}/`) |
| 6.3 Principio 3 — AEAs crean URLs solo si se aprueban | `← 1.11` | Aplicar la regla al inventario URL del cluster |
| 6.4 Principio 4 — Mencionar zona ≠ crear página | `Doctrina GMB Crush` | Aplicar la regla al contenido y enlaces |
| 6.5 Principio 5 — No falsa ubicación | `← 1.8` | Aplicar la regla al schema, NAP y contenido |
| 6.6 Homepage Content Architecture | `← 3.5 + 5.1` | Aplicar arquitectura doctrinal Homepage |
| 6.7 Service Overview Content Architecture | `← 3.5 + 5.2` | Aplicar arquitectura doctrinal SO × S instancias |
| 6.8 Location-Based Service Content Architecture | `← 3.5 + 5.3` | Aplicar arquitectura doctrinal LBS × S × Main City |
| 6.9 Additional Category Content Architecture | `← 3.5 + 5.4` | Aplicar arquitectura doctrinal AC × A instancias |
| 6.10 GeoHub Content Architecture | `← 3.5 + 5.5` | Aplicar arquitectura doctrinal GeoHub |
| 6.11 GeoArticle Content Architecture | `← 3.5 + 5.6` | Aplicar arquitectura doctrinal GA × G×S instancias |
| 6.12 Tabla de uso de LCAs por page type | `← 1.10` | Generar matriz fila-por-page-type indicando uso |
| 6.13 Ejemplo práctico completo (sección cobertura) | `Doctrina GMB Crush` | Redactar bloque modelo aplicando la arquitectura LBS |
| 6.14 FAQ ejemplo | `Doctrina GMB Crush` | Redactar 4-6 FAQs modelo que mencionen LCAs naturalmente |
| 6.15 Reviews y trust blocks contextualizados | `← 1.14` | Mapear trust signals a cada page type según funnel position |
| 6.16 FAQs con cobertura natural | `Doctrina GMB Crush` | Validar FAQs contra blacklist de keyword stuffing |
| 6.17 Schema `areaServed` coherente | `← 1.10` | Validar que `areaServed` lista solo zonas reales |

### Paso 7 — Internal Linking Rules (15 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 7.1 Regla 1 — Enlazar arriba/abajo/lateral | `Doctrina GMB Crush` | Aplicar la regla (cada URL con 3 direcciones) |
| 7.2 Regla 2 — Homepage distribuye autoridad | `← 3.5` | Aplicar la regla al outbound de Homepage según matriz 7.11 |
| 7.3 Regla 3 — SO empuja versión local | `← 3.5` | Aplicar la regla a las S Service Overview |
| 7.4 Regla 4 — GeoHub organiza Main City | `← 3.5` | Aplicar la regla al outbound del GeoHub |
| 7.5 Regla 5 — LBS conecta servicio y ciudad | `← 3.5` | Aplicar la regla a las S LBS (parent SO + GeoHub + lateral + GAs + contacto) |
| 7.6 Regla 6 — AC se integra en silo local | `← 3.5` | Aplicar la regla a las A AC |
| 7.7 Regla 7 — GeoArticle pasa relevancia a landing | `← 3.5` | Aplicar la regla a los G×S GAs |
| 7.8 Regla 8 — LCAs sin URL no reciben enlaces | `← 1.10 + 4.9` | Validar que ninguna URL del cluster enlaza a `/{lca}/` |
| 7.9 Regla 9 — Anchor text variado | `← 1.1 + 1.13` | Aplicar catálogo (branded / exact / partial / topic / generic / CTA) |
| 7.10 Regla 10 — Enlaces contextuales primero | `Doctrina GMB Crush` | Aplicar al placement: enlaces inline antes que footer |
| 7.11 Matriz de enlaces obligatorios por page type | `← 3.5` | Generar matriz fila-por-conexión con source, target, anchor y direction |
| 7.12 Ejemplo completo de enlaces para LBS modelo | `← 3.5` | Redactar ejemplo aplicado a una LBS modelo |
| 7.13 Breadcrumbs por page type | `← 3.5` | Aplicar jerarquía Home > [Categoría] > [Ciudad] > [Servicio] |
| 7.14 Inbound links esperados (cross-cutting) | `← 3.5` | Validar que cada URL recibe el mínimo de inbound según matriz 7.11 |
| 7.15 Expansion linking separado (cross-cutting) | `← 1.11` | Aplicar la regla solo si E≥1; sub-cluster aislado |

---

## Bloque 3 — Priorización (43 outputs)


### Paso 8 — Priority Score (14 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 8.1 Priority Score Formula | `Doctrina GMB Crush` | Fórmula maestra fija: R + I + G + L + C + U (rango 6-30) |
| 8.2 Revenue Value | `← 1.9` + `Doctrina + Google Search` | **La doctrina no aporta en este output**. AI ejecuta 3 búsquedas en Google por servicio: precio (rango ticket medio del SERP) + margen sectorial (informes públicos) + volumen comercial (Trends + density del SERP); escala 1-5 |
| 8.3 Search Intent | `← 1.9` + `Doctrina + Keyword research` | **La doctrina no aporta en este output**. Keyword research; calcular % queries transaccionales; escala 1-5 |
| 8.4 GBP Category Relevance | `← 1.5 + 1.6` + `Doctrina + Local Pack` | Cruce categorías declaradas vs Local Pack; escala 1-5 |
| 8.5 Local Relevance | `← 1.7 + 1.8 + 1.10` | Inspección URL + schema + contenido vs NAP/Main City/LCAs; escala 1-5 |
| 8.6 Competition Gap | `← 1.7 + 1.9` + `Doctrina + Local Pack` + `Doctrina + Keyword research` | SERP analysis manual + DR/UR Ahrefs por keyword; escala 1-5 (la doctrina no aporta para la parte KR del output, solo para la parte Local Pack) |
| 8.7 Conversion Urgency | `← 1.9 + 1.13` | Clasificación por ventana de decisión + cruce keyword urgency; escala 1-5 |
| 8.8 Total Score por página | `← 8.2-8.7` | Suma simple de los 6 factores con peso 1 |
| 8.9 Priority Tiers | `← 8.8` | Mapping doctrinal: 26-30=P1, 21-25=P2, 16-20=P3, 10-15=P4, 6-9=Hold |
| 8.10 Publish Phase derivada | `← 8.9 + 2.10` | Cruce Tier × dependencias estructurales |
| 8.11 Validación Landing antes que GeoArticle | `← 3.5 + 8.10` | Validar phase(parent) < phase(GA) por fila |
| 8.12 Validación Homepage = P1 obligatorio | `Doctrina GMB Crush` | Forzar tier=P1 y phase=1 en la fila HP |
| 8.13 Validación LCAs sin score | `← 1.10 + 4.9` | Comprobar 0 intersecciones LCA × inventario |
| 8.14 Inventario priorizado completo | `← 3.5 + 8.8-8.10` | Generar tabla N filas con score+tier+phase por URL |

### Paso 9 — QA Checklist (15 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 9.1 Plantilla de QA por página | `← 8.14` | Generar formulario 10 campos por URL del inventario priorizado |
| 9.2 Regla 1 — URL QA | `← 4.3-4.8` | Comparar URL contra patrón doctrinal del page type |
| 9.3 Regla 2 — Page Type QA | `← 5.1-5.6 + 6.6-6.11` | Inspeccionar H1 + estructura + schema vs spec |
| 9.4 Regla 3 — One service only | `← 1.9 + 5.3-5.6` | Inspeccionar H1 + body de cada URL local |
| 9.5 Regla 4 — One Main City only | `← 1.7` | Inspeccionar H1 + breadcrumb + cobertura |
| 9.6 Regla 5 — Local Coverage QA | `← 1.10 + 4.14` | Validar LCAs en contenido + areaServed |
| 9.7 Regla 6 — No fake location | `← 1.4 + 1.8 + 4.14 + 5.10` | Inspeccionar schema + copy contra ubicación real |
| 9.8 Regla 7 — Metadata QA | `← 5.1-5.6` | Validar H1 + meta title + meta description coherentes |
| 9.9 Regla 8 — Word count QA | `← 5.8` | Verificar profundidad doctrinal por page type |
| 9.10 Regla 9 — Schema QA | `← 5.7 + 6.17` | Validar JSON-LD por page type + areaServed coherente |
| 9.11 Regla 10 — Enlaces internos QA | `← 7.11` | Cada URL cumple matriz de enlaces obligatorios |
| 9.12 Regla 11 — Canibalización QA | `← 4.15` | Cada URL cubre intención única; 0 pares solapados |
| 9.13 Regla 12 — CTA QA | `← 5.9 + 1.13` | CTA adaptado al page type según funnel position |
| 9.14 Final Publish Gate | `← 9.2-9.13` | Consolidar las 12 reglas en 9 checkpoints binarios |
| 9.15 GBP Not Created QA Checklist | `← 1.3` | Inspeccionar copy + schema + footer contra los 7 checks específicos web-first |

### Paso 10 — Producción en Fases (14 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 10.1 Publishing Capacity | `Doctrina GMB Crush` | Capacity declarada por la doctrina del paso (no depende del equipo, sino de lo que toca producir) |
| 10.2 Equipo de contenido óptimo | `Doctrina GMB Crush` | Axioma del sistema: el operador cuenta con el mejor equipo disponible para que el plan de contenido sea el mejor (sin restricciones de capacity por equipo) |
| 10.3 CMS + capabilities | `no aplica` | **No aplica — el stack canónico está definido en 17.2** (Astro 5 + Tailwind v3 + pnpm + Cloudflare). El CMS del cliente es irrelevante en el flujo actual |
| 10.4 Fase 1 — Entity Foundation | `← 2.9 + 8.10` | Listar páginas page_type ∈ {HP, SO, GH} del inventario priorizado |
| 10.5 Fase 2 — Main City Conversion Layer | `← 2.9 + 8.10` | Listar páginas page_type ∈ {LBS, AC} ordenadas por Priority Tier |
| 10.6 Fase 3 — Main City Semantic Expansion | `← 2.9 + 8.10` | Listar páginas page_type = GeoArticle ordenadas por Priority Tier |
| 10.7 Fase 4 — Optimization Loop | `← 10.9` | Definir cadencia revisión según calendario semanal |
| 10.8 Fase 5 — Optional Expansion Module | `← 1.11` | Activa solo si Approved Expansion Areas declaradas; literal §11 del original |
| 10.9 Calendario semanal de publicación | `← 10.1 + 10.4-10.8` | Distribuir páginas de las fases respetando Capacity. **El deploy del Paso 18.6 sigue este calendario** — múltiples deploys, uno por fase completada (no atómico) |
| 10.10 Matriz de dependencias de publicación | `← 3.7 + 8.10` | Cruzar Parent Page + Publish Phase por URL |
| 10.11 Reglas operativas | `Doctrina GMB Crush` | Reglas operativas literales del original §14-§23 |
| 10.12 Checklist pre-publicación | `← 10.4-10.10` | Validar cada check contra outputs heredados |
| 10.13 Validación Bloques 1-2 cerrados | `← Bloques 1+2 + Pasos 8+9` | Cruzar status de cada output upstream |
| 10.14 GBP Creation & Website Alignment (sección separada) | `← 1.3 + Paso-14` (forward) | Sección §26 del original — referencia adelantada al Paso 14 |

---

## Bloque 4 — Automatización (41 outputs)

### Paso 11 — Pseudocódigo del Sistema (16 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 11.1 Función `load_inputs()` | `← Paso-01 + Paso-02 + Paso-03` | Lectura programática de §8 de cada a-doc + preflight |
| 11.2 Función `normalize_slugs()` | `← 2.2 + 2.3 + 2.4 + 3.3` | Implementar slugify estándar + aplicar a 4 grupos de slugs |
| 11.3 Función `validate_categories()` | `← 2.7 + 2.12` | Comparar Additional vs core; aplicar criterio cobertura |
| 11.4 Función `generate_homepage()` | `← 4.3 + 5.3` | Aplicar spec Homepage del Paso-05 |
| 11.5 Función `generate_service_overview()` | `← 4.4 + 5.4` | Aplicar spec SO × S core services |
| 11.6 Función `generate_geohub()` | `← 4.5 + 5.7 + 3.2` | Aplicar spec GeoHub al Main City |
| 11.7 Función `generate_lbs()` | `← 4.6 + 5.5` | Aplicar spec LBS × S × Main City |
| 11.8 Función `generate_additional_category()` | `← 4.7 + 5.6 + 3.3` | Aplicar spec AC a las A categorías efectivas |
| 11.9 Función `generate_geoarticles()` | `← 4.8 + 5.8 + 3.4` | Aplicar spec GA a G×S combinaciones |
| 11.10 Función `inject_local_coverage()` | `← 6.2 + 6.12 + 6.17` | Iterar páginas, mapear page_type → LCAs según matriz |
| 11.11 Función `generate_expansion()` (opcional) | `← 1.11 + 4.10` | Replicar lógica generate_*() por Approved Area; vacío si E=0 |
| 11.12 Función `assign_internal_links()` | `← 7.9 + 7.11` | Lookup matriz 7.11 + selección anchor por catálogo 7.9 |
| 11.13 Función `score_priority()` | `← 8.1-8.10` | 6 funciones medición + suma + mapeo tier/phase (thresholds 26/21/16/10) |
| 11.14 Función `check_dependencies()` | `← 8.11 + 10.10` | Lookup parents + comparar phases + bloquear conflictos |
| 11.15 Función `run_qa()` | `← 9.2-9.13` | 5 funciones QA + consolidación gate + opcional GBP checklist |
| 11.16 Función `output_matrices()` | `← 3.5 + 3.8 + 7.11` | Serializar páginas scored + link_matrix en 3 estructuras tabulares |

### Paso 12 — Master Prompt (13 outputs)

> **Nota sobre 12.1 Master Prompt principal:** documental — el flujo actual ejecuta Bloques 1-3 manualmente paso a paso siguiendo los a-docs, NO ejecuta el Master Prompt principal. Lo que SÍ se aplica en el Paso 15 Redacción son los Auxiliary Prompts (12.2-12.5).

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 12.1 Master Prompt principal | `← Paso-11 + Bloques 1-3` | Componer 7 secciones del prompt + integrar reglas (~580 líneas literales). **No se ejecuta en el flujo actual** — los Auxiliary 12.2-12.5 son los que se aplican en Paso 15 |
| 12.2 Auxiliary Prompt URL Matrix | `← 3.5 + 4.3-4.8` | Aislar sección URL Matrix del Master + simplificar ROLE |
| 12.3 Auxiliary Prompt Content Architecture | `← 5.3-5.8 + 6.6-6.11` | Aislar sección Content Architecture del Master |
| 12.4 Auxiliary Prompt GeoArticles | `← 3.4 + 8.11` | Aislar sección GA del Master + integrar keyword research |
| 12.5 Auxiliary Prompt QA | `← 9.2-9.13` | Aislar sección QA del Master |
| 12.6 Estructura del prompt | `Doctrina GMB Crush` | Aplicar plantilla 10-secciones (ROLE/CONTEXT/INPUTS/PROCESS/...) |
| 12.7 Web-First GBP Rule | `← 1.3 + 9.15` | Embeberla en Master Prompt + activar condicionalmente |
| 12.8 14 Reglas operativas (§22-§34 original) | `← Bloques 1-3` | Compilar reglas desde pasos origen y consolidar en sección del prompt |
| 12.9 Inputs Validation embedded | `← Paso-01 1.X + Paso-02 2.X` | Compilar checks desde §3 Heredados + integrar en sección 8 |
| 12.10 Executive Summary template | `← Paso-01 + Paso-02 + Paso-08` | Plantilla con placeholders rellenados por el prompt |
| 12.11 Validación prompt produce los 20 outputs del Master Prompt | `← 12.1-12.5` | Inspección de salida + cross-check con outputs esperados |
| 12.12 Validación prompt cumple web-first | `← 1.3 + 9.15` | Inspección + cross-check con 7 sub-checks Paso-09 9.15 |
| 12.13 10 Reglas doctrinales (§7-§16 original) | `Doctrina GMB Crush` | Portar literal del original las 10 Reglas doctrinales |

### Paso 13 — Sistema Final Operativo (12 outputs)

> **Nota sobre referencias documentales al original:** los outputs 13.5, 13.6 y 13.8 son referencias literales al original GMB Crush. Con la adición del Bloque 5 (sistema añadido por el operador), el flujo real difiere del original. Estos outputs se mantienen como **referencia documental** al original GMB Crush, no como descripción del flujo actual.

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 13.1 Resumen ejecutivo (principio §20 + fórmula §21 + aplicación §22) | `← 1.X + 2.X` | Compilar principio doctrinal + fórmula + aplicación al cluster |
| 13.2 12 Sistemas literales (§7-§18 original) | `← Pasos 1-12` | Cross-ref literal a cada uno de los 12 pasos del sistema |
| 13.3 7 Módulos A-G literales (§29-§35 original) | `← 1.X + 6.X + 8.X + 13.8` | Compilar Entidad/Servicios/Categorías/Cobertura/Expansión/Schema/Tracking |
| 13.4 16 Reglas operativas literales (§36-§51 original) | `Doctrina GMB Crush` | Portar literal las 16 reglas operativas del original |
| 13.5 Workflow operativo de 21 pasos (§25 original) | `← Bloques 1-4` | **Referencia documental al original**. Con la adición del Bloque 5, el workflow real es distinto |
| 13.6 Carpetas recomendadas del repo (§26 original) | `Doctrina GMB Crush` | **Referencia documental al original** (estructura `docs/01-... 13-...`). El repo real tiene estructura distinta (Bloques con 01/02/03) |
| 13.7 Tabla inventario URL con scores literales (§54.2 original) | `← 3.5 + 8.14` | Portar literal scores 100/95/92/.../70/68/65 del original |
| 13.8 Calendario de producción de 7 fases (§54.4 original) | `← 10.4-10.9` | **Referencia documental al original** (calendario 7 fases × semanas 1-8). El operativo del flujo actual es 10.9 Calendario semanal de publicación |
| 13.9 Output final del Paso 13 (§28 original) — 13 elementos | `← 13.1-13.8` | Compilar los 13 elementos del output final |
| 13.10 Relación con Paso 14 (§27 original) | `← 9.15 + 10.10` | Portar literal "Paso 13 entrega → Paso 14 ejecuta" |
| 13.11 Checklist final de 13 preguntas (§52 original) | `Doctrina GMB Crush` | Portar literal las 13 preguntas del checklist |
| 13.12 8 Outputs del Paso 13 (§53 original) | `Doctrina GMB Crush` | Portar literal los 8 outputs del paso |

---

## Bloque 5 — Salida a Mercado (39 outputs)

### Paso 15 — Redacción de Contenido (13 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 15.1 Capas de redacción (4 capas) | `Doctrina GMB Crush` | Framework declarativo: Estructura / Zonas / Argumentos / Entidades |
| 15.2 Reglas de calidad universal (4 reglas) | `Doctrina GMB Crush` | 4 reglas fijas: Hero+CTA / Problema / Datos / Local |
| 15.3 Homepage redactada | `← 5.3 + 6.6 + 12.3` | Aplicar Auxiliary Content Architecture prompt a Homepage spec |
| 15.4 Service Overview Pages redactadas | `← 5.4 + 6.7` | Aplicar Auxiliary Content Architecture × S core services |
| 15.5 Location-Based Service Pages redactadas | `← 5.5 + 6.8 + 1.10` | Aplicar Auxiliary Content Architecture × S × Main City |
| 15.6 Additional Category Page redactada | `← 5.6 + 6.9` | Aplicar Auxiliary Content Architecture × A categorías |
| 15.7 GeoHub redactada | `← 5.7 + 6.10` | Aplicar Auxiliary Content Architecture con spec GeoHub |
| 15.8 GeoArticles redactados | `← 5.8 + 6.11 + 3.4` | Aplicar Auxiliary GeoArticles prompt × G×S combinaciones |
| 15.9 Página de contacto redactada | `← 1.4` | Plantilla básica de contacto + NAP + form + schema |
| 15.10 Validación clusters completos | `Doctrina GMB Crush` | Validar count por cluster (SO + LBS + 3 GAs por servicio core) |
| 15.11 Validación SO no compite con LBS | `Doctrina GMB Crush` | Comparar H1 SO vs H1 LBS por servicio core |
| 15.12 Validación GA enlaza a LBS padre | `Doctrina GMB Crush` | Inspeccionar 3 puntos de enlace por GA |
| 15.13 Validación datos verificables | `no aplica` | **No aplica — ya está definido en 9.15** (GBP Not Created QA Checklist) que es el canónico. La validación se ejecuta en Paso 18 sobre el sitio construido |

### Paso 16 — Diseño y Layout (6 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 16.1 Identidad Visual y CSS Base | `Cliente preflight` | La doctrina no aporta criterio. Cliente provee web de referencia (URL); operador extrae tokens visuales (colores, typography, spacing) vía inspección visual + DevTools |
| 16.2 Layout y Estructura por Sección | `← 5.3-5.8 + 6.6-6.11` | Mapear secciones por page type a partir de specs heredados |
| 16.3 Propuesta de Diseño aprobada | `no aplica` | **No aplica — el sistema deriva el diseño extrayendo tokens de la web de referencia del cliente (16.1), sin ciclo mockup→aprobación**. El flujo real no incluye propuesta-revisión-iteración-aprobación |
| 16.4 Design Tokens Tailwind | `← 16.1` | Convertir Identidad Visual a tailwind.config.js |
| 16.5 Reglas Críticas CSS | `← 16.4` | Definir reglas por componente (Hero/Buttons/Cards/Grids/Forms) |
| 16.6 Layout-Map Definitivo | `← 16.2 + 15.3-15.9` | Mapear secciones a Components + props alineados con copy |

### Paso 17 — Constructor del Sitio (8 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 17.1 Acta de Lectura y Autocontraste | `no aplica` | **No aplica — convertido a procedimiento operativo previo (checklist), no output declarado**. La lectura sistemática de §8 de cada paso anterior + cross-check URL Matrix vs copy vs schemas vs links se ejecuta como checklist antes de empezar el Paso 17 |
| 17.2 Proyecto Astro 5 + Tailwind v3 + pnpm | `Arquitectura técnica` | Stack canónico del sistema; comandos pnpm + copia tailwind.config Paso-16 |
| 17.3 7 componentes UI parametrizados | `← 16.5` | Construir Astro components con props alineados a reglas CSS |
| 17.4 Header + Footer + Layout wrapper | `← 7.11 + 16.6` | Construir layouts globales aplicando Layout-Map |
| 17.5 N páginas construidas | `← 3.5 + 15.3-15.9 + 16.6` | Iterar URL Matrix + componer páginas con BaseLayout + Components + copy. **N** = total dictado por la fórmula maestra (output 2.8) |
| 17.6 Schemas implementados y validados | `← 5.9 + 6.17 + 9.10` | Embed JSON-LD según mapping + cruce con LCAs + validar tools |
| 17.7 Limpieza de rastros IA | `Doctrina GMB Crush` | Iterar 5 áreas (README/src/meta/package/commits) + validar grep |
| 17.8 Build local pasando | `← 17.2-17.7` | Ejecutar pnpm install && pnpm build + revisar output |

### Paso 18 — QA y Deploy (7 outputs)

> **Nota:** el Paso 18 viene del Bloque 5 (sistema añadido al original GMB Crush). Las auditorías 18.1-18.4 NO duplican las reglas QA del Paso 9 — operan a nivel distinto:
> - **Paso 9 QA Checklist** (planning level): valida la URL Matrix + specs + arquitectura ANTES de construir (URL pattern correcta, schema asignado, word count target conceptual, etc.)
> - **Paso 18 Auditorías** (build level): valida el SITIO YA CONSTRUIDO físicamente (Lighthouse score real, schema válido en el JSON-LD del HTML, responsive funcional en 3 breakpoints, build sin warnings, links no rotos, rastros IA limpios, etc.)
>
> Ambos son pasos legítimos. Paso 9 es validación conceptual; Paso 18 es validación de la implementación.

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 18.1 Auditoría Técnica (16 criterios) | `← 4.1 + 5.9 + 17.5-17.6` | 16 checks técnicos con tools sobre el sitio construido: Lighthouse score, GRT (Google Rich Results), manual responsive en 3 breakpoints, links no rotos, build sin errores |
| 18.2 Auditoría de Contenido (8 criterios) | `← 15.3-15.12 + 9.8 + 9.9 + 9.10 + 9.15` | Inspección manual del HTML construido + grep contra reglas QA del Paso 9 (las APLICA, no las redefine): metadata real, word count real, schema real, web-first verification |
| 18.3 Auditoría Visual (5 criterios) | `← 16.4 + 16.6` | Inspección visual de las N páginas construidas + cruce con Layout-Map y tokens reales aplicados |
| 18.4 Auditoría de Rastros IA (6 criterios) | `← 17.7` | grep + inspección manual de README + package.json + git log + src en el repo |
| 18.5 Configuración Cloudflare | `Arquitectura técnica` | Stack canónico de deploy; crear deploy-config.md + aplicar config en Cloudflare dashboard |
| 18.6 Sitio en Producción | `← 18.1-18.5` | Push a main + Cloudflare auto-deploy + verificación post-deploy. **Múltiples deploys** (uno por fase del Paso 10 según calendario 10.9) — no atómico |
| 18.7 Sitemap en GSC | `← 18.6` | GSC dashboard + DNS TXT verification + submit sitemap |

### Paso 19 — Acciones Futuro y Escalado (5 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 19.1 Tablero de vigilancia post-launch | `← 13.8 + 18.7` + `Tracking` | Configurar dashboards GSC + GA4 + Rank Tracker; revisar regularmente |
| 19.2 Estado de los 3 triggers por candidato | `← 19.1` | Cruzar Tablero con criterios de 3 triggers (volumen / posición / concurrencia) |
| 19.3 Análisis SERP + decisión | `← 19.2 + 8.6` + `Doctrina + Local Pack` | SERP analysis manual + Ahrefs para fortaleza top 10 |
| 19.4 Log de decisiones de escalado | `← 19.3 + 13.7` | Plantilla con 8 campos por decisión |
| 19.5 URL Matrix actualizada con Approved Expansion | `← 19.4 + 1.11 + 11.11` | Aplicar generate_expansion() + actualizar URL Matrix + documentar cambio |

---

## Bloque 7 — GBP (20 outputs)

> **Pre-requisito:** Bloque 6 Info que falta vacío (todos los `⚠` heredados de Bloques 1-5 cerrados).

### Paso 14 — GBP Creation & Website Alignment (20 outputs)

| Output | Fuente | Cómo se obtiene |
|---|---|---|
| 14.1 GBP creado o plan de creación listo | `Cliente preflight + Doctrina GMB Crush` | Aplicar §7 (web-first) — la doctrina dicta que el GBP se crea/verifica post-Paso 18 (web LIVE). Cliente confirma timing |
| 14.2 Estado de verificación definido | `Cliente preflight + Doctrina GMB Crush` | La doctrina dicta los 5 estados válidos (Not Created / Created / Verified / Pending / Suspended). Cliente declara cuál aplica |
| 14.3 NAP final aprobado | `← Paso-01 1.4` | Aplicar §9; cruzar NAP web vs schema vs página contacto vs GBP |
| 14.4 Modelo de negocio definido | `Cliente preflight + Doctrina GMB Crush` | La doctrina §10 dicta los 3 valores válidos (Storefront / SAB / Hybrid). Cliente declara cuál aplica según realidad operativa |
| 14.5 Categoría principal confirmada | `← Paso-01 1.5` | Aplicar §8 + §26; convertir Planned Primary en Confirmed sin keyword stuffing |
| 14.6 Categorías adicionales confirmadas o descartadas | `← Paso-01 1.6` + `Doctrina + Local Pack` | Aplicar §14 + §27; cada Additional necesita soporte web real o se descarta |
| 14.7 Servicios del GBP mapeados a páginas web | `← Paso-01 1.9` + `← Paso-05 5.4 + 5.5` | Aplicar §13; cada GBP service alineado con SO o LBS de la web |
| 14.8 URL de web seleccionada para el GBP | `← Paso-04 4.3` | Aplicar §11; conectar a homepage o strongest local entity page |
| 14.9 URL UTM preparada | `Tracking` | Aplicar §12; UTM sin romper canonical |
| 14.10 Descripción GBP aprobada | `Doctrina + Local Pack` | Aplicar §17 + §18; patrón doctrinal brand+category+city+services+CTA validado contra benchmarking top 5 |
| 14.11 Plan de fotos | `Cliente preflight + Doctrina GMB Crush` | La doctrina §16 dicta la clasificación por tipo (logo, cover, exterior, interior, team, vehicle, work examples, local context) según modelo de negocio. Cliente provee fotos reales |
| 14.12 Plan de Q&A | `← Paso-09 9.X` + `Doctrina + Local Pack` | **La doctrina no aporta en este output** (§23 solo dicta los 4 métodos de extracción a nivel general). Aplicar Auto-Suggest / PAA / Keyword research / competitors top 5 |
| 14.13 Plan de posts | `← Paso-08 8.X` + `Doctrina + Keyword research` | **La doctrina no aporta en este output** (§24 solo dicta el método general). Identificar URLs P1/P2 + queries transaccionales por URL via keyword research |
| 14.14 Estrategia de reseñas reales | `Doctrina + Local Pack` | **La doctrina no aporta en este output** (§15 actúa solo como constraint negativo: no incentivos prohibidos, no inventar reseñas). Benchmarking del top 5 GBP competidores aporta el plan operativo (volumen objetivo realista, frecuencia, patrones de respuesta, métodos solicitud) |
| 14.15 Cola de actualización post-GBP | `Doctrina GMB Crush` | Aplicar §29; lista priorizada de elementos web a actualizar tras verificación |
| 14.16 Schema update plan | `← Paso-03 3.8` | Aplicar §20 + §28; añadir sameAs solo después de GBP verificado |
| 14.17 Homepage update plan | `← Paso-05 5.3` | Aplicar §21; homepage sincronizada con GBP (enlace, reseñas reales, mapa) |
| 14.18 Contact page update plan | `← Paso-05 5.X` | Aplicar §22; contacto coherente con NAP final + enlace al GBP verificado |
| 14.19 Tracking baseline plan | `← Paso-19 19.1` + `Tracking` | Aplicar §30; geo-grid + GSC + GA4 + GBP performance |
| 14.20 Lista de riesgos | `Doctrina GMB Crush` | Compilar riesgos: §25 duplicados / §26 keyword stuffing / NAP falso / cobertura inflada |

---

## Análisis del impacto del Preflight

> **Si el preflight crece, qué outputs cambian:**

El Preflight actual tiene **8 campos**: 5 de negocio (nombre, qué hace, dirección, GBP status, ciudades) + 3 credenciales de deploy (Token GitHub, ID Cloudflare account, Token Cloudflare). Los 5 campos de negocio resuelven outputs `Cliente preflight` del Paso 1 (**1.1, 1.2 parcial, 1.3, 1.4 parcial, 1.7, 1.8**); los 3 de credenciales alimentan el deploy en Paso 18 (Configuración Cloudflare + Sitio en Producción + Sitemap GSC).

Si el preflight se ampliase con más datos del cliente, los outputs que actualmente tienen Fuente `Doctrina + Local Pack` con Status `⚠ inferido` (porque la IA infiere desde Local Pack sin ejecutar Google Maps) podrían pasar a Fuente `Cliente preflight` (o `Cliente preflight + Doctrina GMB Crush` si la doctrina aporta criterio) con Status `confirmed` (cliente declara directamente):

| Si el preflight añadiese... | Impacto |
|---|---|
| Categoría primaria del cliente | 1.5 deja de necesitar Local Pack |
| Categorías adicionales del cliente | 1.6 deja de necesitar Local Pack |
| Servicios principales (lista) | 1.9 deja de necesitar Local Pack para confirmar oferta |
| Trust signals reales (certificados, años, reviews actuales) | 1.14 reduce dependencia de competidores |
| Información de margen / ticket por servicio | 8.2 deja de necesitar input humano adicional |
| CMS y capabilities | 10.3 ya no requiere confirmación posterior |
| Modelo de negocio (Storefront/SAB/Hybrid) | 14.4 ya no requiere confirmación posterior |

**Trade-off:** cuanto más amplio el preflight, menos outputs quedan en `⚠ inferido` y más rápido se cierra el sistema. Pero también más fricción para arrancar (cliente debe declarar más antes de empezar).

> Decisión actual: preflight de 8 campos (5 negocio + 3 credenciales deploy). El resto se infiere o se confirma a medida que se ejecuta. Marcadores `⚠ inferido` permiten avanzar sin bloquear la ejecución.
