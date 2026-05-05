# Fuente 01 — `Doctrina GMB Crush`

> **Qué es:** valor que dicta literalmente la doctrina del manual GMB Crush.
> **Tool / método:** lectura del a-doc del paso. La IA aplica la regla literal sin tools externas.

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya `Fuente` incluye `Doctrina GMB Crush` (sea pura o combinada con herencia / Cliente preflight), con el detalle completo de cada output.

---

## Outputs puros — Solo `Doctrina GMB Crush` (37 outputs)

### 1.12 GeoArticles per Service (G)
- **Qué es:** número de GeoArticles por core service (variable G de la fórmula maestra).
- **Para qué sirve:** factor multiplicador en 2.7 → genera G×S GeoArticles totales.
- **Dato que buscamos:** `[entero G según doctrina]`.
- **Cómo se obtiene:** La doctrina dicta G=3 por defecto.
  - **Fuente:** `Doctrina GMB Crush`. Default doctrinal `G=3`.

### 3.11 Default Page Status
- **Qué es:** estado inicial de cada fila (`Planned`).
- **Para qué sirve:** marca conceptualmente que la URL existe en la matriz pero no está construida ni publicada.
- **Dato que buscamos:** `[estado Planned como default]`.
- **Cómo se obtiene:** Marcamos todas las filas con estado `Planned` por defecto. Pasarán a `In Progress` y `Published` durante Bloque 5.
  - **Fuente:** `Doctrina GMB Crush`. Constante doctrinal.

### 4.3 Homepage URL
- **Qué es:** URL de la Homepage — siempre raíz `/`.
- **Para qué sirve:** alimenta 5.1 Spec Homepage, schema Organization root.
- **Dato que buscamos:** `[siempre raíz /]`.
- **Cómo se obtiene:** La Homepage siempre es la raíz `/` del dominio.
  - **Fuente:** `Doctrina GMB Crush`. Constante doctrinal.

### 4.4 Service Overview URL pattern
- **Qué es:** patrón de URL para Service Overview pages — `/[primary-cat-slug]/[service-slug]/`.
- **Para qué sirve:** instancia × S core services en la matriz 3.5.
- **Dato que buscamos:** `[patrón /[primary-cat]/[service]/ aplicado a cada core service]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[primary-cat-slug]/[service-slug]/` a cada uno de los S core services.
  - **Fuente:** `Doctrina GMB Crush`. Patrón constante doctrinal.

### 4.6 Location-Based Service URL pattern
- **Qué es:** patrón para LBS — `/[primary-cat-slug]/[main-city-slug]/[service-slug]/`.
- **Para qué sirve:** instancia × S × Main City (S LBS pages).
- **Dato que buscamos:** `[patrón LBS aplicado a cada core service en Main City]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[primary-cat-slug]/[main-city-slug]/[service-slug]/`.
  - **Fuente:** `Doctrina GMB Crush`. Patrón constante doctrinal.

### 4.7 Additional Category URL pattern
- **Qué es:** patrón para AC — `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/`.
- **Para qué sirve:** instancia × A categorías con página propia.
- **Dato que buscamos:** `[patrón AC aplicado a cada Additional Category con página propia]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/`.
  - **Fuente:** `Doctrina GMB Crush`. Patrón constante doctrinal.

### 4.8 GeoArticle URL pattern
- **Qué es:** patrón para GAs — `/[main-city-slug]/[topic-slug]/`.
- **Para qué sirve:** instancia × G×S combinaciones.
- **Dato que buscamos:** `[patrón GA aplicado a cada G×S combinación de topic]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[main-city-slug]/[topic-slug]/`.
  - **Fuente:** `Doctrina GMB Crush`. Patrón constante doctrinal.

### 4.11 Validación No "near me"
- **Qué es:** validación binaria — 0 URLs con patrón `near-me` o variantes.
- **Para qué sirve:** evita anti-pattern SEO local.
- **Cómo se asigna:**
  - **Pass** → 0 URLs match `near-?me`.
  - **Fail** → ≥1 URL con `near-me`.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Comprobamos las URLs contra blacklist `near-me` y variantes.
  - **Fuente:** `Doctrina GMB Crush`. Comprobación regex contra blacklist.

