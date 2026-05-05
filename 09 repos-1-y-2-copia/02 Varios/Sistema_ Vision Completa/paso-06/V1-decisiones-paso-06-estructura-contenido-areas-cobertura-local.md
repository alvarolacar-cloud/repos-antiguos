# Paso 6 — Estructura de Contenido + Local Coverage Areas

Fase 1 de trazabilidad: solo se listan decisiones tomadas en el ejemplo **Cerrajeros Madrid 24h**.

No se asignan fuentes todavía.

---

## Bloque 1 — Main City y Local Coverage Areas

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 6.01 | Se decide que Madrid crea la estructura principal | Madrid |
| 6.02 | Se decide que Direct Local Coverage Areas refuercen el contenido | Almagro, Chamberí |
| 6.03 | Se decide que Candidate Local Coverage Areas puedan usarse si pasan test GEO | Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 6.04 | Se decide que las Local Coverage Areas no sustituyan a Madrid | La página sigue siendo Madrid |

## Bloque 2 — Uso por tipo de página

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 6.05 | Se decide que la Homepage pueda mencionar Local Coverage Areas de forma ligera | Almagro, Chamberí, etc. |
| 6.06 | Se decide que Service Overview no use Local Coverage Areas | Sin zonas locales |
| 6.07 | Se decide que LBS use Local Coverage Areas en intro, H2s y FAQs | Páginas servicio + Madrid |
| 6.08 | Se decide que GeoHub use sección de cobertura local | `/madrid/` |
| 6.09 | Se decide que Additional Category use cobertura local como contexto | `/cerrajero/madrid/duplicado-llaves/` |
| 6.10 | Se decide que GeoArticles usen zonas como ejemplos locales | Madrid + zonas GEO |

## Bloque 3 — Restricciones

| ID | Decisión tomada | Valor decidido en el ejemplo |
|---|---|---|
| 6.11 | Se decide que una mención de zona no equivale a crear URL | Mencionar Almagro ≠ crear `/almagro/` |
| 6.12 | Se decide no afirmar oficina física en cada Local Coverage Area | No oficina en Salamanca/Retiro salvo verdad |
| 6.13 | Se decide que `areaServed` pueda incluir cobertura real validada | Madrid + zonas validadas |
