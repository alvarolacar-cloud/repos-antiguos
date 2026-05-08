# GMB Crush Engine — Bloque 3: Priorización (Pasos 8-10)

## Propósito de este bloque

Bloque 3 convierte la arquitectura construida en Bloques 1-2 en un plan de producción ordenado.
Tiene 3 pasos:

- **Paso 8 — Priority Score**: Score numérico por página usando 6 factores. Determina tiers P1-P4/Hold.
- **Paso 9 — QA Checklist**: 12 reglas de validación + Final Publish Gate + GBP Not Created check.
- **Paso 10 — Producción en Fases**: 5 fases + calendario semanal + dependencias + checklist pre-publicación.

**Total outputs: 43** (8.1–8.14 = 14, 9.1–9.15 = 15, 10.1–10.14 = 14; 10.3 es `no_aplica` fijo).

---

## Reglas globales del Bloque 3

### Fórmula de Priority Score

```
Revenue Value + Search Intent + GBP Category Relevance + Local Relevance + Competition Gap + Conversion Urgency
```

Cada factor escala 1–5. Rango total: 6–30.

### Priority Tiers

| Score | Tier | Acción |
|-------|------|--------|
| 26–30 | **P1** | Publicar primero |
| 21–25 | **P2** | Segunda prioridad |
| 16–20 | **P3** | Tercera prioridad |
| 10–15 | **P4** | Cuarta prioridad |
| 0–9   | **Hold** | No producir aún |

### Escalas de los 6 factores (1–5)

| Factor | 1 | 3 | 5 |
|--------|---|---|---|
| Revenue Value | Low value, bajo margen | Margen medio | High value, alto ticket / urgencia |
| Search Intent | Puramente informacional | Mezcla equilibrada | Urgente buying intent |
| GBP Category Relevance | No apoya ninguna categoría GBP | Aparece de forma irregular | Primary category dominante en Local Pack |
| Local Relevance | Sin señal local | Parcial / incompleta | Main City + NAP + cobertura real |
| Competition Gap | ≥9 LBS profesionales (gap inexistente) | 5–6 LBS (competencia normal) | ≤2 LBS + directorios (gap fuerte) |
| Conversion Urgency | Sin urgencia | Moderado | Llamada / acción inmediata |

### Método de medición por factor

**Search Intent (keyword research):**
```
5: query principal + ≥60% modificadores transaccionales (precio, cerca, urgente, 24h, ya, ahora)
4: query principal + 40-60% transaccional
3: mezcla equilibrada
2: 60-80% modificadores informacionales (cómo, qué, cuánto, cuándo, por qué)
1: puramente informacional
Verificar coherencia: LBS/AC ≥ 4 | SO 3-4 | GeoArticle 1-3
```

**GBP Category Relevance (Local Pack):**
```
1. Identificar categoría de la URL: HP/GeoHub → Primary; LBS/SO → servicio core; AC → adicional; GA → categoría del LBS que apoya
2. Buscar "[categoría] [main city]" en Google Maps, analizar 5 perfiles del Local Pack
3. Asignar: 5 si Primary en ≥3/5; 4 si Additional en ≥3/5; 3 irregular; 2 solo fuera del top; 1 no aparece
4. Score 1-2: replantear page type o URL
```

**Competition Gap (SERP analysis):**
```
1. Buscar query principal de la URL en Google sin login
2. Analizar las 10 primeras páginas orgánicas (excluir Local Pack y Ads)
3. Clasificar: LBS dedicadas (servicio+ciudad en H1) | SO genéricas | directorios | thin content
4. Asignar: 5 si ≤2 LBS + resto débil; 4 si 3-4 LBS; 3 si 5-6; 2 si 7-8; 1 si ≥9 profesionales E-E-A-T
```

### Reglas críticas de prioridad (aplicar siempre)

- **Homepage = P1 siempre** — Root Entity Anchor, sin excepción. Si el cálculo da menos, sobrescribir.
- **Landing antes que GeoArticle** — el booster se publica DESPUÉS de su landing destino. GeoArticle P1 sin landing = ir a Phase 3.
- **LCAs sin score en Phase 1** — LCAs no generan URLs → no tienen fila en la matriz → no reciben score. Solo cuando se aprueban como AEAs reciben score.
- **City Priority no aplica** en arquitectura de una sola Main City → usar Local Relevance en su lugar.
- **AEAs** reciben score solo cuando están explícitamente aprobadas en `1.11`.

### 5 Fases de Producción

| Fase | Nombre | Contenido |
|------|--------|-----------|
| Phase 1 | Entity Foundation | Homepage + Contacto + About (opc) + Top SOs (2-3) + Main City GeoHub |
| Phase 2 | Main City Conversion Layer | Todas las LBS de Main City + Additional Category Pages |
| Phase 3 | Main City Semantic Expansion | GeoArticles (solo después de sus LBS de destino) |
| Phase 4 | Optimization Loop | GSC + GA4 + geo-grid + refresh de contenido + schema QA |
| Phase 5 | Optional Expansion Module | Solo si AEA aprobada — GeoHub expansión + LBS expansión + GAs |

### Matriz de dependencias de publicación (fija)

| Tipo de página | Debe existir antes de publicar |
|---|---|
| Service Overview | Homepage |
| Main City GeoHub | Homepage |
| Location-Based Service | Homepage + Service Overview padre + GeoHub |
| Additional Category | Homepage + GeoHub + related services |
| GeoArticle | Matching LBS + GeoHub |
| Expansion Page | Approved Expansion Area declarada + base system publicado |

### 12 Reglas QA (referencia rápida)

