# Las 8 fuentes válidas

> Cada output del sistema declara una fuente. Si la fuente no está en este catálogo, es **inválida**.

---

## Categoría 1 — Doctrina (3 fuentes)

### 1. `Doctrina GMB Crush`

Valor que dicta literalmente la doctrina del manual GMB Crush.

- **Tool / método:** lectura directa de las reglas. La IA aplica la regla literal sin tools externas.
- **Cantidad:** 44 outputs (37 puros + 6 con herencia + 1 con preflight).
- **Ejemplo:** `1.12 GeoArticles per Service (G)` → `G=3` (constante doctrinal default).

### 2. `Arquitectura técnica`

Decisión técnica de stack / convención / configuración del cluster web.

- **Tool / método:** operador aplica stack canónico (Astro 5 + Tailwind v3 + pnpm + Cloudflare) y convenciones técnicas (trailing slash, URL style GeoHub, deploy config).
- **Cantidad:** 4 outputs (3.2 GeoHub URL Style, 4.2 Trailing Slash, 17.2 Stack canónico, 18.5 Setup Cloudflare).

### 3. `Tracking`

Datos reales de la web ya publicada o decisiones de configuración del stack de tracking.

- **Tool / método:** Google Search Console + GA4 + Rank Tracker + GMB Crush Geo Grid + UTM builder.
- **Para datos post-launch:** mínimo 30 días post-deploy.
- **Cantidad:** 4 outputs (1.11 Approved Expansion Areas, 14.9 URL UTM, 14.19 Tracking baseline, 19.1 Tablero vigilancia).

---

## Categoría 2 — Cliente (2 fuentes)

### 4. `Cliente preflight`

Inputs declarados por el cliente — preflight inicial (8 campos del Bloque 0) + inputs adicionales durante la ejecución sin filtro doctrinal (NAP completo, web de referencia para extracción de tokens visuales).

- **Tool / método:** lectura de `clientes/[slug]/preflight.md` para inputs iniciales + consulta directa al cliente durante ejecución para inputs adicionales. Tokens/credenciales se leen de entorno seguro, no del markdown.
- **Cantidad:** 10 outputs (4 directos preflight + 6 reasignados desde la antigua fuente "Cliente confirmación").
- **Outputs sin filtro doctrinal:** 1.4 Full NAP, 16.1 Identidad Visual.

### 5. `Cliente preflight + Doctrina GMB Crush`

Doctrina dicta el set válido o la regla + cliente declara cuál aplica según su realidad (preflight inicial o durante ejecución).

- **Tool / método:** doctrina del paso dicta categorías/valores válidos + cliente declara su valor concreto.
- **Cantidad:** 5 outputs.
- **Ejemplos:**
  - `1.3 GBP Lifecycle Status` → doctrina dicta los 5 estados + cliente declara cuál aplica.
  - `14.1 GBP creado o plan` → §7 web-first + cliente declara timing.
  - `14.4 Modelo de negocio` → §10 dicta los 3 modelos + cliente declara realidad operativa.

---

## Categoría 3 — Tools externas (3 fuentes, todas combinadas con doctrina)

### 6. `Doctrina + Local Pack`

Doctrina dicta cómo interpretar el dato bruto del Local Pack. Incluye los casos donde la doctrina no aporta criterio (marcados explícitamente como "la doctrina no aporta en este output" — son Local Pack puro).

- **Tool / método:** Google Maps clean session → buscar `[servicio] [ciudad]` → extraer top 5 (categoría, servicios, áreas, signals, reviews) + aplicar criterio doctrinal del paso cuando aporte.
- **Cantidad:** 13 outputs (9 con criterio doctrinal + 3 sin criterio + 1 mixto).
- **Detalle:** `doctrina/fuentes-tools-externas.md`.

### 7. `Doctrina + Keyword Research`

Doctrina dicta cómo filtrar e interpretar los datos de búsqueda. Incluye los casos donde la doctrina no aporta.

- **Tool / método:** Ahrefs / Semrush / Google Keyword Planner → filtrar por intent + validar volumen + dificultad SERP top 10 + aplicar criterio doctrinal.
- **Cantidad:** 4 outputs (3.4 con criterio + 8.3, 8.6, 14.13 sin criterio).

### 8. `Doctrina + Google Search`

Dato extraído de una búsqueda directa en Google (SERP completo). Incluye los casos donde la doctrina no aporta.

- **Tool / método:** Google Search en sesión limpia → buscar `[query]` → leer SERP → extraer datos cualitativos + aplicar criterio doctrinal.
- **Cantidad:** 1 output (8.2 Search Intent sin criterio).

---

## Notación especial — `Info heredada` (← X.Y)

**No es una fuente** — es trazabilidad. Indica que el output reutiliza valor de uno upstream sin transformación significativa.

- **Notación:** `← 1.4` significa "hereda del output 1.4". La fuente real del output es la del origen heredado.
- **Cantidad:** 161 outputs heredan de otros (mayoría del sistema).
- **Ejemplos:**
  - `5.4 Spec Service Page` hereda de `← 4.5` (Service URL Schema).
  - `2.5 Variable S` hereda de `← 1.9` (count de servicios).

---

## Outputs `no aplica` (5 conceptuales)

Outputs que existen en la doctrina del manual original pero **no aplican en el flujo actual** del sistema. Se conservan con su razón documentada.

| Output | Razón |
|---|---|
| 3.12 Notes estratégicas por fila | Stack canónico fijado en 17.2; las notas viven en commits de git, no en spreadsheet |
| 10.3 CMS + capabilities | Stack canónico fijado en 17.2 (Astro+Tailwind+pnpm+Cloudflare). El CMS del cliente es irrelevante |
| 15.13 Validación datos verificables | Solapamiento con 9.7 (No fake location) y 18.4 (Auditoría rastros). Cubierto por suite QA consolidada |
| 16.3 Propuesta de Diseño aprobada | El sistema deriva diseño extrayendo tokens de la web ref del cliente (16.1), sin ciclo mockup→aprobación |
| 17.1 Acta de Lectura y Autocontraste | La IA writer ya valida coherencia inline en Paso 15 |

Detalle: `doctrina/no-aplica.md`.

---

## Validación

Para cada output declarado en un a-doc o consolidado, el valor de la columna `Fuente` debe:

1. **Estar literalmente en el catálogo de 8 arriba**, o
2. **Ser una notación de herencia válida** (`← X.Y` apuntando a un output existente), o
3. **Combinar herencia + fuente formal** (`← X.Y + Fuente`), o
4. **Ser `no aplica`** con razón documentada en `doctrina/no-aplica.md`.

Cualquier otra etiqueta (e.g. `Diseño`, `Operador decisión`, `Datos de búsqueda`, `Competidores`, `Cliente confirmación` standalone, `IA sin respaldo`) es **inválida** — son etiquetas obsoletas que se mapean al catálogo.

**Implementación:** `scripts/qa-check.ts` valida que toda fuente declarada esté en el catálogo.
