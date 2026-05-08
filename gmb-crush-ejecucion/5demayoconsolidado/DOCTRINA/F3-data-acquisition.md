# Fase 3 — Data Acquisition

> **Qué es:** la IA recolecta los **9 outputs pre-build** que requieren herramientas externas, en una sola pasada antes de aplicar la doctrina (Fase 4).
>
> **Por qué solo 9:** de los 242 outputs declarados, solo estos 9 tienen Fuente declarada `Doctrina + Local Pack` o `Doctrina + Keyword Research`. Los demás son determinísticos (Fase 1 input + Fase 4 encaje).

---

## Los 9 outputs (pre-build)

### Local Pack — Google Maps (7 outputs)

| ID | Nombre | Output esperado |
|---|---|---|
| **1.5** | Planned Primary GBP Category | Categoría GBP exacta validada (ej. "Bathroom remodeler") |
| **1.6** | Planned Additional GBP Categories | Lista de categorías secundarias con `needs_page` flag |
| **1.9** | Servicios principales (Variable S) | Lista de servicios core (S=3-7 normalmente) |
| **1.10c** | Candidate LCAs (validables con test GEO) | Barrios/zonas que aparecen en el Local Pack como candidates |
| **1.14** | Trust Signals | 3-5 frases que aparecen en GBP de competidores top |
| **8.4** | GBP Category Relevance | Score de cada servicio frente a la categoría primaria |
| **8.6** | Competition Gap | Score de huecos en el Local Pack para Main City |

### Keyword Research — Ahrefs / Semrush / KP (2 outputs)

| ID | Nombre | Output esperado |
|---|---|---|
| **3.4** | GeoArticle Topics propuestos | Lista de topics long-tail por servicio (G·S total) |
| **8.3** | Search Intent | Clasificación informacional / comercial / navegacional por keyword |

---

## Procedimiento detallado

### 🔹 Local Pack (Google Maps top 5 competidores)

**Tool:** Google Maps en navegador. Si tienes `claude-in-chrome` MCP, perfecto. Si no, WebFetch a URL de Google Maps + búsqueda manual.

**Query:** `[categoría primaria estimada] [Main City]`

Ej.: `bathroom remodeler madrid`

**Procedimiento:**

1. Abre Google Maps con la query
2. Mira los **top 5 resultados del Local Pack** (los que aparecen en el panel lateral)
3. Por cada competidor, anota:
   - Categoría primaria
   - Categorías adicionales (si Google las muestra)
   - Servicios listados en su panel
   - Frases de trust ("X años de experiencia", "garantía 2 años")
   - Zonas mencionadas en su descripción
4. Agrega los datos:
   - **1.5 Primary Category** = la categoría que aparece en ≥3 de 5 competidores → confirmar
   - **1.6 Additional Categories** = categorías que aparecen en ≥2 de 5 competidores → con `needs_page` true si tienen volumen propio
   - **1.9 Servicios** = servicios que aparecen en ≥3 de 5 + alineados con categoría primaria → cliente confirma o ajusta
   - **1.10c Candidate LCAs** = barrios/zonas mencionados con frecuencia → marca candidatas
   - **1.14 Trust Signals** = 3-5 frases más frecuentes (con su frecuencia)
   - **8.4 GBP Category Relevance** = score 1-5 por servicio según alineación con categoría
   - **8.6 Competition Gap** = servicios donde solo 1-2 de 5 competidores compiten → high gap

**Si la tool falla:**

Si no tienes acceso a Google Maps en este momento (sin browser, sin MCP): marca los 7 outputs como `⚠ inferido` con la mejor inferencia basada en la categoría primaria del cliente y notas de la web actual. Proceder.

```json
{
  "id": "1.9",
  "name": "Servicios principales",
  "value": ["reforma-integral-bano", "cambio-banera-por-ducha", "..."],
  "status": "⚠ inferido",
  "fuente": "Doctrina + Local Pack",
  "source": "⚠ inferencia — Local Pack pendiente de ejecutar",
  "notes": "Inferencia basada en web actual del cliente. Cliente debe confirmar."
}
```

### 🔹 Keyword Research

**Tool:** Ahrefs, Semrush, Keyword Planner, o cualquier KW research. Si no tienes ninguna disponible: WebSearch + lectura de SERPs reales.

**Procedimiento:**

