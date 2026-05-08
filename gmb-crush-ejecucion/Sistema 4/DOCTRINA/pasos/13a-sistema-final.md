Versión literal del chat · Sistema GMB Crush para webs locales
Documento generado siguiendo el esqueleto canónico (`00 convenciones/00convenciones.md` (§1 Esqueleto)).
Proveniencia: portado de `repos-1-y-2/Bloque 4 — Automatizacion/paso-13-sistema-final-operativo/`, alineado con los frameworks oficiales GMB Crush.

# Paso 13 — Sistema Final Operativo

<small>§1</small>

> **Cómo leer este documento:**
> - **Bloque I — Introducción** describe qué produce el paso y qué hereda.
> - **Bloque II — Ejemplo rellenado** muestra los outputs del Paso 13 con sus valores reales para Cerrajeros Madrid 24h.
> - **Bloque III — Ejecución por la IA** contiene los sub-bloques operativos.
> - **Bloque IV — Fuentes Internas GMB Crush usadas** lista los frameworks GMB Crush.

# Bloque I — Introducción

## Objetivo del Paso 13

<small>§2</small>

Este paso existe para resolver un problema concreto dentro del sistema GMB Crush: unir los pasos web-first anteriores y dejar preparado el Paso 14 de creación del GBP en un SOP completo, coherente y listo para usar en cualquier web local. La web local no debe construirse desde la intuición, sino desde una secuencia operativa que conecta entidad, categoría GBP, servicios, ciudad principal, cobertura local, schema, contenido e interlinking. El objetivo es que cada dato que se recoge o cada página que se crea tenga una función clara dentro del ecosistema local.

En la versión web-first, el Google Business Profile no existe todavía: las categorías se tratan como Planned GBP Categories hasta que el Paso 14 cree, verifique y sincronice el GBP con la web. Las Local Coverage Areas no generan URLs por defecto; se usan para reforzar el contenido, los ejemplos locales, las FAQs y el schema areaServed. Solo las Approved Expansion Areas pueden convertirse en URLs propias cuando exista una justificación clara.

**Outputs del paso (estructura del original):**

- **13.1** Resumen ejecutivo del sistema (objetivo, definición operativa, principio final, fórmula final base)
- **13.2** 12 Sistemas (§7-§18 del original) con cross-refs a Pasos 1-12
- **13.3** 7 Módulos A-G (§29-§35 del original)
- **13.4** 16 Reglas operativas (§36-§51 del original) — texto literal
- **13.5** Workflow operativo completo de 21 pasos (§25 del original)
- **13.6** Carpetas recomendadas del repo (estructura `docs/01-... 02-...`, §26 del original)
- **13.7** Tabla inventario URL con Priority Score (§54.2 del original, scores literales 100/95/92/...)
- **13.8** Calendario de producción de 7 fases (§54.4 del original)
- **13.9** Output final que debe producir el sistema (13 elementos, §28 del original)
- **13.10** Relación con el Paso 14 (§27 del original)
- **13.11** Checklist final del Paso 13 (§52 del original)
- **13.12** Outputs del Paso 13 (§53 del original)

**Errores que previene (§3 original):**

- Tener documentos sueltos sin workflow.
- Volver a mezclar Target Cities y Secondary Cities en la base.
- Crear páginas sin fórmula, matriz, contenido, enlaces, QA o tracking.
- Olvidar que Local Coverage Areas son señales de contenido antes que URLs.
- No saber qué output debe producir cada paso.

**Cuándo se ejecuta:** después de los 12 sistemas previos. Es el paso final del sistema web y la antesala del Paso 14 (GBP Creation & Website Alignment).

## Info heredada de pasos anteriores

<small>§3</small>

> El Paso 13 es **meta**: consolida los 12 sistemas anteriores y los 7 módulos A-G del original. No introduce conteos numéricos de outputs upstream que no estén en el original.

| Sistema upstream | Cómo se consolida en el SOP |
|---|---|
| Sistema 1 — Intake | Sección "Inputs" del SOP |
| Sistema 2 — Fórmula | Sección "Fórmula final base" del SOP |
| Sistema 3 — Matriz Base | Sección "URL Matrix" del SOP |
| Sistema 4 — URL Rules | Sección "Reglas de URLs" del SOP |
| Sistema 5 — Page Type Rules | Sección "Tipos de página" del SOP |
| Sistema 6 — Content Architecture | Sección "Contenido + LCAs" del SOP |
| Sistema 7 — Internal Linking | Sección "Linking" del SOP |
| Sistema 8 — Priority Score | Sección "Priority" del SOP |
| Sistema 9 — QA | Sección "QA Gate" del SOP |
| Sistema 10 — Producción en fases | Sección "Calendario" del SOP |
| Sistema 11 — Pseudocódigo | Sección "Lógica del sistema" del SOP |
| Sistema 12 — Master Prompt | Sección "Operación con IA" del SOP |

# Bloque II — Ejemplo rellenado para el Paso 13 — Sistema Final Operativo

<small>§4</small>

> Los outputs del Paso 13 con sus valores reales para Cerrajeros Madrid 24h. Cada sub-sección §4.X corresponde 1:1 al output 13.X declarado en §5.

### 13.1 — Resumen ejecutivo del sistema

