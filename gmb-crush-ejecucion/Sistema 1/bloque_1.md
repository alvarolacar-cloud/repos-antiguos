# Bloque 1 — Fundamentos (Pasos 1, 2 y 3)
# Outputs: 1.1–1.14 · 2.1–2.14 · 3.1–3.14 (42 outputs, 3.12 = no_aplica)

## Objetivo
Construir los cimientos del cluster a partir del preflight del cliente:
- Paso 1: capturar todos los datos del negocio (NAP, categorías, servicios, LCAs, CTAs, señales de confianza)
- Paso 2: aplicar la fórmula maestra y calcular el inventario exacto de páginas
- Paso 3: convertir ese inventario en la URL Matrix operativa con todos los campos de producción

---

## REGLAS GLOBALES DEL BLOQUE

### slugify — fórmula determinista
```
slugify(text) =
  lowercase(text)
  → eliminar tildes y diacríticos (á→a, é→e, í→i, ó→o, ú→u, ñ→n, ü→u)
  → reemplazar cualquier carácter no alfanumérico por '-'
  → colapsar guiones consecutivos en uno
  → eliminar guiones al inicio y al final
```

### Fórmula maestra de páginas (Paso 2)
```
Total SEO base = 1 + S + 1 + S + A + (G × S)
  1   = Homepage
  S   = Service Overview Pages (una por core service)
  1   = GeoHub Main City
  S   = Location-Based Service Pages (una por core service en Main City)
  A   = Additional Category Pages (categorías adicionales que necesitan página propia)
  G×S = GeoArticles (G topics por cada core service)
+ 1   = /contacto/ (auxiliar, fuera del conteo SEO base)
```

### Patrones URL (Paso 3)
```
Homepage             /
Service Overview     /{primary-cat-slug}/{service-slug}/
GeoHub Main City     /{main-city-slug}/                          ← Option A (default)
                     /{primary-cat-slug}/{main-city-slug}/       ← Option B
LBS                  /{primary-cat-slug}/{main-city-slug}/{service-slug}/
Additional Category  /{primary-cat-slug}/{main-city-slug}/{additional-cat-slug}/
GeoArticle           /{main-city-slug}/{topic-slug}/
Auxiliar             /contacto/
```

### Schema por page type (Paso 3)
```
Homepage              → Organization + WebSite + LocalBusiness
Service Overview      → Service + WebPage + BreadcrumbList
GeoHub                → CollectionPage + BreadcrumbList
LBS                   → LocalBusiness + BreadcrumbList
Additional Category   → Service + BreadcrumbList
GeoArticle            → Article + FAQPage + BreadcrumbList
Auxiliar (/contacto/) → ContactPoint
```

### IDs por page type (Paso 3)
```
HP-001                 (única homepage)
GH-001                 (único GeoHub Main City)
SO-001, SO-002...      (correlativo, una por core service)
LBS-001, LBS-002...    (correlativo, una por core service en Main City)
AC-001, AC-002...      (correlativo, una por Additional Category)
GA-001, GA-002...      (correlativo, G×S en total)
AUX                    (/contacto/)
```

### Jerarquía de Parent Pages
```
Homepage          → parent = – (root)
Service Overview  → parent = / (Homepage)
GeoHub            → parent = / (Homepage)
LBS               → parent = /{primary-cat-slug}/{service-slug}/ (su SO)
Additional Cat.   → parent = /{main-city-slug}/ (GeoHub)
GeoArticle        → parent = /{primary-cat-slug}/{main-city-slug}/{service-slug}/ (LBS matching)
Auxiliar          → parent = / (Homepage)
```

### Priority y Publish Phase por page type
```
Homepage          → P1, Phase 1
Service Overview  → P1, Phase 1
GeoHub            → P1, Phase 1
LBS               → P1, Phase 1 (Phase 2 si SO padre no está listo)
Additional Cat.   → P2, Phase 1
GeoArticle        → P3, Phase 2 (espera a LBS padre)
Auxiliar          → P4, Phase 1
```

### LCAs — regla crítica
Las Local Coverage Areas aparecen en contenido, FAQs y schema `areaServed`. **Nunca generan URLs ni filas en la URL Matrix** salvo que hayan pasado a Approved Expansion Areas (1.11).

### Variable A — anti-duplicación
`A = count(Additional Categories) - count(cubiertas por core services)`
Una categoría adicional que coincide en intención comercial con un core service **no suma a A**.

