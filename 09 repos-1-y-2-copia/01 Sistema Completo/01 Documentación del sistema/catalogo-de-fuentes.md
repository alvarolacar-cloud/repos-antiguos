# Catálogo de fuentes — GMB Crush V6.4

Fase 2 de trazabilidad del sistema GMB Crush. Un archivo por paso, asignando a cada decisión su fuente real, su dato en cascada y la regla concreta que aplica.

---

## Estructura de cada tabla

Cada archivo `XXb-decisiones-tomadas-y-fuentes.md` usa **7 columnas**:

```text
ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento
```

- **ID** — identificador único de la fila (`X.YY`).
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` si el valor nace en esta fila; `← X.YY` (o `← X.YY, Z.ZZ`) si cascadea de filas previas.
- **Funcionamiento** — referencia canónica `§X` del documento ejecutable del paso (`XXa-ejecucion-...md`).

---

## Catálogo de Fuentes

Hay **6 fuentes** y **4 combinaciones permitidas** con `+`. Total: 10 valores posibles en la columna Fuente.

### Fuentes únicas

| # | Fuente | Cuándo aplica |
|---|---|---|
| 1 | GMB Crush | La doctrina dicta directamente la decisión y aporta el valor (regla canónica, fórmula, default). |
| 2 | Input humano | El cliente proporciona el valor directamente, sin filtro doctrinal. |
| 3 | Decisión de diseño | El operador o agencia elige el valor con criterios de UX, conversión o legibilidad. |
| 4 | Competidores | Excepcional — solo si la decisión nace exclusivamente del análisis competitivo sin doctrina detrás. |
| 5 | Datos de búsqueda | Excepcional — solo si la decisión nace exclusivamente del keyword research sin doctrina detrás. |
| 6 | IA sin respaldo | La IA inventa el valor. Solo aplica a placeholders del ejemplo (datos del proceso QA, etc.). Pendiente sustituir por dato real antes de producción. |

### Combinaciones permitidas

| # | Fuente combinada | Cuándo aplica |
|---|---|---|
| 7 | GMB Crush + Competidores | La doctrina dicta tomar la decisión y dirige a competidores para obtener el valor. Aplica a: servicios core, categorías GBP, candidate LCAs, trust signals, GBP Category Relevance, Competition Gap. |
| 8 | GMB Crush + Datos de búsqueda | La doctrina dicta tomar la decisión y dirige a keyword research para obtener el valor. Aplica a: topics GeoArticles, Q&A del GBP, Google Posts, Search Intent. |
| 9 | GMB Crush + IA sin respaldo | La doctrina dicta la estructura/regla y la IA genera el valor concreto pendiente de validar. Aplica a: copy redactado, argumentos por sección, entidades por validar. |
| 10 | GMB Crush + Input humano | La doctrina dicta tomar la decisión y dirige al cliente para obtener el dato. Caso raro — ej. Revenue Value en Priority Score. |

---

## Reglas de uso

### Regla 1 — Fuente única vs combinada

```text
Una sola fuente   = quien la pone es quien la dicta y aporta el valor.
Fuente combinada  = la doctrina dicta tomar la decisión y dirige a otra fuente para obtener el valor.
```

### Regla 2 — La doctrina manda, las otras fuentes alimentan

```text
GMB Crush dicta estructuras, page types, patrones URL, schema, internal linking,
QA, redacción y reglas de no invención. Competidores y Datos de búsqueda no
dictan la arquitectura — validan valores concretos.
```

### Regla 3 — Cascadas

```text
Si una decisión usa un servicio, categoría, topic, score o claim heredado,
la columna Dato en cascada debe señalar la fila origen con `← X.YY`.
Si combina varias filas: `← X.YY, Z.ZZ`. Si es un rango: `← X.YY–X.ZZ`.
```

### Regla 4 — `Qué dicta la fuente` no repite la Decisión

```text
Antes de aceptar una celda, comprueba:
1. ¿Aporta info que NO está en Decisión + Ejemplo?
2. ¿Responde a una de estas tres preguntas?
   - POR QUÉ: la razón / motivo operativo
   - CÓMO:    la fórmula / método / regla concreta
   - PRINCIPIO: el concepto subyacente
3. ¿Cumple 6-12 palabras (máx 12, hard cap 15)?
```

### Regla 5 — Claims no publicables sin validar

```text
Rangos numéricos (precios, tiempos, garantías), marcas concretas, normativa
concreta, métricas de cobertura ("intervenimos con frecuencia") no son
publicables salvo que haya input humano, keyword research, competidores o
documentación real detrás.
```

---

## Filtrado de tareas

```text
Cerradas:    Fuente ∈ {GMB Crush solo, Input humano, Decisión de diseño}
             Y Dato en cascada apunta a fila ya cerrada (o `no`).

Pendientes:  Fuente contiene `Competidores`, `Datos de búsqueda` o `IA sin respaldo`.
             O Dato en cascada apunta a fila pendiente.
