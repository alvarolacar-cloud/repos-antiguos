# Consolidado del Bloque 4 — Automatización (Pasos 11-13)

> Plantilla del sistema. Documento de cierre de la Fase 1 (Ejecución) de Bloque 4. Recoge los **41 outputs** producidos por los pasos 11, 12 y 13 con sus valores reales para el cliente y su status (`confirmed` / `⚠ inferido` / `⚠ placeholder` / `validated`).
>
> Bloque 4 hereda 100% del estado de Bloques 1-3 — si esos están como `⚠`, sus consecuencias en Bloque 4 también lo estarán. El cierre del Bloque 4 desbloquea el Paso 14 (GBP Creation, Bloque 5+).

> **Tabla de pasos cubiertos:** Total **41 outputs** = 16 (Paso 11) + 13 (Paso 12) + 12 (Paso 13).
>
> **Nota de fidelidad al original (post-auditoría):** los 3 outputs 11.17 `main()`, 11.18 cobertura inputs, 11.19 secuencia eran inventados — el original §7-§22 tiene 16 funciones, no 19. Los thresholds P1-P4 (26/21/16/10) en `score_priority()` se restauraron como manda el original §19. En Paso 12 se restauraron las 10 Reglas doctrinales del original §7-§16 que se habían omitido (output 12.13). En Paso 13 se reescribió la sección Ejecución para reflejar la estructura literal del original (12 Sistemas + 7 Módulos A-G + 16 Reglas operativas + workflow 21 pasos + tabla URL con scores 100/95/92/...). Conteos upstream "137/43/59/35" eran fabricados — el original 11a/12a/13a no enumera outputs upstream.

---

## Cliente

| Campo | Valor | Status |
|---|---|---|
| Business Name | `[pendiente]` | ☐ |
| Main City | `[pendiente]` | ☐ |
| GBP Lifecycle Status | `[pendiente]` | ☐ |
| Bloques 1-3 cerrados | ☐ Sí / ☐ No | ☐ |

---

## Paso 11 — Pseudocódigo del Sistema (16 outputs)

| ID | Output | Valor (cliente) | Status |
|---|---|---|---|
| 11.1 | Función `load_inputs()` | `[dict con variables del cluster]` | ☐ |
| 11.2 | Función `normalize_slugs()` | `[dict con slugs normalizados]` | ☐ |
| 11.3 | Función `validate_categories()` | `[lista effective_additional]` (A=?) | ☐ |
| 11.4 | Función `generate_homepage()` | `[1 HP con spec 5.3]` | ☐ |
| 11.5 | Función `generate_service_overview()` | `[S SO no-locales con spec 5.4]` | ☐ |
| 11.6 | Función `generate_geohub()` | `[1 GeoHub Main City con spec 5.7]` | ☐ |
| 11.7 | Función `generate_lbs()` | `[S LBS con spec 5.5 + LCAs]` | ☐ |
| 11.8 | Función `generate_additional_category()` | `[A AC con spec 5.6]` | ☐ |
| 11.9 | Función `generate_geoarticles()` | `[G×S GAs con spec 5.8]` | ☐ |
| 11.10 | Función `inject_local_coverage()` | `[páginas locales con LCAs en areaServed]` | ☐ |
| 11.11 | Función `generate_expansion()` | `[]` (Phase 1 default E=0) | ☐ |
| 11.12 | Función `assign_internal_links()` | `[enlaces según matriz 7.11]` | ☐ |
| 11.13 | Función `score_priority()` | `[páginas con score+tier según thresholds 26/21/16/10]` | ☐ |
| 11.14 | Función `check_dependencies()` | `[páginas validadas contra parents+phases]` | ☐ |
| 11.15 | Función `run_qa()` | `[páginas con publish_gate consolidado]` | ☐ |
| 11.16 | Función `output_matrices()` | `[3 matrices: URL/Schema/Link]` | ☐ |

---

## Paso 12 — Master Prompt (13 outputs)

| ID | Output | Valor (cliente) | Status |
|---|---|---|---|
| 12.1 | Master Prompt principal | `[prompt 10 secciones aplicado al cluster]` | ☐ |
| 12.2 | Auxiliary Prompt URL Matrix | `[prompt aislado para URL Matrix]` | ☐ |
| 12.3 | Auxiliary Prompt Content Architecture | `[prompt aislado para Content]` | ☐ |
| 12.4 | Auxiliary Prompt GeoArticles | `[prompt aislado para GAs validados]` | ☐ |
| 12.5 | Auxiliary Prompt QA | `[prompt aislado para QA gate]` | ☐ |
| 12.6 | Estructura del prompt | `10 secciones obligatorias aplicadas` | ☐ |
| 12.7 | Web-First GBP Rule | `[activa/inactiva según GBP Status]` | ☐ |
| 12.8 | 14 Reglas operativas (§22-§34 original) | `[14/14 reglas aplicadas]` | ☐ |
| 12.9 | Inputs Validation embedded | `[8 checks pasados; 0 fails]` | ☐ |
| 12.10 | Executive Summary template | `[15 campos rellenos]` | ☐ |
| 12.11 | Validación prompt produce los 20 outputs del Master Prompt | `[20/20 outputs cubiertos]` | ☐ |
| 12.12 | Validación prompt cumple web-first | `[N/N URLs Pass GBP Checklist]` | ☐ |
| 12.13 | 10 Reglas doctrinales (§7-§16 original) | `[10/10 reglas aplicadas]` | ☐ |

