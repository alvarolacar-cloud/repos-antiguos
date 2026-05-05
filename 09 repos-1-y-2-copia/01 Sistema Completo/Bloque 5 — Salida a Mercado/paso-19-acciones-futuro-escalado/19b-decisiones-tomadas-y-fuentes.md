# Paso 19 — Acciones Futuro y Escalado

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`19a-ejecucion-acciones-futuro-escalado.md`).

---

## Bloque 1 — Vigilancia post-launch

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 19.01 | Se decide medir el flujo GeoArticle → Location | GA4: eventos de click en puentes narrativos (Paso 15 §14.5); páginas/sesión cuando entrada es GeoArticle | GMB Crush | Sin medirlo no se sabe si el contenido informativo convierte | no | §7.1 |
| 19.02 | Se decide medir la autoridad del GeoHub | GSC: impresiones y posiciones de /madrid/ para queries informativas amplias | GMB Crush | GeoHub estancado señala thin content o link interno débil | no | §7.2 |
| 19.03 | Se decide medir la conversión del Servicio Core en su LBS | GA4: tasa de envío de formulario y clicks `tel:` en /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | Conversión LBS es la métrica final de éxito del cluster | no | §7.3 |

## Bloque 2 — Criterios de escalado a páginas de barrio

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 19.04 | Se decide el orden de construcción (SO → LBS → GeoArticles → Páginas de Barrio) | Cluster base completo antes de evaluar barrios | GMB Crush | Construir barrios sin LBS asentada produce páginas zombie | no | §8.3 |
| 19.05 | Se decide aplicar la regla "2 de 3 triggers cumplidos" para autorizar páginas de barrio | Ejemplo Almagro: pendiente — esperar baseline 4–8 semanas | GMB Crush | Escalar sin tracción real diluye autoridad de la LBS | no | §9.4 |
| 19.06 | Se decide validar Trigger 1 (Location ya responde) con métricas concretas | LBS Cerrajero urgente Madrid: pendiente medir | GMB Crush | Sin LBS rankeando, una página de barrio no tiene base | no | §9.1 |
| 19.07 | Se decide validar Trigger 2 (GeoArticles traen tráfico) con métricas concretas | GeoArticles del cluster Cerrajero urgente: pendiente medir | GMB Crush | Sin GeoArticles activos no hay tráfico que captar por barrio | no | §9.2 |
| 19.08 | Se decide validar Trigger 3 (SERP cambia con barrio) con análisis del §10 | Análisis SERP por barrio pendiente de ejecutar | GMB Crush | Si SERP no cambia con barrio, una página dedicada no escala | no | §9.3 |

## Bloque 3 — Análisis SERP por barrio

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 19.09 | Se decide documentar input del análisis: servicio + ciudad + barrio | Servicio: Cerrajero urgente; Ciudad: Madrid; Barrio: [a definir por candidato] | GMB Crush | Sin input concreto el análisis no es comparable entre candidatos | no | §10.1 |
| 19.10 | Se decide ejecutar doble búsqueda en Google ("servicio ciudad" vs "servicio barrio") | Búsquedas reales en Google con resultados orgánicos comparados | GMB Crush + Datos de búsqueda | Si las dos SERPs son iguales, el barrio no genera intención propia | no | §10.2 |
| 19.11 | Se decide responder las 4 preguntas de comparación SERP | Las 4 preguntas: similitud, páginas específicas, URLs orientadas al barrio, intención mantenida | GMB Crush + Competidores | Sin las 4 preguntas la comparación es subjetiva e irreproducible | no | §10.2 |
| 19.12 | Se decide clasificar el resultado en Escenario A (sin segmentación) o B (con segmentación) | Pendiente de ejecutar para cada candidato | GMB Crush + Competidores | Clasificación binaria evita zonas grises en la decisión final | no | §10.2 |
| 19.13 | Se decide documentar output con decisión CREAR / NO CREAR + justificación + nivel de confianza | Output completo con decisión, justificación 3–5 líneas, confianza Alta/Media/Baja | GMB Crush | Sin output documentado la decisión no es auditable a futuro | no | §10.3 |
