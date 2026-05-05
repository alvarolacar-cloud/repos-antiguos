# Reglas operativas

> Reglas core que rigen el sistema GMB Crush. Cada regla es **doctrina**: no se inventa, no se modifica, se aplica literal.

---

## 1. Filosofía web-first

**Regla:** la web base se construye primero (Bloques 1-5 → web LIVE en Cloudflare). El GBP se crea **después** (Bloque 7), usando la web ya publicada como source of truth.

- Entre Bloque 5 y Bloque 7 hay un checkpoint: **Bloque 6 Info que falta**, donde se cierran los `⚠ inferido` y `⚠ placeholder` antes de tocar el GBP.
- Razón: Google penaliza GBPs con NAP falso, fotos genéricas o categorías inventadas. La web tolera datos provisionales (re-deploy fácil), el GBP no.

**Implementación:** `scripts/qa-check.ts` valida que no haya `sameAs Google Maps` ni reseñas Google ni GBP URL en HTML antes del Paso 18.

---

## 2. Fórmula maestra

```
Total páginas SEO base = 1 + S + 1 + S + A + G×S

Donde:
  1   = Homepage
  S   = Service Overviews + Location-Based Services (S por cada uno)
  1   = GeoHub Main City
  A   = Additional Categories que necesitan página propia
  G×S = GeoArticles (G por cada core service)
```

Ejemplo Cerrajeros Madrid 24h: `1 + 5 + 1 + 5 + 1 + 15 = 28 URLs base + 1 contacto = 29 URLs`.

**Variables:**

| Variable | Default | Source |
|---|---|---|
| `G` | **3** | Doctrina (default GeoArticles per service) |
| `S` | **5** | Doctrina (default core services) |
| `E` | **0** | Doctrina (Approved Expansion Areas inactiva en Phase 1) |
| `A` | depende cliente | count de Additional Categories que necesitan página propia (no cubiertas por core service) |

**Implementación:** `scripts/calculate-urls.ts` ejecuta la fórmula y devuelve inventario por page type.

---

## 3. NAP y datos del negocio

### NAP en 8 campos

```
1. Business Name        (string canónico)
2. Street               (calle + número)
3. City                 (= Main City si tiene local físico)
4. State / Province
5. ZIP / Postal Code
6. Country
7. Phone                (formato E.164: +34 9XX XXX XXX)
8. Email
```

### Reglas NAP

- **Visible** en todo el cluster (header, footer, página contacto, schema LocalBusiness).
- **Consistente:** el mismo NAP en HTML, schema, footer, Google Maps embed.
- **Rastreable:** debe aparecer en el JSON-LD de cada page type que lo requiera.

**Implementación:** `scripts/qa-check.ts` test 6 (Regla 6 — No fake location) cruza NAP en 4 sitios.

### GBP Lifecycle Status (5 valores)

```
Not Created  → web-first puro (default)
Created      → existe pero sin verificar
Verified     → operativo
Pending      → en proceso
Suspended    → suspendido por Google
```

### Modelo de negocio (3 valores)

```
Storefront                  → clientes vienen al local (peluquería, tienda)
Service Area Business (SAB) → negocio va al cliente (cerrajero, fontanero)
Hybrid                      → ambos (clínica vet con visitas a domicilio)
```

### Preferred CTA (4 opciones)

```
Llamar ahora           → urgente / B2C inmediato (cerrajero urgente, ambulancia)
Reservar online        → ventana decisión corta (peluquería, restaurante)
Solicitar presupuesto  → ventana media (reformas, mudanzas)
Contactar              → B2B / consulta abierta
```

### Canonical Domain

Formato obligatorio: **HTTPS + www + trailing slash**.
Ejemplo: `https://www.aeroeterm.com/`.

---

## 4. Local Coverage Areas (LCAs)

### Direct LCAs

Barrio + distrito **del NAP**. Se obtienen del CP del cliente + verificación catastral.

### Candidate LCAs

Zonas declaradas por **≥ 2 competidores top** del Local Pack que NO están en el NAP del cliente. Validación: test GEO (búsqueda desde cada zona "[servicio] [ciudad]" — si el cliente puede aparecer ahí orgánicamente, vale).

### Reglas LCAs

- **Las LCAs NO generan URLs.** Aparecen como menciones contextuales en el copy de las páginas Madrid + en `areaServed` del schema LocalBusiness.
- **Mencionar zona ≠ crear página.** Castellana, Recoletos, Goya = mención. NO `/madrid/castellana/`.

**Implementación:** `scripts/qa-check.ts` test 13 valida que ninguna LCA tenga URL propia + test 6 valida que estén en `areaServed`.

---

## 5. Trust Signals

**Threshold doctrinal:** un trust signal es estándar si está presente en **3+ perfiles top 5** del Local Pack del sector.

Total: 4-7 señales reales del cliente + benchmark sectorial.

Ejemplos típicos: años actividad · presupuesto sin compromiso · garantía X años · certificaciones · financiación · servicio 24h · cobertura municipal · técnicos cualificados.

---

## 6. Priority Score

### Fórmula

```
Priority Score = R + I + G + L + C + U  (peso 1, rango 6-30)

R  Revenue Value          (margen × ticket × volumen)
I  Search Intent          (% queries transaccionales)
G  GBP Category Relevance (cruce con Local Pack)
L  Local Relevance        (proximidad NAP + LCAs)
C  Competition Gap        (oportunidad SERP)
U  Conversion Urgency     (ventana decisión)
```

