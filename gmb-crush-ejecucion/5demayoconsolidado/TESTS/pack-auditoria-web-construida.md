# Pack de Documentación Pre-Build GMB Crush

Este documento define **qué docs debe producir la IA antes de generar la web**, y cómo verificar que esos docs son coherentes entre sí. No audita HTML — es la fuente de verdad que la IA debe entregar **antes** de Paso 17 (Build) y Paso 18 (Deploy).

> **Cuándo se ejecuta:** después de Bloque 4 (Automatización), antes del Build. Junto con `test-doctrinal.md`, forman el gate pre-build.

El objetivo es comprobar que los siguientes docs estén producidos, sean internamente coherentes y declaren las decisiones de:

```text
arquitectura aprobada
URL Matrix
Page Types
interlinking
contenido por intención
schema por tipo
no invención
trazabilidad doctrinal
```

---

# Idea principal

Los **6 docs canónicos** que la IA tiene que entregar son:

```text
1. URL Matrix
2. Page Type Map
3. Internal Linking Plan
4. Content Pack (brief por URL)
5. Schema Map
6. Outputs Consolidados §8 (con Source y Status)
```

La relación entre ellos:

```text
URL Matrix       = qué URLs van a existir y por qué
Page Type Map    = qué función tiene cada URL
Internal Linking = cómo se conectan las URLs entre sí
Content Pack     = qué intención cumple cada URL (H1, H2, FAQs, CTAs, copy)
Schema Map       = cómo se marca cada URL (JSON-LD por Page Type)
Outputs §8       = qué outputs origen sustentan cada decisión (con fuente y status)
```

Los 6 docs juntos son la "URL del cluster": describen completamente qué se va a construir.

---

# 1. URL Matrix

## Para qué sirve

La URL Matrix es la **fuente de verdad de la arquitectura**. Lista exhaustivamente cada URL que va a existir en el cluster, derivada de la fórmula `1 + S + 1 + S + A + G·S`.

Sin URL Matrix completa, no se construye nada. Cualquier URL que aparezca en otro doc (Page Type Map, Internal Linking, etc.) y no exista aquí es invención.

## Debe contener (por fila)

| Campo | Uso |
|---|---|
| ID | Identificador de página (HP-1, SO-1, LBS-1, ...) |
| URL | Ruta declarada (path absoluto desde dominio) |
| Page Type | HP / SO / LBS / AC / GH / GA / AUX |
| Servicio | Servicio asociado (slug) o `—` si no aplica |
| Ciudad | Main City o ciudad objetivo o `—` |
| Parent Page | Page ID padre (HP es raíz) |
| Schema esperado | Tipo(s) de schema asignados (referencia a Schema Map) |
| Internal links salientes | Page IDs destino (referencia a Internal Linking Plan) |
| Estado | `aprobada` / `pendiente` / `bloqueada` |
| Origen del output | Output ID que generó esta fila (1.9, 3.4, etc.) |

## Checks

| Check | Pregunta |
|---|---|
| Cobertura | ¿Total de filas = `1 + S + 1 + S + A + G·S`? |
| Page Type | ¿Cada URL tiene Page Type asignado? |
| LCA no listada | ¿Hay URLs de Local Coverage Areas sin aprobación? |
| Expansion | ¿Toda URL fuera de Main City corresponde a Approved Expansion Area? |
| Contacto | ¿`/contacto/` está marcado AUX y no como SEO base? |
| Origen | ¿Cada fila apunta a un output existente en §8? |

## Fallo grave

```text
La URL Matrix declara una URL que no aparece en ningún output §8 (la IA la inventó).
```

---

# 2. Page Type Map

## Para qué sirve

Asigna a cada URL su Page Type doctrinal y describe qué función debe cumplir. Sin Page Type Map, dos páginas distintas pueden acabar con el mismo contenido y canibalizarse.

## Debe clasificar cada URL como

```text
HP    Homepage
SO    Service Overview
LBS   Location-Based Service
AC    Additional Category
GH    GeoHub
GA    GeoArticle
AUX   Página auxiliar (Contacto, Aviso legal, Privacidad)
```

## Checks (clasificación coherente con URL pattern)

| URL declarada | Page Type esperado |
|---|---|
| `/` | HP |
| `/[category]/[service]/` | SO |
| `/[category]/[city]/[service]/` | LBS |
| `/[city]/` | GH |
| `/[city]/[topic]/` | GA |
| `/[category]/[city]/[additional-category]/` | AC |
| `/contacto/` | AUX |
| `/aviso-legal/`, `/privacidad/` | AUX |