| # | Regla | Patrón clave |
|---|-------|-------------|
| 1 | URL | URL pattern correcto por page type + trailing slash + sin near-me |
| 2 | Page Type | Contenido y estructura corresponden al tipo declarado |
| 3 | One service only | Una LBS/AC = un servicio principal en H1 y URL |
| 4 | One Main City only | Main City clara, sin multi-target en H1 |
| 5 | Local Coverage | LCAs reales, mencionadas naturalmente, no como oficinas |
| 6 | No fake location | Sin dirección/oficina inventada en zonas sin presencia física |
| 7 | Metadata | H1 + meta title + description = servicio + Main City donde aplique |
| 8 | Word count | Dentro del rango por page type |
| 9 | Schema | Schema correcto por page type, sin datos falsos |
| 10 | Internal links | Required links presentes según matriz (7.11) |
| 11 | Canibalización | Una intención = una URL principal |
| 12 | CTA | CTA claro y alineado con la intención del page type |

### Final Publish Gate (10 checks — todos deben ser "Yes")

```
URL approved: Yes/No
Content approved: Yes/No
SEO metadata approved: Yes/No
Schema approved: Yes/No
Internal links approved: Yes/No
NAP approved: Yes/No
No canibalización: Yes/No
No fake location: Yes/No
CTA approved: Yes/No
Ready to publish: Yes/No
```

### GBP Not Created QA Checklist adicional

Aplicar cuando `1.3 GBP Lifecycle Status` = `no_creado` o `creado_no_verificado`:

```
[ ] ¿La página entiende que el GBP todavía no existe?
[ ] ¿La página soporta Planned Primary GBP Category sin inventar señales?
[ ] ¿No se añade URL de GBP inventada en schema, footer o contenido?
[ ] ¿No se afirman reseñas de Google antes de crearlas?
[ ] ¿El campo sameAs queda ausente o pendiente hasta Paso 14?
[ ] ¿La página está marcada para actualización posterior cuando el GBP exista?
```
Regla final: Antes del Paso 14, ninguna página afirma señales GBP que todavía no existen.

### Word count por page type (referencia QA)

| Page Type | Word Count |
|-----------|-----------|
| Homepage | 900–1,300 |
| Service Overview | 850–1,000 |
| LBS | 800–1,000 |
| Additional Category | 800–1,000 |
| GeoHub | 700–1,100 |
| GeoArticle | 1,000–1,500 |

### Schema por page type (referencia QA)

| Page Type | Schema requerido |
|-----------|-----------------|
| Homepage | Organization + WebSite + LocalBusiness + FAQPage + Speakable |
| Service Overview | Service + WebPage + BreadcrumbList |
| LBS | LocalBusiness + BreadcrumbList (+ FAQPage opcional) |
| Additional Category | LocalBusiness + BreadcrumbList |
| GeoHub | CollectionPage + BreadcrumbList |
| GeoArticle | Article + FAQPage + BreadcrumbList + Speakable |

---

## Outputs del Paso 8 — Priority Score

### 8.1 Priority Score Formula

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar la fórmula de 6 factores: `Revenue Value + Search Intent + GBP Category Relevance + Local Relevance + Competition Gap + Conversion Urgency`. Cada factor 1–5. Total 6–30. **No usar City Priority** en arquitectura de Main City única — City Priority se reemplaza por Local Relevance.
- **Regla crítica:** La fórmula es fija. No añadir ni eliminar factores. No ponderar factores entre sí. No usar promedios ni modificadores externos.
- **Status esperado:** `confirmed` — doctrina fija

---

### 8.2 Revenue Value

- **Fuente:** `cliente_preflight_doctrina` (ticket medio + servicios declarados en `1.9`)
- **Método:** Asignar 1–5 por página según valor económico del servicio. Consultar servicios del cliente (1.9) y ticket medio si está en preflight.
  - 5: servicios urgentes de alto ticket (cerrajero urgente, apertura puerta bloqueada)
  - 4: servicios de servicio completo (cambio de cerraduras, instalación seguridad)
  - 3: servicios de mantenimiento medio
  - 2: servicios auxiliares (duplicado de llaves, diagnóstico)
  - 1: servicios puramente informativos o de bajo margen
  Homepage y GeoHub reciben el valor del servicio principal que sustentan.
- **Regla crítica:** No asignar 5 a todos. No priorizar páginas de bajo margen antes que servicios urgentes. Diferenciar ticket alto vs bajo de forma explícita.
- **Status esperado:** `inferido` si el cliente no declara ticket medio (anotar razonamiento). `confirmed` si el cliente declara precios o márgenes en preflight.

---

### 8.3 Search Intent

- **Fuente:** `doctrina_keyword_research`
- **Método:**
  1. Ejecutar keyword research sobre la query principal de la URL (ej. "cerrajero urgente Madrid" para una LBS)
  2. Anotar volumen mensual y clasificar modificadores presentes: transaccionales (precio, cerca, urgente, 24h, ya, ahora) vs informacionales (cómo, qué, cuánto, cuándo, por qué)
  3. Asignar: 5 si ≥60% transaccionales; 4 si 40–60%; 3 mezcla; 2 si 60–80% informacionales; 1 puramente informacional
  4. Verificar coherencia por page type: LBS y AC ≥ 4, SO entre 3–4, GeoArticle 1–3
- **Regla crítica:** Sin keyword research ejecutado, usar `inferido` con razonamiento basado en page type e intención conocida del servicio. No tratar GeoArticles como intención 5 por defecto.
- **Status esperado:** `validated` si keyword research ejecutado y verificado. `inferido` si estimado por page type e intención de servicio.

---

### 8.4 GBP Category Relevance

- **Fuente:** `doctrina_local_pack` — hereda de `1.5 Planned Primary GBP Category`
- **Método:**
  1. Identificar la categoría cubierta por la URL evaluada: Homepage/GeoHub → Primary Category Planned; LBS/SO → servicio core que cubre; AC → categoría adicional efectiva; GeoArticle → categoría del LBS al que apoya
  2. Buscar en Google Maps "[categoría] [main city]" y analizar los 5 perfiles del Local Pack
  3. Comprobar si la categoría aparece: 5 si Primary en ≥3/5 perfiles; 4 si Additional en ≥3/5; 3 irregular (1–2 perfiles); 2 solo fuera del top; 1 no aparece
  4. Score 1–2 indica que la página no respalda categoría real del GBP — replantear page type o URL