```text
Cliente:                Cerrajeros Madrid 24h
Sector:                 Cerrajería urgente
Main City:              Madrid
Categoría primaria:     Cerrajero (Planned)
GBP Status:             Not Created (web-first)
Total URLs SEO base:    28 (1 HP + 5 SO + 1 GH + 5 LBS + 1 AC + 15 GA)
Página auxiliar:        /contacto/ (fuera del inventario SEO base)
LCAs:                   2 Direct (Almagro, Chamberí) + 8 Candidate
Variables:              S=5, A=1, G=3
Approved Expansion:     None in Phase 1
QA Gate:                Pending por URL (ver §54.3)
Phase actual:           Pre-Fase 1
Tracking:               GMB Crush + GSC + GA4
```

**Principio final de arquitectura (§20 original):**

```text
Main City = crea la arquitectura base.
Local Coverage Areas = enriquecen contenido, FAQs, ejemplos locales y schema areaServed.
Approved Expansion Areas = generan URLs propias solo cuando se aprueban.
```

**Fórmula final base (§21 original):**

```text
1 Homepage
+ S Service Overview Pages
+ 1 Main City GeoHub
+ S Main City Location-Based Service Pages
+ A Páginas de categoría adicional en la Main City
+ G × S GeoArticles de la Main City
```

**Aplicación a Cerrajeros Madrid 24h (§22 original):**

```text
S = 5
A = 1
G = 3

1 Homepage
+ 5 Service Overview Pages
+ 1 Madrid GeoHub
+ 5 Madrid Service Pages
+ 1 Madrid Additional Category Page
+ 15 Madrid GeoArticles
= 28 páginas SEO base. Adicionalmente, /contacto/ como página auxiliar fuera del inventario SEO base.
```

### 13.2 — 12 Sistemas

> Lista literal de los 12 sistemas que componen el cuerpo operativo del Paso 13 (§7–§18 del original).

```text
Sistema 1 — Intake
  Patrón: Inputs complete before architecture
  Regla: El sistema empieza con inputs limpios.

Sistema 2 — Fórmula
  Patrón: 1 + S + 1 + S + A + G×S
  Regla: La base usa C = 1 Main City.

Sistema 3 — Matriz Base
  Patrón: URL Matrix with IDs
  Regla: Lo que no está en matriz no entra en producción.

Sistema 4 — URL Rules
  Patrón: /category/main-city/service/
  Regla: Una URL = una intención.

Sistema 5 — Page Type Rules
  Patrón: Homepage, Service Overview, LBS, AC, GeoHub, GeoArticle
  Regla: Cada tipo cumple un rol.

Sistema 6 — Content Architecture
  Patrón: Content blocks + coverage usage
  Regla: El contenido debe tener estructura, no solo campos.

Sistema 7 — Internal Linking
  Patrón: Homepage → Services → GeoHub → LBS → Articles
  Regla: Los enlaces sostienen el silo.

Sistema 8 — Priority Score
  Patrón: Revenue + Intent + GBP + Local + Gap + Urgency
  Regla: La prioridad sigue negocio + intención + local.

Sistema 9 — QA
  Patrón: URL + metadata + schema + links + no false location
  Regla: Sin QA no se publica.

Sistema 10 — Producción en fases
  Patrón: Entity → Main City Conversion → Articles → Optimization → Expansion
  Regla: Publicar por fases evita caos.

Sistema 11 — Pseudocódigo
  Patrón: Input → Generate → Link → Score → QA → Output
  Regla: El sistema debe poder repetirse.

Sistema 12 — Master Prompt
  Patrón: Master Prompt with full outputs
  Regla: El prompt maestro debe generar el sistema completo.
```

### 13.3 — 7 Módulos A-G

> Módulos doctrinales del SOP (§29–§35 del original). Texto literal del original.

```text
Módulo A — Entidad y GBP
  Patrón: Business + GBP + NAP → entity base
  Regla: La entidad se valida antes de la arquitectura.

Módulo B — Servicios core
  Patrón: Core Service → SO + LBS
  Regla: Cada servicio core importante tiene estructura completa.

Módulo C — Categorías adicionales
  Patrón: Additional Category → covered or AC page
  Regla: Cada categoría GBP tiene soporte sin duplicación.

Módulo D — Cobertura local
  Patrón: Coverage → content + areaServed
  Regla: Cobertura local primero en contenido.

Módulo E — Expansión aprobada
  Patrón: Approved Expansion → optional URLs
  Regla: La expansión es posterior y justificada.

Módulo F — Schema
  Patrón: Page Type → Schema Type
  Regla: Schema debe coincidir con tipo de página.

Módulo G — Tracking
  Patrón: GMB Crush + GSC + GA4
  Regla: Sin medición no hay optimización.
```

### 13.4 — 16 Reglas operativas

> 16 Reglas operativas literales del SOP (§36–§51 del original). Cada una con su Patrón y su Regla final.

