# Paso 8 — Priority Score

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`08a-ejecucion-priority-score.md`).

---

## Bloque 1 — Fórmula de prioridad

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 8.01 | Se decide usar una fórmula de seis factores | Revenue + Intent + GBP Relevance + Local Relevance + Gap + Urgency | GMB Crush | Seis factores cubren valor, demanda, encaje y oportunidad | no | §7 |
| 8.02 | Se decide no usar City Priority en la base | Se usa Local Relevance | GMB Crush | Con una sola Main City, City Priority se vuelve constante | no | §11 |

## Bloque 2 — Ejemplo canónico

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 8.03 | Se decide evaluar como ejemplo la LBS de Cerrajero urgente | /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | LBS de Main City es la página de mayor valor del cluster | ← 1.34 | §17 |
| 8.04 | Se asigna Revenue Value | 5 | GMB Crush + Input humano | Revenue se calcula con ticket medio y márgenes del cliente | no | §8 |
| 8.05 | Se asigna Search Intent | 5 | GMB Crush + Datos de búsqueda | Intent mide volumen y comercialidad de la query principal | no | §9 |
| 8.06 | Se asigna GBP Category Relevance | 5 | GMB Crush + Competidores | Mide encaje con catálogo GBP visto en el Local Pack real | no | §10 |
| 8.07 | Se asigna Local Relevance | 5 | GMB Crush | LBS de Main City siempre es estructuralmente relevante | ← 1.20 | §11 |
| 8.08 | Se asigna Competition Gap | 4 | GMB Crush + Competidores | Mide hueco entre demanda y oferta competitiva en SERP | no | §12 |
| 8.09 | Se asigna Conversion Urgency | 5 | Decisión de diseño | Servicios de urgencia tienen ventana corta de decisión | no | §13 |
| 8.10 | Se calcula el score total | 29 | GMB Crush | Suma directa permite comparar URLs sin pesos arbitrarios | ← 8.04–8.09 | §17 |
| 8.11 | Se asigna prioridad | P1 | GMB Crush | Tiers (P1 ≥ 26) traducen score a orden de publicación | ← 8.10 | §17 |

## Bloque 3 — Inventario completo

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 8.12 | Se decide asignar Priority Score a las 28 URLs SEO base | 28 URLs | GMB Crush | Sin score por URL no hay orden objetivo de publicación | no | §31.1 |
| 8.13 | Se decide que `/contacto/` tenga prioridad operativa, no SEO | Página auxiliar | GMB Crush | Contacto convierte pero no captura tráfico orgánico | no | §31.1 |
| 8.14 | Se decide que GeoArticles se prioricen después de sus páginas padre | GeoArticle después de LBS | GMB Crush | Sin LBS publicada, el GeoArticle no tiene destino de conversión | no | §18 |
| 8.15 | Se decide que la matriz completa de scores de las 28 URLs está documentada en el paso del sistema | Ver tabla completa con score y prioridad por URL | GMB Crush | La tabla canónica vive en el SOP, no en este resumen | no | §31.1 |