| Check | Pregunta |
|---|---|
| Sin mezcla | ¿Cada URL tiene exactamente un Page Type? |
| URL pattern | ¿El pattern es coherente con el Page Type declarado? |
| Función diferenciada | ¿Cada Page Type tiene función definida (no se solapa)? |
| AUX no SEO | ¿Las páginas AUX están marcadas como tal y excluidas del SEO target? |

## Fallo grave

```text
Una URL `/cerrajero/cerrajero-urgente/` está clasificada como LBS (debería ser SO).
Una URL `/madrid/cerrajero-urgente/` está clasificada como LBS (rompe el pattern doctrinal `/[category]/[city]/[service]/`).
```

---

# 3. Internal Linking Plan

## Para qué sirve

Define qué links debe haber entre páginas. Sin este plan, la arquitectura puede acabar con páginas huérfanas o con linking padre/hijo roto.

## Debe declarar (por fila)

| Campo | Uso |
|---|---|
| Origen (Page ID) | Página que emite el link |
| Destino (Page ID) | Página enlazada (debe existir en URL Matrix) |
| Tipo | Padre / Hijo / Lateral / Breadcrumb |
| Anchor sugerido | Texto del link |
| Doctrina | Regla GMB Crush que justifica el link |

## Mapa esperado

```text
HP   → SO + GH + AC + Contacto
SO   → LBS hijo + servicios laterales (otros SO)
LBS  → SO padre + GH + GAs hijas + AC laterales + Contacto
AC   → GH + LBS relacionados + Contacto
GH   → todas las LBS + AC + GAs (índice)
GA   → LBS padre + GAs relacionadas (mismo service_slug)
```

## Checks

| Check | Pregunta |
|---|---|
| No huérfanas | ¿Toda página de URL Matrix tiene ≥1 link entrante? |
| Padre/hijo declarado | ¿LBS enlaza a SO padre? ¿GA enlaza a LBS padre? |
| GH es índice | ¿GH enlaza a TODAS las LBS de la ciudad? |
| Sin destinos inexistentes | ¿Todo Destino apunta a un Page ID en URL Matrix? |
| Anchors contextuales | ¿El anchor describe la página destino? |
| Breadcrumbs | ¿Cada Page Type que requiere BreadcrumbList lo declara? |

## Fallo grave

```text
GeoArticles declarados sin link saliente a su LBS padre en el Internal Linking Plan.
```

```text
Una página declarada en URL Matrix no recibe ningún link entrante (huérfana).
```

---

# 4. Content Pack — brief por URL

## Para qué sirve

Cada URL declarada debe tener un brief completo de contenido **antes** de redactar HTML. Esto evita que dos páginas acaben con el mismo copy o que un GA se convierta en landing.

## Cada URL debe declarar

```text
URL
Page Type
H1
Meta Title
Meta Description
Hero (concepto)
H2/H3 (estructura)
Copy por sección (briefs, no copy final)
FAQs (preguntas + respuesta resumida)
CTA (texto + destino)
Internal links (sección + Page IDs destino)
Schema notes
Datos placeholder/⚠ (qué falta del cliente)
```

## Checks

| Check | Pregunta |
|---|---|
| H1 único | ¿Cada página tiene H1 único y coherente con Page Type? |
| Metadata única | ¿Title y description son únicos por URL? |
| Hero coherente | ¿El hero respeta la función de la página? |
| Profundidad declarada | ¿H2/H3 cubren el tema con suficiente profundidad? |
| FAQs reales | ¿Las FAQs responden intención real del Page Type? |
| CTA coherente | ¿El CTA del Page Type es el doctrinal? (SO→LBS, GA→LBS, LBS→Contacto) |
| Sin duplicación | ¿Hay copy clonado entre páginas? |
| GA no es landing | ¿Los GAs declaran intención informacional, no comercial? |
| SO sin ciudad | ¿Las SO NO declaran ciudad como target principal? |
| LBS comercial | ¿Las LBS declaran target comercial servicio + ciudad? |

## Fallo grave

```text
Service Overview y LBS tienen briefs de copy prácticamente idénticos.
```

```text
Un GA declara CTA agresivo y copy de venta (target comercial), no informacional.
```

---

# 5. Schema Map

## Para qué sirve

Define qué schema JSON-LD se va a renderizar en cada Page Type. Sin Schema Map, todas las páginas acaban con el mismo LocalBusiness genérico.

## Schema esperado por Page Type