- **Regla crítica:** La web debe respaldar lo que el GBP intenta posicionar. Páginas genéricas sin conexión a categoría GBP = score bajo merecido.
- **Status esperado:** `validated` si Local Pack analizado. `inferido` si estimado (anotar categorías observadas).

---

### 8.5 Local Relevance

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.7 Main City`
- **Método:** Medir cuánto refuerza la Main City, ubicación real, NAP, GeoHub y LCAs.
  - 5: URL contiene Main City + servicio + cobertura local real alineada con NAP
  - 4: Main City presente pero cobertura parcial
  - 3: señales locales pero sin Main City explícita
  - 2: solo menciones locales genéricas
  - 1: sin señal local efectiva
  En arquitectura de una sola Main City, sustituye completamente a City Priority. No premiar zonas no atendidas.
- **Regla crítica:** No usar City Priority con una sola Main City. No dar relevancia alta a páginas sin señal local verificable.
- **Status esperado:** `confirmed` (basado en estructura de URL y NAP ya validados en Bloque 2)

---

### 8.6 Competition Gap

- **Fuente:** `doctrina_google_search`
- **Método:**
  1. Buscar la query principal de la URL en Google (modo incógnito / sin login)
  2. Analizar las 10 primeras páginas orgánicas (excluir Local Pack y Ads)
  3. Clasificar cada resultado: LBS dedicada (servicio+ciudad en H1), SO genérica, directorio (Yelp, Páginas Amarillas), thin content/blog
  4. Asignar: 5 si ≤2 LBS + resto débil; 4 si 3–4 LBS + resto débil; 3 si 5–6 LBS; 2 si 7–8 LBS con buen on-page; 1 si ≥9 profesionales con E-E-A-T fuerte
  5. Score 4–5 = acelerar publicación; score 1–2 = estrategia long-tail obligatoria
- **Regla crítica:** No asumir gap sin revisar SERP. No usar gap alto para todas las páginas por defecto.
- **Status esperado:** `validated` si SERP analizado. `inferido` si estimado (anotar query y razonamiento).

---

### 8.7 Conversion Urgency

- **Fuente:** `doctrina_gmb_crush`, `cliente_preflight_doctrina`
- **Método:** Medir si el usuario necesita resolver el problema ahora.
  - 5: servicios de emergencia/urgencia (cerrajero urgente, apertura puerta bloqueada, 24h)
  - 4: servicios con alta motivación de acción (cambio bombines tras robo)
  - 3: servicios moderados (instalación de cerradura de seguridad planificada)
  - 2: servicios sin urgencia (duplicado de llaves preventivo)
  - 1: contenido puramente informativo (guías, FAQs, comparativas)
- **Regla crítica:** No confundir frecuencia con urgencia. No dar urgencia alta a guías informativas. Los servicios 24h son siempre ≥ 4.
- **Status esperado:** `inferido` basado en tipo de servicio (anotar razonamiento). `confirmed` si el cliente confirma el perfil de urgencia.

---

### 8.8 Total Score por página

- **Fuente:** outputs `8.2` + `8.3` + `8.4` + `8.5` + `8.6` + `8.7`
- **Método:** Sumar los 6 factores para cada URL del inventario (heredado de `3.5 URL Matrix completa`). El score se calcula página por página. Producir una tabla con columnas: URL | Tipo | Revenue | Intent | GBP | Local | Gap | Urgency | Score.
- **Regla crítica:** Cada URL del inventario base debe tener score calculado. Sin score = no se puede priorizar ni asignar tier. Homepage siempre declarada con score calculado y tier P1.
- **Status esperado:** `confirmed` si todos los factores son `confirmed` o `validated`. `inferido` si algún factor es `inferido`.

---

### 8.9 Priority Tiers (P1/P2/P3/P4/Hold)

- **Fuente:** `doctrina_gmb_crush` — hereda de `8.8`
- **Método:** Convertir el score total en tier según tabla fija:
  - 26–30 → P1
  - 21–25 → P2
  - 16–20 → P3
  - 10–15 → P4
  - 0–9 → Hold
  Aplicar ajuste por page type post-cálculo:
  - Homepage → P1 siempre (sobrescribir si el cálculo da menos)
  - GeoArticles → publicar DESPUÉS de sus landings aunque el score sea P1 (mover a Phase 3)
  - LCAs sin URL → sin tier (no aparecen en la matriz)
- **Regla crítica:** Score sin tier no es válido. Tier sin score no es válido. Hold debe respetarse — no producir páginas en Hold.
- **Status esperado:** `confirmed` (derivado mecánico de `8.8` con ajuste de doctrina)

---

### 8.10 Publish Phase derivada

- **Fuente:** `doctrina_gmb_crush` — hereda de `8.9`
- **Método:** Traducir Priority Tier en Fase de publicación respetando dependencias:
  - P1 → Phase 1 (si es HP/SO/GeoHub) o Phase 2 (si es LBS/AC)
  - P1 GeoArticle → Phase 3 (nunca antes de su landing)
  - P2/P3 → Phase 2 o Phase 3 según tipo
  - P4/Hold → diferir o no producir
  - Expansion → Phase 5 solo si AEA aprobada
  Una página puede ser P1 pero Phase 3 si su dependencia aún no existe.
- **Regla crítica:** La Fase convierte prioridad en ejecución ordenada. Publicar por tier sin respetar fases = arquitectura rota.
- **Status esperado:** `confirmed` (derivado de `8.9` + matriz de dependencias)

---

### 8.11 Validación Landing antes que GeoArticle

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar para cada GeoArticle en el inventario que existe una LBS o AC de destino planificada en fase anterior. Si no existe la landing → GeoArticle pasa a Phase 3 (o Hold si la landing tampoco está planificada). Ejecutar sobre el inventario completo (8.14).
- **Regla crítica:** Nunca publicar GeoArticle sin landing destino publicada. GeoArticle huérfano = boost sin destino.
- **Status esperado:** `confirmed` (validación binaria sobre la matriz)

---

### 8.12 Validación Homepage = P1 obligatorio

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Confirmar que la Homepage (/) tiene score calculado y tier P1 en el inventario priorizado. Si el score calculado es < 26, sobrescribir con P1 por doctrina (Root Entity Anchor no puede tener prioridad inferior). Documentar el sobrescribir en `notes`.
- **Regla crítica:** Homepage nunca P2/P3/P4/Hold. Homepage después de artículos = error fatal de arquitectura web-first.
- **Status esperado:** `confirmed` (regla fija sin condiciones)

---

### 8.13 Validación LCAs sin score

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.10 Direct + Candidate LCAs`
- **Método:** Confirmar que ninguna Local Coverage Area tiene fila propia en la matriz de priorización ni score asignado en Phase 1–3. Las LCAs aparecen solo como menciones de contenido y schema, no como páginas. Solo pasan a tener score cuando se aprueban como Expansion Areas (Phase 5, `1.11`). Verificar que el inventario (8.14) no contiene filas de LCAs no aprobadas.
- **Regla crítica:** Asignar score o crear fila para una LCA sin aprobación = error de arquitectura. No confundir menciones de contenido con páginas del inventario.
- **Status esperado:** `confirmed` (validación sobre la ausencia de filas LCA en la matriz)

