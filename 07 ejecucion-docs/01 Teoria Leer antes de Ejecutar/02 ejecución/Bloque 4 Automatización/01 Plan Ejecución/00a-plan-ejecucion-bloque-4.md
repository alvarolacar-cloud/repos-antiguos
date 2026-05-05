# Plan de ejecución del Bloque 4 (Pasos 11-13)

> Plantilla del sistema. Vista unificada de los **41 outputs** que producen los pasos 11, 12 y 13 cuando se ejecutan para cualquier cliente. Antes de arrancar, esta tabla muestra qué se va a producir, cómo se decide cada output y qué fuentes hacen falta.

> **Punto de entrada:** si arrancas a ejecutar el sistema desde aquí, lee primero `00 convenciones/01flujo-ejecucion.md` para entender el orden global (Convenciones → Preflight → Bloques 1-6) y las condiciones de paso entre bloques.

> **Cómo usar esta plantilla:**
> 1. Confirma que los Bloques 1, 2 y 3 están cerrados (outputs upstream en `confirmed`).
> 2. Rellena la sección "Cliente" si arrancas un cliente nuevo.
> 3. Lee las 3 tablas (Paso 11, 12, 13) para entender qué outputs hay que producir.
> 4. Resuelve los bloqueos críticos antes de arrancar la ejecución (sección final).
> 5. Una vez ejecutado, vuelca los valores reales en `03 Consolidación Outputs/`.

---

## Cliente

| Campo | Valor |
|---|---|
| 1. Nombre del negocio | `[pendiente]` |
| 2. Qué hace | `[pendiente]` |
| 3. Dirección con CP | `[pendiente]` |
| 4. Estado del GBP | `[pendiente]` |
| 5. Ciudades para análisis Local Pack | `[pendiente]` |

---

## Fuentes

> Las **8 fuentes válidas** del sistema (`Doctrina GMB Crush`, `Cliente preflight`, `Cliente preflight + Doctrina GMB Crush`, `Arquitectura técnica`, `Tracking`, `Doctrina + Local Pack`, `Doctrina + Keyword research`, `Doctrina + Google Search`) y la notación de herencia `← X.Y` (Info heredada) están documentadas en `00 convenciones/02fuentes-y-outputs.md` y `01 fuentes/00-fuentes-en-uso.md`. Cualquier valor en la columna `Fuentes para Decidir` de las tablas de abajo debe pertenecer a ese catálogo.

---

## Paso 11 — Pseudocódigo del Sistema (16 outputs)

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **11.1** Función `load_inputs()` | `← Paso-01 + Paso-02 + Paso-03` | Lectura programática de §8 de cada a-doc + preflight; serialización en dict |
| **11.2** Función `normalize_slugs()` | `← 2.2 + 2.3 + 2.4 + 3.3` | Implementar slugify estándar + aplicar a 4 grupos de slugs |
| **11.3** Función `validate_categories()` | `← 2.7 + 2.12` | Comparar Additional vs core; aplicar criterio cobertura |
| **11.4** Función `generate_homepage()` | `← 4.3 + 5.3` | Aplicar spec Homepage del Paso-05 5.3 con inputs heredados |
| **11.5** Función `generate_service_overview()` | `← 4.4 + 5.4` | Aplicar spec SO del Paso-05 5.4 replicada × S core services (no-locales) |
| **11.6** Función `generate_geohub()` | `← 4.5 + 5.7 + 3.2` | Aplicar spec GeoHub Paso-05 5.7 al Main City con URL Option A o B |
| **11.7** Función `generate_lbs()` | `← 4.6 + 5.5` | Aplicar spec LBS Paso-05 5.5 replicada × S × Main City |
| **11.8** Función `generate_additional_category()` | `← 4.7 + 5.6 + 3.3` | Aplicar spec AC Paso-05 5.6 a las A categorías efectivas |
| **11.9** Función `generate_geoarticles()` | `← 4.8 + 5.8 + 3.4` | Aplicar spec GA Paso-05 5.8 a G×S combinaciones service × topic |
| **11.10** Función `inject_local_coverage()` | `← 6.2 + 6.12 + 6.17` | Iterar páginas, mapear page_type → conjunto LCAs según matriz |
| **11.11** Función `generate_expansion()` (opcional) | `← 1.11 + 4.10` | Replicar lógica generate_*() por Approved Area; vacío si E=0 |
| **11.12** Función `assign_internal_links()` | `← 7.9 + 7.11` | Lookup matriz 7.11 + selección anchor por catálogo 7.9 |
| **11.13** Función `score_priority()` | `← 8.1-8.10` | 6 funciones de medición + suma + mapeo tier/phase doctrinales (thresholds 26/21/16/10) |
| **11.14** Función `check_dependencies()` | `← 8.11 + 10.10` | Lookup parents + comparar phases + bloquear conflictos |
| **11.15** Función `run_qa()` | `← 9.2-9.13` | 5 funciones QA + consolidación gate + opcional GBP checklist |
| **11.16** Función `output_matrices()` | `← 3.5 + 3.8 + 7.11` | Serializar páginas scored + link_matrix en 3 estructuras tabulares |

