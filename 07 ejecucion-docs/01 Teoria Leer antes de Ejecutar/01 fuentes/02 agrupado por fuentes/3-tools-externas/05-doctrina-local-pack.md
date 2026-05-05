# Fuente 05 — `Doctrina + Local Pack`

> **Qué es:** doctrina dicta cómo interpretar el dato bruto del Local Pack. **Incluye outputs donde la doctrina no aporta criterio** (marcados explícitamente como "la doctrina no aporta en este output" — son Local Pack puro).
> **Tool / método:** Google Maps clean session → buscar `[servicio] [ciudad]` → extraer top 5 (categoría, servicios, áreas, signals, reviews) + aplicar criterio doctrinal del paso cuando aporte.

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya `Fuente` incluye `Doctrina + Local Pack`, con el detalle completo de cada output. Tras la unificación de fuentes (eliminado `Local Pack` standalone), TODOS los usos del Local Pack viven aquí.

---

## Outputs donde la doctrina aporta criterio (9 outputs)

### 1.5 Planned Primary GBP Category
- **Qué es:** categoría primaria del GBP que mejor representa al negocio.
- **Para qué sirve:** alimenta 2.1 GBP Categories Status, 8.4 GBP Category Relevance, 14.5 Categoría confirmada.
- **Dato que buscamos:** `[categoría GBP más repetida en top 5 Local Pack del sector]`.
- **Cómo se obtiene:** Buscamos el servicio del cliente en Google Maps en la ciudad principal, miramos los 5 primeros perfiles del Local Pack, y la categoría primaria que más se repite es la nuestra.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Buscar `[servicio] [Main City]` en Maps → top 5 → categoría primaria más frecuente. Doctrina dicta "más frecuente = Primary".

### 1.6 Planned Additional GBP Categories
- **Qué es:** categorías secundarias del GBP (cubiertas por core services o con página propia).
- **Para qué sirve:** alimenta 2.1, 3.3 Additional Category Slugs, 5.4 Spec AC, 14.6 Categorías confirmadas/descartadas.
- **Dato que buscamos:** `[lista de categorías GBP secundarias frecuentes en top 5 Local Pack]` + `[clasificación por categoría: cubierta/página propia]`.
- **Cómo se obtiene:** En el mismo análisis del top 5 Local Pack, listamos las categorías secundarias frecuentes. Para cada una decidimos si la cubre algún core service o si necesita página propia.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Top 5 Local Pack → categorías secundarias frecuentes → clasificar cubierta/página propia según doctrina.

### 1.9 Servicios principales (S=5)
- **Qué es:** lista de los 5 core services que la arquitectura va a cubrir.
- **Para qué sirve:** variable S de la fórmula maestra (2.5). Genera S Service Overview + S Location-Based Service + G×S GeoArticles. Alimenta scores 8.2-8.7.
- **Dato que buscamos:** `[top 5 servicios más frecuentes en perfiles top 5 Local Pack del sector]`.
- **Cómo se obtiene:** Listamos los servicios que aparecen en los 5 perfiles top del Local Pack y nos quedamos con los 5 más frecuentes. Esos son los core services del cluster.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Listar servicios de cada perfil top 5 → 5 más frecuentes. Doctrina dicta S=5.

### 1.10 Direct + Candidate LCAs
- **Qué es:** Local Coverage Areas — Direct (barrio/distrito del NAP) + Candidate (zonas en 2+ competidores top, validables).
- **Para qué sirve:** schemas `areaServed` (5.10, 6.17), contenido cobertura local (6.2, 6.12), validaciones (4.9, 4.14).
- **Dato que buscamos:** `[barrio/distrito del NAP]` + `[zonas atendidas por 2+ competidores top 5]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP (street + city del NAP para Direct LCAs).
- **Cómo se obtiene:** Para las Direct: extraemos el barrio/distrito de la dirección del cliente. Para las Candidate: miramos qué zonas atienden los competidores del top 5 y nos quedamos con las que aparecen en 2 o más.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Direct: extraer del NAP. Candidate: cruzar áreas declaradas por top 5 → zonas en ≥2 competidores → test GEO de coherencia.

### 1.14 Trust Signals
- **Qué es:** señales de confianza del sector + diferenciadores extraídos del top 5.
- **Para qué sirve:** alimenta 5.1 Spec Homepage, 6.15 Reviews y trust contextualizados, contenido Hero de cada page type.
- **Dato que buscamos:** `[trust signals presentes en 3+ perfiles top 5]` + `[diferenciadores únicos del cliente vs sector]`.
- **Cómo se obtiene:** Identificamos las señales de confianza que repiten 3 o más competidores del top 5 (años, certificaciones, badges, garantías). Esas son las "obligatorias del sector".
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Extraer trust signals de top 5 → estándar = presente en 3+ perfiles. Doctrina dicta el threshold.

### 8.4 GBP Category Relevance
- **Qué es:** score 1-5 — match entre categoría declarada (1.5/1.6) y categorías Local Pack del sector.
- **Para qué sirve:** factor G del Priority Score.
- **Cómo se asigna:**
  - **5** → match perfecto categoría declarada vs top 5 Local Pack.
  - **3** → match parcial.
  - **1** → categoría divergente del Local Pack.
- **Dato que buscamos:** `[match-rate categorías declaradas vs categorías top 5 Local Pack]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category + 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Cruzamos las categorías que declaramos (1.5 + 1.6) con las que aparecen en el top 5 Local Pack y calculamos el match-rate.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Cruzar categorías + aplicar regla doctrinal de match (perfecto = 5, parcial = 3, divergente = 1).