---

### 8.14 Inventario priorizado completo

- **Fuente:** outputs de todo el Paso 8 + `3.5 URL Matrix completa`
- **Método:** Producir la tabla completa de priorización con todas las URLs del inventario. Columnas: `#` | `URL` | `Tipo` | `Revenue` | `Intent` | `GBP` | `Local` | `Gap` | `Urgency` | `Score` | `Priority` | `Phase`. Ordenar por Phase ascendente, luego por Score descendente dentro de cada Phase. Incluir nota al pie si algún factor fue `inferido`.
- **Regla crítica:** Cada URL SEO del inventario base debe aparecer con score y tier. Ninguna URL sin score. El inventario priorizado es el documento operativo que usa directamente Paso 9 (QA) y Paso 10 (Producción en Fases).
- **Status esperado:** `confirmed` si todos los factores son confirmados/validados. `inferido` si algún factor fue estimado.

---

## Outputs del Paso 9 — QA Checklist

### 9.1 Plantilla de QA por página

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Definir la plantilla estándar de campos QA que se aplica a cada página antes de publicar. La plantilla incluye: Page ID | Page Type | URL | Target Service | Target Additional Category | Main City | Planned Primary GBP Category | Local Coverage Areas Used (1–5) | Approved Expansion Area (Yes/No) | Priority | Status (Draft/Ready for QA/Approved/Published/Needs Revision/Blocked) | Reviewer | QA Date | Physical office in this area (Yes/No) | Can the page mention "office"/"location"/"visit us" here (Yes/No) | Main Parent Page | Required Internal Links (1–5) | Required Schema | Notes.
- **Regla crítica:** La plantilla es fija. No omitir campos. No publicar sin plantilla QA completada. El campo Status debe actualizarse con cada revisión.
- **Status esperado:** `confirmed` (estructura fija de doctrina)

---

### 9.2 Regla QA 1 — URL

- **Fuente:** `doctrina_gmb_crush` — hereda de Bloque 2 Paso 4 (outputs 4.1–4.15)
- **Método:** Verificar que la URL de la página coincide con el patrón correcto para su page type:
  - Homepage: `/`
  - SO: `/{primary-cat-slug}/{service-slug}/`
  - GeoHub: `/{main-city-slug}/`
  - LBS: `/{primary-cat-slug}/{main-city-slug}/{service-slug}/`
  - AC: `/{primary-cat-slug}/{main-city-slug}/{ac-slug}/`
  - GeoArticle: `/{main-city-slug}/{topic-slug}/`
  Además verificar: trailing slash presente, sin "near-me" en el slug, sin adjetivos vacíos (urgente, rápido, barato), sin caracteres especiales, slugs en minúsculas con guiones.
- **Regla crítica:** No se publica ninguna página con URL incorrecta, aunque el contenido sea perfecto. La URL es la identidad de la página en el sistema.
- **Status esperado:** `confirmed`

---

### 9.3 Regla QA 2 — Page Type

- **Fuente:** `doctrina_gmb_crush` — hereda de Bloque 2 Paso 5 (outputs 5.1–5.6)
- **Método:** Verificar que el contenido y estructura de la página corresponde al page type declarado. Checks por tipo:
  - GeoArticle: estructura de artículo informativo (no landing con CTA primario de conversión directa)
  - LBS: estructura conversional con intro local, AUDIO sections, cobertura local, FAQs, CTA urgente
  - GeoHub: lista organizada de servicios + categorías + artículos de la Main City, sin targeting a servicio único
  - SO: topical authority sin geo-targeting directo en H1
- **Regla crítica:** Cada página debe comportarse como su tipo. Mezclar estructuras = señal confusa para Google.
- **Status esperado:** `confirmed`

---

### 9.4 Regla QA 3 — One service only

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar que cada LBS y AC tiene exactamente un servicio principal reflejado en URL, H1 y el cuerpo primario del contenido. Las LCAs pueden mencionarse en la sección de cobertura, pero no crean servicios adicionales. El H1 no debe combinar múltiples servicios.
  - Correcto: "Cerrajeros Madrid 24h — Cerrajero urgente en Madrid"
  - Incorrecto: "Cerrajero urgente + apertura de puertas + cambio de cerraduras en Madrid"
- **Regla crítica:** Una página local = un servicio principal. Mezclar servicios en una LBS = canibalización y dilución de intención.
- **Status esperado:** `confirmed`

---

