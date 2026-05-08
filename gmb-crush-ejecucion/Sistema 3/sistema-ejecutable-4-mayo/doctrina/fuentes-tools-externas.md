# Fuentes con tools externas

> Las 3 fuentes que requieren ejecutar una tool externa (Local Pack, Keyword Research, Google Search). Todas combinadas con doctrina (la doctrina filtra/interpreta el dato bruto de la tool).

---

## 1. `Doctrina + Local Pack`

### Qué es

Doctrina dicta cómo interpretar el dato bruto del Local Pack. Incluye casos donde la doctrina no aporta criterio (son Local Pack puro).

### Tool / método

```
1. Abrir Google Maps (sesión limpia, sin login, sin cookies de búsquedas previas)
2. Buscar `[servicio principal] [Main City]`
   Ejemplo: `reforma de baños Madrid`
3. Mirar los TOP 5 GBP que salen en el Local Pack (los de la búsqueda Google, no los del Maps de la izquierda)
4. Extraer de cada uno:
   - Categoría primaria GBP
   - Categorías secundarias
   - Servicios listados
   - Áreas / barrios mencionados (areaServed)
   - Trust signals visibles (años, reseñas, fotos, certificaciones)
   - CTA dominante (Llamar / Reservar / Web)
   - Volumen de reseñas
5. Repetir en Sevilla y Barcelona (o las 2-3 ciudades benchmark del cliente)
   - Madrid → datos del cliente
   - Sevilla, Barcelona → benchmark sectorial cruzado
```

### Threshold de extracción

**Top 5 perfiles** del Local Pack (no top 3, no top 10). Doctrina del original.

### Aplicación de doctrina por output

| Output | Aplicación de doctrina |
|---|---|
| 1.5 Primary GBP Category | Categoría más repetida en top 5 → es la del cliente |
| 1.6 Additional Categories | Categorías secundarias frecuentes en top 5 → clasificar (cubierta por SO o página propia AC) |
| 1.9 Servicios principales (S=5) | Top 5 servicios por frecuencia en top 5 perfiles + cruce con oferta real del cliente |
| 1.10 Candidate LCAs | Áreas declaradas en `areaServed` por ≥ 2 competidores top |
| 1.13 Preferred CTA | CTA dominante del top 5 según urgencia del servicio |
| 1.14 Trust Signals | Trust signals presentes en ≥ 3 perfiles top 5 (threshold 3+) |
| 8.4 GBP Category Relevance | Cruce categorías declaradas (1.5+1.6) vs Local Pack (escala 1-5) |
| 8.6 Competition Gap | Análisis SERP visual top 10 organic + top 5 local pack |
| 14.6 Categorías adicionales confirmadas | Cada Additional necesita soporte web real o se descarta |
| 14.10 Descripción GBP | Patrón doctrinal + benchmarking top 5 GBPs |
| 14.12 Plan de Q&A | Preguntas extraídas de Auto-Suggest + PAA + Local Pack competidores |
| 14.14 Estrategia reseñas | Benchmarking top 5 GBP (volumen, frecuencia, patrones respuesta) |

### Outputs sin criterio doctrinal (Local Pack puro)

```
- 8.6 Competition Gap (componente SERP visual)
- 8.4 GBP Category Relevance (componente cruce)
- 14.6 (cuando solo es validación de soporte web)
```

Total: **13 outputs** (9 con criterio + 3 sin + 1 mixto).

---

## 2. `Doctrina + Keyword Research`

### Qué es

Doctrina dicta cómo filtrar e interpretar los datos de búsqueda de tools KW.

### Tool / método

```
1. Abrir Ahrefs / Semrush / Google Keyword Planner
2. Filtrar por intent (transaccional / informacional / navegacional)
3. Validar volumen mensual
4. Validar dificultad SERP top 10
5. Aplicar criterio doctrinal del paso
```

### Aplicación de doctrina por output

| Output | Aplicación de doctrina |
|---|---|
| 3.4 GeoArticle Topics | KW research por core service + filtrar por intent informacional GEO + validar volumen → 15 topics (G×S=3×5) |
| 8.3 Search Intent | KW research por URL → calcular % queries transaccionales (escala 1-5) |
| 8.6 Competition Gap | KW research → DR/UR top 10 SERP por query |
| 14.13 Plan de posts GBP | KW research transaccional para temas mensuales |

