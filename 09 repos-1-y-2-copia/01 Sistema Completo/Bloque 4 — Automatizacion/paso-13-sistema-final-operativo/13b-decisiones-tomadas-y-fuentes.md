# Paso 13 — Sistema Final Operativo

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`13a-ejecucion-sistema-final-operativo.md`).

---

## Bloque 1 — Consolidación del sistema

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 13.01 | Se decide consolidar el sistema en un SOP final | Sistema GMB Crush de 14 pasos | GMB Crush | SOP cerrado garantiza reproducibilidad entre proyectos | no | §7 |
| 13.02 | Se decide que el sistema empiece con Intake | Paso 1 | GMB Crush | Sin intake completo no hay datos para instanciar el cluster | no | §7 |
| 13.03 | Se decide que el sistema cierre con GBP después de la web | Paso 14 | GMB Crush | GBP sin web detrás no soporta sameAs ni schema integrado | no | §7 |

## Bloque 2 — Secuencia operativa

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 13.04 | Se decide calcular arquitectura antes de crear páginas | Paso 2 | GMB Crush | Sin fórmula maestra, las páginas crecen sin lógica de cluster | no | §21 |
| 13.05 | Se decide crear URL Matrix antes de producir | Paso 3 | GMB Crush | Producir sin URL Matrix genera URLs inconsistentes | no | §23 |
| 13.06 | Se decide aplicar URL Rules antes de publicar | Paso 4 | GMB Crush | URL Rules evitan slugs débiles y duplicados invisibles | no | §23 |
| 13.07 | Se decide definir Page Types antes de escribir contenido | Paso 5 | GMB Crush | Sin page type, copy y schema divergen entre páginas | no | §54.1 |
| 13.08 | Se decide definir estructura de contenido antes de enlazar | Paso 6 | GMB Crush | Sin estructura, los links cruzan secciones sin lógica | no | §54.1 |
| 13.09 | Se decide definir enlaces internos antes de publicar | Paso 7 | GMB Crush | Sin map de links la autoridad no fluye según jerarquía | no | §54.1 |
| 13.10 | Se decide usar Priority Score | Paso 8 | GMB Crush | Sin score por URL no hay orden objetivo de publicación | no | §54.1 |
| 13.11 | Se decide usar QA antes de publicar | Paso 9 | GMB Crush | Publicar sin QA mete deuda técnica imposible de auditar luego | no | §54.1 |
| 13.12 | Se decide publicar por fases | Paso 10 | GMB Crush | Publicar todo de golpe satura QA y oculta dependencias | no | §45 |
| 13.13 | Se decide convertir el sistema en pseudocódigo | Paso 11 | GMB Crush | Pseudocódigo permite auditar lógica antes de instanciarla | no | §54.1 |
| 13.14 | Se decide crear Master Prompt reutilizable | Paso 12 | GMB Crush | Un prompt único garantiza outputs reproducibles del sistema | no | §54.1 |

## Bloque 3 — Outputs finales

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 13.15 | Se decide que el sistema produzca matrices | URL Matrix, Schema Map, Linking Map, QA, Publishing Plan | GMB Crush | Matrices son los outputs operativos auditables del sistema | no | §54.2 |
| 13.16 | Se decide que el sistema se optimice con tracking | GMB Crush Geo Grid, GSC, GA4 | GMB Crush | Geo Grid + GSC + GA4 cubren ranking, query y conversión | no | §46 |
| 13.17 | Se decide que Local Coverage Areas refuercen contenido, no URLs | LCA como señales GEO | GMB Crush | LCA refuerza relevancia local sin generar URLs propias | no | §54.2 |
| 13.18 | Se decide que Approved Expansion Areas sean opcionales | None in Phase 1 | GMB Crush | Expansión sin tracción real produce páginas zombie | no | §54.2 |