### 9.5 Regla QA 4 — One Main City only

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.7 Main City`
- **Método:** Verificar que la Main City aparece claramente en H1, meta title y URL (donde corresponde por page type), sin multi-targeting a varias ciudades como objetivos equivalentes. Las LCAs se mencionan como zonas atendidas (no como targets en H1 ni en URL). Breadcrumb con ciudad no aprobada = error.
  - Correcto: "Cerrajero urgente en Madrid" con mención de Almagro, Chamberí como zonas de cobertura
  - Incorrecto: H1 "Cerrajero urgente en Madrid, Almagro, Salamanca y Retiro"
- **Regla crítica:** La Main City debe ser inequívoca. Múltiples ciudades como target = confusión de señal local.
- **Status esperado:** `confirmed`

---

### 9.6 Regla QA 5 — Local Coverage

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.10 Direct + Candidate LCAs`
- **Método:** Verificar que las LCAs usadas en el contenido son:
  1. Reales — zonas/barrios/distritos efectivamente atendidos por el negocio
  2. Naturales — integradas en el contenido sin listas artificiales repetidas en cada párrafo
  3. Honestas — presentadas como zonas atendidas, no como sedes físicas
  Máximo 3–5 LCAs por sección. No crear listas de 20+ zonas para "cubrir" más área.
- **Regla crítica:** Zonas no atendidas = geospam. Listas artificiales de zonas = señal de manipulación.
- **Status esperado:** `confirmed`

---

### 9.7 Regla QA 6 — No fake location

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar que no se afirma oficina, storefront ni dirección física en zonas sin presencia real del negocio. Checks concretos:
  - No "nuestra oficina en [zona sin sede]"
  - No "visit our [zona] location"
  - No schema `address` con una dirección en zona sin sede física
  - No CTA "ven a visitarnos en [zona]" cuando no hay local físico
  Correcto: "Atendemos clientes en Salamanca y Chamberí"
  Incorrecto: "Nuestra sede en Salamanca" / schema address falsa
- **Regla crítica:** Inventar presencia física es un riesgo real de penalización y suspensión de GBP. No hay excepciones.
- **Status esperado:** `confirmed`

---

### 9.8 Regla QA 7 — Metadata

- **Fuente:** `doctrina_gmb_crush` — hereda de Bloque 2 Paso 5
- **Método:** Verificar H1, meta title y meta description según page type:
  - **H1**: sigue el patrón del page type (LBS: "[Brand] — [Service] en [Main City]"; GeoArticle: título informativo con keyword y ciudad; SO: "[Service] — [Brand]"; GeoHub: "[Main City] — [Brand]")
  - **Meta title**: incluye servicio + ciudad en LBS/AC/GeoHub (≤60 chars). Sin duplicados entre páginas.
  - **Meta description**: no duplica meta title, incluye CTA implícito, menciona beneficio concreto (≤160 chars)
  Verificar que no hay meta title idéntico en dos páginas del sitio.
- **Regla crítica:** Metadata sin servicio ni ciudad en landing local = intención débil. Metas duplicadas = señal negativa.
- **Status esperado:** `confirmed`

---

### 9.9 Regla QA 8 — Word count

- **Fuente:** `doctrina_gmb_crush` — hereda de Bloque 2 Paso 5 (`5.8`)
- **Método:** Verificar que el word count está dentro del rango por page type (ver tabla en Reglas Globales). El conteo debe reflejar contenido real: proceso, FAQs, CTA, sección de cobertura, contexto local — no repetición de keywords ni relleno. Páginas con < 70% del mínimo del rango = thin content.
- **Regla crítica:** 300 palabras en una LBS no pasa QA. Relleno de zonas tampoco. La profundidad es funcional, no decorativa.
- **Status esperado:** `confirmed`

---

### 9.10 Regla QA 9 — Schema

- **Fuente:** `doctrina_gmb_crush` — hereda de Bloque 2 Paso 5 (`5.7`)
- **Método:** Verificar que el schema implementado en JSON-LD coincide con el page type (ver tabla en Reglas Globales). Checks adicionales:
  - `address` en LocalBusiness = NAP real del negocio (solo para zonas con sede física)
  - `sameAs` ausente o marcado como pendiente hasta Paso 14 (GBP no existe aún)
  - URL canónica presente en schema
  - Datos NAP en schema = datos NAP en footer (consistencia)
  - No usar GBP URL inventada en `sameAs`
- **Regla crítica:** Schema incorrecto o con datos falsos = error de implementación con impacto real en Local Pack.
- **Status esperado:** `confirmed`

---

### 9.11 Regla QA 10 — Internal links

- **Fuente:** `doctrina_gmb_crush` — hereda de Bloque 2 Paso 7 (`7.11`, `7.12`)
- **Método:** Verificar que la página incluye los enlaces obligatorios según la matriz (7.11). Por page type:
  - Homepage: enlaza a todos los SOs, GeoHub principal y página de contacto
  - SO: enlaza a su LBS de Main City (mínimo 1)
  - GeoHub: enlaza a todos los LBS + ACs + GAs de la Main City
  - LBS: enlaza a SO padre + GeoHub + LBS relacionados + GA de apoyo
  - AC: enlaza a GeoHub + SO relacionado + servicios complementarios
  - GeoArticle: enlaza a LBS de destino + GeoHub (mínimo 2 enlaces contextuales)
  Verificar que ningún enlace apunta a URL inexistente o a LCA sin URL aprobada.
- **Regla crítica:** Sin enlaces obligatorios = no se publica. Solo footer no cuenta como internal linking.
- **Status esperado:** `confirmed`

---

### 9.12 Regla QA 11 — Canibalización

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar para cada URL que no existe otra página en el inventario atacando la misma intención principal. Checks concretos:
  - No dos URLs con el mismo servicio + ciudad como target primario
  - H1 del GeoArticle ≠ H1 de la LBS que apoya (diferente ángulo: coste/proceso vs conversión)
  - No duplicar categoría adicional ya cubierta por una LBS existente
  - Si existe solapamiento de intención: una página debe ser la principal y la otra apuntar a long-tail diferenciado
- **Regla crítica:** Canibalización no detectada = dos páginas compiten y ninguna posiciona con fuerza.
- **Status esperado:** `confirmed`

---

