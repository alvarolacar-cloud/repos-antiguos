# Fuente 06 — `Doctrina + Keyword research`

> **Qué es:** doctrina dicta cómo filtrar e interpretar los datos de búsqueda. **Incluye outputs donde la doctrina no aporta criterio** (marcados explícitamente como "la doctrina no aporta en este output" — son Keyword research puro).
> **Tool / método:** Ahrefs / Semrush / Google Keyword Planner → filtrar por intent + validar volumen + dificultad SERP top 10 + aplicar criterio doctrinal del paso cuando aporte.

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya `Fuente` incluye `Doctrina + Keyword research`, con el detalle completo de cada output. Tras la unificación de fuentes (eliminado `Keyword research` standalone), TODOS los usos de KR viven aquí.

---

## Outputs donde la doctrina aporta criterio (1 output)

### 3.4 GeoArticle Topics propuestos
- **Qué es:** lista de G×S topics para los GeoArticles (uno por combinación service × geo intent).
- **Para qué sirve:** alimenta 5.6 Spec GA, 6.11 GA Content Architecture, 15.8 GAs redactados.
- **Dato que buscamos:** `[topics filtrados por intent GEO + volumen ≥ threshold doctrinal + cruce con core services]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos keyword research por cada core service, filtramos las queries con intent GEO y validamos que tienen volumen suficiente. La doctrina dicta el threshold de volumen mínimo.
  - **Fuente:** `Doctrina + Keyword research`.
  - **Método:** Keyword research (Ahrefs/Semrush/KP) por core service → filtrar intent GEO + validar volumen mínimo doctrinal.

---

## Outputs donde la doctrina NO aporta criterio (3 outputs)

> Eran `Keyword research` standalone antes de la unificación. Conservan la nota explícita "la doctrina no aporta en este output".

### 8.3 Search Intent
- **Qué es:** score 1-5 — % queries transaccionales / informacionales del servicio.
- **Para qué sirve:** factor I del Priority Score.
- **Cómo se asigna:**
  - **5** → ≥80% queries transaccionales del servicio.
  - **3** → mix balanceado.
  - **1** → ≥80% queries informacionales.
- **Dato que buscamos:** `[% queries transaccionales del servicio en Main City según KR]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos keyword research por servicio y calculamos el porcentaje de queries con intent transaccional.
  - **Fuente:** `Doctrina + Keyword research` — **la doctrina no aporta en este output** (cálculo directo de % sin filtro doctrinal).
  - **Método:** Ahrefs/Semrush para clasificación intent + cálculo de %.

### 8.6 Competition Gap
- **Qué es:** score 1-5 — fortaleza del top 10 SERP por keyword (oportunidad de rankear).
- **Para qué sirve:** factor C del Priority Score.
- **Cómo se asigna:**
  - **5** → top 10 débil (DR <30 promedio + URLs poco optimizadas) → alta oportunidad.
  - **3** → competencia media.
  - **1** → top 10 muy fuerte (DR >70 + grandes marcas) → baja oportunidad.
- **Dato que buscamos:** `[DR/UR promedio top 10 SERP del keyword]` + `[fortaleza on-page de top 3]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos análisis SERP manual de los top 10 + miramos DR/UR en Ahrefs + evaluamos fortaleza on-page de los top 3.
  - **Fuente:** `Doctrina + Local Pack + Doctrina + Keyword research` — la doctrina aporta para la parte Local Pack (interpretación competidores) pero **no aporta para la parte KR** (DR/UR son inputs cuantitativos directos).
  - **Método:** SERP analysis manual + DR/UR Ahrefs + inspección on-page top 3.

### 14.13 Plan de posts
- **Qué es:** plan de Posts del GBP (URLs P1/P2 + queries transaccionales por URL + frecuencia).
- **Para qué sirve:** estrategia de Posts post-launch.
- **Dato que buscamos:** `[plan de posts: URLs target + queries + frecuencia + CTA]`.
- **Hereda info de pasos anteriores:** 8.X Priority Score.
- **Cómo se obtiene:** Aplicamos §24: identificamos URLs P1/P2 + queries transaccionales por URL + definimos frecuencia.
  - **Fuente:** `Doctrina + Keyword research` — **la doctrina no aporta en este output** (§24 solo dicta el método general).
  - **Método:** URLs P1/P2 + KR para queries transaccionales + cadencia doctrinal.

---

## Resumen

- **Total outputs con `Doctrina + Keyword research`:** 4
- Doctrina aporta criterio: 1 (3.4)
- **Doctrina no aporta** (KR puro): 3 (8.3, 8.6, 14.13)

**Pasos donde aparece como fuente principal:** 3, 8, 14.

---

## Cómo ejecutar `Doctrina + Keyword research`

1. **Ejecutar Keyword research** (procedimiento canónico):
   - **Tool:** Ahrefs / Semrush / Google Keyword Planner
   - **Seed:** core services del cliente (Paso-01 1.9) + Main City (Paso-01 1.7)
   - **Datos por keyword:**
     - Volumen mensual (Spain o país objetivo)
     - Intent (informational / navigational / transactional / commercial)
     - Keyword Difficulty (KD)
     - SERP top 10 dominios + DR/UR de los top 3
     - Variaciones (long-tail, GEO modifiers, sinónimos)
2. **Verificar si la doctrina aporta criterio** para el output:
   - **Sí aporta** (1 output):
     - 3.4: doctrina dice "filtrar por intent GEO (queries con `[main-city]` o LCA en el patrón) + validar volumen ≥ threshold doctrinal + cruzar con core services del cliente"
   - **No aporta** (3 outputs marcados):
     - 8.3: cálculo directo de % queries transaccionales
     - 8.6: SERP analysis y DR/UR son inputs cuantitativos sin filtro doctrinal en la parte KR
     - 14.13: §24 dicta el método general (URLs P1/P2 + queries transaccionales) pero no añade filtro específico
3. **Output canónico:** dato de KR interpretado según la regla doctrinal del paso (cuando aplique) o usado tal cual (cuando la doctrina no aporte).

> Si la IA no puede ejecutar tool de KR real, marca el output con Status `⚠ inferido` (no cambia la Fuente).

---

## Diferencia con otras fuentes Google

| Fuente | Qué hace | Para qué outputs |
|---|---|---|
| `Doctrina + Local Pack` (#5) | Google **Maps** → top 5 perfiles | 1.5, 1.6, 1.9, 1.10, 1.13, 1.14, 8.4, 14.6, 14.10, 14.12, 14.14, 19.3 + 8.6 (mixto) |
| `Doctrina + Keyword research` (esta) | Tools (Ahrefs/Semrush/KP) → métricas estructuradas | 3.4, 8.3, 8.6, 14.13 |
| `Doctrina + Google Search` (#8) | Google **search** → leer SERP completo | 8.2 |