```text
Regla operativa 1 — Sistema empieza por entidad
  Patrón: Entity inputs → architecture → content → links → QA
  Regla: La entidad manda sobre la arquitectura.

Regla operativa 2 — Arquitectura base de una Main City
  Patrón: Main City base | Coverage content | Expansion optional
  Regla: La base local se construye alrededor de una Main City.

Regla operativa 3 — Matriz como centro operativo
  Patrón: URL Matrix → briefs → production → QA
  Regla: Si no está en la matriz, no existe en producción.

Regla operativa 4 — Contenido por page type
  Patrón: Page Type → content architecture → QA
  Regla: La forma del contenido depende de la función de la página.

Regla operativa 5 — Local Coverage Areas como contexto
  Patrón: Coverage real → content blocks + schema | no URLs base
  Regla: La cobertura local refuerza, no multiplica por defecto.

Regla operativa 6 — Internal linking como distribución de autoridad
  Patrón: Homepage → Services / GeoHub → LBS → GeoArticles → back
  Regla: Cada página debe tener enlaces entrantes y salientes útiles.

Regla operativa 7 — Schema como claridad de entidad
  Patrón: Page Type → schema → NAP/areaServed validation
  Regla: Schema debe ser coherente, válido y verdadero.

Regla operativa 8 — Priority Score como decisión de producción
  Patrón: Score + dependencies + phase → publish order
  Regla: La prioridad debe convertirse en calendario, no en caos.

Regla operativa 9 — QA como puerta de publicación
  Patrón: Ready for QA → checklist → Approved → Published
  Regla: No hay publicación sin QA.

Regla operativa 10 — Producción en fases
  Patrón: Phase 1 → Phase 2 → Phase 3 → Phase 4 → Phase 5 optional
  Regla: Las fases convierten arquitectura en ejecución controlada.

Regla operativa 11 — Tracking como ciclo de mejora
  Patrón: Publish → measure → optimize → refresh
  Regla: Publicar es el inicio del ciclo de optimización.

Regla operativa 12 — Expansion Areas con gobernanza
  Patrón: Coverage → evidence → approval → expansion pages
  Regla: La expansión requiere evidencia y control.

Regla operativa 13 — IA como operador del sistema
  Patrón: Prompt → inputs → matrices → QA → outputs
  Regla: La IA debe seguir el sistema, no inventarlo.

Regla operativa 14 — No negociables finales
  Patrón: Non-negotiables → QA → governance
  Regla: Las reglas no negociables protegen el sistema completo.

Regla operativa 15 — Documentación del cambio
  Patrón: Change → reason → matrix update → QA
  Regla: Todo cambio debe quedar documentado en la matriz y el plan.

Regla operativa 16 — Sistema final como fuente única
  Patrón: 14 pasos → sistema completo → ejecución por documentos
  Regla: El sistema final coordina; los pasos individuales ejecutan.
```

### 13.5 — Workflow operativo completo (21 pasos)

> Workflow literal del §25 del original.

```text
1. Recoger inputs
2. Validar entidad, NAP, GBP y Main City
3. Clasificar servicios core
4. Clasificar categorías adicionales
5. Identificar Local Coverage Areas
6. Confirmar si hay Approved Expansion Areas
7. Calcular fórmula base
8. Crear URL Matrix
9. Aplicar URL Rules
10. Asignar Page Type Rules
11. Crear Content Architecture
12. Asignar schema
13. Asignar internal links
14. Calcular Priority Score
15. Asignar publish phase
16. Producir contenido
17. Ejecutar QA
18. Publicar
19. Medir
20. Optimizar
21. Considerar expansión opcional
```

### 13.6 — Carpetas recomendadas del repo

> Estructura literal del §26 del original.

```text
docs/
├── README.md
├── 01-intake-form.md
├── 02-formula-maestra-arquitectura.md
├── 03-matriz-base.md
├── 04-url-rules.md
├── 05-page-type-rules.md
├── 06-estructura-contenido-areas-cobertura-local.md
├── 07-internal-linking-rules.md
├── 08-priority-score.md
├── 09-qa-checklist.md
├── 10-produccion-en-fases.md
├── 11-pseudocodigo-sistema.md
├── 12-master-prompt.md
└── 13-sistema-final-operativo.md
```

### 13.7 — Tabla inventario URL — Priority Score completo

> Tabla literal del §54.2 del original con scores 100/95/92/.../70/68/65/...

| # | URL | Tipo | Priority Score |
|---|-----|------|----------------|
| 1 | / | Homepage | 100 |
| 2 | /cerrajero/cerrajero-urgente/ | Service Overview | 90 |
| 3 | /cerrajero/apertura-puertas/ | Service Overview | 88 |
| 4 | /cerrajero/cambio-cerraduras/ | Service Overview | 86 |
| 5 | /cerrajero/cambio-bombines/ | Service Overview | 84 |
| 6 | /cerrajero/instalacion-cerraduras-seguridad/ | Service Overview | 82 |
| 7 | /madrid/ | GeoHub | 95 |
| 8 | /cerrajero/madrid/cerrajero-urgente/ | LBS | 92 |
| 9 | /cerrajero/madrid/apertura-puertas/ | LBS | 88 |
| 10 | /cerrajero/madrid/cambio-cerraduras/ | LBS | 85 |
| 11 | /cerrajero/madrid/cambio-bombines/ | LBS | 83 |
| 12 | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | LBS | 80 |
| 13 | /cerrajero/madrid/duplicado-llaves/ | Additional Category | 75 |
| 14 | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | GeoArticle | 70 |
| 15 | /madrid/que-hacer-si-no-puedes-entrar-casa/ | GeoArticle | 68 |
| 16 | /madrid/cuanto-tarda-un-cerrajero/ | GeoArticle | 65 |
| 17 | /madrid/cuanto-cuesta-abrir-una-puerta/ | GeoArticle | 64 |
| 18 | /madrid/que-hacer-si-te-dejas-las-llaves-dentro/ | GeoArticle | 62 |
| 19 | /madrid/apertura-de-puertas-sin-romper-cerradura/ | GeoArticle | 60 |
| 20 | /madrid/cuando-cambiar-la-cerradura-de-casa/ | GeoArticle | 58 |
| 21 | /madrid/cambio-de-cerradura-tras-perder-llaves/ | GeoArticle | 56 |
| 22 | /madrid/cerradura-nueva-o-reparacion/ | GeoArticle | 54 |
| 23 | /madrid/cuando-cambiar-el-bombin/ | GeoArticle | 52 |
| 24 | /madrid/bombin-antibumping-madrid/ | GeoArticle | 50 |
| 25 | /madrid/cambio-de-bombin-sin-cambiar-cerradura/ | GeoArticle | 48 |
| 26 | /madrid/mejores-cerraduras-de-seguridad-para-viviendas/ | GeoArticle | 46 |
| 27 | /madrid/cerraduras-de-seguridad-para-comunidades/ | GeoArticle | 44 |
| 28 | /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/ | GeoArticle | 42 |
| — | /contacto/ | Auxiliar | Sin score SEO |

