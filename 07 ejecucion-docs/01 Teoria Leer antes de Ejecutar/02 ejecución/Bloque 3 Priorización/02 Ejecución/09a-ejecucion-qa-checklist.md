Versión literal del chat · Sistema GMB Crush para webs locales
Documento generado siguiendo el esqueleto canónico (`00 convenciones/00convenciones.md` (§1 Esqueleto)).
Proveniencia: portado de `repos-1-y-2/Bloque 3 — Priorizacion/paso-09-qa-checklist/`, alineado con los frameworks oficiales GMB Crush.

# Paso 9 — QA Checklist

<small>§1</small>

> **Cómo leer este documento:**
> - **Bloque I — Introducción** describe qué produce el paso y qué hereda.
> - **Bloque II — Ejemplo rellenado** muestra los outputs del Paso 9 con sus valores reales para Cerrajeros Madrid 24h.
> - **Bloque III — Ejecución por la IA** contiene los 4 sub-bloques operativos: outputs a conseguir, obtención de outputs, checklist final y outputs consolidados.
> - **Bloque IV — Fuentes Internas GMB Crush usadas** lista los frameworks GMB Crush en los que se basa el paso.

# Bloque I — Introducción

## Objetivo del Paso 9

<small>§2</small>

En este paso la IA produce todos los outputs que **validan cada página antes de publicación** — la plantilla operativa de QA, las **12 reglas QA** del manual original (URL, Page Type, One Service, One Main City, Local Coverage, No Fake Location, Metadata, Word Count, Schema, Enlaces internos, Canibalización, CTA), el Final Publish Gate de 9 checkpoints binarios y el GBP Not Created QA Checklist específico para clusters web-first. El Paso 9 es el control de calidad que **bloquea la publicación** si falla cualquier check.

**Outputs del paso:**

- **9.1** Plantilla de QA por página — formulario operativo (Page ID, Type, URL, Target Service, Main City, GBP Category, LCAs, Priority, Status, QA Date)
- **9.2** Regla 1 — URL QA
- **9.3** Regla 2 — Page Type QA
- **9.4** Regla 3 — One service only
- **9.5** Regla 4 — One Main City only
- **9.6** Regla 5 — Local Coverage QA
- **9.7** Regla 6 — No fake location
- **9.8** Regla 7 — Metadata QA
- **9.9** Regla 8 — Word count QA
- **9.10** Regla 9 — Schema QA
- **9.11** Regla 10 — Enlaces internos QA
- **9.12** Regla 11 — Canibalización QA
- **9.13** Regla 12 — CTA QA
- **9.14** Final Publish Gate — 9 checkpoints binarios antes de publicar
- **9.15** GBP Not Created QA Checklist — 7 checks específicos para web-first

**Errores que previene:**

- Publicar páginas con URL incorrecta
- Crear páginas locales con múltiples servicios o ciudades como targets
- Mencionar oficinas o ubicaciones físicas en zonas sin presencia real
- Publicar páginas sin profundidad mínima por tipo
- Schema incorrecto o con dirección falsa
- Páginas sin enlaces obligatorios o sin CTA
- Canibalización por dos URLs cubriendo la misma intención
- Inventar señales de GBP (URL, sameAs, reseñas) antes del Paso 14

**Cuándo se ejecuta:** después de Pasos 1-8 cerrados (intake + fórmula + matriz + URL rules + page types + content arch + linking + priority). Antes de Paso 10 (Producción en Fases) y Paso 18 (deploy).

## Info heredada de pasos anteriores

<small>§3</small>

> Estos campos NO se deciden en Paso 9 — la IA los lee del paso indicado y los usa como input para validar las páginas del Bloque III.