### 9.13 Regla QA 12 — CTA

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.13 Preferred CTA`
- **Método:** Verificar que cada página tiene al menos un CTA claro y alineado con la intención del page type:
  - LBS/AC: CTA de urgencia o llamada directa ("Llama a [Brand] ahora", "Servicio urgente disponible")
  - SO: CTA a la versión local ("Ver servicio de [service] en [main city]", "Solicitar presupuesto")
  - GeoArticle: CTA de derivación a landing ("¿Necesitas [service]? Llama a [Brand]")
  - GeoHub: CTAs direccionales a servicios específicos
  - Homepage: CTA primario al servicio principal
  El CTA debe mencionar servicio y/o ciudad donde aplique. CTA genérico sin contexto = débil.
- **Regla crítica:** Sin CTA = no se publica. "Contáctanos" sin contexto no es CTA suficiente en una landing local.
- **Status esperado:** `confirmed`

---

### 9.14 Final Publish Gate

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Ejecutar el gate de publicación final antes de publicar cada página. Los 10 checks del gate (ver sección Reglas Globales) deben ser todos "Yes". Un solo "No" bloquea la publicación. El resultado del gate se documenta en el campo `Status` de la plantilla QA (9.1): si pasa → "Approved"; si no pasa → "Needs Revision" con nota de qué falla.
- **Regla crítica:** Publicar con cualquier "No" en el gate = deuda técnica y errores que se acumulan. El gate no es opcional.
- **Status esperado:** `confirmed`

---

### 9.15 GBP Not Created QA Checklist

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.3 GBP Lifecycle Status`
- **Método:** Aplicar este checklist adicional a todas las páginas cuando `1.3 = no_creado` o `creado_no_verificado`. Verificar los 6 checks del GBP Not Created QA (ver sección Reglas Globales). Si todos pasan → página lista con restricción de sameAs. Si alguno falla → "Needs Revision" con especificación del check fallido.
  Este checklist NO aplica cuando `1.3 = creado_verificado` (GBP ya existe y está verificado).
- **Regla crítica:** Antes del Paso 14, ninguna página debe afirmar señales GBP que no existen. Inventar reviews o GBP URL es riesgo de penalización inmediata.
- **Status esperado:** `confirmed` si `1.3` = no_creado/creado_no_verificado. `no_aplica` si `1.3` = creado_verificado.

---

## Outputs del Paso 10 — Producción en Fases

### 10.1 Publishing Capacity

- **Fuente:** `cliente_preflight`
- **Método:** Recoger del cliente la capacidad real de publicación semanal: ¿cuántas páginas puede producir, maquetar, enlazar y revisar con QA por semana? Este valor determina el ritmo del calendario (10.9). Si el cliente no lo declara, usar `inferido` con nota.
  - Referencia: 3–5 páginas/semana = ritmo sostenible para equipo pequeño; 1–2 = solo operador; 8+ = equipo con capacidad industrial.
- **Regla crítica:** Un calendario con más páginas de las que el equipo puede producir = QA saltado y errores acumulados. Velocidad ≠ calidad automática.
- **Status esperado:** `placeholder` si el cliente no lo declara. `confirmed` si está en preflight.

---

### 10.2 Equipo de contenido óptimo

- **Fuente:** `cliente_preflight`
- **Método:** Identificar los roles disponibles en el equipo del cliente: Solo operador / Writer externo / SEO / Developer / Designer. El equipo impacta directamente la Publishing Capacity (10.1) y la capacidad de implementar schema, internal links y QA en paralelo.
  - Solo: menor capacidad semanal, requiere templates más automatizados
  - Equipo completo (SEO + Writer + Developer): mayor velocidad, mejor calidad de QA
- **Regla crítica:** No asumir equipo sin confirmación del cliente. No planificar ritmos de equipo grande con operador solo.
- **Status esperado:** `placeholder` si no declarado. `confirmed` si está en preflight.

---

### 10.3 CMS + capabilities

- **Fuente:** N/A — `no_aplica` fijo
- **Método:** N/A — El stack del GMB Crush Engine es fijo por arquitectura técnica: **Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages**. No hay CMS variable ni elección de plataforma. Las capacidades de schema, internal links y embed de contenido vienen determinadas por el stack fijo.
- **Regla crítica:** N/A
- **Status esperado:** `no_aplica` (fijo por `arquitectura_tecnica`)

---

### 10.4 Fase 1 — Entity Foundation

- **Fuente:** `doctrina_gmb_crush` — hereda de `8.14 Inventario priorizado completo`
- **Método:** Definir el lote de páginas de Phase 1 para el cliente específico, usando las reglas fijas:
  - Homepage (/) — siempre P1 y Phase 1
  - Contacto (/contacto/) — siempre Phase 1
  - Top Service Overview Pages: las 2–3 SOs con mayor score en la tabla (8.14)
  - Main City GeoHub (/{main-city-slug}/) — siempre Phase 1
  Estas páginas deben estar publicadas antes de iniciar Phase 2. Sin esta base, las LBS no tienen soporte de SO ni GeoHub.
- **Regla crítica:** No empezar por GeoArticles. No publicar LBS sin que exista su SO padre y el GeoHub. No saltar la homepage.
- **Status esperado:** `confirmed` (derivado del inventario priorizado)

---

### 10.5 Fase 2 — Main City Conversion Layer

- **Fuente:** `doctrina_gmb_crush` — hereda de `8.14`
- **Método:** Definir el lote de Phase 2: todas las LBS de la Main City + Additional Category Pages, ordenadas por score descendente. Verificar antes de publicar cada lote que:
  - El SO padre de la LBS está publicado
  - El GeoHub de la Main City está publicado
  - Los internal links entre LBS del mismo lote están listos
  Puede incluir SOs restantes (las que no entraron en Phase 1) si el score lo justifica.
- **Regla crítica:** No publicar LBS sin GeoHub ni SO. No crear páginas de expansión en esta fase. No omitir ACs con score significativo.
- **Status esperado:** `confirmed` (derivado del inventario priorizado)