### GeoArticles (3.4) — status inferido por defecto
Los topics de GeoArticles deben extraerse con keyword research real (Ahrefs/Semrush). Si no se ejecuta, marcar como `⚠ inferido` y proponer topics razonables por lógica del servicio.

---

## PASO 1 — INTAKE FORM (outputs 1.1–1.14)

### 1.1 Business Name
- **Fuente:** `cliente_preflight`
- **Método:** Tomar `nombre_negocio` del preflight. Nombre legal exacto.
- **Regla:** Debe ser estable y consistente en toda la web (homepage, footer, schema, GBP).
- **Status:** `confirmed` si viene del preflight. `placeholder` si está vacío.

### 1.2 Website URL / Canonical Domain
- **Fuente:** `cliente_preflight`
- **Método:** Tomar el dominio declarado. Una sola versión canónica (con o sin www, siempre HTTPS).
- **Regla:** Si el cliente no lo declaró, derivar del nombre del negocio como propuesta (`⚠ placeholder`).
- **Status:** `confirmed` si viene del preflight. `placeholder` si no está.

### 1.3 GBP Lifecycle Status
- **Fuente:** `cliente_preflight_doctrina`
- **Método:** Leer `gbp_status` del preflight y mapear a los 4 campos:
  - `GBP Status` ∈ {Not Created, Created, Verified, Pending Verification}
  - `GBP Creation Timing` = `After website launch` (default web-first)
  - `GBP Verification Status` ∈ {Not Started, Pending, Verified}
  - `GBP URL` = blank hasta Paso 14
- **Regla crítica:** Nunca inventar GBP URL ni sameAs antes del Paso 14. Si `gbp_status = "no_creado"`, los 4 campos toman valores web-first fijos.
- **Status:** `confirmed`

### 1.4 Full NAP
- **Fuente:** `cliente_preflight`
- **Método:** Extraer del preflight los 8 campos: Name, Street Address, City, State/Province, ZIP, Country, Phone, Email.
  - Name = 1.1 (Business Name)
  - City = extraer de `direccion`
  - Si algún campo falta → `⚠ placeholder`
- **Regla:** NAP debe ser visible, consistente y rastreable. Se reutiliza en homepage, footer, contact, schema, GBP.
- **Status:** `confirmed` para campos presentes. `placeholder` para campos ausentes.

### 1.5 Planned Primary GBP Category
- **Fuente:** `doctrina_local_pack`
- **Método:**
  1. Buscar en Google Maps `[servicio principal] [main city]` sin login
  2. Anotar la categoría primaria de los 5 mejores posicionados en el Local Pack
  3. Seleccionar la que aparece en >3 de 5 (o la más amplia en caso de empate)
  4. Validar contra el catálogo oficial GBP
- **Si no se ejecuta Local Pack:** marcar `⚠ inferido`, proponer la categoría más lógica por sector
- **Regla:** La categoría principal define el eje semántico; toda la arquitectura gira sobre ella.
- **Status:** `validated` si se ejecutó Local Pack. `inferido` si no.

### 1.6 Planned Additional GBP Categories
- **Fuente:** `doctrina_local_pack`
- **Método:**
  1. Revisar categorías secundarias de los mismos 5 competidores (las que aparecen en ≥2 de 5)
  2. Filtrar las que el cliente realmente ofrece
  3. Clasificar cada una: ¿está cubierta por un core service? → `cubierta`. ¿No? → `necesita página propia`
- **Regla:** Una categoría cubierta por core service NO genera página adicional (no suma a A).
- **Si no se ejecuta Local Pack:** marcar `⚠ inferido`
- **Status:** `validated` si se ejecutó Local Pack. `inferido` si no.

### 1.7 Main City
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Extraer directamente el campo `City` del NAP (1.4). Una sola Main City genera la arquitectura base.
- **Regla crítica:** Main City ≠ LCAs. No meter barrios ni distritos como Main City si el NAP dice Madrid.
- **Status:** `confirmed`

### 1.8 Physical Location City
- **Fuente:** `cliente_preflight`
- **Método:** Ciudad donde hay presencia física real. Si el negocio es móvil → declarar "móvil" o coincidir con Main City sin afirmar oficina.
- **Regla:** Nunca inventar ubicación física. Controla qué páginas pueden usar lenguaje de oficina.
- **Status:** `confirmed`