| Campo | Origen |
|---|---|
| Business Name | Paso-01 1.1 |
| GBP Lifecycle Status | Paso-01 1.3 |
| Full NAP | Paso-01 1.4 |
| Planned Primary GBP Category | Paso-01 1.5 |
| Planned Additional GBP Categories | Paso-01 1.6 |
| Main City | Paso-01 1.7 |
| Physical Location City | Paso-01 1.8 |
| Servicios principales (S=5) | Paso-01 1.9 |
| Local Coverage Areas | Paso-01 1.10 |
| Preferred CTA | Paso-01 1.13 |
| URL patterns por page type | Paso-04 4.3 a 4.8 |
| Validación No falsa ubicación | Paso-04 4.14 |
| Validación No duplicar intención | Paso-04 4.15 |
| Spec por page type (9 sub-outputs) | Paso-05 5.3 a 5.8 |
| Validación Schema | Paso-05 5.9 |
| Validación Word count | Paso-05 5.10 |
| Validación CTA | Paso-05 5.9 |
| Validación No false location claims | Paso-05 5.10 |
| Content Architecture por page type | Paso-06 6.6 a 6.11 |
| FAQs con cobertura natural | Paso-06 6.16 |
| Schema `areaServed` coherente | Paso-06 6.17 |
| Anchor text variado | Paso-07 7.9 |
| Matriz de enlaces obligatorios | Paso-07 7.11 |
| Breadcrumbs por page type | Paso-07 7.13 |
| Inbound links esperados | Paso-07 7.14 |
| Inventario priorizado completo | Paso-08 8.14 |

# Bloque II — Ejemplo rellenado para el Paso 9 — QA Checklist

<small>§4</small>

> Los outputs del Paso 9 con sus valores reales para Cerrajeros Madrid 24h. Cada sub-sección §4.X corresponde 1:1 al output 9.X declarado en §5. Los ejemplos usan LBS-001 (`/cerrajero/madrid/cerrajero-urgente/`) como página de referencia.

### 9.1 — Plantilla de QA por página

```text
Page ID:               LBS-001
Page Type:             Location-Based Service
URL:                   /cerrajero/madrid/cerrajero-urgente/
Target Service:        Cerrajero urgente
Main City:             Madrid
GBP Category:          Cerrajero (Primary)
Local Coverage Areas:  Almagro, Chamberí, Salamanca, Retiro
Priority:              P1
Phase:                 1
Status:                Approved
QA Date:               2026-04-30
```

### 9.2 — Regla 1 · URL QA (LBS-001)

```text
☑ `/cerrajero/madrid/cerrajero-urgente/` = Location-Based Service, cumple el patrón URL del Paso 4.
```

### 9.3 — Regla 2 · Page Type QA (LBS-001)

```text
☑ Estructura LBS coherente con su tipo: H1 + intro local + cobertura + FAQs + CTA.
```

### 9.4 — Regla 3 · One service only (LBS-001)

```text
☑ H1 menciona solo `Cerrajero urgente`; sin mezcla con apertura de puertas u otros servicios.
```

### 9.5 — Regla 4 · One Main City only (LBS-001)

```text
☑ H1 apunta a Madrid como Main City; Almagro, Chamberí, Salamanca, Retiro aparecen como cobertura, no como targets paralelos.
```

### 9.6 — Regla 5 · Local Coverage QA (LBS-001)

```text
☑ Almagro, Chamberí, Salamanca, Retiro mencionadas como zonas atendidas, sin repetición artificial.
```

### 9.7 — Regla 6 · No fake location (LBS-001)

```text
☑ 0 menciones a "oficina en Salamanca" o "visit our Retiro location"; schema address = NAP real Madrid.
```

### 9.8 — Regla 7 · Metadata QA (LBS-001)

```text
☑ H1: "Cerrajeros Madrid 24h – Cerrajero urgente en Madrid"; meta title + description alineados con la intención.
```

### 9.9 — Regla 8 · Word count QA (LBS-001)

```text
☑ Profundidad dentro del rango LBS doctrinal 800–1.000 palabras (Paso-05 5.10).
```

### 9.10 — Regla 9 · Schema QA (LBS-001)

```text
☑ LocalBusiness + BreadcrumbList + FAQPage + Speakable; JSON-LD válido y URL canónica presente.
```

### 9.11 — Regla 10 · Enlaces internos QA (LBS-001)

