# Paso 8 — Priority Score

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

## Bloque 1 — Fórmula de prioridad

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 8.01 | Se decide usar una fórmula de seis factores | Revenue + Intent + GBP Relevance + Local Relevance + Gap + Urgency | Seis factores cubren valor, demanda, encaje y oportunidad | GMB Crush | Sí | no | §7 |
| 8.02 | Se decide no usar City Priority en la base | Se usa Local Relevance | Con una sola Main City, City Priority se vuelve constante | GMB Crush | Sí | no | §11 |

## Bloque 2 — Ejemplo canónico

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 8.03 | Se decide evaluar como ejemplo la LBS de Cerrajero urgente | /cerrajero/madrid/cerrajero-urgente/ | LBS de Main City es la página de mayor valor del cluster | GMB Crush | Sí | ← 1.34 |  Paso-08 §17; Paso-03 §13; Paso-05 §9 |
| 8.04 | Se asigna Revenue Value | 5 | Revenue se calcula con ticket medio y márgenes del cliente | GMB Crush + Input humano | Sí | no |  Paso-08 §8 |
| 8.05 | Se asigna Search Intent | 5 | Intent mide volumen y comercialidad de la query principal | GMB Crush + Datos de búsqueda | No | no |  Paso-08 §9 |
| 8.06 | Se asigna GBP Category Relevance | 5 | Mide encaje con catálogo GBP visto en el Local Pack real | GMB Crush + Competidores | No | no |  Paso-08 §10 |
| 8.07 | Se asigna Local Relevance | 5 | LBS de Main City siempre es estructuralmente relevante | GMB Crush | Sí | ← 1.20 |  Paso-08 §11; Paso-01 §12 |
| 8.08 | Se asigna Competition Gap | 4 | Mide hueco entre demanda y oferta competitiva en SERP | GMB Crush + Competidores | No | no |  Paso-08 §12 |
| 8.09 | Se asigna Conversion Urgency | 5 | Servicios de urgencia tienen ventana corta de decisión | Decisión de diseño | Sí | no |  Paso-08 §13 |
| 8.10 | Se calcula el score total | 29 | Suma directa permite comparar URLs sin pesos arbitrarios | GMB Crush | Sí | ← 8.04–8.09 |  Paso-08 §17 |
| 8.11 | Se asigna prioridad | P1 | Tiers (P1 ≥ 26) traducen score a orden de publicación | GMB Crush | Sí | ← 8.10 |  Paso-08 §17; Paso-08 §14 |

## Bloque 3 — Inventario completo

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 8.12 | Se decide asignar Priority Score a las 28 URLs SEO base | 28 URLs | Sin score por URL no hay orden objetivo de publicación | GMB Crush | Sí | no |  Paso-08 §31.1; Paso-03 §16 |
| 8.13 | Se decide que `/contacto/` tenga prioridad operativa, no SEO | Página auxiliar | Contacto convierte pero no captura tráfico orgánico | GMB Crush | Sí | no |  Paso-08 §31.1; Paso-02 §16 |
| 8.14 | Se decide que GeoArticles se prioricen después de sus páginas padre | GeoArticle después de LBS | Sin LBS publicada, el GeoArticle no tiene destino de conversión | GMB Crush | Sí | no |  Paso-08 §18; Paso-07 §13 |
| 8.15 | Se decide que la matriz completa de scores de las 28 URLs está documentada en el paso del sistema | Ver tabla completa con score y prioridad por URL | La tabla canónica vive en el SOP, no en este resumen | GMB Crush | Sí | no |  Paso-08 §31.1; Paso-03 §16 |