### 1.9 Servicios principales (S=5)
- **Fuente:** `doctrina_local_pack`
- **Método:**
  1. Abrir los 5 perfiles GBP mejor posicionados en Google Maps
  2. Listar sus servicios declarados, contar frecuencia por servicio
  3. Seleccionar los 5 más frecuentes que el cliente realmente ofrece
  4. Si empate de frecuencia → priorizar el de mayor volumen de búsqueda estimado
- **Regla:** Solo servicios reales con valor comercial. No sinónimos, no microvariantes. Cada core service genera SO Page + LBS Page + G GeoArticles.
- **Si no se ejecuta Local Pack:** marcar `⚠ inferido`, proponer 5 servicios razonables del sector
- **Status:** `validated` si se ejecutó. `inferido` si no.

### 1.10 Local Coverage Areas (Direct + Candidate)
- **Fuente:** `doctrina_local_pack` para Candidates; `doctrina_gmb_crush` para Direct
- **Método:**
  - **Direct LCAs:** extraer barrio + distrito de la dirección física (1.4). Sin validación adicional.
  - **Candidate LCAs:** zonas que aparecen en ≥2 competidores del Local Pack Y pasan test GEO 3/6:
    1. Geográficamente contigua a Main City
    2. Con demanda de búsqueda local
    3. Mencionada por competidores
    4. No requiere fingir oficina física
    5. Distancia razonable desde el NAP
    6. Con contenido diferenciable
    → Si pasa ≥3 criterios: Candidate validada
- **Regla crítica:** LCAs NO generan URLs. Aparecen en contenido, FAQs y schema `areaServed`.
- **Status:** `confirmed` para Direct. `validated`/`inferido` para Candidates según si se ejecutó Local Pack.

### 1.11 Approved Expansion Areas
- **Fuente:** `arquitectura_tecnica`
- **Método:** Default = vacío en Phase 1. Solo añadir si el cliente las aprueba explícitamente.
- **Regla:** Una LCA solo pasa a AEA si cumple: demanda de búsqueda + competidores la trabajan + contenido único posible + valor comercial + no finge oficina física.
- **Status:** `confirmed` (valor = "None in Phase 1" por defecto)

### 1.12 GeoArticles per Service (G)
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Default G=3. Ajustar solo si el cliente justifica otra capacidad de producción.
- **Regla:** G se decide aquí; cambiar G aguas arriba cambia todo el inventario.
- **Status:** `confirmed`

### 1.13 Preferred CTA
- **Fuente:** `arquitectura_tecnica`
- **Método:** Elegir UNO de: `Llamar ahora` / `Reservar online` / `Solicitar presupuesto` / `Contactar`
  - Servicios urgentes (cerrajería, fontanería, electricidad) → `Llamar ahora`
  - Servicios de cita previa (salud, consultoría) → `Reservar online` o `Contactar`
  - Servicios que requieren presupuesto → `Solicitar presupuesto`
- **Regla:** Un solo CTA consistente en toda la web.
- **Status:** `confirmed`

### 1.14 Trust Signals
- **Fuente:** `cliente_preflight` + `doctrina_local_pack`
- **Método:** Combinar datos del preflight (años de experiencia, certificaciones, garantías) con señales observadas en competidores del Local Pack. Solo señales reales y verificables.
- **Regla:** 4-7 señales. Nada inventado. Sirven para homepage, service pages, schema y GBP.
- **Status:** `confirmed` para datos del cliente. `inferido` para las inferidas del sector.

---

## PASO 2 — FÓRMULA MAESTRA (outputs 2.1–2.14)

### 2.1 Planned GBP Categories Status
- **Fuente:** `doctrina_gmb_crush` ← 1.5 + 1.6
- **Método:** Marcar todas las categorías GBP planificadas como `Planned` hasta el Paso 14.
- **Status:** `confirmed`

### 2.2 Primary Category Slug
- **Fuente:** `doctrina_gmb_crush` ← 1.5
- **Método:** `slugify(Planned Primary GBP Category)`
- **Ejemplo:** `Cerrajero` → `cerrajero`
- **Status:** `confirmed`

### 2.3 Main City Slug
- **Fuente:** `doctrina_gmb_crush` ← 1.7
- **Método:** `slugify(Main City)`
- **Ejemplo:** `Madrid` → `madrid`
- **Status:** `confirmed`

### 2.4 Service Slugs (S slugs)
- **Fuente:** `doctrina_gmb_crush` ← 1.9
- **Método:** `slugify(core_service_name)` para cada uno de los S servicios
- **Ejemplo:** `Cerrajero urgente` → `cerrajero-urgente`
- **Regla:** Exactamente S slugs. No incluir ciudad ni modificadores comerciales.
- **Status:** `confirmed`