### 4.12 Validación No adjetivos vacíos
- **Qué es:** validación binaria — 0 URLs con `best`, `cheap`, `top-rated`, `professional`, etc.
- **Para qué sirve:** evita keyword stuffing en path.
- **Cómo se asigna:**
  - **Pass** → 0 URLs match blacklist.
  - **Fail** → ≥1 URL con adjetivo vacío.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Comprobamos las URLs contra blacklist de adjetivos vacíos doctrinal.
  - **Fuente:** `Doctrina GMB Crush`. Comprobación regex contra blacklist.

### 4.15 Validación No duplicar intención
- **Qué es:** validación binaria — 0 pares de URLs cubren la misma intención (servicio + ciudad + topic).
- **Para qué sirve:** evita canibalización SEO.
- **Cómo se asigna:**
  - **Pass** → 0 duplicados detectados.
  - **Fail** → ≥1 par con misma intención.
- **Dato que buscamos:** `[resultado del check + lista de duplicados detectados]`.
- **Cómo se obtiene:** Cruzamos las URLs por intención (servicio + ciudad + topic) y detectamos pares solapados.
  - **Fuente:** `Doctrina GMB Crush`. Cruce semántico de URLs.

### 5.7 Validación Schema por tipo de página
- **Qué es:** validación binaria — schema asignado coincide con el page type esperado.
- **Para qué sirve:** filtro QA aplicable a las 6 page types.
- **Cómo se asigna:**
  - **Pass** → todos los schemas matchean el page type.
  - **Fail** → ≥1 page type con schema incorrecto.
- **Dato que buscamos:** `[resultado del check + lista de fallos]`.
- **Cómo se obtiene:** Comprobamos que cada page type tiene el schema doctrinal correcto.
  - **Fuente:** `Doctrina GMB Crush`. Aplicar regla doctrinal por page type.

### 5.8 Validación Word count por intención
- **Qué es:** validación binaria — word count dentro del rango doctrinal por page type.
- **Para qué sirve:** filtro QA, evita contenido thin o overstuffed.
- **Cómo se asigna:**
  - **Pass** → todos los page types dentro del rango doctrinal.
  - **Fail** → ≥1 page type fuera de rango.
- **Dato que buscamos:** `[resultado del check + word count por page type]`.
- **Cómo se obtiene:** Comparamos el word count de cada page type contra los rangos doctrinales.
  - **Fuente:** `Doctrina GMB Crush`. Rangos doctrinales por page type.

### 6.4 Principio 4 — Mencionar zona ≠ crear página
- **Qué es:** principio doctrinal — mencionar una zona en contenido o anchor text NO obliga a crear URL para esa zona.
- **Para qué sirve:** filtro QA contra inflación.
- **Dato que buscamos:** `[regla aplicada al contenido y enlaces]`.
- **Cómo se obtiene:** Aplicamos el principio: una mención en contenido o anchor no genera URL.
  - **Fuente:** `Doctrina GMB Crush`. Aplicar regla.

### 6.13 Ejemplo práctico completo (sección cobertura)
- **Qué es:** bloque modelo de "sección cobertura" para una LBS (ejemplo doctrinal).
- **Para qué sirve:** referencia para redacción (15.X).
- **Dato que buscamos:** `[bloque modelo redactado aplicando arquitectura LBS]`.
- **Cómo se obtiene:** Redactamos un bloque modelo aplicando la arquitectura LBS doctrinal como referencia para los redactores.
  - **Fuente:** `Doctrina GMB Crush`. Redacción siguiendo arquitectura 6.8.

### 6.14 FAQ ejemplo
- **Qué es:** 4-6 FAQs modelo que mencionen LCAs naturalmente.
- **Para qué sirve:** referencia para 6.16, 15.X.
- **Dato que buscamos:** `[4-6 Q&A modelo con menciones LCA naturales]`.
- **Cómo se obtiene:** Redactamos 4-6 FAQs modelo siguiendo la doctrina §FAQ con menciones naturales de LCAs.
  - **Fuente:** `Doctrina GMB Crush`. Redacción siguiendo doctrina FAQ.

### 6.16 FAQs con cobertura natural
- **Qué es:** validación binaria — FAQs no contienen keyword stuffing de LCAs.
- **Para qué sirve:** filtro QA.
- **Cómo se asigna:**
  - **Pass** → FAQs naturales, LCAs mencionadas con contexto.
  - **Fail** → ≥1 FAQ con LCAs forzadas/listadas.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Validamos las FAQs contra blacklist de keyword stuffing de LCAs.
  - **Fuente:** `Doctrina GMB Crush`. Validación contra blacklist.