> Cada URL SEO del inventario base debe tener prioridad asignada.

### 13.8 — Calendario de producción de 7 fases

> Calendario literal del §54.4 del original.

```text
Fase 1 — Estructura base (Semana 1-2):
- / (Homepage)
- /contacto/
- /madrid/ (GeoHub)
- /cerrajero/madrid/cerrajero-urgente/ (LBS principal)
- /cerrajero/madrid/apertura-puertas/ (LBS)

Fase 2 — Servicios core (Semana 2-3):
- /cerrajero/madrid/cambio-cerraduras/ (LBS)
- /cerrajero/madrid/cambio-bombines/ (LBS)
- /cerrajero/madrid/instalacion-cerraduras-seguridad/ (LBS)
- /cerrajero/madrid/duplicado-llaves/ (Additional Category)

Fase 3 — Service Overview Pages (Semana 3-4):
- /cerrajero/cerrajero-urgente/
- /cerrajero/apertura-puertas/
- /cerrajero/cambio-cerraduras/
- /cerrajero/cambio-bombines/
- /cerrajero/instalacion-cerraduras-seguridad/

Fase 4 — GeoArticles lote 1 (Semana 4-5):
- /madrid/cuanto-cuesta-un-cerrajero-urgente/
- /madrid/que-hacer-si-no-puedes-entrar-casa/
- /madrid/cuanto-tarda-un-cerrajero/
- /madrid/cuanto-cuesta-abrir-una-puerta/
- /madrid/que-hacer-si-te-dejas-las-llaves-dentro/

Fase 5 — GeoArticles lote 2 (Semana 5-6):
- /madrid/apertura-de-puertas-sin-romper-cerradura/
- /madrid/cuando-cambiar-la-cerradura-de-casa/
- /madrid/cambio-de-cerradura-tras-perder-llaves/
- /madrid/cerradura-nueva-o-reparacion/
- /madrid/cuando-cambiar-el-bombin/

Fase 6 — GeoArticles lote 3 (Semana 6-7):
- /madrid/bombin-antibumping-madrid/
- /madrid/cambio-de-bombin-sin-cambiar-cerradura/
- /madrid/mejores-cerraduras-de-seguridad-para-viviendas/
- /madrid/cerraduras-de-seguridad-para-comunidades/
- /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/

Fase 7 — GBP y sincronización (Semana 7-8):
- Paso 14: Crear GBP
- Verificar GBP
- Sincronizar web con GBP (schema sameAs, trust signals, contacto)
```

> El calendario debe cubrir todo el inventario base o declararse como calendario parcial.

### 13.9 — Output final que debe producir el sistema

> Lista literal del §28 del original.

```text
1. Ficha completa del negocio
2. Fórmula de páginas base
3. URL Matrix completa
4. Page Type Rules
5. Content Architecture
6. Schema Map
7. Internal Linking Map
8. Priority Score
9. Publishing Plan
10. QA Checklist
11. Tracking Plan
12. Optimization Queue
13. Optional Expansion Plan
```

### 13.10 — Relación con el Paso 14

> Texto literal del §27 del original.

```text
Paso 13 = website operating system complete
Paso 14 = GBP creation and website alignment

Paso 13 entrega:
- Homepage lista
- Service Overview Pages listas
- /madrid/ listo
- páginas /cerrajero/madrid/service/ listas
- schema sin sameAs de GBP
- QA aprobado

Paso 14 ejecuta:
- creación del GBP
- categoría Cerrajero
- servicios del perfil
- actualización de sameAs
```

**Regla final (§27.5 original):** El sistema web termina en el Paso 13; la entidad GBP se crea y sincroniza en el Paso 14.

### 13.11 — Checklist final del Paso 13

> Tabla literal del §52 del original.

| Check | Pregunta | Estado |
|---|---|---|
| 14 pasos | ¿El sistema final incluye los 14 pasos? | ✅ / ⬜ |
| Main City | ¿La base se construye sobre una sola Main City? | ✅ / ⬜ |
| Local Coverage | ¿Las áreas de cobertura no generan URLs por defecto? | ✅ / ⬜ |
| Expansion | ¿La expansión está separada y aprobada? | ✅ / ⬜ |
| Formula | ¿La fórmula base está actualizada? | ✅ / ⬜ |
| Matrix | ¿La URL Matrix tiene todos los tipos de página? | ✅ / ⬜ |
| Content | ¿El Paso 6 cubre estructura interna de contenido? | ✅ / ⬜ |
| Links | ¿El Paso 7 conecta todos los tipos de página? | ✅ / ⬜ |
| Score | ¿El Paso 8 usa Local Relevance? | ✅ / ⬜ |
| QA | ¿El Paso 9 valida no fake location y no canibalización? | ✅ / ⬜ |
| Phases | ¿El Paso 10 publica por dependencias? | ✅ / ⬜ |
| Prompt | ¿El Paso 12 genera todo el sistema? | ✅ / ⬜ |
| Output | ¿El sistema final produce matrices, briefs, QA y roadmap? | ✅ / ⬜ |