```text
☑ 5 enlaces obligatorios: parent SO `/cerrajero/cerrajero-urgente/`, GeoHub `/madrid/`,
  LBS hermanos `/cerrajero/madrid/apertura-puertas/` y `/cerrajero/madrid/cambio-cerraduras/`,
  GeoArticle `/madrid/cuanto-cuesta-un-cerrajero-urgente/`.
```

### 9.12 — Regla 11 · Canibalización QA (LBS-001)

```text
☑ `/cerrajero/madrid/cerrajero-urgente/` es la URL principal para la intención `cerrajero urgente en Madrid`.
  La SO `/cerrajero/cerrajero-urgente/` no se solapa (no-geolocalizada).
```

### 9.13 — Regla 12 · CTA QA (LBS-001)

```text
☑ CTA "Llama a Cerrajeros Madrid 24h hoy" presente y coherente con servicio + ciudad.
```

### 9.14 — Final Publish Gate (LBS-001)

```text
□ URL approved:                 Yes
□ Content approved:             Yes
□ SEO metadata approved:        Yes
□ Schema approved:              Yes
□ Internal links approved:      Yes
□ NAP approved:                 Yes
□ No canibalization:            Yes
□ No false location claim:      Yes
□ CTA approved:                 Yes

→ Ready to publish:             Yes
```

### 9.15 — GBP Not Created QA Checklist (LBS-001)

```text
□ GBP Status:                            ✓ La página reconoce GBP=Not Created
□ Planned Category Support:              ✓ Soporta Planned Primary `Cerrajero` sin afirmar
□ Planned Additional Categories:         ✓ N/A — no hay AC en esta LBS
□ No Invented GBP URL:                   ✓ Sin URL GBP en schema/footer
□ No Invented Reviews:                   ✓ 0 reseñas Google afirmadas
□ sameAs Deferred:                       ✓ Campo sameAs vacío hasta Paso 14
□ Paso 14 Dependency:                    ✓ Marcada para actualización post-GBP
```

# Bloque III — Ejecución por la IA

## Outputs a Conseguir

<small>§5</small>

> Tabla declarativa de los outputs que el Paso 9 debe producir. Cada output tiene un ID global (`Paso.Output`, ej. `9.5`) citable desde cualquier doc del sistema. Los outputs 9.2–9.13 corresponden 1:1 a las **12 reglas QA** del manual original.

| ID | Output | Tipo | Fuente | Hereda de |
|---|---|---|---|---|
| 9.1 | Plantilla de QA por página | Formulario operativo (10 campos) | Doctrina GMB Crush | Paso-08 8.14 |
| 9.2 | Regla 1 — URL QA | Check binario por URL | Doctrina GMB Crush | Paso-04 4.3-4.8 |
| 9.3 | Regla 2 — Page Type QA | Check binario por URL | Doctrina GMB Crush | Paso-05 5.3-5.8 + Paso-06 6.6-6.11 |
| 9.4 | Regla 3 — One service only | Check binario por URL local | Doctrina GMB Crush | Paso-01 1.9 + Paso-05 5.5-5.8 |
| 9.5 | Regla 4 — One Main City only | Check binario por URL local | Doctrina GMB Crush | Paso-01 1.7 |
| 9.6 | Regla 5 — Local Coverage QA | Check binario por URL local | Doctrina GMB Crush | Paso-01 1.10 + Paso-04 4.14 |
| 9.7 | Regla 6 — No fake location | Check binario por URL local | Doctrina GMB Crush | Paso-01 1.4 + 1.8 + Paso-04 4.14 + Paso-05 5.10 |
| 9.8 | Regla 7 — Metadata QA | Check binario por URL | Doctrina GMB Crush | Paso-05 5.3-5.8 |
| 9.9 | Regla 8 — Word count QA | Check binario por URL | Doctrina GMB Crush | Paso-05 5.10 |
| 9.10 | Regla 9 — Schema QA | Check binario por URL | Doctrina GMB Crush | Paso-05 5.9 + Paso-06 6.17 |
| 9.11 | Regla 10 — Enlaces internos QA | Check binario por URL | Doctrina GMB Crush | Paso-07 7.11 |
| 9.12 | Regla 11 — Canibalización QA | Check binario por URL | Doctrina GMB Crush | Paso-04 4.15 |
| 9.13 | Regla 12 — CTA QA | Check binario por URL | Doctrina GMB Crush | Paso-05 5.9 + Paso-01 1.13 |
| 9.14 | Final Publish Gate | 9 checkpoints binarios + Ready to publish | Doctrina GMB Crush | Paso-09 9.2-9.13 (intra-paso) |
| 9.15 | GBP Not Created QA Checklist | 7 checks específicos web-first | Doctrina GMB Crush | Paso-01 1.3 + Paso-14 (forward) |