### 7.1 Regla 1 — Enlazar arriba/abajo/lateral
- **Qué es:** regla doctrinal — cada URL del cluster tiene enlaces en 3 direcciones.
- **Para qué sirve:** alimenta 7.11 Matriz, 9.11 QA enlaces.
- **Dato que buscamos:** `[regla aplicada: cada URL ≥1 inbound, ≥1 outbound up, ≥1 outbound lateral]`.
- **Cómo se obtiene:** Aplicamos la regla doctrinal: cada URL tiene enlaces en las 3 direcciones (arriba al parent, abajo a hijos, lateral a peers).
  - **Fuente:** `Doctrina GMB Crush`. Aplicar regla a la matriz 7.11.

### 7.10 Regla 10 — Enlaces contextuales primero
- **Qué es:** regla doctrinal — enlaces inline antes que footer/sidebar.
- **Para qué sirve:** filtro QA placement.
- **Dato que buscamos:** `[regla aplicada al placement de enlaces]`.
- **Cómo se obtiene:** Aplicamos la regla doctrinal: enlaces contextuales (inline) tienen prioridad sobre footer/sidebar.
  - **Fuente:** `Doctrina GMB Crush`. Aplicar regla.

### 8.1 Priority Score Formula
- **Qué es:** fórmula maestra fija — `R + I + G + L + C + U` (rango 6-30 puntos).
- **Para qué sirve:** alimenta 8.8 Total Score, 8.9 Tiers. **Artefacto central de priorización**.
- **Dato que buscamos:** `[fórmula declarativa: 6 factores con peso 1, suma simple, rango 6-30]`.
- **Cómo se obtiene:** Aplicamos la fórmula doctrinal — suma simple de los 6 factores (Revenue, Intent, GBP, Local, Competition, Urgency) con peso 1.
  - **Fuente:** `Doctrina GMB Crush`. Fórmula constante doctrinal.

### 8.12 Validación Homepage = P1 obligatorio
- **Qué es:** validación binaria — la fila HP es siempre P1, Phase 1.
- **Para qué sirve:** integridad doctrinal (HP siempre primero).
- **Cómo se asigna:**
  - **Pass** → HP es P1, Phase 1.
  - **Fail** → HP con tier o phase distinto.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Forzamos HP=P1+Phase1 doctrinalmente.
  - **Fuente:** `Doctrina GMB Crush`. Constante doctrinal — HP siempre P1+Phase1.

### 10.1 Publishing Capacity
- **Qué es:** capacidad de páginas/semana declarada por la doctrina del paso (no depende del equipo, depende de lo que toca producir).
- **Para qué sirve:** alimenta 10.9 Calendario semanal.
- **Dato que buscamos:** `[capacity doctrinal del paso]`.
- **Cómo se obtiene:** La doctrina del paso declara la capacity sin depender del equipo concreto del operador.
  - **Fuente:** `Doctrina GMB Crush`. Constante doctrinal.

### 10.2 Equipo de contenido óptimo
- **Qué es:** axioma del sistema — el operador cuenta con el mejor equipo disponible para que el plan de contenido sea el mejor.
- **Para qué sirve:** elimina restricciones de capacity por equipo. La capacity dictada por 10.1 se cumple sin limitaciones de team composition.
- **Dato que buscamos:** axioma del sistema (no es dato a obtener, es declaración de precondición).
- **Cómo se obtiene:** El sistema asume como precondición que el operador tiene el mejor equipo posible para producir el contenido óptimo.
  - **Fuente:** `Doctrina GMB Crush`. Asunción declarada.

### 10.11 Reglas operativas
- **Qué es:** reglas operativas literales del original §14-§23.
- **Para qué sirve:** referencia operativa para Bloque 5.
- **Dato que buscamos:** `[10 reglas operativas literales del original]`.
- **Cómo se obtiene:** Portamos literalmente las reglas operativas del original §14-§23.
  - **Fuente:** `Doctrina GMB Crush`. Portar literal del original.