---

### 10.6 Fase 3 — Main City Semantic Expansion

- **Fuente:** `doctrina_gmb_crush` — hereda de `8.14`
- **Método:** Definir el lote de Phase 3: todos los GeoArticles de la Main City, agrupados por servicio (G artículos por servicio según `1.12`). Para cada GeoArticle, verificar que su LBS de destino y el GeoHub están publicados. Los GAs se ordenan por score dentro de cada grupo de servicio.
- **Regla crítica:** GeoArticle sin LBS de destino publicada = no publicar (mover a Hold). Publicar 15 artículos antes de las páginas comerciales = error fatal.
- **Status esperado:** `confirmed` (derivado del inventario priorizado)

---

### 10.7 Fase 4 — Optimization Loop

- **Fuente:** `doctrina_gmb_crush`, `tracking` (datos post-publicación)
- **Método:** Definir el proceso de optimización post-publicación:
  - **Fuentes de datos**: GSC (impresiones, CTR, posición media), GA4 (leads, conversiones, bounce), geo-grid (visibilidad local)
  - **Revisión a 30, 60, 90 días**: evaluar qué páginas tienen impresiones sin leads, CTR bajo, posición estancada
  - **Acciones**: mejorar FAQs, actualizar CTAs, añadir internal links a páginas nuevas publicadas, refresh de metadata, ampliar sección de cobertura local
  - **Trigger concreto**: CTR < 2% en LBS con posición media < 20 → revisar meta title y H1
- **Regla crítica:** Publicar y no medir = modelo roto. La optimización es continua y orientada a datos reales.
- **Status esperado:** `inferido` hasta que haya datos de tracking post-publicación (anotar triggers y frecuencia de revisión)

---

### 10.8 Fase 5 — Optional Expansion Module

- **Fuente:** `doctrina_gmb_crush` — hereda de `1.11 Approved Expansion Areas`
- **Método:** La Phase 5 solo existe si una LCA ha sido formalmente aprobada como Approved Expansion Area (`1.11` ≠ vacío/None). Si no hay AEAs: esta fase es `no_aplica` en la práctica. Si hay AEAs aprobadas:
  1. Verificar que Main City + servicios core + GeoHub + artículos iniciales + tracking están funcionando
  2. Crear para cada AEA: GeoHub de expansión (/{city-slug}/) + LBS de expansión + GAs de expansión
  3. Seguir la misma lógica de fases que la Main City, pero para la nueva zona
- **Regla crítica:** Nunca activar Phase 5 antes de que la base de Main City esté completa y con datos. La expansión es opcional y aprobada, no automática.
- **Status esperado:** `no_aplica` si `1.11 = vacío/None`. `placeholder` si hay AEAs candidatas pero sin aprobación formal.

---

### 10.9 Calendario semanal de publicación

- **Fuente:** `doctrina_gmb_crush` — hereda de `10.1` (Publishing Capacity), `10.4`, `10.5`, `10.6`
- **Método:** Construir el calendario semana a semana:
  1. Tomar la Publishing Capacity (páginas/semana) de `10.1`
  2. Asignar páginas de Phase 1 a las primeras semanas, respetando dependencias
  3. Continuar con Phase 2, luego Phase 3
  4. Incluir semanas de QA y optimización entre lotes grandes
  5. El calendario cubre la totalidad del inventario (3.5) o se declara como calendario parcial con fecha estimada de cierre
  Ejemplo con 5 páginas/semana: Semana 1 = Entity Foundation; Semana 2 = Main City Foundation; Semana 3 = Main City Completion (+ Internal linking QA); Semana 4+ = GeoArticles por lotes.
- **Regla crítica:** El calendario debe ser realista. Incluir tiempo de QA. Un calendario solo con páginas y sin semanas de QA = trampa.
- **Status esperado:** `inferido` hasta que se confirme Publishing Capacity (10.1). `confirmed` cuando el cliente aprueba el ritmo.

---

### 10.10 Matriz de dependencias de publicación

- **Fuente:** `doctrina_gmb_crush` — hereda de `3.5 URL Matrix completa`
- **Método:** Aplicar la tabla de dependencias fija (ver sección Reglas Globales) al inventario específico del cliente. Para cada página en el inventario, declarar explícitamente qué otras páginas deben estar publicadas antes. Esta matriz se usa como checklist antes de publicar cada lote.
- **Regla crítica:** Publicar sin verificar dependencias = orphan pages, internal links rotos y jerarquía sin soporte.
- **Status esperado:** `confirmed` (tabla fija de doctrina aplicada al inventario específico del cliente)

---

### 10.11 Reglas operativas de publicación

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Documentar las 10 reglas operativas que rigen la producción:
  1. Phase 1 primero — entidad base antes que cualquier landing local
  2. Phase 2 después — Main City conversion antes que artículos
  3. Phase 3 solo cuando Phase 2 existe — GeoArticles solo con landing publicada
  4. Verificar dependencias por lote antes de publicar
  5. QA por lote, no solo por página individual (verificar links cruzados)
  6. Capacidad de publicación realista — no sacrificar calidad por velocidad
  7. Refresh de contenido cada 3–6 meses con datos de tracking
  8. No expansión prematura — Phase 5 solo con base completa y datos
  9. Internal links actualizados tras cada nuevo lote publicado
  10. GBP se crea DESPUÉS de la web (Paso 14, no antes de Phase 1)
- **Regla crítica:** Estas reglas no son sugerencias — son el andamiaje operativo que previene arquitecturas rotas.
- **Status esperado:** `confirmed`

---

### 10.12 Checklist pre-publicación

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Checklist que se ejecuta antes de publicar cada lote de páginas:
  ```
  [ ] Phase correcta — dependencias verificadas para este lote
  [ ] Entity Foundation publicada (para lotes Phase 2+)
  [ ] LBS de este lote tienen SO padre y GeoHub publicados
  [ ] GeoArticles de este lote tienen LBS de destino publicadas
  [ ] QA por lote completado (reglas 1–12 del Paso 9)
  [ ] Final Publish Gate = todos "Yes" para cada página del lote
  [ ] Internal links entre páginas del lote listos y verificados
  [ ] Schema validado (Rich Results Test o validador JSON-LD)
  [ ] No canibalización cruzada entre páginas del lote
  [ ] NAP consistente en todas las páginas del lote
  ```
