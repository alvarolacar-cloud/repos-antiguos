# Fuente 08 — `Doctrina + Google Search`

> **Qué es:** doctrina dicta cómo interpretar el SERP (Google Search). **Incluye outputs donde la doctrina no aporta criterio** (marcados explícitamente como "la doctrina no aporta en este output" — son Google Search puro).
> **Tool / método:** Google Search en sesión limpia → buscar `[query]` → leer SERP → extraer datos cualitativos (precios visibles, fuentes citadas, snippets, queries relacionadas) + aplicar criterio doctrinal del paso cuando aporte.

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya `Fuente` incluye `Doctrina + Google Search`, con el detalle completo de cada output (qué es, para qué sirve, dato que buscamos, cómo se obtiene). Tras la unificación de fuentes (eliminado `Google Search` standalone), TODOS los usos de Google Search viven aquí.

---

## Outputs (1 total)

### 8.2 Revenue Value
- **Qué es:** score 1-5 que mide el valor económico esperado por página (margen + ticket medio + volumen comercial por servicio).
- **Para qué sirve:** factor R del Priority Score (8.1). Páginas con alto margen + ticket + volumen = 5.
- **Cómo se asigna:**
  - **5** → servicio de alto margen + alto ticket + alto volumen (ej: `Cerrajero urgente Madrid` LBS).
  - **4** → ticket medio-alto sin emergencia (ej: `Cambio de bombines` LBS).
  - **3** → GeoArticle informacional con intención comercial latente.
  - **1** → contenido sin valor económico directo.
- **Dato que buscamos:** `[ticket medio €/intervención del servicio en Main City]` + `[margen bruto % típico del sector]` + `[volumen comercial mensual de queries del servicio en Main City]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales (los 5 core services).
- **Cómo se obtiene:** Buscamos en Google cada servicio para sacar el precio que cobra el sector, el margen típico y cuánto se busca al mes. Con esos 3 datos asignamos un score 1-5 a cada servicio.
  - **Fuente:** `Doctrina + Google Search` — **la doctrina no aporta en este output** (búsquedas directas en Google sin filtro doctrinal).
  - **Método:** AI ejecuta 3 búsquedas: `[servicio] precio [Main City]` para ticket + informes sectoriales para margen + Trends + density del SERP para volumen.

---

## Resumen

- **Total outputs con `Doctrina + Google Search`:** 1
- Doctrina aporta criterio: 0
- **Doctrina no aporta** (Google Search puro): 1 (8.2)

**Pasos donde aparece como fuente principal:** 8.

---

## Cómo ejecutar `Doctrina + Google Search` (procedimiento canónico)

1. **Sesión limpia:** abrir Google con cookies/historial limpios o modo incógnito (evitar personalización del SERP)
2. **Query:** formular la búsqueda con la variable correspondiente (ej: `[servicio] precio [Main City]`)
3. **Leer SERP completo:**
   - **Ads (top + bottom):** competidores pagando → CPC alto = mercado de alto valor
   - **Orgánicos top 10:** páginas que rankean → ¿hay precios visibles? ¿qué tipo de páginas (e-commerce / informacionales / locales)?
   - **AI Overview** (si aparece): texto sintetizado por Google + fuentes citadas
   - **People Also Ask:** queries relacionadas que el usuario suele tener
   - **Related searches** (footer): variaciones de la query
4. **Extraer datos cualitativos** según lo que el output requiera (precio, snippet, fuentes, etc.)
5. **No requiere métricas estructuradas** (volumen exacto, KD) — para eso usar `Doctrina + Keyword research` (#6)

---

## Diferencia con otras fuentes Google

| Fuente | Qué hace | Para qué outputs |
|---|---|---|
| `Doctrina + Local Pack` (#5) | Solo Google **Maps** → top 5 perfiles | 1.5, 1.6, 1.9, 1.10, 1.13, 1.14, 8.4, 14.6, 14.10, 14.12, 14.14, 19.3 + 8.6 (mixto) |
| `Doctrina + Keyword research` (#6) | Tools (Ahrefs/Semrush/KP) → métricas cuantitativas estructuradas | 3.4, 8.3, 8.6, 14.13 |
| `Doctrina + Google Search` (esta) | Google **search** → leer SERP completo, extraer datos cualitativos | 8.2 |

> Cuando un output puede resolverse con cualquiera de las 3, usar la más específica que cumpla el dato. Si necesitas **volumen exacto** → KR. Si necesitas **competidores en Maps** → LP. Si necesitas **ver el SERP completo y leer precios / snippets** → Google Search.

---

## Si la IA no puede ejecutar Google Search

Marca el output con Status `⚠ inferido` (no cambia la Fuente). La IA puede inferir aproximaciones desde su conocimiento general, pero el dato canónico requiere búsqueda real.
