# INDICE — DOCTRINA/pasos/

> Tabla de los 21 a-docs y plantillas de la subcarpeta `DOCTRINA/pasos/`. Cada fila lista el archivo, su título, el número de outputs declarados en §2 ("Outputs del paso") y el bloque GMB Crush al que pertenece (0-7).
>
> Mapping de bloques (de `flujo.md` del sistema):
> - **Bloque 0** — Preflight (intake del cliente)
> - **Bloque 1** — Fundamentos (Pasos 1-3)
> - **Bloque 2** — Arquitectura (Pasos 4-7)
> - **Bloque 3** — Priorización (Pasos 8-10)
> - **Bloque 4** — Automatización (Pasos 11-13)
> - **Bloque 5** — Salida a Mercado (Pasos 15-19)
> - **Bloque 6** — Info que falta (agregador de ⚠, no produce outputs nativos)
> - **Bloque 7** — GBP (Paso 14, web-first → posterior a deploy)

## Tabla

| Archivo | Título | # outputs §2 | Bloque GMB Crush |
|---|---|---|---|
| `00-preflight-template.md` | 00 Preflight — Inputs del cliente | n/a (template — 5 campos negocio + 3 credenciales) | Bloque 0 |
| `01a-intake-form.md` | Paso 1 — Intake Form | 14 | Bloque 1 |
| `02a-formula-maestra.md` | Paso 2 — Fórmula Maestra de Arquitectura | 14 | Bloque 1 |
| `03a-matriz-base.md` | Paso 3 — Matriz Base | 14 | Bloque 1 |
| `04a-url-rules.md` | Paso 4 — URL Rules | 15 | Bloque 2 |
| `05a-page-type-rules.md` | Paso 5 — Page Type Rules | 10 | Bloque 2 |
| `06a-estructura-contenido.md` | Paso 6 — Estructura de Contenido + Áreas de Cobertura Local | 17 | Bloque 2 |
| `07a-internal-linking.md` | Paso 7 — Internal Linking Rules | 15 | Bloque 2 |
| `08a-priority-score.md` | Paso 8 — Priority Score | 14 | Bloque 3 |
| `09a-qa-checklist.md` | Paso 9 — QA Checklist | 15 | Bloque 3 |
| `10a-produccion-fases.md` | Paso 10 — Producción en Fases | 14 | Bloque 3 |
| `11a-pseudocodigo.md` | Paso 11 — Pseudocódigo del Sistema | 16 | Bloque 4 |
| `12a-master-prompt.md` | Paso 12 — Master Prompt | 13 | Bloque 4 |
| `13a-sistema-final.md` | Paso 13 — Sistema Final Operativo | 12 | Bloque 4 |
| `14a-gbp-creation.md` | Paso 14 — GBP Creation & Website Alignment | 20 | Bloque 7 |
| `15a-redaccion-contenido.md` | Paso 15 — Redacción de Contenido | 13 | Bloque 5 |
| `16a-diseno-layout.md` | Paso 16 — Extracción y Diseño de Layout | 6 | Bloque 5 |
| `17a-constructor-sitio.md` | Paso 17 — Constructor del Sitio | 8 | Bloque 5 |
| `18a-qa-deploy.md` | Paso 18 — QA y Deploy | 7 | Bloque 5 |
| `19a-escalado.md` | Paso 19 — Acciones Futuro y Escalado | 5 | Bloque 5 |
| `B6-info-que-falta-template.md` | Bloque 6 — Info que falta (agregador) | n/a (template — agregador de ⚠ heredados) | Bloque 6 |

## Totales por bloque (outputs declarados §2)

| Bloque | Pasos | Total outputs |
|---|---|---|
| Bloque 1 (Fundamentos) | 1, 2, 3 | 14 + 14 + 14 = **42** |
| Bloque 2 (Arquitectura) | 4, 5, 6, 7 | 15 + 10 + 17 + 15 = **57** |
| Bloque 3 (Priorización) | 8, 9, 10 | 14 + 15 + 14 = **43** |
| Bloque 4 (Automatización) | 11, 12, 13 | 16 + 13 + 12 = **41** |
| Bloque 5 (Salida a Mercado) | 15, 16, 17, 18, 19 | 13 + 6 + 8 + 7 + 5 = **39** |
| Bloque 7 (GBP) | 14 | **20** |
| **TOTAL** | 19 a-docs | **242** |

> Nota: el contador 242 coincide con los 241 declarados en `flujo.md` (line 88) ± 1; la discrepancia se debe a que el original cuenta cross-cutting validations como sub-outputs en algunos pasos. La tabla refleja literal el conteo del §2 "Outputs del paso" (o equivalente — ver notas de 10a y 14a). El Bloque 6 no produce outputs nativos: es un agregador de `⚠` heredados.