---

## Paso 12 — Master Prompt (13 outputs)

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **12.1** Master Prompt principal | `← Paso-11 + Bloques 1-3` | Componer 7 secciones del prompt + integrar reglas y validations (~580 líneas literales) |
| **12.2** Auxiliary Prompt URL Matrix | `← 3.5 + 4.3-4.8` | Aislar sección URL Matrix del Master + simplificar ROLE |
| **12.3** Auxiliary Prompt Content Architecture | `← 5.3-5.8 + 6.6-6.11` | Aislar sección Content Architecture del Master |
| **12.4** Auxiliary Prompt GeoArticles | `← 3.4 + 8.11` | Aislar sección GA del Master + integrar keyword research |
| **12.5** Auxiliary Prompt QA | `← 9.2-9.13` | Aislar sección QA del Master + estructurar output diagnóstico |
| **12.6** Estructura del prompt | `Doctrina GMB Crush` | Aplicar plantilla 10-secciones (ROLE/CONTEXT/INPUTS/PROCESS/...) |
| **12.7** Web-First GBP Rule | `← 1.3 + 9.15` | Embeberla en Master Prompt + activar condicionalmente |
| **12.8** 14 Reglas operativas (§22-§34 original) | `← Bloques 1-3 (todas las reglas)` | Compilar reglas desde pasos origen y consolidar en sección del prompt |
| **12.9** Inputs Validation embedded | `← Paso-01 1.X + Paso-02 2.X` | Compilar checks desde §3 Heredados + integrar en sección 8 del prompt |
| **12.10** Executive Summary template | `← Paso-01 + Paso-02 + Paso-08` | Plantilla con placeholders rellenados por el prompt |
| **12.11** Validación prompt produce los 20 outputs del Master Prompt | `← 12.1-12.5` | Inspección de salida + cross-check con outputs esperados de Bloques 1-3 |
| **12.12** Validación prompt cumple web-first | `← 1.3 + 9.15` | Inspección de salida + cross-check con 7 sub-checks Paso-09 9.15 |
| **12.13** 10 Reglas doctrinales (§7-§16 original) | `Doctrina GMB Crush` | Portar literal del original las 10 Reglas doctrinales |

---

## Paso 13 — Sistema Final Operativo (12 outputs)

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **13.1** Resumen ejecutivo (principio §20 + fórmula §21 + aplicación §22) | `← 1.X + 2.X` | Compilar principio doctrinal + fórmula + aplicación al cluster |
| **13.2** 12 Sistemas literales (§7-§18 original) | `← Pasos 1-12` | Cross-ref literal a cada uno de los 12 pasos del sistema |
| **13.3** 7 Módulos A-G literales (§29-§35 original) | `← 1.X + 6.X + 8.X + 13.8` | Compilar Entidad/Servicios/Categorías/Cobertura/Expansión/Schema/Tracking |
| **13.4** 16 Reglas operativas literales (§36-§51 original) | `Doctrina GMB Crush` | Portar literal las 16 reglas operativas del original |
| **13.5** Workflow operativo de 21 pasos (§25 original) | `← Bloques 1-4 (estructura)` | Portar literal los 21 pasos numerados del original |
| **13.6** Carpetas recomendadas del repo (§26 original) | `Doctrina GMB Crush` | Estructura `docs/01-... 13-...` literal del original |
| **13.7** Tabla inventario URL con scores literales (§54.2 original) | `← 3.5 + 8.14` | Portar literal scores 100/95/92/.../70/68/65 del original |
| **13.8** Calendario de producción de 7 fases (§54.4 original) | `← 10.4-10.9` | Portar literal calendario 7 fases × semanas 1-8 |
| **13.9** Output final del Paso 13 (§28 original) — 13 elementos | `← 13.1-13.8` | Compilar los 13 elementos del output final |
| **13.10** Relación con Paso 14 (§27 original) | `← 9.15 + 10.10` | Portar literal "Paso 13 entrega → Paso 14 ejecuta" |
| **13.11** Checklist final de 13 preguntas (§52 original) | `Doctrina GMB Crush` | Portar literal las 13 preguntas del checklist |
| **13.12** 8 Outputs del Paso 13 (§53 original) | `Doctrina GMB Crush` | Portar literal los 8 outputs del paso |

