# Los 6 page types

> Cada page type tiene un contrato fijo: H1, secciones, schema, word count, CTA. Si una página no cumple el contrato, falla el QA.

---

## 1. Homepage (HP)

| Atributo | Valor |
|---|---|
| URL | `/` (raíz, constante doctrinal) |
| ID | `HP-001` (formato 3 dígitos) |
| Schema | `Organization + WebSite + LocalBusiness` |
| Word count | **900-1300** |
| CTA primario | Solicitar presupuesto |
| CTA secundario | Llamar (si modelo Storefront/SAB con teléfono visible) |
| Bloques estructurales | **11** |

### Bloques de contenido

```
1. Hero con NAP visible
2. Servicios principales (cards de los S core services)
3. Por qué nosotros (USPs)
4. Zona de cobertura (mapa + LCAs en copy)
5. Trust block (4-7 trust signals)
6. Casos / antes-después (si Storefront/Hybrid)
7. Reseñas (placeholder hasta GBP verificado)
8. FAQ (5-6 preguntas frecuentes generales)
9. CTA inline / formulario contacto embedded
10. Footer NAP completo
11. Schema JSON-LD inline
```

### ⚠ Fidelidad

NO añadir `FAQPage + Speakable` al schema (eran invento detectado en auditoría). Solo `Organization + WebSite + LocalBusiness`.

---

## 2. Service Overview (SO)

| Atributo | Valor |
|---|---|
| URL pattern | `/[primary-cat-slug]/[service-slug]/` |
| ID | `SO-001` ... `SO-00S` |
| Schema | `Service + WebPage + BreadcrumbList` |
| Word count | **850-1000** |
| CTA primario | Solicitar presupuesto |
| Bloques estructurales | **11** |

### Bloques de contenido

```
1. Hero servicio
2. Qué es / qué incluye (bullet list)
3. Cómo trabajamos (proceso 4 pasos)
4. Materiales / marcas / productos
5. Plazos típicos
6. Precios orientativos (rangos, NO cerrados)
7. Casos de éxito
8. FAQ (5 preguntas servicio-específicas)
9. CTA inline
10. Breadcrumbs
11. Schema JSON-LD
```

### Cantidad

`S` páginas (1 por core service).

---

## 3. Location-Based Service (LBS)

| Atributo | Valor |
|---|---|
| URL pattern | `/[main-city-slug]/[service-slug]/` |
| ID | `LBS-001` ... `LBS-00S` |
| Schema | `LocalBusiness + Service + BreadcrumbList` |
| Word count | **800-1000** |
| CTA primario | Solicitar presupuesto |
| CTA secundario | Llamar |
| Bloques estructurales | **12** |

### Bloques de contenido

```
1. Hero local "[servicio] en [Main City]"
2. Cobertura por barrios (LCAs en areaServed + copy)
3. Proceso adaptado a la ciudad
4. Materiales / marcas
5. Plazos típicos
6. Precios orientativos
7. Trust block local
8. Casos en [Main City] (testimonios o referencias zona)
9. FAQ (5 preguntas locales: cobertura distritos, desplazamiento, urgencias)
10. CTA inline
11. Breadcrumbs
12. Schema JSON-LD con `areaServed`
```

### Cantidad

`S` páginas (1 por core service × Main City).

---

## 4. Additional Category (AC)

| Atributo | Valor |
|---|---|
| URL pattern | `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/` o `/[additional-slug]/` (según GeoHub URL Style) |
| ID | `AC-001` ... `AC-00A` |
| Schema | `Service` (con `areaServed`) |
| Word count | **800-1000** |
| CTA primario | Solicitar presupuesto |
| Bloques estructurales | **11** |

### Bloques de contenido

```
1. Hero categoría
2. Qué hacemos
3. Tipos de servicio dentro de la categoría
4. Procesos
5. Precios orientativos
6. Trust block
7. Casos
8. FAQ
9. CTA
10. Breadcrumbs
11. Schema JSON-LD con areaServed
```

### Cantidad

`A` páginas (count de Additional GBP Categories que necesitan página propia, no cubiertas por core services).

---

## 5. GeoHub Main City (GH)

