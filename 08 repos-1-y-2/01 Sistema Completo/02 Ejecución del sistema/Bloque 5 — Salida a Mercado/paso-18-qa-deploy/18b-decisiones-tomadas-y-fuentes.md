# Paso 18 — QA y Deploy

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Fuente de la decisión** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` o `← X.YY`.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

---

## Bloque 1 — Auditoría Técnica (16 criterios)

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 18.01 | Se decide validar URLs contra la URL Matrix | 28 URLs SEO + /contacto/ verificadas | Cualquier URL no documentada es un cabo suelto en SEO | GMB Crush | Sí | ← 3.04–3.33 |  Paso-18 §7 |
| 18.02 | Se decide validar canonical en cada página | 29 canonicals correctos | Canonical mal apuntado hereda señales a página equivocada | GMB Crush | Sí | no |  Paso-18 §7 |
| 18.03 | Se decide validar Header con menú del Paso 7 + teléfono Paso 1.14 | Header con menú correcto y teléfono +34 600 000 000 | Header sin teléfono pierde llamada directa desde móvil | GMB Crush | Sí | ← 7.01–7.04, 1.14 |  Paso-18 §7 |
| 18.04 | Se decide validar Footer con NAP del Paso 1 + enlaces del Paso 7 | Footer con NAP completo y enlaces a silos | Footer sin NAP rompe la consistencia local sitewide | GMB Crush | Sí | ← 1.08–1.15, 7.01–7.04 |  Paso-18 §7 |
| 18.05 | Se decide validar que no haya páginas huérfanas | 0 páginas huérfanas | Página huérfana queda fuera del crawl y no rankea | GMB Crush | Sí | no |  Paso-18 §7 |
| 18.06 | Se decide validar Meta Tags únicos por página | 29 títulos únicos, 29 descriptions únicos | Meta duplicado señala canibalización a Google | GMB Crush | Sí | no |  Paso-18 §7 |
| 18.07 | Se decide validar un H1 único por página con keyword principal | 29 H1s únicos con keyword | H1 duplicado o ausente desorienta al crawler sobre el tema | GMB Crush | Sí | no |  Paso-18 §7 |
| 18.08 | Se decide validar Schema Organization + WebSite en Homepage | Organization + WebSite presentes en / | Sin Organization/WebSite, el knowledge graph no entiende la entidad | GMB Crush | Sí | ← 5.18 |  Paso-18 §7 |
| 18.09 | Se decide validar Schema LocalBusiness en Homepage + LBS + GeoHub con NAP del Paso 1 | LocalBusiness en 7 páginas con NAP correcto | LocalBusiness con NAP roto desactiva el Local Pack | GMB Crush | Sí | ← 1.08–1.15 |  Paso-18 §7 |
| 18.10 | Se decide validar Schema Service en SO + AC | Service en 6 páginas | Schema Service desambigua qué se vende en cada SO/AC | GMB Crush | Sí | ← 5.18 |  Paso-18 §7 |
| 18.11 | Se decide validar Schema CollectionPage en GeoHub | CollectionPage en /madrid/ | Sin CollectionPage el GeoHub se interpreta como landing | GMB Crush | Sí | ← 5.18 |  Paso-18 §7 |
| 18.12 | Se decide validar Schema Article + FAQPage en GeoArticles | Article + FAQPage en 15 GeoArticles | Article + FAQPage captan rich results y mejoran CTR | GMB Crush | Sí | ← 5.18 |  Paso-18 §7 |
| 18.13 | Se decide validar Schema BreadcrumbList en todas las páginas | BreadcrumbList en 29 páginas | BreadcrumbList sustituye URL en SERP y mejora claridad | GMB Crush | Sí | ← 5.18 |  Paso-18 §7 |
| 18.14 | Se decide validar sitemap.xml con todas las URLs del Paso 3 | sitemap-index.xml con 29 URLs | Sin sitemap el crawler tarda meses en descubrir el cluster | GMB Crush | Sí | ← 17.29 |  Paso-18 §7 |
| 18.15 | Se decide validar robots.txt | robots.txt correcto | robots.txt mal configurado puede bloquear URLs SEO clave | GMB Crush | Sí | ← 17.30 |  Paso-18 §7 |
| 18.16 | Se decide validar responsive en 375 / 768 / 1280 | Sin desbordamientos en 3 breakpoints | Mayor parte del tráfico local viene desde móvil | GMB Crush | Sí | no |  Paso-18 §7 |

## Bloque 2 — Auditoría de Contenido (8 criterios)

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 18.17 | Se decide validar copy de Homepage contra Paso 15.06–15.09 | Copy Homepage idéntico al aprobado en Paso 15 | Copy en producción debe coincidir con el aprobado | GMB Crush | Sí | ← 15.06–15.09 |  Paso-18 §8 |
| 18.18 | Se decide validar copy de las 5 Service Overview Pages contra Paso 15.11–15.14 | 5 SOs con copy idéntico | Copy en producción debe coincidir con el aprobado | GMB Crush | Sí | ← 15.11–15.14 |  Paso-18 §8 |
| 18.19 | Se decide validar copy de las 5 LBS contra Paso 15.16–15.19 | 5 LBS con copy idéntico | Copy en producción debe coincidir con el aprobado | GMB Crush | Sí | ← 15.16–15.19 |  Paso-18 §8 |
| 18.20 | Se decide validar copy de la Additional Category contra Paso 15.21–15.24 | AC con copy idéntico | Copy en producción debe coincidir con el aprobado | GMB Crush | Sí | ← 15.21–15.24 |  Paso-18 §8 |
| 18.21 | Se decide validar copy del GeoHub contra Paso 15.26–15.29 | GeoHub con copy idéntico | Copy en producción debe coincidir con el aprobado | GMB Crush | Sí | ← 15.26–15.29 |  Paso-18 §8 |
| 18.22 | Se decide validar copy de los 15 GeoArticles contra Paso 15.31–15.34 | 15 GeoArticles con copy idéntico | Copy en producción debe coincidir con el aprobado | GMB Crush | Sí | ← 15.31–15.34 |  Paso-18 §8 |
| 18.23 | Se decide validar puentes narrativos en GeoArticles (3 puntos por artículo) | 15 GeoArticles con 3 puentes cada uno | Sin puentes el tráfico informativo no llega a la LBS | GMB Crush | Sí | ← 15.35 |  Paso-18 §8 |
| 18.24 | Se decide validar NAP consistente en Header, Footer, Contact, schema | NAP único: Cerrajeros Madrid 24h, Calle Rafael Calvo 12, Madrid, +34 600 000 000 | NAP discrepante entre puntos rompe verificación local | GMB Crush | Sí | ← 1.08–1.15 |  Paso-18 §8 |

## Bloque 3 — Auditoría Visual (5 criterios)

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 18.25 | Se decide validar colores contra Design Tokens del Paso 16.18–16.20 | Todos los colores de producción coinciden con tokens | Colores hardcoded fuera de tokens rompen consistencia visual | GMB Crush | Sí | ← 16.18–16.20 |  Paso-18 §9 |
| 18.26 | Se decide validar tipografías contra Design Tokens del Paso 16.18 | font-heading y font-body correctos | Font-family fuera de tokens delata trabajo sin sistema | GMB Crush | Sí | ← 16.18 |  Paso-18 §9 |
| 18.27 | Se decide validar Layout-Map de cada page type contra Paso 16.27–16.32 | 6 page types con layout correcto | Layout que no coincide con Layout-Map indica improvisación | GMB Crush | Sí | ← 16.27–16.32 |  Paso-18 §9 |
| 18.28 | Se decide validar jerarquía Homepage (Servicios Core > AC) | Servicios Core destacados, AC en posición secundaria | AC encima de servicios core distorsiona jerarquía de oferta | GMB Crush | Sí | ← 15.05 |  Paso-18 §9 |
| 18.29 | Se decide validar GeoHub con contenido propio (no solo índice) | GeoHub con introducción + contenido contextual + enlaces | GeoHub índice puro queda como thin content sin valor | GMB Crush | Sí | ← 15.26 |  Paso-18 §9 |

## Bloque 4 — Auditoría de Rastros de IA (6 criterios)

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 18.30 | Se decide validar README.md sin texto del starter kit | README propio o eliminado | README de Astro starter visible delata sitio sin curar | GMB Crush | Sí | ← 17.31 |  Paso-18 §10 |
| 18.31 | Se decide validar comentarios internos sin instrucciones de IA | Sin comentarios "este componente hace X" | Comentarios scaffold filtran origen automatizado del proyecto | GMB Crush | Sí | ← 17.32 |  Paso-18 §10 |
| 18.32 | Se decide validar ausencia de meta generator en HTML | HTML sin `<meta name="generator">` | meta generator declara framework y revela origen automatizado | GMB Crush | Sí | ← 17.33 |  Paso-18 §10 |
| 18.33 | Se decide ejecutar grep limpio de referencias a IA en todo el repo | grep -ri "claude\|chatgpt\|openai\|anthropic" sin matches | Cualquier referencia a IA filtra origen no humano del contenido | GMB Crush | Sí | ← 17.34 |  Paso-18 §10 |
| 18.34 | Se decide validar package.json con nombre real del proyecto | "name": "cerrajeros-madrid-24h" | "astro-starter" en package.json delata sitio sin personalizar | GMB Crush | Sí | ← 17.35 |  Paso-18 §10 |
| 18.35 | Se decide validar commits sin referencias a IA | git log limpio | Commits con "via Claude" filtran origen IA en repo público | GMB Crush | Sí | ← 17.36 |  Paso-18 §10 |

## Bloque 5 — Deploy a Cloudflare Pages

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 18.36 | Se decide conectar el repositorio a Cloudflare Pages | github.com/cliente/cerrajeros-madrid-24h conectado a Cloudflare | Cloudflare Pages da CDN global y SSL gratis sin trade-offs | GMB Crush | Sí | no |  Paso-18 §12.1; Paso-17 §8 |
| 18.37 | Se decide configurar build command `pnpm run build` | Build command: `pnpm run build`, output dir: `dist` | pnpm reduce tiempo de build y tamaño del lockfile vs npm | GMB Crush | Sí | no |  Paso-18 §12.1; Paso-17 §8 |
| 18.38 | Se decide conectar el dominio del Paso 1.02 a Cloudflare con SSL | https://www.cerrajerosmadrid24h.com con SSL activo | Sin SSL, Google penaliza ranking y bloquea trust | GMB Crush | Sí | ← 1.02 |  Paso-18 §12.2; Paso-01 §8 |
| 18.39 | Se decide configurar redirección entre apex y www según versión canónica del Paso 1.03 | apex cerrajerosmadrid24h.com → www.cerrajerosmadrid24h.com | Sin redirección apex/www se generan duplicados invisibles | GMB Crush | Sí | ← 1.03 |  Paso-18 §12.2; Paso-01 §8 |
| 18.40 | Se decide validar sitemap, robots.txt y URLs en producción | sitemap-index.xml accesible, 200 OK en 29 URLs | Verificar post-deploy detecta 404 y 500 que QA local no ve | GMB Crush | Sí | no |  Paso-18 §12.3; Paso-17 §12 |
| 18.41 | Se decide registrar sitemap en Google Search Console tras deploy | sitemap registrado en GSC con status Success | Sin GSC el crawler tarda semanas en empezar a indexar | GMB Crush | Sí | no |  Paso-18 §12.3 |
