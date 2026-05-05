# Paso 13 — Sistema Final Operativo

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Fuente de la decisión** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` o `← X.YY`.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

---

## Bloque 1 — Consolidación del sistema

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 13.01 | Se decide consolidar el sistema en un SOP final | Sistema GMB Crush de 14 pasos | SOP cerrado garantiza reproducibilidad entre proyectos | GMB Crush | Sí | no | §7 |
| 13.02 | Se decide que el sistema empiece con Intake | Paso 1 | Sin intake completo no hay datos para instanciar el cluster | GMB Crush | Sí | no | §7 |
| 13.03 | Se decide que el sistema cierre con GBP después de la web | Paso 14 | GBP sin web detrás no soporta sameAs ni schema integrado | GMB Crush | Sí | no | §7 |

## Bloque 2 — Secuencia operativa

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 13.04 | Se decide calcular arquitectura antes de crear páginas | Paso 2 | Sin fórmula maestra, las páginas crecen sin lógica de cluster | GMB Crush | Sí | no |  Paso-13 §21; Paso-02 §23 |
| 13.05 | Se decide crear URL Matrix antes de producir | Paso 3 | Producir sin URL Matrix genera URLs inconsistentes | GMB Crush | Sí | no |  Paso-13 §23; Paso-03 §7 |
| 13.06 | Se decide aplicar URL Rules antes de publicar | Paso 4 | URL Rules evitan slugs débiles y duplicados invisibles | GMB Crush | Sí | no |  Paso-13 §23 |
| 13.07 | Se decide definir Page Types antes de escribir contenido | Paso 5 | Sin page type, copy y schema divergen entre páginas | GMB Crush | Sí | no |  Paso-13 §54.1 |
| 13.08 | Se decide definir estructura de contenido antes de enlazar | Paso 6 | Sin estructura, los links cruzan secciones sin lógica | GMB Crush | Sí | no |  Paso-13 §54.1 |
| 13.09 | Se decide definir enlaces internos antes de publicar | Paso 7 | Sin map de links la autoridad no fluye según jerarquía | GMB Crush | Sí | no |  Paso-13 §54.1 |
| 13.10 | Se decide usar Priority Score | Paso 8 | Sin score por URL no hay orden objetivo de publicación | GMB Crush | Sí | no |  Paso-13 §54.1 |
| 13.11 | Se decide usar QA antes de publicar | Paso 9 | Publicar sin QA mete deuda técnica imposible de auditar luego | GMB Crush | Sí | no |  Paso-13 §54.1; Paso-09 §34.1 |
| 13.12 | Se decide publicar por fases | Paso 10 | Publicar todo de golpe satura QA y oculta dependencias | GMB Crush | Sí | no |  Paso-13 §45 |
| 13.13 | Se decide convertir el sistema en pseudocódigo | Paso 11 | Pseudocódigo permite auditar lógica antes de instanciarla | GMB Crush | Sí | no |  Paso-13 §54.1 |
| 13.14 | Se decide crear Master Prompt reutilizable | Paso 12 | Un prompt único garantiza outputs reproducibles del sistema | GMB Crush | Sí | no |  Paso-13 §54.1 |

## Bloque 3 — Outputs finales

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 13.15 | Se decide que el sistema produzca matrices | URL Matrix, Schema Map, Linking Map, QA, Publishing Plan | Matrices son los outputs operativos auditables del sistema | GMB Crush | Sí | no |  Paso-13 §54.2; Paso-11 §22 |
| 13.16 | Se decide que el sistema se optimice con tracking | GMB Crush Geo Grid, GSC, GA4 | Geo Grid + GSC + GA4 cubren ranking, query y conversión | GMB Crush | Sí | no |  Paso-13 §46; Paso-10 §5 |
| 13.17 | Se decide que Local Coverage Areas refuercen contenido, no URLs | LCA como señales GEO | LCA refuerza relevancia local sin generar URLs propias | GMB Crush | Sí | no |  Paso-13 §54.2; Paso-06 §10; Paso-04 §15 |
| 13.18 | Se decide que Approved Expansion Areas sean opcionales | None in Phase 1 | Expansión sin tracción real produce páginas zombie | GMB Crush | Sí | no |  Paso-13 §54.2; Paso-02 §13; Paso-01 §16 |