---

## Paso 13 — Sistema Final Operativo (12 outputs)

| ID | Output | Valor (cliente) | Status |
|---|---|---|---|
| 13.1 | Resumen ejecutivo (principio §20 + fórmula §21 + aplicación §22) | `[principio + S=5, A=1, G=3 → N+1 páginas]` | ☐ |
| 13.2 | 12 Sistemas literales (§7-§18) | `[12 sistemas referenciados a Pasos 1-12]` | ☐ |
| 13.3 | 7 Módulos A-G literales (§29-§35) | `[7 módulos A-G aplicados]` | ☐ |
| 13.4 | 16 Reglas operativas literales (§36-§51) | `[16/16 reglas]` | ☐ |
| 13.5 | Workflow operativo de 21 pasos (§25) | `[21 pasos numerados]` | ☐ |
| 13.6 | Carpetas recomendadas del repo (§26) | `[docs/01-... 13-...]` | ☐ |
| 13.7 | Tabla inventario URL con scores literales (§54.2) | `[N+1 URLs con scores 100/95/92/...]` | ☐ |
| 13.8 | Calendario de producción de 7 fases (§54.4) | `[7 fases × semanas 1-8]` | ☐ |
| 13.9 | Output final del Paso 13 (§28) — 13 elementos | `[13 elementos del output final]` | ☐ |
| 13.10 | Relación con Paso 14 (§27) | `[Paso 13 entrega → Paso 14 ejecuta]` | ☐ |
| 13.11 | Checklist final de 13 preguntas (§52) | `[13/13 ✓]` | ☐ |
| 13.12 | 8 Outputs del Paso 13 (§53) | `[8 outputs documentados]` | ☐ |

---

## Resumen de status

| Status | Cantidad | % |
|---|---:|---:|
| ☐ pendiente | 41 | 100% |
| ✓ confirmed | 0 | 0% |
| ⚠ inferido | 0 | 0% |
| ⚠ placeholder | 0 | 0% |
| **Total** | **41** | **100%** |

> Actualizar esta tabla al cerrar la Fase 1 de Bloque 4 con los conteos reales del cliente.

---

## Acciones pendientes para promover ☐ → confirmed / validated

> Si Bloques 1-3 no están cerrados, todas las acciones son pre-requisito antes de cualquier acción de Bloque 4.

### Bloque A — Decisiones del operador (resuelve 1 output)

| ID | Output | Acción |
|---|---|---|
| (general) | Confirmar SOP como source of truth | Operador firma SOP del Paso 13 antes de pasar a Paso 14 |

### Bloque B — Cascada automática (resuelve 40 outputs)

> Los 40 outputs restantes son enteramente deterministas — se derivan de los outputs upstream de Bloques 1-3 + Paso 11 + Paso 12. Cero research externo, cero tools nuevos.

- Paso 11: 11.1-11.16 completos (16 funciones literales del original §7-§22)
- Paso 12: 12.1-12.13 completos (Master Prompt + 4 auxiliares + 10 Reglas doctrinales + 14 Reglas operativas + Web-First)
- Paso 13: 13.1-13.12 completos (12 Sistemas + 7 Módulos + 16 Reglas + 21 pasos workflow + tabla URL + calendario 7 fases + checklist 13 preguntas + 8 outputs)

> Total automático: 40 outputs. Resto: 1 output requiere firma del operador (Bloque A).

---

## Bloqueo de publicación

> Por la regla del sistema, este documento NO puede pasar a Paso 14 (GBP Creation) mientras existan marcadores `⚠` o `☐ pendiente`.

**Pre-requisitos antes de cerrar Bloque 4:**

- ☐ Bloques 1-3 cerrados
- ☐ Bloque A resuelto (Operador firma SOP)
- ☐ Bloque B cerrado (40 outputs derivados confirmados)
- ☐ Paso 11 cerrado (16 outputs)
- ☐ Paso 12 cerrado (13 outputs)
- ☐ Paso 13 cerrado (12 outputs incl. SOP completo)

**Pre-requisitos antes de arrancar Paso 14 (post Phase 1-3 publicadas):**

- ☐ Bloques 1-4 cerrados
- ☐ Fases 1-3 publicadas según calendario del Paso 10
- ☐ Final Publish Gate Pass en N URLs
- ☐ GBP Not Created Checklist Pass en N URLs
- ☐ Tracking GSC mínimo 30 días
- ☐ NAP coherente
- ☐ Operador aprueba arranque Paso 14

---

> **Cruce con el plan de ejecución:** este consolidado es el **output** de ejecutar `00a-plan-ejecucion-bloque-4.md`. Los IDs (11.X, 12.X, 13.X) coinciden 1:1 con los del plan.
>
> **Cascada hacia Paso 14 (forward):** el cierre del Bloque 4 marca el desbloqueo del Bloque 5+. El Paso 14 (GBP Creation) usa el SOP del Paso 13 como source of truth para crear el GBP coherente con la web ya publicada.