```

---

## Archivos por paso (19 archivos · 494 decisiones)

| Bloque | Paso | Archivo | Filas |
|---|---|---|---:|
| 1 — Fundamentos | 01 — Intake Form | `paso-01-intake-form/01b-decisiones-tomadas-y-fuentes.md` | 47 |
| 1 — Fundamentos | 02 — Fórmula maestra | `paso-02-formula-maestra-arquitectura/02b-decisiones-tomadas-y-fuentes.md` | 28 |
| 1 — Fundamentos | 03 — Matriz base | `paso-03-matriz-base/03b-decisiones-tomadas-y-fuentes.md` | 35 |
| 2 — Arquitectura | 04 — URL Rules | `paso-04-url-rules/04b-decisiones-tomadas-y-fuentes.md` | 18 |
| 2 — Arquitectura | 05 — Page Type Rules | `paso-05-page-type-rules/05b-decisiones-tomadas-y-fuentes.md` | 19 |
| 2 — Arquitectura | 06 — Estructura contenido + LCAs | `paso-06-estructura-contenido-areas-cobertura-local/06b-decisiones-tomadas-y-fuentes.md` | 13 |
| 2 — Arquitectura | 07 — Internal Linking | `paso-07-internal-linking-rules/07b-decisiones-tomadas-y-fuentes.md` | 18 |
| 3 — Priorización | 08 — Priority Score | `paso-08-priority-score/08b-decisiones-tomadas-y-fuentes.md` | 15 |
| 3 — Priorización | 09 — QA Checklist | `paso-09-qa-checklist/09b-decisiones-tomadas-y-fuentes.md` | 23 |
| 3 — Priorización | 10 — Producción en fases | `paso-10-produccion-en-fases/10b-decisiones-tomadas-y-fuentes.md` | 17 |
| 4 — Automatización | 11 — Pseudocódigo | `paso-11-pseudocodigo-sistema/11b-decisiones-tomadas-y-fuentes.md` | 16 |
| 4 — Automatización | 12 — Master Prompt | `paso-12-master-prompt/12b-decisiones-tomadas-y-fuentes.md` | 20 |
| 4 — Automatización | 13 — Sistema final operativo | `paso-13-sistema-final-operativo/13b-decisiones-tomadas-y-fuentes.md` | 18 |
| 6 — GBP | 14 — GBP Creation & Website Alignment | `paso-14-gbp-creation-website-alignment/14b-decisiones-tomadas-y-fuentes.md` | 47 |
| 5 — Salida a Mercado | 15 — Redacción de contenido | `paso-15-redaccion-contenido/15b-decisiones-tomadas-y-fuentes.md` | 38 |
| 5 — Salida a Mercado | 16 — Extracción diseño y layout | `paso-16-extraccion-diseno-layout/16b-decisiones-tomadas-y-fuentes.md` | 32 |
| 5 — Salida a Mercado | 17 — Constructor del sitio | `paso-17-constructor-sitio/17b-decisiones-tomadas-y-fuentes.md` | 36 |
| 5 — Salida a Mercado | 18 — QA y deploy | `paso-18-qa-deploy/18b-decisiones-tomadas-y-fuentes.md` | 41 |
| 5 — Salida a Mercado | 19 — Acciones futuro y escalado | `paso-19-acciones-futuro-escalado/19b-decisiones-tomadas-y-fuentes.md` | 13 |

---

## Resumen del ejemplo Cerrajeros Madrid 24h (494 decisiones)

### Distribución de fuentes

| Fuente | Cantidad | % | Estado |
|---|---:|---:|---|
| GMB Crush | 372 | 75.3% | Cerrada |
| Decisión de diseño | 32 | 6.5% | Cerrada |
| GMB Crush + Competidores | 24 | 4.9% | Pendiente — validar Local Pack |
| GMB Crush + Datos de búsqueda | 23 | 4.7% | Pendiente — keyword research |
| Input humano | 21 | 4.3% | Cerrada |
| GMB Crush + IA sin respaldo | 17 | 3.4% | Pendiente — validar copy |
| IA sin respaldo | 3 | 0.6% | Pendiente — placeholder |
| GMB Crush + Input humano | 1 | 0.2% | Pendiente — validar con cliente |

### Estado general

```text
Cerradas:    425 decisiones (~86%)
Pendientes:  68 decisiones  (~14%) — todas validables con análisis externo
Cascadas:    199 decisiones (~40%) usan `← X.YY`
```

### Hallazgos principales

- Pasos 4, 5, 7, 11, 12, 13 son framework puro (Fuente única `GMB Crush` en el 100% de filas).
- Paso 1 concentra los inputs del cliente (NAP, GBP status, dominio): 14 filas con `Input humano`.
- Paso 3 tiene 15 GeoArticles con `GMB Crush + Datos de búsqueda` — topics pendientes de keyword research.
- Pasos 1, 2, 14 concentran las cascadas hacia los servicios core 1.34–1.38 y categorías 1.16–1.18.
- Paso 16 está dominado por `Decisión de diseño` (29 de 32 filas) — el operador define tokens y layouts.
- Las 8 Candidate LCAs (1.24–1.31) y los 5 servicios core (1.34–1.38) son `GMB Crush + Competidores`.
- El CTA principal (1.42) y todos los tokens visuales del Paso 16 son `Decisión de diseño`.
- 0 filas superan las 12 palabras en `Qué dicta la fuente`. Media: 8.6 palabras.