## Obtención de Outputs

<small>§6</small>

> Esta sección es donde la IA produce cada uno de los outputs (9.1–9.15). Cada output usa el patrón estándar adaptado al QA: Explicación / Patrón o fórmula / Ejemplos correctos / Ejemplos incorrectos / Regla / Validación / Cómo se obtiene / Output del paso. Los outputs 9.2–9.13 corresponden 1:1 a las **12 reglas QA** del manual original (§7-§18).

### 9.1 — Plantilla de QA por página

<small>§6.1</small>

**Explicación**

Formulario operativo que se rellena POR PÁGINA antes de hacer QA. Captura la metadata mínima necesaria para validar las 12 reglas QA. Sin la plantilla, las reglas se aplican de memoria y las violaciones se escapan.

**Patrón o fórmula**

```text
Page ID · Page Type · URL · Target Service · Main City · GBP Category · LCAs · Priority · Phase · Status · QA Date
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 9.1.

**Ejemplos incorrectos**

```text
- Hacer QA sin plantilla rellenada (validaciones de memoria)
- Omitir LCAs (sin contexto, Regla 5 · Local Coverage QA no se valida)
- Omitir QA Date (sin trazabilidad de cuándo se aprobó)
```

**Regla final**

```text
Toda página entra a QA con la plantilla rellenada al 100%.
```

**Validación operativa**

Aplicar a las N URLs del inventario priorizado (Paso-08 8.14). Validar que cada fila tiene los 10 campos rellenos.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Generar plantilla por URL cruzando con los outputs heredados (Paso-01 1.X, Paso-08 8.14) + campos de status QA.

**Output del paso**

- **Tipo:** Formulario operativo de 10 campos por página.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.1 — plantilla LBS-001 rellena.

### 9.2 — Regla 1 · URL QA

<small>§6.2</small>

**Explicación**

La URL debe coincidir con el tipo de página y las reglas del Paso 4. Una buena página con URL incorrecta puede crear canibalización o romper la matriz.

**Patrón o fórmula**

```text
URL pattern by page type
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
/cerrajero/madrid/cerrajero-urgente/ = Location-Based Service
```

**Ejemplos incorrectos**

```text
- URL con near-me
- URL de Local Coverage Area sin aprobación
- URL duplicada
```

**Regla final**

```text
No se publica una página con URL incorrecta.
```

**Validación operativa**

Aplicar a las N URLs del inventario priorizado (Paso-08 8.14). Cruce con Paso-04 4.3-4.8.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Comparar URL contra patrón doctrinal del page type.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.2.

### 9.3 — Regla 2 · Page Type QA

<small>§6.3</small>

**Explicación**

El contenido debe corresponder al tipo de página.

**Patrón o fórmula**

```text
Page type → structure
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
GeoArticle written as article, not landing
```

**Ejemplos incorrectos**

```text
- Service Overview geolocalizada
- GeoHub sin service menu
- Article como landing
```

**Regla final**

```text
Cada página debe comportarse como su tipo.
```

**Validación operativa**

Aplicar a las N URLs. Cruce con Paso-05 5.3-5.8 + Paso-06 6.6-6.11.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar H1 + estructura + schema vs spec del page type.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.3.

### 9.4 — Regla 3 · One service only

<small>§6.4</small>

**Explicación**

Las páginas locales deben tener un servicio principal.

**Patrón o fórmula**

```text
one service per local page
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
Cerrajero urgente en Madrid
```

**Ejemplos incorrectos**

```text
- Cerrajero urgente + apertura de puertas + cambio de cerraduras en un H1
- Página de todos los servicios locales
- Categoría adicional mezclada sin claridad
```

**Regla final**

```text
Una página local, un servicio principal.
```

**Validación operativa**

Aplicar a las URLs locales (LBS, AC, GA). Cruce con Paso-01 1.9 + Paso-05 5.5-5.8.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar H1 + body de cada URL local para single-service focus.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL local.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.4.

### 9.5 — Regla 4 · One Main City only

<small>§6.5</small>

**Explicación**

La página base debe apuntar a la Main City, no a varias zonas como objetivos equivalentes.

**Patrón o fórmula**

```text
one Main City target
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
Cerrajero urgente en Madrid with coverage mentions
```

**Ejemplos incorrectos**

```text
- Cerrajero urgente en Madrid, Almagro, Salamanca and Retiro
- H1 con cinco zonas
- Breadcrumb con área no aprobada
```

**Regla final**

```text
La Main City debe ser clara.
```

**Validación operativa**

Aplicar a las URLs locales. Cruce con Paso-01 1.7.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar H1 + breadcrumb + sección cobertura para single-city focus.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL local.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.5.

### 9.6 — Regla 5 · Local Coverage QA

<small>§6.6</small>

**Explicación**

Las áreas de cobertura deben ser reales y usarse naturalmente.

**Patrón o fórmula**

```text
Local Coverage Areas = real service coverage
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
Almagro, Chamberí, Salamanca, Retiro mentioned as served areas
```

**Ejemplos incorrectos**

```text
- Zonas no atendidas
- Lista artificial en cada párrafo
- Áreas usadas como oficinas
```

**Regla final**

```text
La cobertura local debe ser real y natural.
```

**Validación operativa**

Aplicar a las URLs locales. Cruce con Paso-01 1.10 + Paso-04 4.14.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar contenido vs lista LCAs aprobadas.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL local.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.6.

### 9.7 — Regla 6 · No fake location

<small>§6.7</small>

**Explicación**

No afirmar oficina, storefront o dirección en zonas sin presencia real.

**Patrón o fórmula**

```text
no false physical presence
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
Atendemos clientes en Salamanca
```

**Ejemplos incorrectos**

```text
- Nuestra oficina en Salamanca
- Visit our Retiro location
- Schema address en Almagro
```

**Regla final**

```text
Nunca se inventa ubicación física.
```

**Validación operativa**

Aplicar a las URLs locales. Cruce con Paso-01 1.4 + 1.8 + Paso-04 4.14 + Paso-05 5.10.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Buscar afirmaciones de ubicación en copy + schema; cruzar con NAP único.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL local.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.7.

### 9.8 — Regla 7 · Metadata QA

<small>§6.8</small>

**Explicación**

H1, meta title y description deben coincidir con la intención.

**Patrón o fórmula**

```text
H1 + Meta + Description = service + Main City where applicable
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
Cerrajeros Madrid 24h – Cerrajero urgente en Madrid
```

**Ejemplos incorrectos**

```text
- H1 sin servicio
- Meta sin ciudad en landing local
- Meta duplicada en varias páginas
```

**Regla final**

```text
La metadata debe reflejar la intención única.
```

**Validación operativa**

Aplicar a las N URLs. Cruce con Paso-05 5.3-5.8.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar los 3 elementos meta por URL; validar coherencia + unicidad.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.8.

### 9.9 — Regla 8 · Word count QA

<small>§6.9</small>

**Explicación**

Cada tipo de página tiene profundidad mínima.

**Patrón o fórmula**

```text
Homepage 900–1300; Service 850–1000; LBS 800–1000; GeoArticle 1000–1500
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
GeoArticle 1250 words
```

**Ejemplos incorrectos**

```text
- 300 palabras
- Contenido relleno
- Misma longitud para todo
```

**Regla final**

```text
La profundidad debe ajustarse al tipo de página.
```

**Validación operativa**

Aplicar a las N URLs. Cruce con Paso-05 5.10.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Contar palabras del cuerpo principal vs rango doctrinal.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.9.

### 9.10 — Regla 9 · Schema QA

<small>§6.10</small>

**Explicación**

El schema debe coincidir con el tipo de página.

**Patrón o fórmula**

```text
Page type → schema
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
LBS → LocalBusiness + BreadcrumbList
```

**Ejemplos incorrectos**

```text
- Article schema en service page
- LocalBusiness con dirección falsa
- Schema sin URL canónica
```

**Regla final**

```text
Schema correcto antes de publicar.
```

**Validación operativa**

Aplicar a las N URLs. Cruce con Paso-05 5.9 + Paso-06 6.17.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Validar JSON-LD con tool de Google + cruce con NAP/areaServed reales.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.10.

### 9.11 — Regla 10 · Enlaces internos QA

<small>§6.11</small>

**Explicación**

La página debe incluir enlaces obligatorios del Paso 7.

**Patrón o fórmula**

```text
Required links exist
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
LBS links to parent service, GeoHub, related services, GeoArticle
```

**Ejemplos incorrectos**

```text
- Solo footer
- Sin link al GeoHub
- Enlaces a URLs inexistentes
```

**Regla final**

```text
Sin enlaces obligatorios no se publica.
```

**Validación operativa**

Aplicar a las N URLs. Cruce con Paso-07 7.11.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar enlaces internos vs matriz Paso-07 7.11; validar URLs target existentes.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.11.

### 9.12 — Regla 11 · Canibalización QA

<small>§6.12</small>

**Explicación**

No debe existir otra página atacando la misma intención.

**Patrón o fórmula**

```text
one intent = one URL
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
/cerrajero/madrid/cerrajero-urgente/ is primary for cerrajero urgente en Madrid
```

**Ejemplos incorrectos**

```text
- /madrid/cerrajero-urgente/
- /cerrajero/madrid/cerrajero-urgente/
- /cerrajero-urgente-madrid/
```

**Regla final**

```text
Una intención tiene una página principal.
```

**Validación operativa**

Aplicar al inventario completo. Cruce con Paso-04 4.15.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Comparar H1 + URL + intent de las N URLs entre sí; identificar pares con overlap.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.12.

### 9.13 — Regla 12 · CTA QA

<small>§6.13</small>

**Explicación**

Cada página debe cerrar con una acción clara.

**Patrón o fórmula**

```text
CTA exists and matches intent
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

