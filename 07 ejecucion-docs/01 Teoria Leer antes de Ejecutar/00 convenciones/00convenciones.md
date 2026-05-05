# 00 Convenciones del sistema GMB Crush

> Documento maestro de convenciones del repo. Unifica las 3 secciones que vivían en archivos separados (esqueleto canónico, convenciones de ejecución, convenciones de fidelidad al original).

**Tabla de contenidos:**

1. [Esqueleto canónico de un a-doc](#1-esqueleto-canónico-de-un-a-doc) — forma del a-doc, IDs, formato §5/§8, catálogo de Fuentes
2. [Convenciones de ejecución](#2-convenciones-de-ejecución) — marcadores `⚠ inferido` / `confirmed` / `⚠ placeholder` / `validated`
3. [Convenciones de fidelidad al original](#3-convenciones-de-fidelidad-al-original) — los 7 patrones de invención prohibidos + protocolo

---
---

# 1. Esqueleto canónico de un a-doc

> Versión literal del chat · Sistema GMB Crush para webs locales. Esqueleto canónico para a-docs (`NNa-ejecucion-*.md`). Proveniencia: extraído de `02a-ejecucion-formula-maestra-arquitectura.md` (commit c27c56c).

Cada a-doc tiene **4 bloques**. Solo 4.

## Vista general

```
┌──────────────────────────────────────────────────────────────┐
│ Bloque I — Introducción                                      │
│ ─────────────────────────                                    │
│ • Objetivo: qué hace este paso, lista de outputs, errores    │
│ • Info heredada: qué inputs vienen de pasos anteriores       │
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ Bloque II — Ejemplo rellenado                                │
│ ──────────────────────────────                               │
│ Una sección corta por cada output con su valor concreto:     │
│   N.1 — [Output 1]: [valor para Cerrajeros]                  │
│   N.2 — [Output 2]: [valor para Cerrajeros]                  │
│   N.3 — [Output 3]: [valor para Cerrajeros]                  │
│   ... (X sub-secciones, una por output)                      │
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ Bloque III — Ejecución por la IA                             │
│ ─────────────────────────────────                            │
│ §5 Outputs a Conseguir → tabla con los X outputs             │
│                          (ID / Output / Tipo / Fuente /      │
│                           Hereda de)                         │
│                                                              │
│ §6 Obtención de Outputs → X sub-secciones, UNA POR OUTPUT    │
│                            Cada sub-sección explica:         │
│                            • qué es ese output               │
│                            • cómo se obtiene                 │
│                            • ejemplos correctos              │
│                            • ejemplos incorrectos            │
│                            • la regla operativa final        │
│                                                              │
│ §7 Checklist Final → lista de ☐ que validar antes de cerrar  │
│                                                              │
│ §8 Outputs Consolidados → tabla compacta row-per-output con  │
│                            ID / Hereda de / Output y valor / │
│                            Cómo se obtiene + Fuente / Status │
│                            (absorbe lo que antes estaba en   │
│                            el b-doc — fuente única de verdad)│
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│ Bloque IV — Fuentes Internas GMB Crush                       │
│ ──────────────────────────────────────                       │
│ Lista de frameworks GMB Crush en los que se basa el paso     │
└──────────────────────────────────────────────────────────────┘
```

## El truco mental: los outputs aparecen 4 veces

Cada output del paso aparece en cuatro sitios distintos del a-doc, con el mismo ID `N.X`:

1. **En §4 (Bloque II)** — con su valor concreto para Cerrajeros (en prosa o tabla)
2. **En §5 Outputs a Conseguir** — listado en tabla declarativa (ficha técnica: ID / Output / Tipo / Fuente / Hereda de)
3. **En §6 Obtención de Outputs** — explicado con prosa, fórmula, ejemplos correctos/incorrectos, regla, validación, fuente, método
4. **En §8 Outputs Consolidados** — tabla compacta row-per-output (ID / Hereda de / Output y valor / Cómo se obtiene + Fuente / Status)

Son cuatro vistas del mismo conjunto de outputs. Por eso hay que mantener los **mismos IDs** (`N.1`, `N.2`, ..., `N.X`) en los cuatro sitios.

> **Nota:** §8 absorbe lo que antes vivía en un b-doc separado. La consolidación tabular y el a-doc viven en el mismo archivo — sin drift entre docs, sin cross-refs cruzados, una única fuente de verdad por paso.

## Cómo se nombra cada cosa

| Elemento | Formato |
|---|---|
| Título del doc | `# Paso N — [Título]` |
| Sección top-level | `## [Nombre]` con `<small>§N</small>` debajo |
| Sub-sección | `### [Nombre]` con `<small>§N.M</small>` debajo |
| ID de output | `N.X` (ej. `2.7` = output 7 del Paso 2) |
| Cross-ref interna | `§6.5` (mismo doc, refiere a sub-sección) |
| Cross-ref externa | `Paso-NN N.X` (otro paso, refiere a output ID, NO a sección) |

**El §X siempre va debajo del título en `<small>`, NUNCA dentro del título.**

**Cross-refs externas siempre por Output ID** (`Paso-NN N.X`), no por sección (`Paso N §X`). Esto hace las refs robustas frente a futuros cambios de numeración interna.

## Tabla §5 Outputs a Conseguir — formato exacto

```markdown
| ID  | Output           | Tipo                  | Fuente                  | Hereda de       |
|-----|------------------|-----------------------|-------------------------|-----------------|
| N.1 | [Nombre output]  | [String/Entero/etc.]  | GMB Crush               | Paso-(N-1) X.Y  |
| N.2 | [Nombre output]  | [Tipo]                | Decisión de diseño      | —               |
| N.3 | [Nombre output]  | [Tipo]                | GMB Crush + Input humano| —               |
```

- **Fuente** = una de las 10 del catálogo (ver `02fuentes-y-outputs.md`). Indica de DÓNDE sale el output (doctrina / cliente / diseño / análisis competitivo / análisis búsqueda / combinaciones).
- **Hereda de** = output ID del paso anterior cuyo valor se usa. Si es output nuevo (no hereda), poner `—`.

## Outputs compuestos — Formato A vs Formato B

Cuando un output contiene múltiples valores (ej. lista de slugs, NAP con 8 campos), tienes **dos formatos posibles**:

### Formato A — Una fila, valores agregados (default)

```markdown
| 2.4 | Service Slugs (S=5) | URL-safe strings | GMB Crush | Paso-01 1.9 |
```

Y en §8 Outputs Consolidados (formato compacto):

```markdown
| 2.4 | ← 1.9 | **Service Slugs (5)** = `cerrajero-urgente, apertura-puertas, cambio-cerraduras, cambio-bombines, instalacion-cerraduras-seguridad` | Generados con la fórmula de Paso-02 §6.4. **Fuente:** GMB Crush. | confirmed |
```

**Usar cuando:** los N valores son del mismo tipo, mismo status, sin sub-categorización. La IA lee "es una lista de N elementos" sin ambigüedad.

### Formato B — Multi-fila con MISMO ID (sub-categorización)

```markdown
| 1.10 | Direct LCAs (proximidad NAP) | Lista | GMB Crush | Paso-01 1.4 (NAP) |
| 1.10 | Candidate LCAs (validables con test GEO) | Lista | GMB Crush + Competidores | — |
```

Y en §8 Outputs Consolidados (formato compacto):

```markdown
| 1.10 | ← 1.4 | **Direct LCAs** = `Almagro, Chamberí` | Calculadas por proximidad NAP (Paso-01 §6.10). **Fuente:** GMB Crush. | confirmed |
| 1.10 | — | **Candidate LCAs** = `Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad` | Validadas con test GEO (Paso-01 §6.10). **Fuente:** GMB Crush + Competidores. | confirmed |
```

**Usar cuando:**
- Hay sub-categorías semánticamente distintas (ej. NAP tiene 8 campos: Name, Street, City, etc.)
- Cada sub-categoría tiene metadata propia (Fuente distinta, Status distinto, Hereda de distinto)
- Aporta legibilidad significativa vs lista comma-separated

### Cuándo NO usar ni A ni B — Tabla aparte

Para outputs con 10+ valores (URL Matrix, GeoArticle Topics), se usa una **tabla detallada en §4 Bloque II Ejemplo** con su propio formato (columns específicas del output). El §8 Outputs Consolidados solo muestra un resumen y referencia esa tabla.

### Decisión rápida

```
¿Tu output tiene...

  Un solo valor escalar?
  → Formato A, valor literal en §8

  2-5 valores cortos del mismo tipo?
  → Formato A, comma-separated

  2-5 valores con sub-categorías o metadata distinta?
  → Formato B (multi-fila mismo ID)

  6+ campos distintos como un NAP?
  → Formato B (multi-fila mismo ID)

  10+ valores estructurados (URLs, topics)?
  → Tabla aparte en §4, §8 referencia el resumen
```

## Reglas mínimas

1. Solo 4 bloques (I / II / III / IV). No añadir más sin discusión.
2. Un §X = una sección. Numeración fija: §2 Objetivo, §3 Heredados, §4 Ejemplo, §5 Outputs a Conseguir, §6 **Obtención de Outputs**, §7 Checklist, §8 Outputs Consolidados, §9 Fuentes.
3. **§4, §5, §6 y §8 tienen los mismos X outputs con los mismos IDs `N.1`–`N.X`**. Si añades un output, lo añades en los 4 sitios.
4. Cada §6.X explica un solo output (mapeo 1:1).
5. Fuentes solo del catálogo (ver abajo). Combinaciones inventadas no se permiten.
6. **Cross-refs cross-paso por Output ID** (`Paso-NN N.X`), no por sección.
7. **§5 tabla con 5 columnas** (ID / Output / Tipo / Fuente / Hereda de), no 4.
8. **§8 tabla con 5 columnas** (ID / Hereda de / Output y valor / Cómo se obtiene + Fuente / Status). Es la fuente única de la trazabilidad consolidada — sustituye al b-doc.

## Catálogo de Fuentes

> El catálogo único de las 10 fuentes válidas vive en `02fuentes-y-outputs.md` (junto con la notación de herencia `← X.Y` y las reglas de status). Cualquier valor en la columna `Fuente` de §5 o `Cómo se obtiene + Fuente` de §8 debe pertenecer a ese catálogo.

## Si el paso necesita algo extra

Algunos pasos tienen contenido específico que no encaja en los 4 bloques estándar (ej. el módulo doctrinal de zonas GEO en Paso 1, los 6 page types específicos del Paso 5).

En esos casos, se añade un **bloque extra** entre Bloque III y Bloque IV:

```
Bloque I — Introducción
Bloque II — Ejemplo rellenado
Bloque III — Ejecución por la IA
Bloque IV — [Apéndice específico del paso]   ← extra
Bloque V — Fuentes Internas GMB Crush usadas
```

Y se documenta el bloque extra en el callout "Cómo leer este documento" del top.

## Validación manual

Sobre cada a-doc construido se debe verificar manualmente:

1. **Cross-refs internas resuelven** (no hay §X rotos en el cuerpo)
2. **Fuentes están en el catálogo** (las 10 declaradas arriba; no inventar)
3. **§5 (declaración) y §8 (consolidación) tienen los mismos IDs de outputs**
4. **Cross-refs externas `Paso-NN N.X` apuntan a outputs que existen** en el a-doc destino

> **Nota:** los checks de "refs b-doc → a-doc" y "cobertura outputs ↔ rows" se eliminaron al consolidar el b-doc dentro del a-doc. La trazabilidad ahora vive en §8 del propio a-doc.

---
---

# 2. Convenciones de ejecución

> Reglas operativas que aplican a la IA cuando ejecuta cualquier paso del sistema GMB Crush. No son doctrina del sistema (que vive en los Xa) — son reglas de **honestidad de output**: cómo declarar qué está confirmado vs qué está inferido cuando faltan herramientas externas.

## Regla 1 — Marcador `⚠` para outputs inferidos

Cuando la IA ejecuta un paso y un campo necesita acción externa real (abrir Google Maps para Local Pack, consultar keyword tool para Datos de búsqueda) pero la IA NO tiene acceso a esa herramienta en el momento, el output debe llevar el marcador `⚠` con un sufijo que indique qué se necesita para validar.

### Cuándo aplicar `⚠`

Aplicar cuando se cumplen las **dos** condiciones:

1. La `Fuente` del campo (según `02fuentes-y-outputs.md`) requiere tool externa: `Local Pack`, `Keyword research`, o cualquier combinación `GMB Crush + X` donde X requiere tool externa.
2. La IA **no ejecutó** la acción externa real y sustituyó por inferencia plausible o conocimiento sectorial.

### Cuándo NO aplicar

No aplicar `⚠` cuando:

- `Fuente: GMB Crush` (puro) — doctrina aplicada directamente.
- `Fuente: Input humano` — lo declara el cliente, no se infiere.
- `Fuente: Decisión de diseño` — el operador elige.
- La IA **sí ejecutó** la acción externa (browser, keyword tool, etc.) → marcar como `validated` opcional.

## Formato del marcador

### En texto libre

```text
§9 Planned Primary GBP Category: Heating contractor  ⚠ inferido — pendiente Local Pack real
```

### En listas

```text
Servicios principales (5 core services)  ⚠ inferidos — pendiente Local Pack real:
  1. Instalación de aerotermia
  2. Mantenimiento de aerotermia
  ...
```

### En tablas

Añadir columna `Status` con uno de tres valores:

| Valor | Significado |
|---|---|
| `confirmed` | Fuente Input humano / GMB Crush / Decisión de diseño |
| `⚠ inferido` | Fuente Competidores / Datos / IA pero **sin** tool externa |
| `validated` | Fuente Competidores / Datos **con** tool externa ejecutada |

Ejemplo URL Matrix:

```text
| ID | URL | Schema | Priority | Phase | Status |
|---|---|---|---|---|---|
| HP | / | Organization + LocalBusiness | P1 | 1 | confirmed |
| SO-1 | /calefaccion/instalacion-aerotermia/ | Service | P1 | 1 | ⚠ inferido |
| GA-1 | /madrid/cuanto-cuesta-instalar-aerotermia/ | Article | P3 | 2 | ⚠ inferido |
```

## Regla 2 — Resumen de status al cierre de cada paso

Al terminar cada paso (Paso 1, 2, 3, ...), la IA debe entregar un bloque de cierre con la cuenta de outputs por status. Este bloque va al final del paso, antes de avanzar al siguiente.

### Plantilla de cierre

```text
## Resumen de status — Paso N

| Status | Cantidad | Acción pendiente |
|---|---:|---|
| confirmed | X | — |
| ⚠ inferido | Y | [tool externa necesaria, ej. "Abrir Google Maps de Madrid + Barcelona, extraer Local Pack top 5"] |
| ⚠ placeholder | Z | [acción del cliente, ej. "Confirmar teléfono y email reales"] |
```

### Ejemplo (Paso 1 Aeroterm)

```text
## Resumen de status — Paso 1 Aeroterm

| Status | Cantidad | Acción pendiente |
|---|---:|---|
| confirmed | 16 | — |
| ⚠ inferido | 25 | Abrir Google Maps de Madrid + Barcelona + París; extraer Local Pack top 5 para Primary Category, 5 servicios core, Candidate LCAs y trust signals del sector |
| ⚠ placeholder | 3 | Cliente debe confirmar: teléfono, email, dominio |
```

## Regla 3 — Outputs marcados ⚠ NO paralizan los Bloques 1-5

Los marcadores `⚠ inferido` y `⚠ placeholder` **no bloquean el avance** durante la construcción del cluster web (Bloques 1-5). La IA marca el output, sigue ejecutando, y la web puede llegar a producción (Paso 18 deploy) con esos marcadores presentes.

**Cuándo se inventa un dato (las 2 únicas situaciones legítimas):**

| Situación | Marcador | Origen |
|---|---|---|
| 1. El input es del cliente y el cliente no lo ha dado | `⚠ placeholder` | NAP incompleto, fotos no entregadas, web de referencia no provista, etc. |
| 2. Decidimos no ejecutar la fuente externa (velocidad / coste) | `⚠ inferido` | Local Pack, Keyword Research o Google Search no se ejecutaron — la IA estimó desde contexto |

> **Nota:** la fuente formal del output **no cambia** cuando se inventa el dato. Sigue siendo `Doctrina + Local Pack` aunque la IA no abrió Google Maps. Lo que cambia es el **status**. Esto preserva la trazabilidad: cuando un humano vea `⚠ inferido`, sabe exactamente qué tool tiene que ejecutar para promoverlo.

## Regla 4 — El bloqueo real ocurre entre Bloque 6 y Bloque 7

Tras cerrar el Bloque 5 (web LIVE en producción, posiblemente con `⚠`), el sistema entra al **Bloque 6 Info que falta** — un agregador que recoge todos los `⚠` heredados de Bloques 1-5 en una sola tabla.

**El Bloque 7 (GBP Creation) está bloqueado mientras esa tabla contenga aunque sea una fila.**

Razón: Google penaliza GBPs con NAP falso, fotos genéricas o categorías inventadas. La web sí puede salir con datos provisionales (se actualizan después y el deploy puede re-ejecutarse), pero el GBP es una entidad operativa que cuando se crea con datos falsos arriesga suspensión.

**Cómo se cierra cada `⚠`:**

1. Se obtiene el dato real (operador ejecuta tool externa para `⚠ inferido`, cliente entrega dato para `⚠ placeholder`).
2. Se actualiza el output original en el §8 del a-doc del bloque correspondiente.
3. Se promueve el status a `confirmed` o `validated`.
4. Se elimina la fila del agregador del Bloque 6.
5. Si el dato corregido afecta contenido publicado (NAP, fotos, schema), se dispara re-deploy parcial del cluster.
6. Cuando la tabla del Bloque 6 queda vacía → el Bloque 7 se desbloquea → el GBP se crea con datos confirmados.

## Por qué esta regla existe

Sin esta convención, hay dos extremos malos:

- **Extremo bloqueante:** cualquier `⚠` paraliza todo el sistema. Imposible avanzar mientras falten datos del cliente o tools no ejecutadas. La construcción se atasca antes de empezar.
- **Extremo permisivo:** los `⚠` llegan al GBP. Google suspende la ficha con NAP falso, fotos genéricas o categorías inventadas. El cliente publica datos falsos y arriesga su negocio.

El compromiso del sistema:

- **Web (Bloques 1-5)** → tolera `⚠`. Sale rápido a producción con datos provisionales. Se actualiza cuando los datos llegan.
- **GBP (Bloque 7)** → cero tolerancia a `⚠`. El Bloque 6 es el checkpoint donde se cierran todos antes de crear el GBP.

El marcador `⚠` hace explícito el **boundary entre lo que la IA sabe** (doctrina, preflight cliente) **y lo que la IA infiere** (Local Pack, keyword research) cuando faltan tools — sin paralizar el flujo, pero sin dejar que datos inventados lleguen al GBP.

---
---

# 3. Convenciones de fidelidad al original

> Reglas operativas para la IA cuando porta contenido del sistema GMB Crush original a los a-docs del esqueleto canónico. Complementa las Convenciones de ejecución (§2). Nace de la auditoría de Bloques 1-5 (mayo 2026) que detectó ~70 invenciones doctrinales en los 18 a-docs portados.

## Principio fundacional

**El original GMB Crush es read-only para doctrina. El esqueleto canónico es libre para estructura.**

- Doctrina = afirmaciones cuantitativas, fórmulas, escalas, reglas, valores específicos del cliente, listas de outputs
- Estructura = tablas resumen, cross-refs entre pasos, numeración `Paso.X`, secciones "Info heredada" / "Validación operativa" / "Outputs Consolidados"

Lo que añado al esqueleto tiene que ser trazable a una fuente real (otro paso del original, decisión documentada del operador, derivación neutra). Nunca inventar la fuente.

## Regla 1 — Verificación bidireccional antes de declarar un output

Para cada output `Paso.X` que vaya a declarar, hacer **un check obligatorio** antes de aceptarlo:

> **¿El original §X-Outputs del paso N lo lista, o el intake §4 del paso N lo rellena?**
>
> - **Sí** → output nativo del paso, OK
> - **No (pero se usa aquí)** → input heredado, va a tabla "Info heredada", NO a "Outputs a Conseguir"
> - **No (ni se usa)** → no debería estar en este paso

### Distinción crítica: producir ≠ aplicar

> "Producir" = el operador decide el valor en este paso.
> "Aplicar" = este paso usa el valor para construir algo.

**Ejemplo concreto del bug que originó esta regla:**

El slug `cerrajero` (Primary Category Slug):
- Se **decide** en intake del Paso 3 §4 ("Lo que tienes que rellenar")
- Se **aplica** en Paso 2 (fórmula maestra) y Paso 4 (URL Rules) y Paso 5 (page type rules)

Lo correcto:
- Paso 3: output nativo `3.X Primary Category Slug`
- Paso 2/4/5: input heredado en tabla "Info heredada del Paso 3"
- **NO** declarar `2.2 Primary Category Slug` ni `4.1 Primary Category Slug` como outputs nativos.

Aplica el mismo razonamiento a Brand tone, Primary Service, Main City Slug, Service Slugs, NAP, GBP categories, LCAs, trust signals, etc.

## Regla 2 — Los 7 patrones de invención prohibidos

Cuando porto contenido al esqueleto, evitar estos 7 patrones (cada uno con caso real detectado):

### 2.1 Outputs inventados

Promocionar a output del paso algo que el original no lista como output.

> **Caso real:** `5.1 Primary Service` y `5.2 Brand tone` declarados como outputs del Paso 5 cuando en el original son solo campos del intake del Paso 1.

### 2.2 Outputs robados de otro paso

Declarar como output nativo algo que en el original es output de otro paso anterior.

> **Caso real:** `2.2 Primary Category Slug`, `2.3 Main City Slug`, `2.4 Service Slugs` en Paso 2 cuando los slugs son output del Paso 3 (intake §4).

### 2.3 Doctrina inventada

Afirmaciones cuantitativas o cualitativas que no están en el original pero se citan como si fueran doctrinales.

> **Casos reales:**
> - `S_efectiva` como variable doctrinal (original solo usa `S`)
> - "29 filas / 580 celdas operativas" (original §27.3 dice 28 URLs)
> - Fórmula `E × (1 + S + A + G×S)` para Approved Expansion (no en original)
> - Distribución porcentual de anchors `~15% / ~25% / ~10%` (original no asigna %)
> - Threshold `≥3 enlaces contextuales por página` (original no declara mínimo)
> - 6ª categoría anchor "Local entity" (original lista 5)

### 2.4 Doctrina cambiada

Alterar literalmente lo que dice el original.

> **Casos reales:**
> - "AC añadido a outbound de Homepage" — original §8 / §20 solo cita SO + GeoHub + contacto
> - Schema Homepage con `FAQPage + Speakable` añadidos — original §16 dice solo `Organization, WebSite, LocalBusiness`
> - Formato IDs `SO-1` cuando el original §16 usa `SO-001`
> - Conteo de bloques estructurales por page type (SO 11 vs 12 del original, LBS 12 vs 13, AC 11 vs 12, GA 10 vs 11)

### 2.5 Doctrina omitida

No portar contenido literal del original al a-doc.

> **Caso real (el peor):** Paso 5 portado omite las 18 secciones doctrinales del original — los 6 "Ejemplo rellenado" + 6 "Ejemplos incorrectos" + 6 "Regla final" por page type (§7.10-§12.12 del original).

### 2.6 Cambios silenciosos

Modificar el original sin advertirlo. Tres tipos:

- **Erratas "arregladas":** original `Target long-tail llaveword` → portado `Target long-tail keyword`. NO arreglar.
- **Ambigüedades resueltas:** original §30.3 dice `areaServed: 4 LCAs ejemplo` → portado dice `areaServed: TODAS las 10 LCAs`. NO resolver — flagear.
- **Convenciones cambiadas:** formato IDs, casing, separadores. NO cambiar.

### 2.7 Datos del cliente fabricados

Añadir información concreta del cliente que el original no contiene.

> **Caso real:** Paso 6 portado tenía `streetAddress: "Calle Rafael Calvo 12", postalCode: "28010"` — el original solo dice "Madrid".

**Excepción NAP físico (decisión del operador, mayo 2026):** se permite enriquecer el ejemplo con datos físicos completos cuando son más realistas que el original Y el operador lo aprueba explícitamente. Documentar la excepción en el commit.

## Regla 3 — Qué NO es bug

Para evitar el otro extremo (eliminar enriquecimientos legítimos), explicitar lo que SÍ está permitido añadir:

- Numeración `Paso.X` (1.1-1.14, 2.1-2.14, etc.) — diseño del esqueleto canónico
- Tabla §3 "Info heredada de pasos anteriores" — trazabilidad
- Sección "Validación operativa" + "Cómo se obtiene" en cada output `§6.X` — método explícito
- Tabla §8 "Outputs Consolidados" — vista de cierre
- Cross-refs `Paso-NN N.X` — enlace entre pasos del esqueleto
- Reformulación estructural de prosa a tabla, manteniendo contenido literal
- Tablas resumen de listas largas del original
- "Errores que previene" derivados doctrinalmente del original
- Capa "ejemplo Cerrajeros Madrid 24h" — siempre que use valores del original

Ninguna de estas adiciones es bug. Lo que las convierte en bug es **inventar contenido dentro de ellas**.

## Regla 4 — Protocolo antes de portar un paso

Antes de tocar un a-doc, ejecutar 4 pasos:

1. **Leer el original COMPLETO** (no solo las secciones que crees que aplican). Buscar TODAS las listas numeradas — pueden coexistir 2 sets paralelos (caso Paso 12: 10 Reglas + 14 Reglas operativas).
2. **Listar los outputs nativos del paso** según el original §28-§30 (o equivalente "Outputs del Paso N"). Cualquier output que añadas fuera de esa lista necesita justificación de fuente.
3. **Identificar el intake del paso** (§4 "Lo que tienes que rellenar"). Esos son inputs del operador, NO outputs nativos. Si los uso en otros pasos van a "Info heredada".
4. **Identificar las secciones doctrinales por page type / sub-tema** ("Ejemplo rellenado", "Ejemplos incorrectos", "Regla final" en Paso 5; los 16 bloques del SOP en Paso 13). Portarlas literales aunque alarguen el doc.

## Regla 5 — Cuando el original tiene ambigüedad o contradicción

El original puede tener contradicciones internas (ej. Paso 10 tiene dos "Fase 5" distintas: §11 Optional Expansion Module y §26 GBP Creation).

> **Protocolo:**
> 1. NO resolver silenciosamente eligiendo una de las dos.
> 2. Documentar la ambigüedad en una nota: `> **Nota de fidelidad:** el original tiene dos secciones bajo "Fase 5"...`
> 3. Decidir cuál portar en consulta con el operador.
> 4. La sección no elegida queda referenciada con cross-ref pero NO desplazada.

## Regla 6 — Cuando el original es escueto

El original puede dar un campo como `1 low → 5 high` sin detallar. Tentación: expandir a 5 niveles narrativos.

> **Protocolo:**
> - Portar literal: si el original dice `1 low → 5 high`, escribir exactamente eso.
> - NO inventar 5 niveles narrativos.
> - Si el operador necesita la expansión, añadirla como `> Decisión de diseño: ...` con label explícito y firma del operador.

## Regla 7 — Verificación post-fix

Tras aplicar fixes a un paso, hacer 4 checks:

```
1. grep "29 filas|580 celdas|S_efectiva|FAQPage en HP|Local entity"  →  0 matches
2. wc -l antes vs después  →  diferencia explicable (omisiones restauradas suben, invenciones eliminadas bajan)
3. ¿Bloque IV Fuentes intacto?  →  sí
4. ¿Numeración de outputs consistente entre §2 / §5 / §6 / §7 / §8?  →  sí
```

Si algún check falla, el fix está incompleto.

## Por qué esta convención existe

Sin esta convención, la IA tiende a:
- Tratar el original como **input para sintetizar**, no como **contenido para portar**
- Confundir "se usa aquí" con "se produce aquí" (Regla 1)
- Llenar tablas del esqueleto subiendo material de pasos vecinos (Regla 2.2)
- "Completar" el original con conocimiento sectorial (Regla 2.3)
- Resolver ambigüedades silenciosamente (Regla 2.6)
- Omitir contenido doctrinal porque "ya está implícito" (Regla 2.5)

El resultado es un sistema portado que **parece más completo que el original** pero contiene afirmaciones que el operador nunca tomó. Si una de esas afirmaciones llega a producción (caso schema con dirección física inventada), el cliente publica datos falsos.

La regla operativa que evita todo esto en una frase: **el original es read-only para doctrina, el esqueleto es libre para estructura, y todo lo que añado tiene que ser trazable.**