---

## Resumen — qué necesita la IA antes de ejecutar

### Inputs heredados de Bloques 1-3 (deben estar `confirmed`)

- ☐ **Outputs 1.X** — Intake completo (Paso 1)
- ☐ **Outputs 2.X** — Fórmula Maestra (Paso 2)
- ☐ **Outputs 3.X** — Matriz Base (Paso 3)
- ☐ **Outputs 4.X-7.X** — Bloque 2 Arquitectura
- ☐ **Outputs 8.X-10.X** — Bloque 3 Priorización

**Total upstream:** outputs de Bloques 1-3 que el Bloque 4 consolida (cantidad varía por cliente).

### Decisiones del operador (2 nuevas en Bloque 4)

- ☐ Tracking stack y cadencia (output 13.8) — operador decide qué tools y frecuencia
- ☐ Documentación de Cambios convention (output 13.7) — operador decide formato

### Defaults doctrinales (no requieren input)

- Las 16 funciones del pseudocódigo (outputs 11.1-11.16)
  · 3 funciones de carga/normalización: 11.1-11.3
  · **6 funciones individuales por page type: 11.4-11.9** (HP/SO/GH/LBS/AC/GA)
  · 7 funciones de orquestación: 11.10-11.16
- Estructura del prompt (output 12.6)
- Web-First GBP Rule (output 12.7)
- Las 14 Reglas operativas del Master Prompt (output 12.8)
- Las 10 Reglas doctrinales del Master Prompt (output 12.13)
- Los 12 Sistemas del SOP (output 13.2)
- Las 16 Reglas operativas del SOP (output 13.4)
- Estructura de carpetas (output 13.6)

### Inputs externos NO requeridos

> Bloque 4 NO necesita Local Pack, Keyword research, ni Cliente confirma. Es **enteramente meta** — orquesta y consolida lo ya producido en Bloques 1-3.

---

## Cascada de dependencias (qué bloquea qué)

```
Bloques 1-3 cerrados (outputs confirmed)
    │
    ├─► Paso 11 (Pseudocódigo, 16 funciones)
    │       │
    │       ├── 11.1-11.3 carga + normalización
    │       ├── 11.4-11.9 las 6 funciones por page type (HP/SO/GH/LBS/AC/GA)
    │       └── 11.10-11.16 orquestación (inject + expansion + links + score + qa + matrices)
    │
    ├─► Paso 12 (Master Prompt, 13 outputs)
    │       │
    │       ├── 12.1 Master Prompt (← Paso-11 + Bloques 1-3)
    │       ├── 12.2-12.5 4 auxiliares
    │       ├── 12.6-12.10 estructura + reglas + validations
    │       ├── 12.11-12.12 validaciones
    │       └── 12.13 las 10 Reglas doctrinales del original §7-§16
    │
    └─► Paso 13 (Sistema Final Operativo)
            │
            ├── 13.1 SOP completo (← Bloques 1-4)
            ├── 13.1-13.8 estructura del SOP literal del original
            ├── 13.9-13.10 output final + relación con Paso 14
            └── 13.11-13.12 checklist final + 8 outputs declarados
```

---

## Bloqueos antes de ejecutar

> Si alguno de estos bloqueos no se resuelve, los outputs de Bloque 4 quedarán como `⚠ inferido`. El Paso 14 (GBP Creation) NO se arranca hasta que Bloque 4 esté 100% cerrado.

| Bloqueo | Outputs que quedan ⚠ | Cómo se desbloquea |
|---|---|---|
| Bloques 1-3 sin cerrar | TODOS los 41 outputs de Bloque 4 | Cerrar Pasos 1-10 antes de arrancar Bloque 4 |
| Outputs upstream con ⚠ inferido | Los outputs derivados quedan ⚠ heredado | Volver al paso correspondiente, completar, re-correr |
| Operador no decide Tracking stack | 13.3 (Módulo G Tracking) | Operador define stack y cadencia |
| Operador no decide convention de Documentación de Cambios | 13.7 | Operador define template |

---

> **Cuándo arrancar la ejecución:** una vez Bloques 1-3 estén cerrados con los outputs upstream en `confirmed`. Bloque 4 es **enteramente derivativo** — produce 41 outputs nuevos pero todos son consolidaciones/orquestaciones de los upstream. Cero research externo, cero tools nuevos. Tras cerrar Bloque 4, el Paso 14 (GBP Creation) queda DESBLOQUEADO según relación documentada en output 13.10.