### 13.12 — Outputs del Paso 13

> Lista literal del §53 del original.

```text
- SOP final de 14 pasos
- Índice definitivo
- Fórmula final base
- Arquitectura Cerrajeros Madrid 24h aplicada
- Workflow operativo completo
- Reglas no negociables
- Checklist final del sistema
- Output final esperado para cualquier negocio local
```

# Bloque III — Ejecución por la IA

## Outputs a Conseguir

<small>§5</small>

> Tabla declarativa de los 12 outputs que el Paso 13 debe producir, alineados con la estructura del original. Cada output tiene un ID global (`Paso.Output`, ej. `13.5`) citable desde cualquier doc del sistema.

| ID | Output | Tipo | Fuente | Hereda de (original) |
|---|---|---|---|---|
| 13.1 | Resumen ejecutivo del sistema | Sección summary | Doctrina GMB Crush | §3 + §20 + §21 + §22 |
| 13.2 | 12 Sistemas | Lista doctrinal | Doctrina GMB Crush | §7–§18 |
| 13.3 | 7 Módulos A-G | Lista doctrinal | Doctrina GMB Crush | §29–§35 |
| 13.4 | 16 Reglas operativas | Lista doctrinal | Doctrina GMB Crush | §36–§51 |
| 13.5 | Workflow operativo de 21 pasos | Sección procedimental | Doctrina GMB Crush | §25 |
| 13.6 | Carpetas recomendadas del repo | Sección operacional | Doctrina GMB Crush | §26 |
| 13.7 | Tabla inventario URL con Priority Score | Tabla N+1 filas | Doctrina GMB Crush | §54.2 |
| 13.8 | Calendario de producción de 7 fases | Calendario | Doctrina GMB Crush | §54.4 |
| 13.9 | Output final que debe producir el sistema | Lista declarativa | Doctrina GMB Crush | §28 |
| 13.10 | Relación con el Paso 14 | Sección doctrinal | Doctrina GMB Crush | §27 |
| 13.11 | Checklist final del Paso 13 | Checklist | Doctrina GMB Crush | §52 |
| 13.12 | Outputs del Paso 13 | Lista declarativa | Doctrina GMB Crush | §53 |

## Obtención de Outputs

<small>§6</small>

> Esta sección es donde la IA produce cada uno de los 12 outputs (13.1–13.12). Cada output usa el patrón estándar adaptado al SOP: Explicación / Sección / Ejemplo Cerrajeros / Ejemplos incorrectos / Regla / Validación / Cómo se obtiene / Output del paso.

### 13.1 — Resumen ejecutivo del sistema

<small>§6.1</small>

**Explicación**

Sección de apertura del SOP: principio final de arquitectura, fórmula final base y aplicación al cliente. Resume el estado del cluster antes de abrir el resto del documento.

**Sección**

Ver §4 sub-sección 13.1.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Resumen con S=5, A=1, G=3, total 28 SEO base + auxiliar /contacto/.

**Ejemplos incorrectos**

```text
- Resumen sin GBP Status (no se sabe si web-first)
- Resumen que mezcla Local Coverage Areas con URLs base
- Resumen sin fórmula final base
```

**Regla final**

```text
El resumen abre el SOP con principio, fórmula y aplicación.
```

**Validación operativa**

Cruce con Sistema 1 (Intake) y Sistema 2 (Fórmula).

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Plantilla con principio (§20), fórmula (§21) y aplicación (§22).

**Output del paso**

- **Tipo:** Sección summary del SOP.
- **Ejemplo (Cerrajeros Madrid 24h):** principio + fórmula + aplicación = 28 páginas SEO base.

### 13.2 — 12 Sistemas

<small>§6.2</small>

**Explicación**

Lista doctrinal de los 12 sistemas que componen el cuerpo operativo del Paso 13. Cada sistema tiene Patrón y Regla final literales del original.

**Sección**

Ver §4 sub-sección 13.2.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Los 12 sistemas aplicados al cluster: Intake recoge servicios y LCAs; Fórmula calcula 1+5+1+5+1+15=28; Matriz convierte en filas; URL Rules fija /cerrajero/madrid/service/; etc.

**Ejemplos incorrectos**

```text
- Saltar un sistema (la cadena se rompe)
- Mezclar patrones de sistemas distintos
- Reescribir la regla final ("la base usa C = N target cities")
```

**Regla final**

```text
Los 12 sistemas se ejecutan en orden y cada uno tiene Patrón + Regla literal.
```

**Validación operativa**

Cruce con §7–§18 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §7–§18.

**Output del paso**

- **Tipo:** Lista doctrinal de 12 sistemas.
- **Ejemplo (Cerrajeros Madrid 24h):** 12 sistemas aplicados al cluster.

### 13.3 — 7 Módulos A-G

<small>§6.3</small>

**Explicación**

Lista doctrinal de los 7 módulos A-G que cubren entidad, servicios core, categorías adicionales, cobertura local, expansión aprobada, schema y tracking.

**Sección**