### Outputs sin criterio doctrinal (KW puro)

```
- 8.3 Search Intent (cálculo % directo, sin filtro doctrinal adicional)
- 8.6 Competition Gap (componente DR/UR)
- 14.13 (selección queries trans)
```

Total: **4 outputs** (1 con criterio + 3 sin).

### Si NO se ejecuta KW research

Los 4 outputs quedan `⚠ inferido`. La IA estima palabras razonables del sector. Antes de cerrar `pendientes.md`, el operador ejecuta KW real y promueve a `validated`.

---

## 3. `Doctrina + Google Search`

### Qué es

Dato extraído de búsqueda directa en Google (SERP completo: anuncios + orgánicos + AI Overview + related searches + PAA + snippets).

### Tool / método

```
1. Abrir Google.com (sesión limpia, sin cookies)
2. Buscar `[query]`
3. Leer SERP completo:
   - Anuncios (qué se promociona)
   - Top 10 orgánicos
   - AI Overview (si aparece)
   - Related searches (queries relacionadas)
   - PAA (People Also Ask)
   - Snippets enriquecidos (FAQPage, HowTo, Review)
4. Extraer datos cualitativos
```

### Aplicación de doctrina por output

| Output | Aplicación de doctrina |
|---|---|
| 8.2 Revenue Value (R) | Análisis SERP + ticket aproximado del sector + benchmark sectorial → escala 1-5 |

### Outputs sin criterio doctrinal (GS puro)

```
- 8.2 Revenue Value (estimación de mercado, sin filtro doctrinal)
```

Total: **1 output**.

### Si NO se ejecuta Google Search real

Output queda `⚠ inferido`. La IA estima el ticket medio del sector. Operador valida con datos económicos reales del cliente cuando estén.

---

## Cuándo usarlas (mapping bloque → tool)

| Bloque | Tool | Outputs afectados |
|---|---|---|
| Bloque 1 Fundamentos | Local Pack (3 ciudades) | 1.5, 1.6, 1.9, 1.10, 1.13, 1.14 |
| Bloque 1 Fundamentos | Keyword Research | 3.4 GeoArticle Topics |
| Bloque 3 Priorización | Google Search + Local Pack + KW | 8.2, 8.3, 8.4, 8.6 |
| Bloque 7 GBP | Local Pack (segunda pasada) | 14.6, 14.10, 14.12, 14.14 |
| Bloque 7 GBP | KW Research | 14.13 |

---

## Decisión: ejecutar o inferir

Cuando arrancas un cliente, decides en `02 IA valida ejecutar/precheck-cliente.md`:

| Tool | Default sistema v2 | Cuándo se infiere |
|---|---|---|
| Local Pack | **Ejecutar** (es la fuente más crítica) | Solo si no hay Google Maps disponible |
| Keyword Research | **Inferir** (no tengo Ahrefs/Semrush) | Default — operador resuelve antes de Bloque 6 |
| Google Search | **Ejecutar** (es solo navegador) | Casi nunca se infiere |

### Si decides inferir

Status del output → `⚠ inferido`. Cuando se cierre el cliente Bloque 5 → entra a `pendientes.md`. Antes de Bloque 7, el operador ejecuta la tool real y promueve a `validated`.

---

## Implementación

```
scripts/local-pack-extract.ts
  → input: query + ciudad
  → output: JSON con top 5 perfiles (categoría, servicios, áreas, trust, CTA, reviews)

scripts/serp-extract.ts
  → input: query
  → output: JSON con top 10 organic + AI Overview + PAA + Related

scripts/kw-research-import.ts
  → input: CSV exportado de Ahrefs/Semrush
  → output: JSON normalizado (kw, volumen, intent, dificultad)
```

Ninguno de estos scripts hace HTTP scraping de Google directamente (anti-bot detection). El operador hace la búsqueda en navegador real, exporta CSV o pega resultados, y los scripts normalizan a JSON.
