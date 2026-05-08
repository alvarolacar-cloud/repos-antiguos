# Test Doctrinal GMB Crush — Cliente AEROETERM

**Fecha:** 2026-05-05
**Auditor:** Revisor doctrinal sin contexto previo
**Test canónico:** `reviews/prompts/test-implementacion-doctrinal.md`
**Cliente:** `clientes/2026-05-aeroeterm/outputs.json`
**Implementación:** `plantilla-cluster/src/`

---

## Resumen ejecutivo — Tabla de los 17 tests

| #   | Test                              | Resultado | Severidad |
| --- | --------------------------------- | --------- | --------- |
| 1   | Arquitectura base                 | FAIL      | crítica   |
| 2   | Fórmula de páginas                | FAIL      | crítica   |
| 3   | Patrones URL                      | FAIL      | crítica   |
| 4   | Page Types (Page Type Fidelity)   | FAIL      | crítica   |
| 5   | Main City vs Local Coverage Areas | WARNING   | media     |
| 6   | Approved Expansion Areas          | PASS      | -         |
| 7   | Service Overview Pages            | FAIL      | crítica   |
| 8   | Location-Based Service Pages      | WARNING   | alta      |
| 9   | Additional Category Pages         | FAIL      | crítica   |
| 10  | GeoHub                            | FAIL      | crítica   |
| 11  | GeoArticles                       | FAIL      | crítica   |
| 12  | Internal Linking                  | FAIL      | crítica   |
| 13  | Schema por Page Type              | FAIL      | alta      |
| 14  | Canibalización                    | WARNING   | media     |
| 15  | Soporte GBP                       | WARNING   | alta      |
| 16  | AI Overview / NLP readiness       | WARNING   | media     |
| 17  | Trazabilidad doctrinal            | PASS      | -         |

---

## Hallazgos detallados por test

### Test 1 — Arquitectura base — FAIL (crítica)

**Evidencia:** `plantilla-cluster/src/pages/` contiene únicamente `index.astro`, `contacto.astro` y `[mainCity]/[service].astro`. Solo 3 Page Types implementados de los 7 doctrinales (HP, LBS, Contacto). Faltan: Service Overview (SO), GeoHub (GH), Additional Category (AC), GeoArticle (GA).

**Problema doctrinal:** El test §1 indica fallo grave si "la web solo tiene homepage + servicios genéricos y no separa Service Overview, LBS, GeoHub y GeoArticles". Es exactamente el caso.

**Corrección:** Crear `pages/[category]/[service].astro` (SO), `pages/[mainCity]/index.astro` (GH), `pages/[category]/[mainCity]/[additional].astro` (AC), `pages/[mainCity]/[topic].astro` (GA).

### Test 2 — Fórmula de páginas — FAIL (crítica)

**Evidencia:** `outputs.json` declara correctamente 2.8=29 páginas y 2.9 desglose `{HP:1, SO:5, GH:1, LBS:5, AC:2, GA:15, AUX:1}`. Pero `getStaticPaths` en `[mainCity]/[service].astro` solo emite las 5 LBS. Total real construido = HP(1) + LBS(5) + Contacto(1) = **7 páginas reales** vs 29 doctrinales (24% de cumplimiento).

**Problema:** La fórmula está calculada en outputs pero NO ejecutada en plantilla. Falta arquitectura de routing para SO/GH/AC/GA.

**Corrección:** Implementar `getStaticPaths` para los 4 page types ausentes consumiendo `1.6` (AC), `3.4` (GA topics) y construyendo SO + GH derivados.

### Test 3 — Patrones URL — FAIL (crítica)

**Evidencia:** Las LBS construidas usan `/[mainCity]/[service]/` → `/madrid/reforma-integral-bano/`. Falta segmento `[category]`. El patrón doctrinal LBS es `/[category]/[city]/[service]/` (test §3).

**Problema:** URL no respeta jerarquía de categoría obligatoria. No hay slug de categoría primaria (`reformas-de-banos` derivado de 1.5) en la ruta. Además no existen URLs SO ni GA, por lo que tampoco hay parent canónico al que enlazar.

**Corrección:** Reescribir routing como `/[categorySlug]/[citySlug]/[serviceSlug]/`, derivar `categorySlug` de `1.5` (slugify "Bathroom remodeler" → `reformas-de-banos`), y crear el resto de patrones.

### Test 4 — Page Type Fidelity — FAIL (crítica)

**Evidencia:** Solo HP y LBS existen como tipos. El LBS construido no enlaza a su SO padre (no existe SO). No hay GeoHub que agrupe LBS+AC+GA. La tabla §5 requiere comportamiento diferenciado por tipo: imposible cuando 4 de 6 tipos no existen.