Ver §4 sub-sección 13.3.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Módulo A: Cerrajeros Madrid 24h + Cerrajero + Madrid; Módulo B: Cerrajero urgente → SO + LBS; Módulo C: Duplicado de llaves → /cerrajero/madrid/duplicado-llaves/; Módulo D: Almagro/Chamberí/Salamanca/Retiro mencionadas naturalmente; Módulo E: None in Phase 1; Módulo F: LBS → LocalBusiness with areaServed; Módulo G: GMB Crush + GSC + GA4.

**Ejemplos incorrectos**

```text
- Crear páginas sin GBP category (rompe Módulo A)
- Servicio agrupado en página general (rompe Módulo B)
- Coverage URLs by default (rompe Módulo D)
- Tracking stack distinto a GMB Crush + GSC + GA4
```

**Regla final**

```text
Los 7 módulos cubren entidad → servicios → categorías → cobertura → expansión → schema → tracking.
```

**Validación operativa**

Cruce con §29–§35 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §29–§35.

**Output del paso**

- **Tipo:** Lista doctrinal de 7 módulos.
- **Ejemplo (Cerrajeros Madrid 24h):** 7 módulos aplicados al cluster.

### 13.4 — 16 Reglas operativas

<small>§6.4</small>

**Explicación**

Lista de las 16 Reglas operativas del SOP. Cada regla tiene Explicación, Patrón, Ejemplo correcto, Ejemplos incorrectos y Regla final en el original.

**Sección**

Ver §4 sub-sección 13.4.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Las 16 reglas operan sobre el cluster: la entidad manda sobre la arquitectura; la base se construye alrededor de Madrid; LCAs viven en contenido; Approved Expansion (None in Phase 1) requiere aprobación.

**Ejemplos incorrectos**

```text
- Reescribir regla con texto inventado
- Saltar Regla operativa 14 (no negociables)
- Inventar regla 17 fuera del catálogo del original
```

**Regla final**

```text
Las 16 reglas operativas son literales del §36–§51 del original.
```

**Validación operativa**

Cruce con §36–§51 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar Patrón + Regla final desde §36–§51.

**Output del paso**

- **Tipo:** Lista doctrinal de 16 reglas.
- **Ejemplo (Cerrajeros Madrid 24h):** 16/16 reglas aplicadas.

### 13.5 — Workflow operativo de 21 pasos

<small>§6.5</small>

**Explicación**

Workflow ordenado que la IA y el operador siguen para producir el cluster. Va desde recoger inputs hasta considerar expansión opcional.

**Sección**

Ver §4 sub-sección 13.5.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Cerrajeros Madrid 24h ejecuta los 21 pasos: recoger inputs → validar entidad → clasificar servicios → identificar LCAs → calcular fórmula (28) → crear matriz → aplicar reglas → producir contenido → QA → publicar → medir → optimizar.

**Ejemplos incorrectos**

```text
- Saltar paso 17 (QA) antes de publicar
- Producir contenido (paso 16) antes de matriz (paso 8)
- Considerar expansión (paso 21) antes de medir (paso 19)
```

**Regla final**

```text
El workflow se ejecuta en orden y cada paso depende de los anteriores.
```

**Validación operativa**

Cruce con §25 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §25.

**Output del paso**

- **Tipo:** Sección procedimental de 21 pasos.
- **Ejemplo (Cerrajeros Madrid 24h):** 21 pasos ejecutados en orden.

### 13.6 — Carpetas recomendadas del repo

<small>§6.6</small>

**Explicación**

Estructura recomendada de carpetas del repo del cliente. El original define `docs/01-... 02-...` con un archivo por paso del sistema.

**Sección**

Ver §4 sub-sección 13.6.

**Ejemplo correcto con Cerrajeros Madrid 24h**

`docs/` con 13 archivos: `01-intake-form.md`, `02-formula-maestra-arquitectura.md`, ..., `13-sistema-final-operativo.md`.

**Ejemplos incorrectos**

```text
- Estructura sin numeración (caos de orden)
- Archivos en raíz sin carpeta docs/
- Mezclar pasos del sistema con otros docs
```

**Regla final**

```text
La estructura es `docs/01-... 02-... 13-...` con un archivo por paso del sistema.
```

**Validación operativa**

Cruce con §26 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Capturar literal desde §26.

**Output del paso**

- **Tipo:** Sección operacional con árbol de carpetas.
- **Ejemplo (Cerrajeros Madrid 24h):** árbol `docs/` con 13 archivos numerados.

### 13.7 — Tabla inventario URL con Priority Score

<small>§6.7</small>

**Explicación**

Tabla N+1 filas con todas las URLs del cluster + su Priority Score. Es la vista única que el operador consulta para priorizar producción.

**Sección**

Ver §4 sub-sección 13.7.

**Ejemplo correcto con Cerrajeros Madrid 24h**

28 URLs SEO base con scores 100/95/92/.../70/68/65/...; /contacto/ marcado como auxiliar sin score SEO. Homepage = 100, GeoHub /madrid/ = 95, LBS /cerrajero/madrid/cerrajero-urgente/ = 92.

**Ejemplos incorrectos**

```text
- Inventar scores distintos a los del original (100/95/92/...)
- Omitir /contacto/ del inventario
- Total ≠ 28 SEO base + 1 auxiliar
```

**Regla final**

```text
Cada URL SEO del inventario base debe tener prioridad asignada.
```

**Validación operativa**

Cruce con §54.2 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Tabla literal desde §54.2.

