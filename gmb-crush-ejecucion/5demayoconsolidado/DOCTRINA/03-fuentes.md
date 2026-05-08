# 03 Fuentes canónicas del sistema GMB Crush

> Catálogo cerrado de las **8 fuentes** válidas + notación de herencia `← X.Y` + pseudo-fuentes `Info heredada` y `no aplica`.
>
> Si vas a revisar un plan de ejecución, lee primero la tabla de Fuentes — si después ves `Local Pack` en una fuente, ya sabes que tienes que abrir Google Maps; si ves `Cliente preflight`, ya sabes que está rellenado en `Bloque 0`; etc.

**Tabla de contenidos:**

1. [Tabla resumen — las 8 fuentes válidas](#tabla-resumen--las-8-fuentes-válidas)
2. [Descripción extendida + ejemplos de cada fuente](#descripción-extendida--ejemplos-de-cada-fuente)
3. [Notación de herencia `← X.Y`](#notación-de-herencia--xy-no-es-fuente)
4. [Pseudo-fuentes (`Info heredada` y `no aplica`)](#pseudo-fuentes)
5. [Validación](#validación)
6. [Por qué el catálogo es cerrado](#por-qué-el-catálogo-es-cerrado)
7. [Divergencias documentadas del operador](#divergencias-documentadas-del-operador)

---

## Tabla resumen — las 8 fuentes válidas

> Cualquier valor en la columna `Fuente` (de §5 / §8 de los a-docs) o `Fuentes para Decidir` (de los planes-ejecución) que NO esté en este catálogo es inválido.

| # | Fuente | Qué es | Tool / método |
|---|---|---|---|
| 1 | `Doctrina GMB Crush` | Valor que dicta literalmente la doctrina del manual GMB Crush | Lectura del a-doc del paso. La IA aplica la regla literal sin tools externas |
| 2 | `Cliente preflight` | Valor declarado por el cliente — preflight inicial (8 campos del Bloque 0) + inputs adicionales durante la ejecución sin filtro doctrinal (NAP completo, web de referencia para extracción de tokens visuales) | Lectura de `pasos/Bloque 0 Preflight/00preflight.md` para inputs iniciales + consulta directa al cliente durante ejecución para inputs adicionales. Tokens/credenciales se leen de entorno seguro, no del markdown |
| 3 | `Cliente preflight + Doctrina GMB Crush` | Doctrina dicta el set válido o la regla + cliente declara cuál aplica según su realidad (preflight inicial o durante ejecución) | Doctrina del paso dicta categorías/valores válidos + cliente declara su valor concreto |
| 4 | `Arquitectura técnica` | Decisión técnica de stack / convención / configuración del cluster web | Operador aplica stack canónico (Astro 5 + Tailwind v3 + pnpm + Cloudflare) y convenciones técnicas (trailing slash, URL style GeoHub, deploy config) |
| 5 | `Tracking` | Datos reales de la web ya publicada o decisiones de configuración del stack de tracking | Google Search Console + GA4 + Rank Tracker + GMB Crush Geo Grid + UTM builder. Para datos post-launch: mínimo 30 días post-deploy |
| 6 | `Doctrina + Local Pack` | Doctrina dicta cómo interpretar el dato bruto del Local Pack. **Incluye los casos donde la doctrina no aporta en el output** (marcados explícitamente como "la doctrina no aporta en este output" — son Local Pack puro) | Google Maps clean session → buscar `[servicio] [ciudad]` → extraer top 5 (categoría, servicios, áreas, signals, reviews) + aplicar criterio doctrinal del paso cuando aporte |
| 7 | `Doctrina + Keyword research` | Doctrina dicta cómo filtrar e interpretar los datos de búsqueda. **Incluye los casos donde la doctrina no aporta** (marcados como "la doctrina no aporta en este output" — son Keyword research puro) | Ahrefs / Semrush / Google Keyword Planner → filtrar por intent + validar volumen + dificultad SERP top 10 + aplicar criterio doctrinal del paso cuando aporte |
| 8 | `Doctrina + Google Search` | Dato extraído de una búsqueda directa en Google (SERP completo: anuncios, orgánicos, AI Overview si aparece, related searches, PAA, snippets). **Incluye los casos donde la doctrina no aporta** (marcados como "la doctrina no aporta en este output" — son Google Search puro) | Google Search en sesión limpia → buscar `[query]` → leer SERP → extraer datos cualitativos (precios visibles, fuentes citadas, snippets informativos, queries relacionadas) + aplicar criterio doctrinal del paso cuando aporte |

> **Unificación de fuentes (refactor):** las fuentes standalone `Local Pack`, `Keyword research`, `Cliente confirmación` y `Google Search` se eliminaron del catálogo. Todos los outputs que las usaban se unificaron en sus respectivas combinaciones doctrinales (`Doctrina + X`).
>
> **Unificación adicional (`Doctrina + Cliente confirmación` eliminado):** la fuente `Doctrina + Cliente confirmación` también se eliminó. Sus 6 outputs se reasignaron así: los 4 con criterio doctrinal (14.1, 14.2, 14.4, 14.11) → `Cliente preflight + Doctrina GMB Crush`; los 2 sin criterio doctrinal (1.4, 16.1) → `Cliente preflight` (expandido a "todos los inputs del cliente"). Este movimiento simplifica el catálogo: todos los inputs del cliente viven bajo `Cliente preflight` (puro o combinado con doctrina), sin distinción entre "preflight inicial" y "confirmación durante ejecución".

> **Importante:** la fuente declara **de dónde sale el dato canónicamente**, no si la fuente se ha ejecutado. Si la fuente requiere tool externa y la IA no puede ejecutarla en el momento, la fuente NO cambia — lo que cambia es el **status** del output (`confirmed` / `⚠ inferido` / `validated` / `⚠ placeholder`). Detalle de status en `01-convenciones.md` §2.

---

## Descripción extendida + ejemplos de cada fuente

### Categoría 1 — Doctrina (3 fuentes)

Decisiones canónicas del sistema GMB Crush. No requieren tool externa. Vienen del manual doctrinal o son convenciones del operador alineadas con el sistema.

#### 1. `Doctrina GMB Crush`

Reglas literales del manual GMB Crush. La IA aplica la regla sin negociar.

**Ejemplos:**
- `4.3 Homepage URL` = `/` (constante doctrinal)
- `4.4 Service Overview URL pattern` = `/[primary-cat-slug]/[service-slug]/`
- `1.12 GeoArticles per Service (G)` = 3 (default doctrinal)
- `8.1 Priority Score Formula` = R + I + G + L + C + U (rango 6-30)

#### 4. `Arquitectura técnica`

Decisiones de stack canónico del cluster web. No vienen del manual, son convenciones del operador alineadas con el sistema.

**Ejemplos:**
- `4.2 Trailing Slash` = Yes
- `3.2 GeoHub URL Style` = Option A `/[main-city]/`
- `17.2 Proyecto Astro 5 + Tailwind v3 + pnpm`
- `18.5 Configuración Cloudflare`

#### 5. `Tracking`

Datos reales post-deploy o configuración del stack de tracking. Mínimo 30 días post-deploy para datos post-launch.

**Ejemplos:**
- `1.11 Approved Expansion Areas` (default vacío en Phase 1; se rellena con datos post-launch)
- `14.9 URL UTM preparada`
- `19.1 Tablero de vigilancia post-launch` = GSC + GA4 + Rank Tracker

---

### Categoría 2 — Cliente (2 fuentes)

Inputs declarados por el cliente — preflight inicial + inputs adicionales durante la ejecución.

#### 2. `Cliente preflight`

Cliente sin filtro doctrinal: declara su valor directamente.

**Ejemplos:**
- `1.1 Business Name` = "Cerrajeros Madrid 24h"
- `1.4 Full NAP` = nombre, calle, ciudad, CP, país, teléfono, email, horario
- `1.8 Physical Location City`
- `16.1 Identidad Visual y CSS Base` (web de referencia del cliente)

#### 3. `Cliente preflight + Doctrina GMB Crush`

Doctrina dicta el set válido o la regla + cliente declara cuál aplica.

**Ejemplos:**
- `1.3 GBP Lifecycle Status` (doctrina marca los 5 estados válidos: Not Created / Created / Verified / Pending / Suspended; cliente declara el suyo)
- `14.4 Modelo de negocio` (doctrina §10 dicta los 3 valores: Storefront / SAB / Hybrid; cliente declara según realidad)
- `14.11 Plan de fotos` (doctrina §16 dicta clasificación por tipo; cliente provee fotos reales)

---

### Categoría 3 — Tools externas (3 fuentes)

Combinaciones doctrinales: la doctrina dicta cómo interpretar el dato bruto que viene de una tool/ejecución externa. **Incluyen los casos donde la doctrina no aporta** (marcados como "la doctrina no aporta en este output" — son la tool externa pura).

#### 6. `Doctrina + Local Pack`

Análisis competitivo Maps. Google Maps clean session → buscar `[servicio] [ciudad]` → extraer top 5.

**Ejemplos:**
- `1.5 Planned Primary GBP Category` (categoría más repetida en top 5)
- `1.9 Servicios principales (S=5)` (top 5 frecuencia en Local Pack)
- `1.13 Preferred CTA` (la doctrina no aporta; Local Pack puro: CTA dominante en top 5)
- `14.10 Descripción GBP aprobada` (patrón doctrinal validado contra benchmarking top 5)

#### 7. `Doctrina + Keyword research`

Tools de keyword research. Ahrefs / Semrush / Google Keyword Planner → filtrar por intent + validar volumen + dificultad SERP top 10.

**Ejemplos:**
- `3.4 GeoArticle Topics propuestos` (KR por core service + filtrar intent GEO + validar volumen)
- `8.3 Search Intent` (la doctrina no aporta; KR puro: % queries transaccionales)

#### 8. `Doctrina + Google Search`

Búsqueda directa Google (SERP qualitative). Sesión limpia → leer SERP → extraer datos cualitativos.

**Ejemplos:**
- `8.2 Revenue Value` (la doctrina no aporta; 3 búsquedas: precio + margen + volumen)

---

## Notación de herencia `← X.Y` (no es fuente)

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

## Pseudo-fuentes

### `Info heredada` (notación, no fuente)

Estructural: valor que ya existe upstream y se recicla. Notación `← X.Y`. No genera valor nuevo, solo trazabilidad.

| Notación | Qué es | Tool / método |
|---|---|---|
| `← X.Y` | Valor que ya existe en un output upstream y se usa tal cual o transformado por una regla simple del paso (slugify, count, suma, mapping doctrinal). No es una fuente que genere valor nuevo, es trazabilidad | Lectura del output `← X.Y` referenciado en "Hereda info de pasos anteriores". No requiere tool externa |

**Ejemplos:**
- `2.5 Variable S` ← 1.9 (cuenta los core services del intake)
- `4.13 Validación Slugs limpios` ← 2.2 (lectura)
- `7.11 Matriz de enlaces obligatorios` ← 3.5 (lectura)

### `no aplica`

Output marcado como no aplicable en doctrina. Se mantiene en el listado para preservar la numeración pero no produce valor.

**Ejemplos identificados:**
- `3.12 Notes estratégicas por fila` — comentarios libres del operador, no output formal
- `10.3 CMS + capabilities` — el stack canónico está definido en 17.2
- `15.13 Validación datos verificables` — ya está definido en 9.15
- `16.3 Propuesta de Diseño aprobada` — el sistema deriva diseño de tokens (16.1), sin ciclo mockup→aprobación
- `17.1 Acta de Lectura y Autocontraste` — convertido a procedimiento operativo previo (checklist)

**Total `no aplica`:** 5 outputs.

---

## Validación

Para cada output declarado en un a-doc, el valor de la columna `Fuente` o `Fuentes para Decidir` debe:

1. **Estar literalmente en el catálogo de 8 arriba**, o
2. **Ser una notación de herencia válida** (`← X.Y` apuntando a un output existente), o
3. **Combinar herencia + fuente formal** (`← X.Y + Fuente`), o
4. **Ser `no aplica`** (output con valor null por doctrina)

Cualquier otra etiqueta (e.g. `Doctrina`, `Local Pack` puro cuando debería ser `Doctrina + Local Pack`, `Cliente confirma`, `Preflight N`, `Operador decisión`, `Diseño`, `IA sin respaldo`, `Datos de búsqueda`, `Competidores`, `Decisión de diseño`) es inválida — son etiquetas operativas o conceptuales que se mapean al catálogo formal y deben sustituirse.

---

## Por qué el catálogo es cerrado

Sin un catálogo cerrado, cada paso podría inventar etiquetas distintas (`SEO research`, `Análisis sectorial`, `Estimación AI`...) y la trazabilidad se rompe. Las 8 fuentes se organizan en **4 categorías**:

### Categoría 1 — Doctrina (3 fuentes)
Decisiones canónicas. No requieren tool externa.
- **Doctrina del manual** → `Doctrina GMB Crush`
- **Decisión técnica del stack** → `Arquitectura técnica`
- **Tracking (setup o post-launch)** → `Tracking`

### Categoría 2 — Cliente (2 fuentes)
Inputs declarados por el cliente.
- **Cliente sin filtro doctrinal** → `Cliente preflight`
- **Cliente con filtro doctrinal** → `Cliente preflight + Doctrina GMB Crush`

### Categoría 3 — Tools externas (3 fuentes)
Combinaciones doctrinales.
- **Análisis competitivo Maps** → `Doctrina + Local Pack`
- **Tools de keyword research** → `Doctrina + Keyword research`
- **Búsqueda directa Google (SERP qualitative)** → `Doctrina + Google Search`

### Categoría 4 — Info heredada (notación, no fuente)
Valor que ya existe upstream y se recicla.
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

## Resumen de outputs por bloque y por fuente

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
> **5 outputs marcados `no aplica`** (3.12, 10.3, 15.13, 16.3, 17.1).

> Para la lista detallada de los 242 outputs con su fuente y método de obtención, ver: `Sistema 2 / 02fuentes-y-outputs.md` Parte 2 (referencia consolidada del operador).