| Atributo | Valor |
|---|---|
| URL pattern (Option A — default) | `/[main-city-slug]/` |
| URL pattern (Option B) | `/[primary-cat-slug]/[main-city-slug]/` |
| ID | `GH-001` |
| Schema | `CollectionPage + BreadcrumbList` |
| Word count | **700-1100** |
| CTA primario | Solicitar presupuesto |
| Bloques estructurales | **10** |

### Bloques de contenido

```
1. Hero "[Servicios] en [Main City]"
2. Cobertura distritos (mapa + índice LCAs)
3. Servicios disponibles (índice de los S LBS)
4. Casos destacados en [Main City]
5. Trust block local
6. FAQ generales [Main City]
7. CTA
8. Breadcrumbs
9. Footer
10. Schema JSON-LD
```

### Cantidad

`1` GeoHub por Main City. Si E > 0 (Approved Expansion Areas), se generan GeoHubs adicionales por cada zona aprobada.

---

## 6. GeoArticle (GA)

| Atributo | Valor |
|---|---|
| URL pattern | `/[main-city-slug]/[topic-slug]/` |
| ID | `GA-001` ... `GA-0NN` |
| Schema | `Article + FAQPage + BreadcrumbList` |
| Word count | **1000-1500** |
| CTA primario | CTA inline hacia LBS padre |
| Bloques estructurales | **10** |

### Bloques de contenido

```
1. Hero pregunta del título
2. Respuesta directa (primer párrafo resuelve)
3. Desglose / detalles
4. Factores que influyen
5. Casos reales [Main City]
6. FAQ (5-7 preguntas relacionadas)
7. Conclusión
8. CTA inline hacia LBS padre
9. Breadcrumbs
10. Schema JSON-LD (Article + FAQPage)
```

### Cantidad

`G × S` páginas (3 GeoArticles × 5 servicios = 15 por defecto).

### ⚠ Fidelidad

GA → CTA hacia **LBS padre** (no SO). El LBS captura intent local, el SO no.

---

## Mapping Page Type → Priority/Phase (default doctrinal)

| Page Type | Default Priority | Default Phase |
|---|---|---|
| HP | P1 | 1 |
| LBS | P1 | 1 |
| SO | P2 | 2 |
| GH | P2 | 2 |
| AC | P3 | 2-3 |
| GA | P3-P4 | 3-4 |

**Constante:** Homepage **siempre** es P1 + Phase 1 (forzar en `scripts/score-priority.ts`).

---

## IDs convención

Formato: `[PageType]-[NNN]` con 3 dígitos (`001`, `002`, ..., `099`, `100`).

```
HP-001
SO-001, SO-002, ...
GH-001
LBS-001, LBS-002, ...
AC-001, AC-002, ...
GA-001, GA-002, ..., GA-015
AUX (página contacto, no entra en fórmula)
```

### ⚠ Fidelidad

Original usa `SO-001` (3 dígitos). NO usar `SO-1` (1 dígito) — era cambio silencioso detectado en auditoría.

---

## Total inventario

```
1 HP + S SO + 1 GH + S LBS + A AC + G×S GAs + 1 AUX = TOTAL URLs
```

Ejemplo Aeroeterm (S=5, A=2, G=3): `1 + 5 + 1 + 5 + 2 + 15 + 1 = 30 URLs`.

---

## Implementación

| Page Type | Astro file | Schema TS |
|---|---|---|
| HP | `plantilla-cluster/src/pages/index.astro` | `plantilla-cluster/src/schemas/homepage.ts` |
| SO | `plantilla-cluster/src/pages/[service]/index.astro` | `plantilla-cluster/src/schemas/service-overview.ts` |
| LBS | `plantilla-cluster/src/pages/[main-city]/[service].astro` | `plantilla-cluster/src/schemas/lbs.ts` |
| AC | `plantilla-cluster/src/pages/[additional].astro` | `plantilla-cluster/src/schemas/additional-category.ts` |
| GH | `plantilla-cluster/src/pages/[main-city]/index.astro` | `plantilla-cluster/src/schemas/geohub.ts` |
| GA | `plantilla-cluster/src/pages/[main-city]/[geoarticle].astro` | `plantilla-cluster/src/schemas/geoarticle.ts` |