### 12.6 Estructura del prompt
- **Qué es:** plantilla de 10 secciones (ROLE / CONTEXT / INPUTS / PROCESS / OUTPUT / VALIDATION / EXAMPLES / EDGE-CASES / FAILURES / CITATIONS).
- **Para qué sirve:** estandariza la redacción del Master + Auxiliary Prompts.
- **Dato que buscamos:** `[plantilla 10 secciones canónicas]`.
- **Cómo se obtiene:** Aplicamos la plantilla doctrinal de 10 secciones para estructurar cualquier prompt del sistema.
  - **Fuente:** `Doctrina GMB Crush`. Plantilla doctrinal.

### 12.13 10 Reglas doctrinales (§7-§16 original)
- **Qué es:** reglas doctrinales literales del original consolidadas.
- **Para qué sirve:** referencia conceptual del Master Prompt.
- **Dato que buscamos:** `[10 reglas literales del original §7-§16]`.
- **Cómo se obtiene:** Portamos literalmente las 10 reglas doctrinales del original.
  - **Fuente:** `Doctrina GMB Crush`. Portar literal del original.

### 13.4 16 Reglas operativas literales (§36-§51 original)
- **Qué es:** reglas operativas literales del original.
- **Para qué sirve:** referencia operativa del SOP.
- **Dato que buscamos:** `[16 reglas literales del original]`.
- **Cómo se obtiene:** Portamos literalmente las 16 reglas del original.
  - **Fuente:** `Doctrina GMB Crush`. Portar literal del original.

### 13.6 Carpetas recomendadas del repo (§26 original)
- **Qué es:** estructura `docs/01-... 13-...` del original.
- **Para qué sirve:** **Referencia documental al original**. El repo real tiene estructura distinta (Bloques con 01/02/03).
- **Dato que buscamos:** `[estructura carpetas literal del original]`.
- **Cómo se obtiene:** Portamos literalmente la estructura de carpetas recomendada del original §26.
  - **Fuente:** `Doctrina GMB Crush`. Portar literal.

### 13.11 Checklist final de 13 preguntas (§52 original)
- **Qué es:** 13 preguntas literales del checklist final del SOP.
- **Para qué sirve:** auto-verificación del SOP antes de pasar a ejecución.
- **Dato que buscamos:** `[13 preguntas literales]`.
- **Cómo se obtiene:** Portamos literalmente las 13 preguntas del checklist final.
  - **Fuente:** `Doctrina GMB Crush`. Portar literal del original.

### 13.12 8 Outputs del Paso 13 (§53 original)
- **Qué es:** 8 outputs literales del Paso 13.
- **Para qué sirve:** declaración formal de los outputs del SOP.
- **Dato que buscamos:** `[8 outputs literales]`.
- **Cómo se obtiene:** Portamos literalmente los 8 outputs del Paso 13.
  - **Fuente:** `Doctrina GMB Crush`. Portar literal del original.

### 14.15 Cola de actualización post-GBP
- **Qué es:** lista priorizada de elementos web a actualizar tras verificación del GBP.
- **Para qué sirve:** alimenta 14.16-14.18.
- **Dato que buscamos:** `[lista priorizada de updates post-verificación]`.
- **Cómo se obtiene:** Aplicamos §29: compilamos los elementos web a actualizar tras verificación (schema sameAs, homepage reseñas reales, contact page enlace GBP).
  - **Fuente:** `Doctrina GMB Crush`. Aplicar §29.

### 14.20 Lista de riesgos
- **Qué es:** compilación de riesgos doctrinales (duplicados / keyword stuffing / NAP falso / cobertura inflada).
- **Para qué sirve:** check final pre-publicación GBP.
- **Dato que buscamos:** `[lista de riesgos identificados en el listing actual]`.
- **Cómo se obtiene:** Compilamos los riesgos doctrinales (§25 duplicados / §26 keyword stuffing / NAP falso / cobertura inflada) y los aplicamos al listing actual.
  - **Fuente:** `Doctrina GMB Crush`. Aplicar checklist de riesgos doctrinales.

### 15.1 Capas de redacción (4 capas)
- **Qué es:** framework declarativo de 4 capas — Estructura / Zonas / Argumentos / Entidades.
- **Para qué sirve:** alimenta 15.3-15.9 (toda la redacción) como esqueleto conceptual.
- **Dato que buscamos:** `[4 capas declarativas + reglas por capa]`.
- **Cómo se obtiene:** Aplicamos el framework doctrinal de 4 capas como esqueleto para toda la redacción del cluster.
  - **Fuente:** `Doctrina GMB Crush`. Framework doctrinal.