**Output del paso**

- **Tipo:** Tabla N+1 filas (28+1).
- **Ejemplo (Cerrajeros Madrid 24h):** 28 SEO base con scores + 1 auxiliar.

### 13.8 — Calendario de producción de 7 fases

<small>§6.8</small>

**Explicación**

Calendario de 7 fases (Semana 1-2 a Semana 7-8) que cubre estructura base, servicios core, Service Overview Pages, GeoArticles lotes 1-3 y la creación del GBP en Fase 7.

**Sección**

Ver §4 sub-sección 13.8.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Fase 1: HP + /contacto/ + GH + 2 LBS. Fase 2: 3 LBS + 1 AC. Fase 3: 5 SO. Fases 4-6: 15 GAs en lotes de 5. Fase 7: Paso 14 GBP.

**Ejemplos incorrectos**

```text
- 5 fases en lugar de 7
- GBP creation antes de Fase 7
- GAs antes de LBS hijos
```

**Regla final**

```text
El calendario debe cubrir todo el inventario base o declararse como calendario parcial.
```

**Validación operativa**

Cruce con §54.4 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §54.4.

**Output del paso**

- **Tipo:** Calendario de 7 fases.
- **Ejemplo (Cerrajeros Madrid 24h):** 7 fases × ~8 semanas con todas las URLs distribuidas.

### 13.9 — Output final que debe producir el sistema

<small>§6.9</small>

**Explicación**

Lista de los 13 elementos que el sistema debe producir al cierre: ficha del negocio, fórmula, URL Matrix, page type rules, content architecture, schema map, internal linking, priority, publishing, QA, tracking, optimization queue, expansion plan opcional.

**Sección**

Ver §4 sub-sección 13.9.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Los 13 elementos rellenos para Cerrajeros: ficha completa con NAP, fórmula 28, URL Matrix con 29 URLs, etc.

**Ejemplos incorrectos**

```text
- Saltar Tracking Plan (sin medición)
- Saltar Optimization Queue (sin loop)
- Inventar elemento 14 fuera del original
```

**Regla final**

```text
El sistema produce 13 elementos (12 obligatorios + 1 opcional Expansion Plan).
```

**Validación operativa**

Cruce con §28 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §28.

**Output del paso**

- **Tipo:** Lista declarativa de 13 elementos.
- **Ejemplo (Cerrajeros Madrid 24h):** 13/13 elementos producidos.

### 13.10 — Relación con el Paso 14

<small>§6.10</small>

**Explicación**

Sección doctrinal que separa lo que entrega el Paso 13 (web operativa) de lo que ejecuta el Paso 14 (creación del GBP).

**Sección**

Ver §4 sub-sección 13.10.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Paso 13 entrega: HP, SO, /madrid/, LBS, schema sin sameAs, QA aprobado. Paso 14 ejecuta: creación del GBP, categoría Cerrajero, servicios del perfil, actualización de sameAs.

**Ejemplos incorrectos**

```text
- Tratar el Paso 13 como si ya existiera GBP.
- Cerrar el sistema sin plan para crear el GBP.
- Añadir Google reviews o GBP URL antes del Paso 14.
```

**Regla final**

```text
El sistema web termina en el Paso 13; la entidad GBP se crea y sincroniza en el Paso 14.
```

**Validación operativa**

Cruce con §27 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §27.

**Output del paso**

- **Tipo:** Sección doctrinal.
- **Ejemplo (Cerrajeros Madrid 24h):** entregables de Paso 13 + ejecutables de Paso 14.

### 13.11 — Checklist final del Paso 13

<small>§6.11</small>

**Explicación**

Checklist de 13 preguntas que valida el cierre del Paso 13: 14 pasos, Main City, Local Coverage, Expansion, Formula, Matrix, Content, Links, Score, QA, Phases, Prompt, Output.

**Sección**

Ver §4 sub-sección 13.11.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Las 13 preguntas respondidas en ✅ tras el cierre del cluster.

**Ejemplos incorrectos**

```text
- Saltar la pregunta de Local Coverage
- Inventar pregunta 14 fuera del original
- Cerrar el Paso 13 sin la checklist en ✅
```

**Regla final**

```text
El Paso 13 no se cierra sin las 13 preguntas en ✅.
```

**Validación operativa**

Cruce con §52 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §52.

**Output del paso**

- **Tipo:** Checklist 13 preguntas.
- **Ejemplo (Cerrajeros Madrid 24h):** 13/13 ✅.

### 13.12 — Outputs del Paso 13

<small>§6.12</small>

**Explicación**

Lista de los 8 outputs declarados del Paso 13 según §53 del original: SOP final de 14 pasos, índice definitivo, fórmula final base, arquitectura aplicada, workflow operativo, reglas no negociables, checklist final, output final esperado.

**Sección**

Ver §4 sub-sección 13.12.

**Ejemplo correcto con Cerrajeros Madrid 24h**

Los 8 outputs producidos para Cerrajeros: SOP completo, índice de 14 pasos, fórmula 28, arquitectura aplicada, workflow de 21 pasos, 16 reglas operativas, checklist 13 preguntas, output final con 13 elementos.

**Ejemplos incorrectos**

```text
- Producir el SOP sin la arquitectura aplicada al cliente
- Saltar el output "checklist final"
- Inventar output 9 fuera del original
```

**Regla final**

```text
El Paso 13 produce los 8 outputs declarados en §53 del original.
```

**Validación operativa**

Cruce con §53 del original.