**Corrección:** Construir cada Page Type con su rol diferenciado (ver tests 6-11).

### Test 5 — Main City vs LCA — WARNING (media)

**Evidencia:** `1.10` separa `direct: ["Lista", "Salamanca"]` y `candidate: [...]`. La constante `LCAS_GENERATE_URLS = false` está bien definida. El componente `[service].astro` pinta LCAs como "chips" no clicables (PASS).

**Problema:** Sin embargo en el `Hero` y `description` se mezclan direct + candidate como si fueran cobertura uniforme. La doctrina dice candidate solo se usa "si están validadas o como contexto suave"; aquí se publican como cobertura plena en homepage y LBS sin distinción.

**Corrección:** Tratar `candidate` con copy de aproximación ("también atendemos zonas como…") y reservar `direct` para señales firmes.

### Test 6 — Approved Expansion Areas — PASS

**Evidencia:** `1.11=[]`, `2.10="inactiva (E=0)"`. No se generan URLs de expansión. Cumple test §16.

### Test 7 — Service Overview — FAIL (crítica)

**Evidencia:** No existe página `/[category]/[service]/`. La única página de servicio es la LBS `/madrid/[service]/`, lo que mezcla SO con LBS — exactamente el fallo doctrinal grave del test §6.

**Corrección:** Crear `pages/[category]/[service].astro` con H1 sin ciudad, schema `Service+WebPage+BreadcrumbList`, CTA empujando a la LBS hijo.

### Test 8 — LBS — WARNING (alta)

**Evidencia:** La LBS tiene H1 servicio+ciudad (OK), proceso de 4 pasos (OK), TrustBlock (OK). Pero:
- URL incorrecta (falta categoría → ver test 3).
- Schema usa `Service` + `BreadcrumbList`, NO `LocalBusiness + FAQPage + BreadcrumbList` como exige test §7/§12.
- No hay sección FAQ.
- No enlaza a SO padre (no existe), ni a GeoHub (no existe), ni a GeoArticles (no existen) → fallo grave §7.

**Corrección:** Añadir FAQPage schema, sección FAQs, links a SO+GH+GA, cambiar Service→LocalBusiness en schema principal.

### Test 9 — Additional Category — FAIL (crítica)

**Evidencia:** `1.6` declara 2 ACs efectivas (`Tile contractor` con slug `alicatado-y-azulejos`, `Plumber` con slug `servicios-fontaneria`, `needs_page=true`). `2.6=2`. Pero NO existe ninguna página AC en `pages/`. Bloqueo automático del test: "Una categoría GBP no tiene respaldo web".

**Corrección:** Crear `pages/[category]/[mainCity]/[additionalSlug].astro` consumiendo `1.6`.

### Test 10 — GeoHub — FAIL (crítica)

**Evidencia:** No existe `pages/[mainCity]/index.astro`. Aunque `3.2="Option A: /[main-city]/"` está declarado, no hay implementación. Bloqueo automático: "No existe GeoHub".

**Corrección:** Crear GeoHub `/madrid/` con CollectionPage schema, listado de las 5 LBS, 2 ACs, 15 GAs, sección de cobertura LCAs.

### Test 11 — GeoArticles — FAIL (crítica)

**Evidencia:** `3.4` lista 15 topics correctos (G×S=15). No existe ningún archivo `pages/[mainCity]/[topic].astro`. 0/15 GAs construidos.

**Corrección:** Crear plantilla GA con `getStaticPaths` consumiendo `3.4`, schema `Article+FAQPage+BreadcrumbList+Speakable`, links a LBS padre + GeoHub + artículo relacionado.

### Test 12 — Internal Linking — FAIL (crítica)

**Evidencia:** El mapa doctrinal exige HP→SO+GH+Contacto, LBS→SO+GH+GA+Contacto, GeoHub→LBS+AC+GA, GA→LBS+GH+related. Solo se cumple HP→LBS+Contacto. No existen enlaces padre/hijo SO↔LBS ni GA→LBS porque esos tipos no existen. Header solo enlaza 3 LBS + Contacto. Footer enlaza LBS + páginas legales que tampoco existen (`/aviso-legal/`, `/privacidad/`) → links rotos. Bloqueo automático: "No hay internal linking padre/hijo".

**Corrección:** Reconstruir mapa de links cuando los Page Types existan; eliminar links a páginas inexistentes hasta que se creen.

### Test 13 — Schema por Page Type — FAIL (alta)

**Evidencia:**
- HP: Organization+WebSite+LocalBusiness (correcto Organization+WebSite, LocalBusiness sobra en HP — debería estar en LBS).
- LBS: Service+BreadcrumbList → debería ser LocalBusiness+FAQPage+BreadcrumbList. FAQPage AUSENTE.
- Contacto: ContactPage+Organization (correcto).
- SO/GH/AC/GA: no existen, por tanto sus schemas tampoco. Bloqueo: "Schema genérico para todas las páginas" parcialmente.

