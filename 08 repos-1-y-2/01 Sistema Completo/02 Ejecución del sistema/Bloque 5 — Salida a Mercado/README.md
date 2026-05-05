# Bloque 5 — Salida a Mercado · Pasos 15–19

Versión añadida al sistema GMB Crush V6.4 existente.
No sustituye los 14 pasos actuales.
No modifica la arquitectura SEO, las reglas de URL, las decisiones/fuentes ni el Paso 14 de GBP.

---

## Objetivo de este bloque

Los pasos 1–14 responden a:

```text
qué páginas hay que crear
por qué existen
qué URL tienen
qué tipo de página son
cómo se conectan
qué fuente respalda cada decisión
cómo se alinea la web con el futuro GBP
```

Este bloque añade la capa que permite pasar de arquitectura SEO a web publicable:

```text
redacción final por URL
extracción de diseño
construcción web
QA de lanzamiento
escalado post-lanzamiento
```

---

## Pasos incluidos

| Paso | Carpeta | Archivos | Objetivo |
|---|---|---|---|
| 15 | `paso-15-redaccion-contenido/` | 15a + 15b + 15c | Convertir la arquitectura en contenido final por URL. |
| 16 | `paso-16-extraccion-diseno-layout/` | 16a + 16b | Extraer identidad visual, design tokens y layout-map. |
| 17 | `paso-17-constructor-sitio/` | 17a + 17b | Construir la web usando contenido + diseño + matriz de URLs. |
| 18 | `paso-18-qa-deploy/` | 18a + 18b | Auditar técnica, contenido, visual y rastros de IA antes de publicar + deploy a Cloudflare. |
| 19 | `paso-19-acciones-futuro-escalado/` | 19a + 19b | Medir, optimizar y decidir futuras expansiones sin romper la base. |

Cada paso sigue el patrón canónico V6.4:

- `XYa-ejecucion-{name}.md` — contenido canónico (reglas, fórmulas, ejemplo).
- `XYb-decisiones-tomadas-y-fuentes.md` — decisiones tomadas con fuente y funcionamiento.

El **Paso 15 añade un tercer archivo**:

- `15c-content-pack-por-url.md` — output ejecutable: copy completo por las 28 URLs SEO base + `/contacto/` listo para que el constructor del Paso 17 lo consuma sin reinterpretar.

---

## Regla de integración

Estos pasos se ejecutan **después** de tener cerrados los pasos 1–14.

```text
Pasos 1–14 = sistema SEO y entidad local
Pasos 15–19 = producción y salida al mercado
```

---

## Orden de ejecución

```text
1. Ejecutar pasos 1–14 del sistema principal.
2. Confirmar URL Matrix, Page Type Rules, Content Architecture, Internal Linking, Priority Score, Publishing Plan y QA base.
3. Ejecutar Paso 15 — Redacción final por URL (15a + 15b + 15c).
4. Ejecutar Paso 16 — Extracción de Diseño y Layout.
5. Ejecutar Paso 17 — Constructor del Sitio.
6. Ejecutar Paso 18 — QA y Deploy.
7. Publicar (final del Paso 18).
8. Crear GBP en Paso 14 si todavía no se hizo (regla web-first).
9. Ejecutar Paso 19 — Acciones Futuro y Escalado post-lanzamiento.
```

---

## Regla sobre competidores

La parte de competidores **no se ejecuta como paso propio en este bloque**.

Cuando haga falta análisis estructurado de competidores, se añadirá un paso separado de:

```text
Contraste con competidores
SERP validation
Local Pack analysis
Gap analysis
```

Hasta entonces, cualquier decisión que requiera datos de competidores debe quedar marcada en la columna `Fuente para la decisión` como:

```text
Competidores
```

con la frase fija de funcionamiento "Se valida con análisis de competencia (SERP analysis, gap competitivo). Requiere validación antes de confirmar." Y se documenta como pendiente de validación con análisis competitivo real.

---

## Base estable que no se reabre

Estos pasos no reabren decisiones cerradas:

```text
14 pasos principales
web-first
GBP después
Main City
Local Coverage Areas (Direct + Candidate)
Approved Expansion Areas
28 páginas SEO base
/contacto/ como página auxiliar
Tipos de página GMB Crush (Homepage, SO, LBS, AC, GeoHub, GeoArticle)
Duplicado de llaves como Additional Category Page (ejemplo)
```

---

## Output final esperado del bloque

Al terminar los pasos 15–19 debe existir:

```text
Content Pack por URL (15c)
Design Tokens en formato Tailwind
Layout Map por page type
Component Map (Button, Card, Hero, etc.)
Build funcional Astro + Tailwind + pnpm
SEO + schemas implementados y validados
QA de lanzamiento aprobado (35 criterios en verde)
Sitio publicado en Cloudflare Pages
Issue Log cerrado
Plan de seguimiento post-lanzamiento (3 métricas con baseline)
Plan de escalado condicionado (regla 2 de 3 triggers + análisis SERP por barrio)
```

---

## Catálogo de fuentes

Este bloque usa el catálogo de 10 fuentes definido en `Carpeta de trabajo/Decisiones y fuentes/V2-README.md`:

```text
GMB Crush
Input humano
Input humano + GMB Crush
Datos de búsqueda
Competidores
IA sin respaldo
GMB Crush + IA sin respaldo
Input humano + IA sin respaldo
IA heredada (paso X.YY)
Decisión de diseño
```

Cada decisión del archivo `XYb-decisiones-tomadas-y-fuentes.md` cita su fuente del catálogo y su frase fija de funcionamiento.

## Resumen de decisiones del bloque (160 decisiones)

| Paso | Decisiones |
|---|---:|
| 15 | 38 |
| 16 | 32 |
| 17 | 36 |
| 18 | 41 |
| 19 | 13 |
| **Total** | **160** |

Distribución por fuente:

| Fuente | Cantidad |
|---|---:|
| GMB Crush | 82 |
| Decisión de diseño | 30 |
| IA heredada | 27 |
| GMB Crush + IA sin respaldo | 18 |
| Input humano | 3 |
| Competidores | 0 |
| Datos de búsqueda | 0 |
| IA sin respaldo (puro) | 0 |

**Cero IA sin respaldo puro.** Todo el contenido nuevo está respaldado por una regla del framework, una decisión de diseño del operador, una herencia trazada o un input del cliente.
