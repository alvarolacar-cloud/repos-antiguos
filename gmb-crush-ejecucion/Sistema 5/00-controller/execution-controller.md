# Execution Controller

Panel principal de control de ejecución.

---

## Datos del proyecto

| Campo | Valor |
|---|---|
| Cliente / Proyecto | [CLIENTE] |
| Business Name | [BUSINESS_NAME] |
| Dominio | [DOMAIN] |
| Main City | [MAIN_CITY] |
| GBP Status | [NOT_CREATED / CREATED / VERIFIED] |
| Fecha inicio | [DATE] |
| Responsable operador | [NAME] |
| Responsable cliente | [NAME] |

---

## Estado global

| Área | Estado | Comentario |
|---|---|---|
| Teoría leída | ⬜ | Pendiente |
| Preflight | ⬜ | Pendiente |
| Bloques 1–5 web | ⬜ | Pendiente |
| Bloque 6 info faltante | ⬜ | Pendiente |
| Web Live Ready | ⬜ | Pendiente |
| GBP Safe | ⬜ | Pendiente |
| GBP creado | ⬜ | Pendiente |
| Post-lanzamiento | ⬜ | Pendiente |

---

## Gate Matrix

| Gate | Nombre | Estado | Puede avanzar | Bloquea |
|---|---|---|---|---|
| G0 | Teoría leída | ⬜ | No | Todo |
| G1 | Preflight mínimo | ⬜ | No | Bloques 1–5 |
| G2 | Bloque ejecutado | ⬜ | Depende | Siguiente bloque |
| G3 | Decisiones y fuentes | ⬜ | Depende | QA / GBP |
| G4 | Web Live Ready | ⬜ | Depende | Deploy |
| G5 | Info faltante agregada | ⬜ | Sí para web, no para GBP | GBP |
| G6 | GBP Safe | ⬜ | Sí | GBP Creation |
| G7 | Post-lanzamiento | ⬜ | Sí | Escalado |

---

## Bloques del sistema

| Bloque | Contenido | Estado | Permite avanzar | Notas |
|---|---|---|---|---|
| Bloque 1 | Fundamentos | ⬜ | No | Intake, fórmula, matriz |
| Bloque 2 | Arquitectura | ⬜ | No | URLs, page types, contenido, links |
| Bloque 3 | Priorización | ⬜ | No | Score, QA base, fases |
| Bloque 4 | Automatización | ⬜ | No | Pseudocódigo, prompts, SOP |
| Bloque 5 | Salida a Mercado | ⬜ | No | Redacción, diseño, construcción, QA |
| Bloque 6 | Info que falta | ⬜ | No GBP | Agregador de faltantes |
| Bloque 7 | GBP | ⬜ | No | Crear y sincronizar GBP |

---

## Registro rápido de bloqueos

| ID | Bloque | Output afectado | Estado | Tipo | Responsable | Acción necesaria |
|---|---|---|---|---|---|---|
| BLQ-001 | [BLOQUE] | [OUTPUT] | ⛔ | [WEB/GBP/AMBOS] | [OWNER] | [ACCION] |