**Corrección:** Reasignar schemas conforme a la matriz §12.

### Test 14 — Canibalización — WARNING (media)

**Evidencia:** Como solo existen HP+LBS, técnicamente no hay duplicación de intención HOY. Pero el LBS `/madrid/reforma-integral-bano/` está absorbiendo simultáneamente la intención de SO y de LBS — es a la vez "servicio" y "servicio+ciudad". Cuando se cree la SO habrá conflicto si no se rediseña.

**Corrección:** Definir target keyword único por URL antes de crear SO.

### Test 15 — Soporte GBP — WARNING (alta)

**Evidencia:** `1.5` Primary Category "Bathroom remodeler" tiene soporte HP/LBS. Pero `1.6` Additional Categories "Tile contractor" + "Plumber" están marcadas `needs_page=true` y NO tienen página. Bloqueo automático: "Una categoría GBP no tiene respaldo web". NAP tratado como entidad (PASS), no se inventan reviews (PASS), no se afirma oficina falsa (PASS — Madrid es la real).

**Corrección:** Crear las 2 páginas AC (ya cubierto en test 9).

### Test 16 — AI Overview / NLP — WARNING (media)

**Evidencia:** H1 claro en HP y LBS (OK). NO hay quick answers. NO hay FAQs en ninguna página. Entidades suficientes (servicios, ciudad, primary category). No hay schema Speakable. Sin GAs no hay long-tail informacional.

**Corrección:** Añadir FAQ block + Speakable a LBS y GA cuando existan.

### Test 17 — Trazabilidad doctrinal — PASS

**Evidencia:** Cada output tiene `id`, `fuente`, `source`, `hereda_de`, `bloque`. `catalogo.ts` declara fuente esperada por output. `validateCluster()` valida cross-refs. `qa-check.ts` valida URL blacklist y web-first. La trazabilidad como sistema está bien diseñada — el problema no es trazar decisiones sino que las decisiones no se ejecutan en HTML.

---

## Bloqueos automáticos detectados

Según test §"Bloqueos automáticos", basta uno para fallo automático. Detectados:

1. **No existe GeoHub** — confirmado.
2. **No hay internal linking padre/hijo** — confirmado (no hay padres SO ni hijos GA).
3. **Additional Category sin soporte** — confirmado (2 ACs declaradas, 0 páginas).
4. **Una categoría GBP no tiene respaldo web** — confirmado (Tile contractor, Plumber).
5. **Service Overview y LBS se mezclan** — confirmado (la única "página de servicio" es a la vez SO+LBS forzada).

5 bloqueos automáticos activos. Cualquiera de ellos invalida la auditoría doctrinal independientemente del score.

---

## Score final

| Área                              | Peso |  Otorgado |
| --------------------------------- | ---: | --------: |
| Arquitectura y fórmula GMB Crush  |   15 |         3 |
| URLs y Page Types                 |   15 |         3 |
| Main City / LCA / Expansion       |   10 |         7 |
| Contenido por Page Type           |   15 |         3 |
| GeoHub y GeoArticles              |   10 |         0 |
| Internal Linking                  |   10 |         2 |
| Schema                            |   10 |         3 |
| No canibalización                 |    5 |         3 |
| Soporte GBP                       |    5 |         2 |
| AI Overview / entidades           |    5 |         2 |
| **TOTAL**                         |  100 |    **28** |

**Interpretación según test:** <60 = "No cumple doctrina GMB Crush".

---

## Conclusión

**¿Cumple doctrina GMB Crush? NO.**

El sistema tiene una capa de **datos doctrinalmente impecable** (outputs.json, catálogo, fórmula, trazabilidad, slugify, qa-check, blacklists, LCAs no generan URLs). La fórmula 1+S+1+S+A+G×S=29 está calculada y desglosada correctamente.

Pero la **capa de generación HTML solo materializa 7 de las 29 páginas** (HP + 5 LBS + Contacto). Faltan 5 SO, 1 GeoHub, 2 AC y 15 GA. Es un sistema que sabe lo que tiene que construir pero todavía no lo construye.

5 bloqueos automáticos del test están activos. La distinción "MVP vs producción" no aplica aquí: el test canónico es explícito en que evalúa "lo construido contra la doctrina", no "lo planeado".

**Veredicto:** Score 28/100 — implementación parcial. La trazabilidad y la fórmula están listas para producción. La generación de HTML necesita las 4 plantillas faltantes (SO, GH, AC, GA) más rediseño de URL pattern para incluir categoría antes de poder revisarse de nuevo.
