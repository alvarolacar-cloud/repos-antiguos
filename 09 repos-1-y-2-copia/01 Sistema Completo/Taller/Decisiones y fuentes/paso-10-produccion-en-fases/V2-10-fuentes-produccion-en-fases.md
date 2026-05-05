# Paso 10 — Producción en Fases

Fase 2 de trazabilidad del sistema GMB Crush.

Fuentes permitidas:

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

---

## Bloque 1 — Capacidad y herramientas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 10.01 · Paso-10 §12 Calendario | Se define capacidad de publicación | IA sin respaldo | Valor generado para el ejemplo sin dato real ni confirmación humana. En cliente real es Input humano. | 5 páginas por semana |
| 10.02 · Paso-10 §12 Calendario | Se define equipo de producción | IA sin respaldo | Valor generado para el ejemplo sin dato real ni confirmación humana. En cliente real es Input humano. | SEO + Writer + Developer |
| 10.03 · Paso-10 §4 Stack técnico | Se define CMS | IA sin respaldo | Valor generado para el ejemplo sin dato real ni confirmación humana. En cliente real es Input humano. | WordPress |
| 10.04 · Paso-10 §4 Stack técnico | Se decide que se puede añadir schema | IA sin respaldo | Valor generado para el ejemplo sin dato real ni confirmación humana. En cliente real es Input humano. | Yes |
| 10.05 · Paso-10 §4 Stack técnico | Se decide que se pueden editar enlaces internos | IA sin respaldo | Valor generado para el ejemplo sin dato real ni confirmación humana. En cliente real es Input humano. | Yes |
| 10.06 · Paso-10 §5 Tracking | Se define tracking | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El stack canónico es GMB Crush Geo Grid + GSC + GA4. | GMB Crush Geo Grid, Google Search Console, GA4 |

## Bloque 2 — Fases de producción

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 10.07 · Paso-10 §7 Fase 1 | Se define Fase 1 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 1 = Entity Foundation. | Entity Foundation |
| 10.08 · Paso-10 §7 Fase 1 | Se decide publicar Homepage, contacto, Service Overview y GeoHub en Fase 1 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 1 cubre páginas de entidad y autoridad. | Semana 1 |
| 10.09 · Paso-10 §8 Fase 2 | Se define Fase 2 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 2 = Main City Conversion Layer. | Main City Conversion Layer |
| 10.10 · Paso-10 §8 Fase 2 | Se decide publicar LBS y Additional Category en Fase 2 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 2 cubre páginas de conversión local. | Páginas servicio + Madrid |
| 10.11 · Paso-10 §9 Fase 3 | Se define Fase 3 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 3 = Semantic Expansion. | Semantic Expansion |
| 10.12 · Paso-10 §9 Fase 3 | Se decide publicar 15 GeoArticles en Fase 3 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 3 publica los GeoArticles después de las landings. | 3 por servicio |
| 10.13 · Paso-10 §10 Fase 4 | Se define Fase 4 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 4 = Optimization Loop. | Optimization Loop |
| 10.14 · Paso-10 §11 Fase 5 | Se define Fase 5 | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Fase 5 = Optional Expansion Module. | Optional Expansion Module |
| 10.15 · Paso-10 §11 Fase 5 | Se decide no activar expansión inicial | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La expansión es opcional, requiere aprobación. | None in Phase 1 |

## Bloque 3 — GBP después de la web

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 10.16 · Paso-10 §7 Fase 1 | Se decide crear el GBP después de publicar la web base | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Web-first: GBP en Paso 14 después de publicar la web. | Paso 14 |
| 10.17 · Paso-10 §7 Fase 1 | Se decide que el GBP no se cree antes de tener páginas core publicadas | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Web-first: páginas core antes de GBP. | Web-first |