### 2.5 Variable S
- **Fuente:** `doctrina_gmb_crush` ← 1.9
- **Método:** Contar los core services declarados en 1.9. Solo servicios reales con valor comercial.
- **Regla:** No inflar con sinónimos ni microvariantes.
- **Status:** `confirmed`

### 2.6 Variable A
- **Fuente:** `doctrina_gmb_crush` ← 1.6
- **Método:** `A = count(Additional Categories que necesitan página propia)`
  - Las cubiertas por core services NO suman.
  - Documentar cuáles se descartaron y por qué.
- **Status:** `confirmed`

### 2.7 Variable G
- **Fuente:** `doctrina_gmb_crush` ← 1.12
- **Método:** Heredar directamente de 1.12. Default 3.
- **Status:** `confirmed`

### 2.8 Total páginas SEO base
- **Fuente:** `doctrina_gmb_crush` ← 2.5 + 2.6 + 2.7
- **Método:** Aplicar `1 + S + 1 + S + A + (G × S)`. Entregar con desglose componente a componente.
- **Regla:** LCAs no entran. AEAs van aparte. `/contacto/` es auxiliar, no cuenta en el total SEO base.
- **Status:** `confirmed`

### 2.9 Inventario por tipo de página
- **Fuente:** `doctrina_gmb_crush` ← 2.8
- **Método:** Desplegar tabla con: Homepage=1 / SO=S / GeoHub=1 / LBS=S / AC=A / GAs=G×S / Total / + auxiliar
- **Status:** `confirmed`

### 2.10 Optional Expansion Formula
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Declarar `E × (1 + S + A + G×S)` aunque E=0 en Phase 1. Si hay AEAs aprobadas (1.11), calcular.
- **Status:** `confirmed`

### 2.11 Validación anti-duplicación
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Para cada Additional Category: ¿coincide en intención con un core service? → consolidar, no sumar a A. Documentar consolidaciones.
- **Status:** `confirmed` (flag OK o lista de consolidaciones)

### 2.12 Validación dependencias
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar orden: Homepage → SO → GeoHub → LBS → AC → GAs. Ningún GeoArticle antes de su LBS padre.
- **Status:** `confirmed` (flag OK)

### 2.13 Validación LCAs fuera fórmula
- **Fuente:** `doctrina_gmb_crush` ← 1.10
- **Método:** Confirmar que count(LCAs) no entró como multiplicador. 0 URLs adicionales por LCA.
- **Status:** `confirmed` (flag OK)

### 2.14 Validación auditabilidad del total
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Recorrer el inventario fila a fila y verificar que `Total = Σ cantidades por page type = 1 + S + 1 + S + A + G×S`.
- **Regla:** Si no se puede explicar componente a componente, no se entrega al Paso 3.
- **Status:** `confirmed` (flag OK + traza numérica)

---

## PASO 3 — MATRIZ BASE (outputs 3.1–3.14, 3.12 = no_aplica)

### 3.1 Spreadsheet Name
- **Fuente:** `arquitectura_tecnica` ← 1.1
- **Método:** `[Business Name] – GMB Crush Website Architecture`
- **Status:** `confirmed`

### 3.2 GeoHub URL Style
- **Fuente:** `arquitectura_tecnica`
- **Método:** Elegir Option A (`/{main-city-slug}/`) por defecto. Option B (`/{primary-cat-slug}/{main-city-slug}/`) solo si el cliente lo justifica.
- **Regla:** Una sola opción consistente en todo el cluster. Decisión contractual; cambiarla mid-build obliga a regenerar URLs.
- **Status:** `confirmed`

### 3.3 Additional Category Slugs
- **Fuente:** `doctrina_gmb_crush` ← 1.6
- **Método:** `slugify(additional_category_name)` para cada AC que necesita página propia.
- **Regla:** Slugs únicos, sin colisión con Service Slugs ni Primary Category Slug.
- **Status:** `confirmed`

### 3.4 GeoArticle Topics propuestos
- **Fuente:** `doctrina_keyword_research`
- **Método (si se ejecuta keyword research):**
  1. Por cada core service (S), buscar queries con intent informativo (cómo, qué, cuándo, por qué, cuánto)
  2. Filtrar: volumen ≥ umbral cliente, dificultad ≤ umbral cliente
  3. Excluir queries con intent transaccional (esas cubren LBS)
  4. Seleccionar G topics por servicio, con intenciones complementarias entre sí
  5. Generar slug: `slugify(query)` según patrón `/{main-city-slug}/{topic-slug}/`
