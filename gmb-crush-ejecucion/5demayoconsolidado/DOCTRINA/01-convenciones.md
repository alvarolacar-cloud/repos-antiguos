# 01 Convenciones del sistema GMB Crush

> Documento maestro de convenciones del repo. Unifica las 3 secciones que vivían en archivos separados (esqueleto canónico, convenciones de ejecución, convenciones de fidelidad al original). Fuente: `Sistema 2 / 01 Teoria / 00 convenciones / 00convenciones.md`.

**Tabla de contenidos:**

1. [Esqueleto canónico de un a-doc](#1-esqueleto-canónico-de-un-a-doc) — forma del a-doc, IDs, formato §5/§8, catálogo de Fuentes
2. [Convenciones de ejecución](#2-convenciones-de-ejecución) — marcadores `⚠ inferido` / `confirmed` / `⚠ placeholder` / `validated`
3. [Convenciones de fidelidad al original](#3-convenciones-de-fidelidad-al-original) — referencia rápida; doctrina completa en `04-fidelidad.md`

> **Cross-refs:**
> - Las 7 reglas de fidelidad y el protocolo anti-invención completo viven en `04-fidelidad.md`.
> - El catálogo cerrado de las 8 fuentes válidas vive en `03-fuentes.md`.
> - El flujo global del sistema (Bloques 0-7) vive en `02-flujo.md`.

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

- **Fuente** = una de las 8 del catálogo (ver `03-fuentes.md`). Indica de DÓNDE sale el output (doctrina / cliente / diseño / análisis competitivo / análisis búsqueda / combinaciones).
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
5. Fuentes solo del catálogo (ver `03-fuentes.md`). Combinaciones inventadas no se permiten.
6. **Cross-refs cross-paso por Output ID** (`Paso-NN N.X`), no por sección.
7. **§5 tabla con 5 columnas** (ID / Output / Tipo / Fuente / Hereda de), no 4.
8. **§8 tabla con 5 columnas** (ID / Hereda de / Output y valor / Cómo se obtiene + Fuente / Status). Es la fuente única de la trazabilidad consolidada — sustituye al b-doc.

## Catálogo de Fuentes

> El catálogo único de las 8 fuentes válidas vive en `03-fuentes.md` (junto con la notación de herencia `← X.Y` y las reglas de status). Cualquier valor en la columna `Fuente` de §5 o `Cómo se obtiene + Fuente` de §8 debe pertenecer a ese catálogo.

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
2. **Fuentes están en el catálogo** (las 8 declaradas en `03-fuentes.md`; no inventar)
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

1. La `Fuente` del campo (según `03-fuentes.md`) requiere tool externa: `Local Pack`, `Keyword research`, o cualquier combinación `GMB Crush + X` donde X requiere tool externa.
2. La IA **no ejecutó** la acción externa real y sustituyó por inferencia plausible o conocimiento sectorial.

### Cuándo NO aplicar

No aplicar `⚠` cuando:

- `Fuente: Doctrina GMB Crush` (puro) — doctrina aplicada directamente.
- `Fuente: Cliente preflight` — lo declara el cliente, no se infiere.
- `Fuente: Arquitectura técnica` — el operador elige.
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

Añadir columna `Status` con uno de los 5 valores válidos:

| Valor | Significado |
|---|---|
| `confirmed` | Fuente Cliente preflight / Doctrina GMB Crush / Arquitectura técnica |
| `validated` | Fuente Doctrina + Local Pack / Keyword research / Google Search **con** tool externa ejecutada |
| `⚠ inferido` | Fuente requiere tool externa pero la IA estimó **sin** ejecutarla |
| `⚠ placeholder` | Esperando dato del cliente |
| `no aplica` | Marcado como no aplicable en doctrina |

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

> Esta sección es un puntero rápido. La doctrina completa de fidelidad (las 7 reglas + casos reales + protocolo + verificación post-fix) vive en `04-fidelidad.md`.

## Principio fundacional

**El original GMB Crush es read-only para doctrina. El esqueleto canónico es libre para estructura.**

- Doctrina = afirmaciones cuantitativas, fórmulas, escalas, reglas, valores específicos del cliente, listas de outputs
- Estructura = tablas resumen, cross-refs entre pasos, numeración `Paso.X`, secciones "Info heredada" / "Validación operativa" / "Outputs Consolidados"

Lo que se añade al esqueleto tiene que ser trazable a una fuente real (otro paso del original, decisión documentada del operador, derivación neutra). Nunca inventar la fuente.

## Las 7 reglas — resumen

1. **Verificación bidireccional** antes de declarar un output (¿el original lo lista como output, o solo lo aplica?)
2. **Los 7 patrones de invención prohibidos** (outputs inventados / outputs robados / doctrina inventada / doctrina cambiada / doctrina omitida / cambios silenciosos / datos del cliente fabricados)
3. **Qué SÍ está permitido añadir** (numeración `Paso.X`, tablas "Info heredada", cross-refs, reformulación estructural)
4. **Protocolo antes de portar un paso** (leer original completo, listar outputs nativos, identificar intake, identificar secciones doctrinales)
5. **Cuando el original tiene ambigüedad o contradicción** (NO resolver silenciosamente — flagear con `> **Nota de fidelidad:**`)
6. **Cuando el original es escueto** (portar literal, no inventar expansiones)
7. **Verificación post-fix** (grep anti-invenciones, diff explicable, Bloque IV intacto, numeración consistente)

> Para cada regla con caso real detectado y ejemplos, ver: `04-fidelidad.md §3`.

---

# 4. Condiciones de paso entre bloques

> Para el flujo global completo del sistema, ver: `02-flujo.md`. Aquí solo recordatorio.

## Orden global

```
Bloque 0 — Preflight       (8 inputs del cliente)
    ↓ todos los campos rellenos
Bloque 1 — Fundamentos     (Pasos 1, 2, 3 — 42 outputs)
    ↓ 42 outputs con valor (admite ⚠)
Bloque 2 — Arquitectura    (Pasos 4, 5, 6, 7 — 57 outputs)
    ↓ 57 outputs con valor (admite ⚠)
Bloque 3 — Priorización    (Pasos 8, 9, 10 — 43 outputs)
    ↓ 43 outputs con valor (admite ⚠)
Bloque 4 — Automatización  (Pasos 11, 12, 13 — 41 outputs)
    ↓ 41 outputs con valor
Bloque 5 — Salida a Mercado (Pasos 15, 16, 17, 18, 19 — 39 outputs)
    ↓ sitio LIVE + ≥30 días tracking GSC/GA4
Bloque 6 — Info que falta  (agregador de ⚠ — GATE)
    ↓ tabla vacía (todos los ⚠ → confirmed/validated)
Bloque 7 — GBP             (Paso 14 — 20 outputs)
```

**Regla de oro:** el único gate con cero tolerancia es Bloque 6 → 7. Para los Bloques 1-5, los `⚠` son aceptables — la IA los marca y continúa.
