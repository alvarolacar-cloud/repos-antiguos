# Fuente 04 — `Tracking`

> **Qué es:** datos reales de la web ya publicada o decisiones de configuración del stack de tracking.
> **Tool / método:** Google Search Console + GA4 + Rank Tracker + GMB Crush Geo Grid + UTM builder. Para datos post-launch: mínimo 30 días post-deploy.

> **Cómo leer este doc:** lista de TODOS los outputs del sistema cuya `Fuente` incluye `Tracking`, con el detalle completo de cada output (qué es, para qué sirve, dato que buscamos, cómo se obtiene).

---

## Outputs (4 total)

### 1.11 Approved Expansion Areas
- **Qué es:** zonas con URLs propias aprobadas para expansión (default vacío en Phase 1).
- **Para qué sirve:** activa el módulo Optional Expansion (2.10, 4.10, 11.11, 19.5).
- **Dato que buscamos:** `[lista de zonas con URLs aprobadas: vacío por defecto, se rellena post-launch con datos tracking]`.
- **Cómo se obtiene:** En Phase 1 está vacío por defecto. Post-launch (≥30 días con tracking activo), si los datos demuestran demanda real en zonas concretas, se aprueban como expansión.
  - **Fuente:** `Tracking`.
  - **Método:** Default vacío `[]` en Phase 1. Post-launch: revisar GSC + GA4 + Geo Grid → identificar zonas con demanda → aprobar.

### 14.9 URL UTM preparada
- **Qué es:** URL con parámetros UTM (utm_source=gbp, utm_medium=organic, utm_campaign=local).
- **Para qué sirve:** tracking de tráfico desde GBP en GA4.
- **Dato que buscamos:** `[URL UTM sin romper canonical]`.
- **Cómo se obtiene:** Aplicamos §12: añadimos parámetros UTM sin romper canonical (UTM solo en el campo Website del GBP, no en links de la web).
  - **Fuente:** `Tracking`.
  - **Método:** UTM builder + verificar que canonical no se rompe.

### 14.19 Tracking baseline plan
- **Qué es:** plan de tracking baseline para GBP (geo-grid + GSC + GA4 + GBP performance).
- **Para qué sirve:** monitoring del GBP post-verificación.
- **Dato que buscamos:** `[plan tracking: geo-grid + GSC + GA4 + GBP performance + cadencia revisión]`.
- **Hereda info de pasos anteriores:** 19.1 Tablero de vigilancia post-launch.
- **Cómo se obtiene:** Aplicamos §30: configuramos baseline de tracking GBP (geo-grid + GSC + GA4 + GBP performance).
  - **Fuente:** `Tracking`.
  - **Método:** Configurar baseline en cada tool del stack.

### 19.1 Tablero de vigilancia post-launch
- **Qué es:** dashboards configurados (GSC + GA4 + Rank Tracker + Geo Grid + GBP performance).
- **Para qué sirve:** monitorización post-launch + input para 19.2-19.5 + 14.19.
- **Dato que buscamos:** `[dashboards configurados con métricas: impresiones / clicks / posición / cobertura geo]`.
- **Hereda info de pasos anteriores:** 13.8 Calendario 7 fases + 18.7 Sitemap GSC.
- **Cómo se obtiene:** Configuramos dashboards de GSC + GA4 + Rank Tracker + Geo Grid + GBP performance y los revisamos regularmente.
  - **Fuente:** `Tracking`.
  - **Método:** Configurar dashboards en cada tool del stack de tracking.

---

## Resumen

- **Total outputs con `Tracking`:** 4
- Puros: 2 (1.11, 14.9)
- Combinados con herencia: 2 (14.19, 19.1)

**Pasos donde aparece como fuente principal:** 1, 14, 19.

> **Importante sobre Status:**
> - **Setup outputs (14.9, 14.19, 19.1):** se ejecutan pre/post deploy → status `confirmed` cuando dashboards configurados
> - **Data outputs (1.11):** dependen de datos reales post-launch → status `⚠ placeholder` hasta ≥30 días post-deploy con datos suficientes
>
> El status `⚠ placeholder` en 1.11 NO bloquea la cascada del sistema porque el default vacío `[]` permite que outputs downstream (4.10, 7.15, 11.11) se construyan sin Approved Expansion Areas hasta que el operador apruebe expansión.

---

## Stack de tracking canónico

| Tool | Para qué |
|---|---|
| Google Search Console (GSC) | Impresiones / clicks / posición media / queries por URL |
| Google Analytics 4 (GA4) | Tráfico orgánico / conversiones / event tracking |
| Rank Tracker (Ahrefs / SerpApi / GMB Crush propio) | Posición por keyword + ciudad |
| GMB Crush Geo Grid | Cobertura geográfica del ranking (heatmap por puntos) |
| GBP Performance | Métricas del Google Business Profile (calls, directions, website clicks) |
| UTM builder | Tracking de origen de tráfico (utm_source / utm_medium / utm_campaign) |

> Si la IA no tiene acceso al tracking real (por estar pre-launch o por falta de credenciales), marca el output con Status `⚠ inferido` o `⚠ placeholder` según aplique.