- **Si no se ejecuta keyword research:** proponer G topics razonables por servicio, marcar `⚠ inferido`
- **Status:** `validated` si se ejecutó KR. `inferido` si no.

### 3.5 URL Matrix completa
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Crear una fila por URL con todas las columnas obligatorias:

| Col | Campo | Contenido |
|---|---|---|
| ID | ID único | HP-001, SO-NNN, GH-001, LBS-NNN, AC-NNN, GA-NNN, AUX |
| Page Type | Tipo GMB Crush | Homepage, Service Overview, GeoHub, LBS, Additional Category, GeoArticle, Auxiliar |
| Parent Page | URL del padre | Según jerarquía definida arriba |
| Service | Nombre del servicio | Si aplica |
| Service Slug | slug del servicio | Si aplica |
| Main City | Main City | Siempre la Main City, no LCAs |
| Main City Slug | slug de Main City | |
| Additional Category | Nombre AC | Si aplica |
| Local Coverage Areas | LCAs mencionadas en contenido | No generan URL |
| Approved Expansion Area | AEA | Si aplica |
| URL | URL final | Según patrones arriba |
| H1 | H1 recomendado | Derivado de servicio + ciudad o topic |
| Meta Title | Title SEO | |
| Meta Description | Descripción SEO | |
| Schema Type | Según mapeo doctrinal | |
| Internal Links Required | Links obligatorios | Según reglas de jerarquía |
| Priority | P1/P2/P3/P4 | Según page type |
| Publish Phase | Phase 1/2/3 | Según dependencias |
| Status | Planned | Todas en Planned al cerrar |
| Notes | Notas estratégicas | Opcional |

- **Regla:** Total filas = total SEO base (Paso 2, 2.9) + 1 auxiliar (/contacto/). LCAs no generan filas.
- **Status:** `confirmed`

### 3.6 IDs por tipo de página
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Asignar IDs según convención: `HP-001`, `SO-001`…`SO-S`, `GH-001`, `LBS-001`…`LBS-S`, `AC-001`…`AC-A`, `GA-001`…`GA-(G×S)`, `AUX`
- **Regla:** Cada ID único. N es secuencial de 3 dígitos dentro del tipo.
- **Status:** `confirmed`

### 3.7 Parent Page declarado por fila
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar jerarquía definida en las Reglas Globales. Homepage = root. Resto siempre apunta a URL existente en la propia matriz.
- **Regla:** No hay páginas huérfanas. Si el padre no existe en la matriz, hay error.
- **Status:** `confirmed`

### 3.8 Schema asignado desde la matriz
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar mapeo doctrinal de las Reglas Globales. El implementador no decide schema en build-time.
- **Status:** `confirmed`

### 3.9 Enlaces internos Required por fila
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Para cada page type, listar los enlaces mínimos obligatorios:
  - **Homepage** → enlaza a todas las SO + GeoHub + AC + /contacto/
  - **Service Overview** → su LBS en Main City + related SOs
  - **GeoHub** → todas sus LBS + AC + todos sus GAs
  - **LBS** → SO padre + GeoHub + 2 related LBS + matching GAs (los G GeoArticles de ese servicio)
  - **Additional Category** → GeoHub + LBS relacionados
  - **GeoArticle** → su LBS matching + GeoHub
- **Regla:** El linking es contractual. Sin los enlaces, la página se considera incompleta.
- **Status:** `confirmed`

### 3.10 Priority y Publish Phase por fila
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Aplicar tabla de Priority y Phase de las Reglas Globales. Son dos campos independientes que NUNCA se mezclan.
- **Regla:** Una página P1 puede estar en Phase 2 si su padre no está listo. El orden de publicación respeta dependencias.
- **Status:** `confirmed`

### 3.11 Default Page Status
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Todas las filas arrancan como `Planned`. Ciclo de vida: Planned → Draft → Ready for QA → Approved → Published.
- **Status:** `confirmed`

### 3.12 Notes estratégicas por fila
- **no_aplica:** true — este output no se produce en el flujo actual.