- **Regla crítica:** El checklist se ejecuta por lote, no una sola vez al final de todo el proyecto. Cada lote es un mini-cluster que debe salir completo y enlazado.
- **Status esperado:** `confirmed`

---

### 10.13 Validación Bloques 1-2 cerrados

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Antes de iniciar la producción de contenido (Phase 1), verificar que Bloques 1 y 2 están completos en el state.json:
  - Bloque 1 (Pasos 1–3): outputs 1.1–1.14, 2.1–2.14, 3.1–3.14 sin status `pending` activos (los `inferido` y `placeholder` son aceptables)
  - Bloque 2 (Pasos 4–7): outputs 4.1–4.15, 5.1–5.10, 6.1–6.17, 7.1–7.15 sin `pending` activos
  - `3.5 URL Matrix completa` cerrada y auditada
  - `8.14 Inventario priorizado completo` generado
  Si existen outputs `pending` bloqueantes: resolver antes de producir. Si existen `inferido`/`placeholder`: documentar como deuda aceptable, no bloquean producción.
- **Regla crítica:** No producir contenido sobre una arquitectura incompleta. Los `pending` no resolados = riesgo de errores en producción.
- **Status esperado:** `confirmed` (validación de estado del pipeline)

---

### 10.14 GBP Creation & Website Alignment ref

- **Fuente:** `doctrina_gmb_crush`
- **Método:** Documentar la referencia al Paso 14 (Bloque 7): el GBP se crea DESPUÉS de que la web esté live. Fases de GBP Creation & Alignment (ejecutar en Paso 14, no aquí):
  1. Web publicada (Phases 1–3 completadas, site live)
  2. Crear Google Business Profile usando la web como fuente de verdad
  3. Confirmar categoría GBP = Planned Primary GBP Category (`1.5`)
  4. Añadir URL de la web al GBP
  5. Actualizar schema `sameAs` en todas las páginas web
  6. Actualizar trust blocks y página de contacto con señales GBP reales
  7. Activar estrategia de reseñas reales (no inventadas)
  Este output es solo la referencia y el plan de traspaso al Paso 14. No se ejecuta el GBP en este paso.
- **Regla crítica:** GBP nunca antes que la web. Crear GBP con web vacía = perfil sin respaldo. Este output no ejecuta nada — apunta al Paso 14.
- **Status esperado:** `confirmed` (referencia doctrinaria fija al Paso 14)

---

## Formato de respuesta

El modelo debe responder con un JSON array con **todos los outputs del bloque**. Incluir los 43 outputs aunque algunos sean `no_aplica`.

```json
[
  {
    "id": "8.1",
    "value": "Revenue Value + Search Intent + GBP Category Relevance + Local Relevance + Competition Gap + Conversion Urgency",
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "8.2",
    "value": {
      "cerrajero-urgente": 5,
      "apertura-puertas": 4,
      "cambio-cerraduras": 4,
      "cambio-bombines": 4,
      "instalacion-cerraduras-seguridad": 3,
      "duplicado-llaves": 2
    },
    "status": "inferido",
    "source": "cliente_preflight_doctrina",
    "notes": "Revenue Value estimado por tipo de servicio y urgencia. Pendiente confirmación de ticket medio real del cliente. Urgente y apertura = 5 por alta urgencia y margen. Duplicado de llaves = 2 por bajo margen relativo."
  },
  {
    "id": "8.8",
    "value": [
      { "url": "/", "tipo": "Homepage", "revenue": 5, "intent": 5, "gbp": 5, "local": 5, "gap": 4, "urgency": 5, "score": 29, "priority": "P1", "phase": 1 },
      { "url": "/cerrajero/madrid/cerrajero-urgente/", "tipo": "LBS", "revenue": 5, "intent": 5, "gbp": 5, "local": 5, "gap": 4, "urgency": 5, "score": 29, "priority": "P1", "phase": 2 }
    ],
    "status": "inferido",
    "source": "doctrina_gmb_crush",
    "notes": "Tabla de priorización completa. Factores GBP Category Relevance y Competition Gap son inferidos hasta ejecutar Local Pack y SERP analysis reales."
  },
  {
    "id": "9.14",
    "value": {
      "template": "URL approved | Content approved | SEO metadata approved | Schema approved | Internal links approved | NAP approved | No canibalizacion | No fake location | CTA approved | Ready to publish",
      "gate_rule": "Todos deben ser Yes para publicar. Un No bloquea la publicación."
    },
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": null
  },
  {
    "id": "10.3",
    "value": null,
    "status": "no_aplica",
    "source": null,
    "notes": "Stack fijo por arquitectura técnica: Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages. No hay CMS variable en el GMB Crush Engine."
  }
]
```

### Reglas de formato obligatorias

- `"status"` válidos: `confirmed`, `validated`, `inferido`, `placeholder`, `no_aplica`
- `"notes"` **obligatorio** si status es `inferido` (explicar razonamiento) o `placeholder` (describir qué dato del cliente se necesita)
- Para `no_aplica`: `"value": null` + `"notes"` explicando el motivo
- Para outputs que son tablas o matrices: el `"value"` debe ser el artefacto estructurado completo (tabla como array de objetos, no descripción textual)
- **10.3 es siempre `no_aplica`** — stack fijo por doctrina
- Para `8.8` y `8.14` (tablas de scores): incluir todas las URLs del inventario, no solo ejemplos
- Para `10.9` (calendario): incluir semana a semana con páginas asignadas por día/semana
- Los outputs `inferido` y `placeholder` NO bloquean el progreso del Bloque 3 ni la producción de contenido — solo bloquean el GBP (Paso 14/Bloque 7)