```text
Llama a Cerrajeros Madrid 24h hoy
```

**Ejemplos incorrectos**

```text
- Sin CTA
- CTA genérico
- CTA que no menciona servicio o ciudad cuando aplica
```

**Regla final**

```text
Toda página debe tener CTA.
```

**Validación operativa**

Aplicar a las N URLs. Cruce con Paso-05 5.9 + Paso-01 1.13.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar presencia + tipo de CTA contra mapeo doctrinal Paso-05 5.9.

**Output del paso**

- **Tipo:** Check binario (Pass/Fail) por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** Ver §4 sub-sección 9.13.

### 9.14 — Final Publish Gate

<small>§6.14</small>

**Explicación**

Gate de cierre antes de publicar. **9 checkpoints binarios** que consolidan las 12 reglas QA anteriores en un único bloqueo. Si cualquiera falla, "Ready to publish" = No y la página vuelve a Needs Revision.

**Patrón o fórmula**

```text
□ URL approved
□ Content approved
□ SEO metadata approved
□ Schema approved
□ Internal links approved
□ NAP approved
□ No canibalization
□ No false location claim
□ CTA approved

→ Ready to publish: AND de los 9
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 9.14 — gate LBS-001 con los 9 checks en Yes.

**Ejemplos incorrectos**

```text
- Publicar con 1-2 checks en No (forzar deploy)
- Marcar todos en Yes sin haber validado realmente las 12 reglas
- Saltar el gate y publicar directo
```

**Regla final**

```text
Ningún URL se publica con menos de 9/9 Yes en el gate.
```

**Validación operativa**

Aplicar a las N URLs. Una página con cualquier No vuelve a "Needs Revision" o "Blocked" según severidad.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Consolidar resultado de las 12 reglas QA (9.2-9.13) en los 9 checkpoints.

**Output del paso**

- **Tipo:** 9 checkpoints binarios + Ready to publish (AND).
- **Ejemplo (Cerrajeros Madrid 24h):** 28 URLs aprobadas, 0 bloqueadas.

### 9.15 — GBP Not Created QA Checklist

<small>§6.15</small>

**Explicación**

Checklist específico para clusters **web-first** (GBP=Not Created en Paso-01 1.3). Previene que las páginas inventen señales de GBP que no existen todavía. Aplica hasta que el Paso 14 cree el GBP real.

**Patrón o fórmula**

```text
□ GBP Status                  → reconoce GBP=Not Created
□ Planned Category Support    → soporta Planned sin afirmar
□ Planned Additional          → AC respeta categorías Planned
□ No Invented GBP URL         → 0 URLs GBP en schema/footer
□ No Invented Reviews         → 0 reseñas afirmadas
□ sameAs Deferred             → campo sameAs vacío
□ Paso 14 Dependency          → marcada para actualización post-GBP
```

**Ejemplo correcto con Cerrajeros Madrid 24h**

Ver §4 sub-sección 9.15 — checklist LBS-001 con los 7 checks.

**Ejemplos incorrectos**

```text
- "Visita nuestra ficha de Google" + URL falsa
- "10 reseñas en Google" cuando GBP no existe
- sameAs apuntando a GBP inventado
- Schema LocalBusiness con campo "review.aggregateRating" sin reseñas reales
```

**Regla final**

```text
Antes del Paso 14, ninguna página afirma señales de GBP que todavía no existen.
```

**Validación operativa**

Aplicar a las N URLs. Activo solo si Paso-01 1.3 = `Not Created` o `Pending Verification`.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Inspeccionar copy + schema + footer de cada URL contra los 7 checks.

**Output del paso**

- **Tipo:** 7 checks binarios por URL.
- **Ejemplo (Cerrajeros Madrid 24h):** 28 URLs validadas, 0 violaciones.

## Checklist Final

<small>§7</small>

> Validación operativa antes de cerrar el Paso 9 y avanzar al Paso 10 (Producción en Fases).

### Validación de la plantilla

- ☐ Plantilla QA rellenada al 100% para las N URLs (9.1)

### Validación de las 12 reglas QA

- ☐ Regla 1 · URL QA pasada en N URLs (9.2)
- ☐ Regla 2 · Page Type QA pasada en N URLs (9.3)
- ☐ Regla 3 · One service only pasada en URLs locales (9.4)
- ☐ Regla 4 · One Main City only pasada en URLs locales (9.5)
- ☐ Regla 5 · Local Coverage QA pasada en URLs locales (9.6)
- ☐ Regla 6 · No fake location pasada en URLs locales (9.7)
- ☐ Regla 7 · Metadata QA pasada en N URLs (9.8)
- ☐ Regla 8 · Word count QA pasada en N URLs (9.9)
- ☐ Regla 9 · Schema QA pasada en N URLs (9.10)
- ☐ Regla 10 · Enlaces internos QA pasada en N URLs (9.11)
- ☐ Regla 11 · Canibalización QA pasada en inventario completo (9.12)
- ☐ Regla 12 · CTA QA pasada en N URLs (9.13)

### Validación final

- ☐ Final Publish Gate cerrado para N URLs — 9 checkpoints binarios (9.14)
- ☐ GBP Not Created QA Checklist cerrado para N URLs (9.15)
- ☐ Cero URLs con status "Blocked" antes de avanzar a Paso 10

## Outputs Consolidados

<small>§8</small>

> Tabla final compacta con la trazabilidad row-per-output. Los IDs (`9.1`–`9.15`) coinciden con los declarados en §5. Esta tabla es la fuente única de la trazabilidad consolidada del paso (sustituye al antiguo b-doc).

| ID | Hereda de | Output y valor (Cerrajeros Madrid 24h) | Cómo se obtiene + Fuente | Status |
|---|---|---|---|---|
| 9.1 | ← Paso-08 8.14 | **Plantilla de QA por página** = formulario 10 campos × 28 URLs | Generar por URL cruzando outputs heredados con campos de status QA. **Fuente:** Doctrina GMB Crush. | confirmed |
| 9.2 | ← Paso-04 4.3-4.8 | **Regla 1 · URL QA** = `28/28 URLs Pass` | Comparar URL contra patrón doctrinal del page type. **Fuente:** Doctrina GMB Crush. | OK |
| 9.3 | ← Paso-05 5.3-5.8 + Paso-06 6.6-6.11 | **Regla 2 · Page Type QA** = `28/28 URLs Pass` | Inspeccionar H1 + estructura + schema vs spec. **Fuente:** Doctrina GMB Crush. | OK |
| 9.4 | ← Paso-01 1.9 + Paso-05 5.5-5.8 | **Regla 3 · One service only** = `URLs locales Pass` | Inspeccionar H1 + body de cada URL local. **Fuente:** Doctrina GMB Crush. | OK |
| 9.5 | ← Paso-01 1.7 | **Regla 4 · One Main City only** = `URLs locales Pass` | Inspeccionar H1 + breadcrumb + cobertura. **Fuente:** Doctrina GMB Crush. | OK |
| 9.6 | ← Paso-01 1.10 + Paso-04 4.14 | **Regla 5 · Local Coverage QA** = `URLs locales Pass` | Inspeccionar contenido vs LCAs aprobadas. **Fuente:** Doctrina GMB Crush. | OK |
| 9.7 | ← Paso-01 1.4 + 1.8 + Paso-04 4.14 + Paso-05 5.10 | **Regla 6 · No fake location** = `URLs locales Pass` | Buscar afirmaciones de ubicación; cruzar con NAP único. **Fuente:** Doctrina GMB Crush. | OK |
| 9.8 | ← Paso-05 5.3-5.8 | **Regla 7 · Metadata QA** = `28/28 URLs Pass` | Inspeccionar H1 + meta title + description; coherencia + unicidad. **Fuente:** Doctrina GMB Crush. | OK |
| 9.9 | ← Paso-05 5.10 | **Regla 8 · Word count QA** = `28/28 URLs Pass` | Contar palabras vs rango doctrinal. **Fuente:** Doctrina GMB Crush. | OK |
| 9.10 | ← Paso-05 5.9 + Paso-06 6.17 | **Regla 9 · Schema QA** = `28/28 URLs Pass` | Validar JSON-LD; cruzar con NAP/areaServed. **Fuente:** Doctrina GMB Crush. | OK |
| 9.11 | ← Paso-07 7.11 | **Regla 10 · Enlaces internos QA** = `28/28 URLs Pass` | Inspeccionar enlaces vs matriz Paso-07 7.11. **Fuente:** Doctrina GMB Crush. | OK |
| 9.12 | ← Paso-04 4.15 | **Regla 11 · Canibalización QA** = `0 pares solapados` | Comparar H1 + URL + intent de N URLs entre sí. **Fuente:** Doctrina GMB Crush. | OK |
| 9.13 | ← Paso-05 5.9 + Paso-01 1.13 | **Regla 12 · CTA QA** = `28/28 URLs Pass` | Inspeccionar presencia + tipo de CTA contra mapeo doctrinal. **Fuente:** Doctrina GMB Crush. | OK |
| 9.14 | ← 9.2-9.13 | **Final Publish Gate** = `28 URLs aprobadas, 0 bloqueadas` | Consolidar resultado de las 12 reglas en 9 checkpoints binarios. **Fuente:** Doctrina GMB Crush. | OK |
| 9.15 | ← Paso-01 1.3 | **GBP Not Created QA Checklist** = `28 URLs validadas, 0 violaciones` | Inspeccionar copy + schema + footer contra los 7 checks específicos web-first. **Fuente:** Doctrina GMB Crush. | OK |

# Bloque IV — Fuentes Internas GMB Crush usadas

## Fuentes internas GMB Crush usadas

<small>§9</small>

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework

> **Nota importante — Bloqueo de publicación:**
> El Paso 9 es **gate doctrinal**. Si una URL falla cualquier sub-check, no avanza al Paso 10 (Producción en Fases) ni al Paso 18 (Deploy). El operador no puede saltarse el gate por urgencia comercial — la regla protege la salud de SEO local del cluster.