### 15.2 Reglas de calidad universal (4 reglas)
- **Qué es:** 4 reglas fijas — Hero+CTA / Problema / Datos / Local.
- **Para qué sirve:** filtro de calidad aplicable a toda página redactada.
- **Dato que buscamos:** `[4 reglas universales]`.
- **Cómo se obtiene:** Aplicamos las 4 reglas doctrinales como filtro de calidad universal.
  - **Fuente:** `Doctrina GMB Crush`. Constantes doctrinales.

### 15.10 Validación clusters completos
- **Qué es:** validación binaria — count por cluster (SO + LBS + 3 GAs por core service).
- **Para qué sirve:** filtro QA cluster-level.
- **Cómo se asigna:**
  - **Pass** → todos los clusters tienen SO + LBS + 3 GAs.
  - **Fail** → ≥1 cluster incompleto.
- **Dato que buscamos:** `[resultado check + clusters incompletos]`.
- **Cómo se obtiene:** Validamos por core service que tiene SO + LBS + 3 GAs como mínimo.
  - **Fuente:** `Doctrina GMB Crush`. Validación count por cluster.

### 15.11 Validación SO no compite con LBS
- **Qué es:** validación binaria — H1 SO ≠ H1 LBS por servicio core.
- **Para qué sirve:** evita canibalización.
- **Cómo se asigna:**
  - **Pass** → 0 colisiones H1.
  - **Fail** → ≥1 SO con mismo H1 que LBS.
- **Dato que buscamos:** `[resultado check colisiones H1]`.
- **Cómo se obtiene:** Comparamos H1 de SO vs H1 de LBS por servicio core.
  - **Fuente:** `Doctrina GMB Crush`. Comparación H1.

### 15.12 Validación GA enlaza a LBS padre
- **Qué es:** validación binaria — cada GA tiene 3 puntos de enlace a su LBS padre.
- **Para qué sirve:** filtro QA linking.
- **Cómo se asigna:**
  - **Pass** → todos los GAs ≥3 enlaces a parent LBS.
  - **Fail** → ≥1 GA con <3 enlaces.
- **Dato que buscamos:** `[resultado check enlaces por GA]`.
- **Cómo se obtiene:** Inspeccionamos los 3 puntos de enlace por GA hacia su LBS padre.
  - **Fuente:** `Doctrina GMB Crush`. Inspección enlaces.

### 17.7 Limpieza de rastros IA
- **Qué es:** eliminación de rastros de generación IA en 5 áreas (README / src / meta / package / commits).
- **Para qué sirve:** evita anti-pattern "AI-generated obvious" en producción.
- **Cómo se asigna:**
  - **Pass** → 0 rastros detectados.
  - **Fail** → ≥1 rastro (placeholder, comentario IA, autoría falsa).
- **Dato que buscamos:** `[resultado check + áreas con rastros]`.
- **Cómo se obtiene:** Iteramos las 5 áreas (README/src/meta/package/commits) + grep contra patrones típicos de generación IA.
  - **Fuente:** `Doctrina GMB Crush`. Iteración 5 áreas + grep + validación final.

---

## Outputs combinados — `Doctrina GMB Crush` + herencia (6 outputs)

### 3.7 Parent Page declarado por fila
- **Qué es:** referencia al parent topológico de cada URL.
- **Para qué sirve:** alimenta 7.5 LBS conecta con SO+GH, 8.11 Validación landing antes que GA, 10.10 Matriz de dependencias.
- **Dato que buscamos:** `[ID parent de cada URL según jerarquía doctrinal]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Aplicamos la jerarquía doctrinal: HP es root, SO tiene HP como parent, LBS tiene SO como parent, AC tiene GeoHub como parent, GA tiene LBS como parent.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`. Mapping doctrinal padre↔hijo por page type.

### 3.8 Schema asignado desde matriz
- **Qué es:** tipo de schema JSON-LD por page type (Organization / Service / LocalBusiness / FAQPage / Article…).
- **Para qué sirve:** alimenta 5.7 Validación Schema, 6.17 areaServed coherente, 11.X generate_schema, 17.6 Schemas implementados.
- **Dato que buscamos:** `[schema type por page type según mapping doctrinal]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Asignamos el schema según el mapping doctrinal: Homepage → Organization, SO → Service, LBS → LocalBusiness, AC → Service, GeoHub → CollectionPage, GA → Article + FAQPage.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`. Mapping doctrinal por page type.