### 14.6 Categorías adicionales confirmadas o descartadas
- **Qué es:** Additional Categories planned (1.6) clasificadas en confirmadas (con soporte web real) o descartadas.
- **Para qué sirve:** GBP listing additional categories.
- **Dato que buscamos:** `[Additional Categories con soporte web real / Additional Categories descartadas]`.
- **Hereda info de pasos anteriores:** 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Aplicamos §14 + §27: cada Additional necesita soporte web real (página propia o cobertura por core service); si no, se descarta.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Validar soporte web real + benchmark Local Pack del sector.

### 14.10 Descripción GBP aprobada
- **Qué es:** descripción del GBP siguiendo patrón doctrinal (brand + category + city + services + CTA).
- **Para qué sirve:** GBP listing description.
- **Dato que buscamos:** `[descripción GBP siguiendo patrón doctrinal validado contra benchmarking top 5]`.
- **Cómo se obtiene:** Aplicamos §17 + §18: redactamos descripción con patrón brand+category+city+services+CTA, validamos contra benchmarking del top 5.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Patrón doctrinal + benchmarking top 5 Local Pack.

### 19.3 Análisis SERP + decisión
- **Qué es:** análisis SERP de queries target + decisión de escalado por área.
- **Para qué sirve:** alimenta 19.4 Log de decisiones.
- **Dato que buscamos:** `[análisis SERP por área + DR/UR top 10 + decisión: aprobar/posponer/descartar]`.
- **Hereda info de pasos anteriores:** 19.2 Estado triggers + 8.6 Competition Gap.
- **Cómo se obtiene:** Hacemos análisis SERP manual + Ahrefs para fortaleza top 10 y decidimos aprobar/posponer/descartar.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** SERP analysis manual + DR/UR Ahrefs por keyword + aplicar criterio doctrinal.

---

## Outputs donde la doctrina NO aporta criterio (3 outputs)

> Eran `Local Pack` standalone antes de la unificación. Conservan la nota explícita "la doctrina no aporta en este output".

### 1.13 Preferred CTA
- **Qué es:** call-to-action principal del cluster (verbo dominante: Llamar / Reservar / Solicitar presupuesto / Contactar).
- **Para qué sirve:** alimenta 5.9 Validación CTA por page type, 7.9 Anchor text variado, 9.13 CTA QA.
- **Cómo se asigna:**
  - **Llamar ahora** → servicios urgentes (cerrajero, fontanero emergencia, asistencia 24h).
  - **Reservar online** → servicios programables (peluquería, dentista, restaurante).
  - **Solicitar presupuesto** → servicios B2B / proyectos (reformas, consultoría, instalaciones).
  - **Contactar** → genérico (cuando ninguno de los anteriores domina claramente).
- **Dato que buscamos:** `[CTA dominante en top 5 Local Pack según urgencia/tipo del servicio]`.
- **Cómo se obtiene:** Miramos qué CTAs usan los 5 primeros del Local Pack y elegimos el más usado, alineado con la urgencia del servicio.
  - **Fuente:** `Doctrina + Local Pack` — **la doctrina no aporta en este output** (selección directa del CTA dominante en top 5, sin filtro doctrinal).
  - **Método:** Inspeccionar CTAs visibles en top 5 perfiles + cruzar con tipo de servicio (urgente / programable / B2B).

### 14.12 Plan de Q&A
- **Qué es:** preguntas pre-pobladas para Q&A del GBP usando 4 fuentes (Auto-Suggest / PAA / Keyword research / competitors).
- **Para qué sirve:** alimenta Q&A del GBP.
- **Dato que buscamos:** `[lista de Q&A pre-pobladas con respuestas alineadas con web]`.
- **Hereda info de pasos anteriores:** 9.X QA Checklist.
- **Cómo se obtiene:** Aplicamos §23: extraemos preguntas de Auto-Suggest + PAA + Keyword research + competitors top 5, generamos respuestas alineadas con la web.
  - **Fuente:** `Doctrina + Local Pack` — **la doctrina no aporta en este output** (§23 solo dicta los 4 métodos a nivel general; no añade filtro específico).
  - **Método:** 4 fuentes (Auto-Suggest + PAA + KR + competitors top 5) + alinear respuestas con web.