| Page Type | Schema esperado |
|---|---|
| HP | Organization + WebSite |
| SO | Service + WebPage + BreadcrumbList |
| LBS | LocalBusiness + FAQPage + BreadcrumbList |
| AC | Service + BreadcrumbList |
| GH | CollectionPage + BreadcrumbList |
| GA | Article + FAQPage + BreadcrumbList + Speakable |
| AUX (Contacto) | ContactPage + Organization |

## Checks

| Check | Pregunta |
|---|---|
| Schema por tipo | ¿Cada Page Type tiene schema asignado según la tabla doctrinal? |
| LocalBusiness solo en LBS | ¿LocalBusiness aparece SOLO en LBS y no en HP, SO, GA, AC? |
| Article solo en GA | ¿Article aparece SOLO en GA? |
| FAQPage condicional | ¿FAQPage aparece solo si hay FAQs declaradas en Content Pack? |
| BreadcrumbList | ¿Refleja la jerarquía de URL Matrix + Internal Linking Plan? |
| sameAs | ¿Solo aparece si Output 1.6 (GBP URL) está confirmado? |
| areaServed | ¿Solo usa LCAs declaradas en Output 1.10 (Direct/Candidate validados)? |
| aggregateRating | ¿NO aparece sin reseñas reales (Output GBP confirmado)? |

## Fallo grave

```text
Schema Map asigna LocalBusiness a todas las páginas (HP, SO, GA, AC) en lugar de solo a LBS.
```

```text
Schema Map asigna aggregateRating sin que el output de reseñas esté confirmado (invención).
```

---

# 6. No-invention check

## Para qué sirve

Comprueba que la IA no haya convertido placeholders, hipótesis o `⚠ inferido` en claims publicables en el Content Pack o el Schema Map.

## Claims a revisar (en Content Pack + Schema Map)

```text
reseñas
estrellas (aggregateRating)
años de experiencia
precios
rangos de precio
tiempos de llegada
garantías
horarios
certificaciones
marcas trabajadas
casos reales
fotos reales
oficinas físicas
GBP URL
sameAs
```

## Checks

| Claim | Pregunta |
|---|---|
| Reseñas | ¿Content Pack declara reseñas sin que el output GBP confirme nº reseñas? |
| Años | ¿Content Pack declara experiencia no confirmada? |
| Precios | ¿Content Pack declara rangos sin output Cliente preflight? |
| Garantías | ¿Content Pack declara garantía sin confirmación cliente? |
| Horarios | ¿Content Pack declara "24h" sin confirmación cliente? |
| Ubicaciones | ¿Content Pack declara oficina en zonas no reales (Output 1.4 NAP)? |
| sameAs | ¿Schema Map declara `sameAs` apuntando a GBP que no existe? |
| areaServed | ¿Schema Map incluye Candidate LCAs no validadas? |

## Cómo se hace bien (con la doctrina)

Cuando la IA no tiene un dato, el output correspondiente debe estar en `⚠ inferido` o `⚠ placeholder`, y el Content Pack/Schema Map debe:

- **NO** publicar ese claim, o
- Publicarlo con marcador visible (ej. "presupuesto sin compromiso" en lugar de "60-120€")

Cuando el cliente cierra el ⚠, el output pasa a `confirmed` y solo entonces se puede publicar el claim.

## Fallo grave

```text
Content Pack declara "250 reseñas", "10+ años", "60–120€" o "garantía 2 años"
sin que el output correspondiente esté en status `confirmed` o `validated`.
```

---

# Pack mínimo serio

Si hay que reducirlo al mínimo, los **4 docs imprescindibles** son:

```text
1. URL Matrix
2. Page Type Map
3. Internal Linking Plan
4. Content Pack
```

Con esos 4 se puede arrancar el build. Schema Map y No-invention se pueden derivar pero deben verificarse antes del deploy real.

---

# Pack ideal completo

```text
01-url-matrix.md
02-page-type-map.md
03-internal-linking-plan.md
04-content-pack.md
05-schema-map.md
06-no-invention-report.md
07-outputs-consolidados.md
08-doctrinal-scorecard.md
```

---

# Cómo se interpreta cada doc

| Doc | Responde |
|---|---|
| URL Matrix | ¿Qué URLs van a existir? |
| Page Type Map | ¿Qué función tiene cada URL? |
| Internal Linking Plan | ¿Cómo se conectan? |
| Content Pack | ¿Qué intención y contenido tiene cada URL? |
| Schema Map | ¿Qué JSON-LD lleva cada Page Type? |
| No-invention Report | ¿Qué claims no autorizados aparecen? |
| Outputs §8 | ¿Qué outputs origen sustentan cada decisión, con fuente y status? |
| Scorecard | ¿La implementación pasa el test doctrinal? |