**Cómo se obtiene**

- **Fuente:** Doctrina GMB Crush.
- **Método:** Compilar literal desde §53.

**Output del paso**

- **Tipo:** Lista declarativa de 8 outputs.
- **Ejemplo (Cerrajeros Madrid 24h):** 8/8 outputs producidos.

## Checklist Final

<small>§7</small>

> Validación operativa antes de cerrar el Paso 13 y avanzar al Paso 14 (GBP Creation).

### Validación doctrinal

- ☐ Resumen ejecutivo con principio + fórmula + aplicación (13.1)
- ☐ 12 Sistemas literales (13.2)
- ☐ 7 Módulos A-G literales (13.3)
- ☐ 16 Reglas operativas literales (13.4)

### Validación operativa

- ☐ Workflow de 21 pasos (13.5)
- ☐ Carpetas recomendadas `docs/01-...` (13.6)
- ☐ Tabla inventario URL con scores 100/95/92/... (13.7)
- ☐ Calendario de 7 fases (13.8)

### Validación de cierre

- ☐ Output final con 13 elementos (13.9)
- ☐ Relación con el Paso 14 documentada (13.10)
- ☐ Checklist final del Paso 13 con 13 preguntas (13.11)
- ☐ 8 Outputs del Paso 13 producidos (13.12)

## Outputs Consolidados

<small>§8</small>

> Tabla final compacta con la trazabilidad row-per-output. Los IDs (`13.1`–`13.12`) coinciden con los declarados en §5. Esta tabla es la fuente única de la trazabilidad consolidada del paso.

| ID | Hereda de (original) | Output y valor (Cerrajeros Madrid 24h) | Cómo se obtiene + Fuente | Status |
|---|---|---|---|---|
| 13.1 | ← §3 + §20 + §21 + §22 | **Resumen ejecutivo** = principio + fórmula 1+S+1+S+A+G×S + aplicación 1+5+1+5+1+15=28 | Plantilla con principio, fórmula y aplicación. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.2 | ← §7–§18 | **12 Sistemas** = Intake / Fórmula / Matriz / URL Rules / Page Type / Content / Linking / Priority / QA / Producción / Pseudocódigo / Master Prompt | Compilar literal desde §7–§18. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.3 | ← §29–§35 | **7 Módulos A-G** = Entidad / Servicios core / Categorías adicionales / Cobertura local / Expansión / Schema / Tracking | Compilar literal desde §29–§35. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.4 | ← §36–§51 | **16 Reglas operativas** = entidad / Main City / matriz / page type / LCAs / linking / schema / priority / QA / fases / tracking / expansion / IA / no negociables / documentación / fuente única | Compilar literal desde §36–§51. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.5 | ← §25 | **Workflow operativo de 21 pasos** = recoger inputs → validar → clasificar → identificar → calcular → crear matriz → aplicar reglas → producir → QA → publicar → medir → optimizar → expansión | Compilar literal desde §25. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.6 | ← §26 | **Carpetas recomendadas** = `docs/` con 13 archivos `01-... 13-...` | Capturar literal desde §26. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.7 | ← §54.2 | **Tabla inventario URL** = 28 URLs SEO base con scores 100/95/92/.../70/68/65/... + /contacto/ auxiliar | Tabla literal desde §54.2. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.8 | ← §54.4 | **Calendario de 7 fases** = Fase 1 (Sem 1-2 estructura base) / Fase 2 (servicios core) / Fase 3 (SO) / Fases 4-6 (GAs lotes 1-3) / Fase 7 (GBP) | Compilar literal desde §54.4. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.9 | ← §28 | **Output final con 13 elementos** = ficha / fórmula / URL Matrix / Page Type / Content / Schema / Linking / Priority / Publishing / QA / Tracking / Optimization / Expansion | Compilar literal desde §28. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.10 | ← §27 | **Relación con el Paso 14** = Paso 13 entrega web operativa; Paso 14 crea GBP y sincroniza sameAs | Compilar literal desde §27. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.11 | ← §52 | **Checklist final** = 13 preguntas (14 pasos / Main City / Local Coverage / Expansion / Formula / Matrix / Content / Links / Score / QA / Phases / Prompt / Output) | Compilar literal desde §52. **Fuente:** Doctrina GMB Crush. | confirmed |
| 13.12 | ← §53 | **8 Outputs del Paso 13** = SOP final / índice / fórmula / arquitectura aplicada / workflow / reglas / checklist / output final | Compilar literal desde §53. **Fuente:** Doctrina GMB Crush. | confirmed |

# Bloque IV — Fuentes Internas GMB Crush usadas

## Fuentes internas GMB Crush usadas

<small>§9</small>

- Analysis Framework.pdf
- GMB CRUSH Universal AI Local SEO Framework Template
- Website Homepage AI Optimization Prompts/Framework
- Service Pages AI Optimization Prompts/Framework
- Location Pages AI Optimization Prompts/Framework
- GeoHub Pages AI Framework
- GeoArticle Pages AI Framework
- Additional Categories Pages AI Framework
- Sistema Final Operativo SOP Framework

> **Nota importante — SOP como cierre del sistema web:**
> El Paso 13 cierra el sistema **antes de la creación efectiva del GBP** (Paso 14). Después del Paso 14, el SOP se actualiza para reflejar que el GBP existe (sameAs activable, reseñas Google referenciables, GMB Crush Grid configurable). Hasta entonces, el sistema opera en modo web-first y el SOP refleja ese estado.
