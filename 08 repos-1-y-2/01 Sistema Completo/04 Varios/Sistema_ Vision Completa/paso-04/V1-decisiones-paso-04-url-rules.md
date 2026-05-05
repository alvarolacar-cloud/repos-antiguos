# Paso 4 — URL Rules

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Dominio y formato general

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 4.01 | Se decide usar HTTPS | `https://` |
| 4.02 | Se decide usar dominio canónico con www | `https://www.cerrajerosmadrid24h.com` |
| 4.03 | Se decide usar trailing slash | Sí |

## Bloque 2 — Patrones URL principales

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 4.04 | Se decide que la Homepage use raíz | `/` |
| 4.05 | Se decide que Service Overview use categoría + servicio | `/cerrajero/[service-slug]/` |
| 4.06 | Se decide que LBS use categoría + ciudad + servicio | `/cerrajero/madrid/[service-slug]/` |
| 4.07 | Se decide que Additional Category use categoría + ciudad + servicio | `/cerrajero/madrid/duplicado-llaves/` |
| 4.08 | Se decide que GeoHub use ciudad | `/madrid/` |
| 4.09 | Se decide que GeoArticles usen ciudad + topic | `/madrid/[article-topic-slug]/` |

## Bloque 3 — URLs concretas de servicio

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 4.10 | Se decide crear URL local de Cerrajero urgente | `/cerrajero/madrid/cerrajero-urgente/` |
| 4.11 | Se decide crear URL local de Apertura de puertas | `/cerrajero/madrid/apertura-puertas/` |
| 4.12 | Se decide crear URL local de Cambio de cerraduras | `/cerrajero/madrid/cambio-cerraduras/` |
| 4.13 | Se decide crear URL local de Cambio de bombines | `/cerrajero/madrid/cambio-bombines/` |
| 4.14 | Se decide crear URL local de Instalación de cerraduras de seguridad | `/cerrajero/madrid/instalacion-cerraduras-seguridad/` |

## Bloque 4 — Reglas anti-URL débil

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 4.15 | Se decide no usar `near-me` en URLs principales | No se usa `near-me` |
| 4.16 | Se decide no usar adjetivos SEO vacíos en URLs | No usar `best`, `cheap`, `top-rated` |
| 4.17 | Se decide no crear URLs para Local Coverage Areas en la base | No `/almagro/`, no `/chamberi/`, no `/salamanca/` |
| 4.18 | Se decide que Approved Expansion Areas podrían generar URLs solo en expansión | None in Phase 1 |