### 14.14 Estrategia de reseñas reales
- **Qué es:** estrategia de solicitud de reseñas con benchmarking de top 5 competidores GBP (volumen, frecuencia, patrones, métodos).
- **Para qué sirve:** plan de generación de reseñas reales (sin incentivos prohibidos).
- **Dato que buscamos:** `[volumen objetivo realista del sector + frecuencia mensual + patrones respuesta owner + métodos solicitud visibles en top 5]`.
- **Cómo se obtiene:** Hacemos benchmarking del top 5 GBP del sector + respetamos §15 como constraint negativo (no incentivos, no inventar reseñas). El plan operativo sale del benchmarking.
  - **Fuente:** `Doctrina + Local Pack` — **la doctrina no aporta en este output** (§15 actúa solo como constraint negativo, no es filtro positivo del dato Local Pack).
  - **Método:** Benchmark top 5 GBP del sector (volumen, frecuencia, métodos) + §15 como constraint negativo.

---

## Outputs combinados — `Doctrina + Local Pack` + Keyword research (1 output)

### 8.6 Competition Gap
- **Qué es:** score 1-5 — fortaleza del top 10 SERP por keyword (oportunidad de rankear).
- **Para qué sirve:** factor C del Priority Score.
- **Cómo se asigna:**
  - **5** → top 10 débil (DR <30 promedio + URLs poco optimizadas) → alta oportunidad.
  - **3** → competencia media.
  - **1** → top 10 muy fuerte (DR >70 + grandes marcas) → baja oportunidad.
- **Dato que buscamos:** `[DR/UR promedio top 10 SERP del keyword]` + `[fortaleza on-page de top 3]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos análisis SERP manual de los top 10 + miramos DR/UR en Ahrefs + evaluamos fortaleza on-page de los top 3.
  - **Fuente:** `Doctrina + Local Pack + Doctrina + Keyword research` — la doctrina aporta para la parte Local Pack (interpretación competidores) pero **no aporta para la parte KR** (DR/UR son inputs cuantitativos directos).
  - **Método:** SERP analysis manual + DR/UR Ahrefs + inspección on-page top 3.

---

## Resumen

- **Total outputs con `Doctrina + Local Pack`:** 13
- Doctrina aporta criterio: 9
- **Doctrina no aporta** (Local Pack puro): 3 (1.13, 14.12, 14.14)
- Combinados con `Keyword research`: 1 (8.6)

**Pasos donde aparece como fuente principal:** 1, 8, 14, 19.

---

## Cómo ejecutar `Doctrina + Local Pack`

1. **Ejecutar Local Pack** (Google Maps clean session, top 5 perfiles)
2. **Verificar si la doctrina aporta criterio** para el output:
   - **Sí aporta** (la mayoría de outputs):
     - 1.5/1.6: doctrina dice "categoría más frecuente en top 5 = Primary"
     - 1.9: doctrina dice "5 servicios más frecuentes en top 5"
     - 1.10: doctrina dice "Direct = barrio NAP / Candidate = zonas en 2+ competidores"
     - 1.14: doctrina dice "estándar sector = trust signals presentes en 3+ top 5"
     - 8.4: doctrina dice "match perfecto = 5, parcial = 3, divergente = 1"
     - 14.6: doctrina §14 + §27 — cada Additional necesita soporte web real
     - 14.10: doctrina §17 + §18 — patrón brand+category+city+services+CTA
     - 19.3: doctrina dicta criterio aprobar/posponer/descartar según fortaleza top 10
   - **No aporta** (3 outputs marcados):
     - 1.13: selección directa del CTA dominante (sin filtro doctrinal)
     - 14.12: 4 métodos de extracción genéricos (sin filtro doctrinal específico)
     - 14.14: §15 solo como constraint negativo (no es filtro positivo)
3. **Output canónico:** dato del Local Pack interpretado según la regla doctrinal del paso (cuando aplique) o usado tal cual (cuando la doctrina no aporte).

> Si la IA no puede ejecutar Google Maps real, marca el output con Status `⚠ inferido` (no cambia la Fuente).

---

## Diferencia con otras fuentes Google

| Fuente | Qué hace | Para qué outputs |
|---|---|---|
| `Doctrina + Local Pack` (esta) | Google **Maps** → top 5 perfiles | 1.5, 1.6, 1.9, 1.10, 1.13, 1.14, 8.4, 14.6, 14.10, 14.12, 14.14, 19.3 + 8.6 |
| `Doctrina + Keyword research` (#6) | Tools (Ahrefs/Semrush/KP) → métricas estructuradas | 3.4, 8.3, 8.6, 14.13 |
| `Doctrina + Google Search` (#8) | Google **search** → leer SERP completo | 8.2 |