### 3.9 Enlaces internos Required por fila
- **Qué es:** listado contractual de enlaces obligatorios por page type.
- **Para qué sirve:** alimenta 7.11 Matriz enlaces, 9.11 QA enlaces internos, 11.12 assign_internal_links.
- **Dato que buscamos:** `[lista de enlaces obligatorios por page type según doctrina §7]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Aplicamos el listado contractual de enlaces por page type según la doctrina §7.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`. Listado doctrinal por page type.

### 3.10 Priority y Publish Phase por fila
- **Qué es:** Priority (P1-P4) y Publish Phase (1-4) doctrinales por page type.
- **Para qué sirve:** alimenta 8.9 Priority Tiers, 8.10 Publish Phase derivada, 10.4-10.6 Fases.
- **Cómo se asigna:**
  - **HP** → P1, Phase 1.
  - **LBS** → P1, Phase 1.
  - **SO** → P2, Phase 2.
  - **GH** → P2, Phase 2.
  - **GAs** → P3-P4, Phases 3-4.
- **Dato que buscamos:** `[Priority + Phase por page type]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Asignamos Priority y Phase según el mapping doctrinal por page type.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`. Mapping doctrinal directo.

### 4.9 LCAs no generan URLs
- **Qué es:** regla doctrinal — LCAs viven en contenido y `areaServed` schema, NO en URLs `/[lca]/`.
- **Para qué sirve:** evita inflar cluster con URLs falsas. Validado por 2.13 + 3.13 + 4.14.
- **Dato que buscamos:** `[regla aplicada como filtro de QA: 0 URLs /[lca]/ en matriz]`.
- **Hereda info de pasos anteriores:** 1.10 Direct + Candidate LCAs.
- **Cómo se obtiene:** Aplicamos la regla doctrinal: las LCAs aparecen en contenido y schema, nunca como URL.
  - **Fuente:** `← 1.10 + Doctrina GMB Crush`. Aplicar regla como filtro QA.

### 5.9 Validación CTA adaptado al page type
- **Qué es:** validación binaria — CTA por page type respeta funnel position.
- **Para qué sirve:** evita CTAs inapropiados (ej: "Comprar ahora" en GeoArticle informacional).
- **Cómo se asigna:**
  - **Pass** → CTAs alineados con funnel.
  - **Fail** → ≥1 page type con CTA fuera de funnel.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.13 Preferred CTA.
- **Cómo se obtiene:** Mapeamos CTAs a page types según funnel position (top → branded / mid → SO / bottom → LBS+AC).
  - **Fuente:** `← 1.13 + Doctrina GMB Crush`. Mapping doctrinal CTAs × page types.

---

## Outputs combinados — `Doctrina GMB Crush` + Cliente preflight (1 output)

### 1.3 GBP Lifecycle Status
- **Qué es:** estado actual del GBP + reglas doctrinales asociadas (web-first / verification flow / URL del GBP).
- **Para qué sirve:** alimenta 9.15 GBP Not Created QA Checklist, 12.7 Web-First GBP Rule, 14.1 GBP creado.
- **Dato que buscamos:** `[estado GBP del preflight]` + `[regla web-first según el estado]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 4 (Estado del GBP).
- **Cómo se obtiene:** Cogemos el estado declarado por el cliente y le aplicamos la regla doctrinal web-first según el caso.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush`. Estado del preflight + aplicar §7 (web-first) que dicta timing/verification/URL.

> **Nota:** outputs `Doctrina + Local Pack`, `Doctrina + Keyword research`, `Doctrina + Cliente confirmación` y `Doctrina + Google Search` se listan en sus respectivos archivos de combinación (05, 06, 07, 08).

---

## Resumen

- **Total outputs con `Doctrina GMB Crush`:** 44
- Puros: 37
- Combinados con herencia: 6
- Combinados con `Cliente preflight`: 1

**Pasos donde aparece como fuente principal:** 1, 3, 4, 5, 6, 7, 8, 10, 12, 13, 14, 15, 17.