### 3.13 Validación LCAs sin filas base
- **Fuente:** `doctrina_gmb_crush` ← 1.10
- **Método:** Confirmar que ninguna LCA (Direct ni Candidate) generó una fila en la URL Matrix. Las LCAs aparecen en columna "Local Coverage Areas" (texto) y schema `areaServed`, no como URLs.
- **Status:** `confirmed` (flag OK + lista de LCAs confirmadas sin fila)

### 3.14 Validación matriz cerrada antes de contenido
- **Fuente:** `doctrina_gmb_crush`
- **Método:** Verificar que todas las filas tienen las 20 columnas rellenas (puede ser "–" si no aplica). Estado = Planned en todas. Ningún campo de schema o enlaces vacío.
- **Regla:** La matriz se cierra ANTES de Paso 4 y Paso 15. Cambios posteriores obligan a reabrirla.
- **Status:** `confirmed` (flag OK)

---

## FORMATO DE RESPUESTA OBLIGATORIO

Responde **exclusivamente** con un JSON array. Una entrada por output. Incluye los 42 outputs (incluyendo 3.12 con no_aplica=true).

```json
[
  {
    "id": "1.1",
    "value": "Nombre del negocio aquí",
    "status": "confirmed",
    "source": "cliente_preflight",
    "notes": null
  },
  {
    "id": "1.5",
    "value": "Cerrajero",
    "status": "inferido",
    "source": "doctrina_local_pack",
    "notes": "No se ejecutó Local Pack. Se infiere del sector y del nombre del negocio."
  },
  {
    "id": "3.5",
    "value": [
      {"id": "HP-001", "url": "/", "page_type": "Homepage", "parent": "–", "service": null, "service_slug": null, "main_city": "Madrid", "main_city_slug": "madrid", "additional_category": null, "lcas": ["Almagro","Chamberí"], "schema": "Organization + WebSite + LocalBusiness", "h1": "Cerrajeros Madrid 24h — Apertura de Puertas Urgente", "meta_title": "Cerrajero en Madrid 24h | Apertura Urgente | Cerrajeros Madrid 24h", "meta_description": "Cerrajero urgente en Madrid disponible 24 horas. Apertura de puertas, cambio de cerraduras y bombines. Llámanos ahora.", "internal_links_required": ["/cerrajero/cerrajero-urgente/", "/cerrajero/apertura-puertas/", "/madrid/", "/contacto/"], "priority": "P1", "publish_phase": "Phase 1", "status": "Planned", "notes": null},
      {"id": "SO-001", "url": "/cerrajero/cerrajero-urgente/", "page_type": "Service Overview", "parent": "/", "service": "Cerrajero urgente", "service_slug": "cerrajero-urgente", "main_city": "Madrid", "main_city_slug": "madrid", "additional_category": null, "lcas": ["Almagro","Chamberí","Salamanca"], "schema": "Service + WebPage + BreadcrumbList", "h1": "Cerrajero Urgente en Madrid — Servicio 24 Horas", "meta_title": "Cerrajero Urgente Madrid | Disponible 24h | Cerrajeros Madrid 24h", "meta_description": "Servicio de cerrajero urgente en Madrid. Abrimos tu puerta en minutos, a cualquier hora. Presupuesto sin compromiso.", "internal_links_required": ["/", "/cerrajero/madrid/cerrajero-urgente/", "/cerrajero/apertura-puertas/"], "priority": "P1", "publish_phase": "Phase 1", "status": "Planned", "notes": null}
    ],
    "status": "confirmed",
    "source": "doctrina_gmb_crush",
    "notes": "Incluir TODAS las filas: HP-001, SO-001 a SO-S, GH-001, LBS-001 a LBS-S, AC-001 a AC-A, GA-001 a GA-(G×S), AUX"
  },
  {
    "id": "3.12",
    "value": null,
    "status": "no_aplica",
    "source": null,
    "notes": null
  }
]
```

### Reglas del JSON
- `notes` es obligatorio cuando `status` es `inferido` o `placeholder` — explica el razonamiento
- `notes` es null cuando `status` es `confirmed` o `validated`
- Para `3.5` (URL Matrix): el value es un array de objetos con TODAS las filas de la matriz
- Para outputs de validación (2.11, 2.12, 2.13, 2.14, 3.13, 3.14): el value es `"OK"` o una descripción del resultado
- Para outputs tabulares (2.9, 3.6, 3.7, 3.8, 3.9, 3.10): el value puede ser un objeto o array estructurado
- No omitas ningún output. Los 42 deben estar presentes.