---

# Test de coherencia entre docs

La auditoría pre-build debe comparar:

```text
URL Matrix (canónica)
vs
Page Type Map (asigna tipo a cada URL canónica)
vs
Internal Linking Plan (enlaza Page IDs canónicos)
vs
Content Pack (un brief por URL canónica)
vs
Schema Map (un schema por Page Type canónico)
vs
Outputs §8 (cada output sustenta una decisión declarada arriba)
```

## Preguntas clave

| Pregunta | Evidencia necesaria |
|---|---|
| ¿Cada URL planeada tiene Page Type asignado? | URL Matrix + Page Type Map |
| ¿Cada URL tiene contenido planeado? | URL Matrix + Content Pack |
| ¿Cada URL está enlazada (no huérfana)? | URL Matrix + Internal Linking Plan |
| ¿Cada Page Type tiene schema asignado? | Page Type Map + Schema Map |
| ¿Cada decisión está justificada por un output con Source? | Todos los docs + Outputs §8 |
| ¿Hay claims inventados? | Content Pack + No-invention Report |
| ¿La fórmula da el mismo total que las filas de URL Matrix? | URL Matrix + Output 2.1 (fórmula) |

---

# Fallos automáticos

Aunque los docs parezcan completos, fallan automáticamente si ocurre:

```text
URLs declaradas que no aparecen en URL Matrix (cualquier doc).
URL Matrix declara URLs de Local Coverage Areas sin Approved Expansion documentada.
Page Type Map mezcla SO con LBS.
Content Pack convierte GeoArticles en landings.
URL Matrix no incluye GeoHub.
Internal Linking Plan rompe jerarquía padre/hijo.
Schema Map asigna schema genérico (LocalBusiness) a todas las páginas.
Content Pack declara claims sin output confirmed (reseñas, años, precios, garantías).
sameAs apunta a GBP no confirmado.
```

---

# Prompt para ejecutar este pack

```text
Audita estos 6 docs pre-build según la doctrina GMB Crush.

Los docs son:
- URL Matrix
- Page Type Map
- Internal Linking Plan
- Content Pack
- Schema Map
- Outputs Consolidados §8

NO evalúes HTML construido ni runtime.

Evalúa si los docs son:

1. Completos (todos los docs entregados, todas las URLs declaradas).
2. Coherentes entre sí (toda URL en doc B existe en URL Matrix).
3. Doctrinalmente correctos (Page Types diferenciados, schema por tipo, no canibalización).
4. Trazables (cada decisión apunta a un output §8 con Source).
5. Sin invención (no hay claims sin output confirmed).

Para cada doc devuelve:

- PASS / WARNING / FAIL
- Evidencia encontrada (cita el doc + fila/sección)
- Problema detectado
- Severidad: crítica / alta / media / baja
- Corrección exacta

Marca como fallo crítico cualquier caso de:

- URL declarada en cualquier doc que no exista en URL Matrix.
- LCA convertida en URL sin Approved Expansion.
- Service Overview con URL pattern de LBS.
- GeoArticle con CTA y copy de landing.
- GeoHub no declarado.
- Página huérfana en Internal Linking Plan.
- Schema genérico asignado a todas las páginas.
- Claim publicable sin output confirmed.

Entrega:

1. Score de coherencia pre-build de 0 a 100.
2. Lista de bloqueos automáticos.
3. Lista de correcciones prioritarias.
4. Veredicto final:
   - PASS — Listos para Paso 17 (Build) + Paso 18 (Deploy).
   - PARTIAL — Docs requieren ajustes antes de build.
   - FAIL — Rehacer desde el bloque que falla; no proceder a build.
```

---

# Conclusión

El pack pre-build no se trata de auditar HTML, sino de garantizar que **antes** de tocar código:

```text
existe URL Matrix completa derivada de la fórmula
cada URL tiene Page Type, schema, contenido, links e intención declaradas
cada decisión está sustentada por un output §8 con Source
no hay claims inventados
no hay canibalización
no hay páginas huérfanas
```

Si los 6 docs pasan este pack + el `test-doctrinal.md`, el build será determinístico: la IA o la plantilla simplemente convierten los docs en HTML.

Si los docs fallan aquí, el HTML hereda los fallos. **Es más barato corregir un doc que re-deployar.**