1. Por cada servicio core (1.9), genera 3 GeoArticle topics relacionados con la ciudad:
   - "cuánto cuesta [servicio] en [Main City]"
   - "tiempo / duración de [servicio]"
   - "diferencia [variante A] vs [variante B] en [servicio]"
   - "garantía / permisos / etc. para [servicio]"
2. Para cada topic, identifica:
   - **Search Intent** (informacional / comercial / navegacional)
   - Volumen aproximado (si la tool lo da)
   - Dificultad
3. Agrega:
   - **3.4 GeoArticle Topics** = lista de G·S topics (G=3 normalmente, así que con S=5 → 15 topics)
   - **8.3 Search Intent** = clasificación por topic

**Si la tool falla:**

Si no tienes Ahrefs/Semrush: marca outputs como `⚠ inferido` y usa long-tails típicas del nicho. La doctrina lo permite.

---

## Outputs Fase 3 NO incluidos aquí

Los siguientes 6 outputs también tienen Fuente Local Pack o Keyword Research, pero se ejecutan **más tarde** (no en la pasada inicial pre-build):

| ID | Nombre | Cuándo se ejecuta |
|---|---|---|
| 14.12 | Plan de Q&A | Fase 7 (GBP) — después de pendientes cerrados |
| 14.13 | Plan de posts | Fase 7 (GBP) |
| 14.14 | Estrategia de reseñas reales | Fase 7 (GBP) |
| 19.1 | Tablero de vigilancia post-launch | Fase 8 (Post) — ≥30 días post-deploy |
| 19.2 | Estado de los 3 triggers por candidato | Fase 8 (Post) |
| 19.3 | Análisis SERP + decisión | Fase 8 (Post) |

---

## Output esperado al cerrar Fase 3

`CLIENTES/{slug}/outputs.json` debe tener estos 9 outputs con:

```json
{
  "Pre.X": {...},   // Bloque 0 preflight (Fase 1, ya rellenos)
  "1.1": {...},     // Fase 1 (Cliente preflight, ya rellenos)
  ...
  "1.5": {          // Fase 3 — Local Pack
    "id": "1.5",
    "name": "Planned Primary GBP Category",
    "value": "Bathroom remodeler",
    "status": "confirmed",
    "fuente": "Doctrina + Local Pack",
    "source": "Local Pack Madrid 2026-05-05 — top 5 competidores: 4/5 son Bathroom remodeler",
    "hereda_de": [],
    "bloque": 1
  },
  "1.6": {...},     // Fase 3 — Local Pack
  "1.9": {...},     // Fase 3 — Local Pack
  "1.10": {...},    // Fase 3 — Local Pack (Candidate)
  "1.14": {...},    // Fase 3 — Local Pack
  "3.4": {...},     // Fase 3 — Keyword Research
  "8.3": {...},     // Fase 3 — Keyword Research
  "8.4": {...},     // Fase 3 — Local Pack
  "8.6": {...},     // Fase 3 — Local Pack
  // Resto vacío (se rellenará en Fase 4)
}
```

---

## Gate G3 (datos recolectados) — checklist

| Check | Criterio |
|---|---|
| 9 outputs declarados | Los 9 outputs tienen `value` no vacío |
| Status válido | Cada uno con `status` ∈ {`confirmed`, `⚠ inferido`} |
| Source declarada | Cada uno con `source` (URL, query, fecha, fuente concreta) |
| Local Pack documentado | Si se ejecutó: lista los 5 competidores consultados |
| Keyword research documentado | Si se ejecutó: lista la tool usada y queries |
| ⚠ inferidos justificados | Cada `⚠ inferido` tiene `notes` explicando por qué se infirió |

PASS → seguir a Fase 4 (Encaje).
BLOCKED → corregir antes de avanzar.

---

## Por qué esto es mejor

**Antes (v1):**
- Bloque 1 ejecutaba Local Pack para 1.5/1.6/1.9 (3 round-trips)
- Bloque 3 ejecutaba Local Pack para 8.4/8.6 (2 round-trips)
- Bloque 3 ejecutaba Keyword Research para 8.3 (1 round-trip)
- Bloque 5 ejecutaba Keyword Research para 3.4 (1 round-trip)
- Total: ~7 round-trips a tools

**Ahora (v2 Fase 3):**
- 1 pasada coordinada: 1 query Local Pack + 1 sesión Keyword Research → 9 outputs
- Total: 2 round-trips a tools

Reducción: **7 → 2 round-trips**. Más rápido, menos coste, dataset versionable.