Cada factor: **escala 1-5**.

### Priority Tiers (mapping doctrinal del Total Score)

```
26-30  → P1 (publish primero)
21-25  → P2
16-20  → P3
10-15  → P4
6-9    → Hold (no publicar todavía)
```

### Constantes

- **Homepage = P1 obligatorio.** Forzar `tier=P1, phase=1`.
- **Page Type → Priority/Phase mapping default:**
  - HP → P1 + Phase 1
  - LBS → P1 + Phase 1
  - SO → P2 + Phase 2
  - GH → P2 + Phase 2
  - GAs → P3-P4 + Phase 3-4

**Implementación:** `scripts/score-priority.ts` con suite de tests.

---

## 7. Producción en 5 fases

```
F1 Entity Foundation            → HP + S SO + GH        (Sem 1-2)
F2 Main City Conversion Layer   → S LBS + A AC          (Sem 3-4)
F3 Main City Semantic Expansion → G×S GAs               (Sem 5-7)
F4 Optimization Loop            → revisión semanal      (continuo)
F5 Optional Expansion Module    → activa si E > 0       (off por default)
```

**Calendario doctrinal de 7 fases** (referencia §54.4 original): ver `doctrina/reglas-literales.md`.

---

## 8. Schemas y page types (resumen)

Detalle completo en `doctrina/page-types.md`. Resumen del mapping:

| Page Type | Schema mínimo | Word count | CTA típico |
|---|---|---|---|
| Homepage | `Organization + WebSite + LocalBusiness` | 900-1300 | Solicitar presupuesto + Llamar |
| Service Overview | `Service + WebPage + BreadcrumbList` | 850-1000 | Solicitar presupuesto |
| LBS | `LocalBusiness + Service + BreadcrumbList` | 800-1000 | Solicitar presupuesto + Llamar |
| Additional Category | `Service (con areaServed)` | 800-1000 | Solicitar presupuesto |
| GeoHub | `CollectionPage + BreadcrumbList` | 700-1100 | Solicitar presupuesto |
| GeoArticle | `Article + FAQPage + BreadcrumbList` | 1000-1500 | CTA inline hacia LBS padre |

> **Nota fidelidad:** Homepage NO lleva `FAQPage + Speakable` (eran invento detectado en auditoría). Solo `Organization + WebSite + LocalBusiness`.

---

## 9. Patrón GBP descripción (Paso 14)

```
[Brand] + [Primary GBP Category] + [Main City] + [core services principales] + [CTA]
```

Ejemplo Aeroeterm: `AEROETERM somos especialistas en reformas integrales de baño en Madrid. Cambio de bañera por ducha, sustitución de sanitarios, alicatado y mamparas. Presupuesto sin compromiso, garantía 2 años. Cobertura todo Madrid. Solicita tu presupuesto.`

**Long máximo:** 750 caracteres (límite Google).

---

## 10. Plan de fotos GBP (Paso 14)

Clasificación según modelo de negocio:

| Tipo | Storefront | SAB | Hybrid |
|---|---|---|---|
| Logo | ✅ | ✅ | ✅ |
| Cover | ✅ (fachada) | ✅ (logo + tagline) | ✅ (fachada o equipo) |
| Exterior | ✅ | — | ✅ |
| Interior | ✅ | — | ✅ |
| Team | ✅ | ✅ | ✅ |
| Vehicle | — | ✅ | opcional |
| Work examples | ✅ (antes/después) | ✅ | ✅ |
| Local context | ✅ | ✅ | ✅ |

---

## 11. Vigilancia post-launch (Paso 19)

### 3 elementos críticos

```
1. Flujo GA → Location  (clicks puentes GeoArticle → LBS padre)
2. Autoridad GeoHub     (impresiones GH Main City + posiciones queries amplias)
3. Conversión LBS       (formulario contacto enviado por LBS prioritarios)
```

### 3 triggers de escalado (regla 2-de-3)

```
1. Location ya responde       → posición < 30 + impresiones > 100/mes en GSC
2. GeoArticles traen tráfico  → > 50 clicks/mes en GAs hacia LBS padre
3. Señal en SERP              → competidores nuevos aparecen en top 10
```

Si **2 de 3** triggers se cumplen para una zona → arrancar nuevo ciclo del sistema (nuevo cluster geográfico para esa zona).

---

## Constantes resumen (cheat sheet)

```
G_DEFAULT       = 3       # GeoArticles per service
S_DEFAULT       = 5       # core services
E_DEFAULT       = 0       # expansion areas Phase 1
PRIORITY_RANGE  = [6, 30]
HP_FORCED_TIER  = "P1"
HP_FORCED_PHASE = 1
GBP_DESCRIPTION_MAX = 750  # caracteres
LCAS_GENERATE_URLS  = false
TRUST_THRESHOLD     = 3   # competidores top 5
NAP_FIELDS          = 8
GBP_STATES          = ["Not Created", "Created", "Verified", "Pending", "Suspended"]
BUSINESS_MODELS     = ["Storefront", "SAB", "Hybrid"]
CTA_OPTIONS         = ["Llamar ahora", "Reservar online", "Solicitar presupuesto", "Contactar"]
```
