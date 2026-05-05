# Paso 18 — QA y Deploy

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`18a-ejecucion-qa-deploy.md`).

---

## Bloque 1 — Auditoría Técnica (16 criterios)

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 18.01 | Se decide validar URLs contra la URL Matrix | 28 URLs SEO + /contacto/ verificadas | GMB Crush | Cualquier URL no documentada es un cabo suelto en SEO | ← 3.04–3.33 | §7 |
| 18.02 | Se decide validar canonical en cada página | 29 canonicals correctos | GMB Crush | Canonical mal apuntado hereda señales a página equivocada | no | §7 |
| 18.03 | Se decide validar Header con menú del Paso 7 + teléfono Paso 1.14 | Header con menú correcto y teléfono +34 600 000 000 | GMB Crush | Header sin teléfono pierde llamada directa desde móvil | ← 7.01–7.04, 1.14 | §7 |
| 18.04 | Se decide validar Footer con NAP del Paso 1 + enlaces del Paso 7 | Footer con NAP completo y enlaces a silos | GMB Crush | Footer sin NAP rompe la consistencia local sitewide | ← 1.08–1.15, 7.01–7.04 | §7 |
| 18.05 | Se decide validar que no haya páginas huérfanas | 0 páginas huérfanas | GMB Crush | Página huérfana queda fuera del crawl y no rankea | no | §7 |
| 18.06 | Se decide validar Meta Tags únicos por página | 29 títulos únicos, 29 descriptions únicos | GMB Crush | Meta duplicado señala canibalización a Google | no | §7 |
| 18.07 | Se decide validar un H1 único por página con keyword principal | 29 H1s únicos con keyword | GMB Crush | H1 duplicado o ausente desorienta al crawler sobre el tema | no | §7 |
| 18.08 | Se decide validar Schema Organization + WebSite en Homepage | Organization + WebSite presentes en / | GMB Crush | Sin Organization/WebSite, el knowledge graph no entiende la entidad | ← 5.18 | §7 |
| 18.09 | Se decide validar Schema LocalBusiness en Homepage + LBS + GeoHub con NAP del Paso 1 | LocalBusiness en 7 páginas con NAP correcto | GMB Crush | LocalBusiness con NAP roto desactiva el Local Pack | ← 1.08–1.15 | §7 |
| 18.10 | Se decide validar Schema Service en SO + AC | Service en 6 páginas | GMB Crush | Schema Service desambigua qué se vende en cada SO/AC | ← 5.18 | §7 |
| 18.11 | Se decide validar Schema CollectionPage en GeoHub | CollectionPage en /madrid/ | GMB Crush | Sin CollectionPage el GeoHub se interpreta como landing | ← 5.18 | §7 |
| 18.12 | Se decide validar Schema Article + FAQPage en GeoArticles | Article + FAQPage en 15 GeoArticles | GMB Crush | Article + FAQPage captan rich results y mejoran CTR | ← 5.18 | §7 |
| 18.13 | Se decide validar Schema BreadcrumbList en todas las páginas | BreadcrumbList en 29 páginas | GMB Crush | BreadcrumbList sustituye URL en SERP y mejora claridad | ← 5.18 | §7 |
| 18.14 | Se decide validar sitemap.xml con todas las URLs del Paso 3 | sitemap-index.xml con 29 URLs | GMB Crush | Sin sitemap el crawler tarda meses en descubrir el cluster | ← 17.29 | §7 |
| 18.15 | Se decide validar robots.txt | robots.txt correcto | GMB Crush | robots.txt mal configurado puede bloquear URLs SEO clave | ← 17.30 | §7 |
| 18.16 | Se decide validar responsive en 375 / 768 / 1280 | Sin desbordamientos en 3 breakpoints | GMB Crush | Mayor parte del tráfico local viene desde móvil | no | §7 |

## Bloque 2 — Auditoría de Contenido (8 criterios)

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 18.17 | Se decide validar copy de Homepage contra Paso 15.06–15.09 | Copy Homepage idéntico al aprobado en Paso 15 | GMB Crush | Copy en producción debe coincidir con el aprobado | ← 15.06–15.09 | §8 |
| 18.18 | Se decide validar copy de las 5 Service Overview Pages contra Paso 15.11–15.14 | 5 SOs con copy idéntico | GMB Crush | Copy en producción debe coincidir con el aprobado | ← 15.11–15.14 | §8 |
| 18.19 | Se decide validar copy de las 5 LBS contra Paso 15.16–15.19 | 5 LBS con copy idéntico | GMB Crush | Copy en producción debe coincidir con el aprobado | ← 15.16–15.19 | §8 |
| 18.20 | Se decide validar copy de la Additional Category contra Paso 15.21–15.24 | AC con copy idéntico | GMB Crush | Copy en producción debe coincidir con el aprobado | ← 15.21–15.24 | §8 |
| 18.21 | Se decide validar copy del GeoHub contra Paso 15.26–15.29 | GeoHub con copy idéntico | GMB Crush | Copy en producción debe coincidir con el aprobado | ← 15.26–15.29 | §8 |
| 18.22 | Se decide validar copy de los 15 GeoArticles contra Paso 15.31–15.34 | 15 GeoArticles con copy idéntico | GMB Crush | Copy en producción debe coincidir con el aprobado | ← 15.31–15.34 | §8 |
| 18.23 | Se decide validar puentes narrativos en GeoArticles (3 puntos por artículo) | 15 GeoArticles con 3 puentes cada uno | GMB Crush | Sin puentes el tráfico informativo no llega a la LBS | ← 15.35 | §8 |
| 18.24 | Se decide validar NAP consistente en Header, Footer, Contact, schema | NAP único: Cerrajeros Madrid 24h, Calle Rafael Calvo 12, Madrid, +34 600 000 000 | GMB Crush | NAP discrepante entre puntos rompe verificación local | ← 1.08–1.15 | §8 |

## Bloque 3 — Auditoría Visual (5 criterios)

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 18.25 | Se decide validar colores contra Design Tokens del Paso 16.18–16.20 | Todos los colores de producción coinciden con tokens | GMB Crush | Colores hardcoded fuera de tokens rompen consistencia visual | ← 16.18–16.20 | §9 |
| 18.26 | Se decide validar tipografías contra Design Tokens del Paso 16.18 | font-heading y font-body correctos | GMB Crush | Font-family fuera de tokens delata trabajo sin sistema | ← 16.18 | §9 |
| 18.27 | Se decide validar Layout-Map de cada page type contra Paso 16.27–16.32 | 6 page types con layout correcto | GMB Crush | Layout que no coincide con Layout-Map indica improvisación | ← 16.27–16.32 | §9 |
| 18.28 | Se decide validar jerarquía Homepage (Servicios Core > AC) | Servicios Core destacados, AC en posición secundaria | GMB Crush | AC encima de servicios core distorsiona jerarquía de oferta | ← 15.05 | §9 |
| 18.29 | Se decide validar GeoHub con contenido propio (no solo índice) | GeoHub con introducción + contenido contextual + enlaces | GMB Crush | GeoHub índice puro queda como thin content sin valor | ← 15.26 | §9 |

## Bloque 4 — Auditoría de Rastros de IA (6 criterios)

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 18.30 | Se decide validar README.md sin texto del starter kit | README propio o eliminado | GMB Crush | README de Astro starter visible delata sitio sin curar | ← 17.31 | §10 |
| 18.31 | Se decide validar comentarios internos sin instrucciones de IA | Sin comentarios "este componente hace X" | GMB Crush | Comentarios scaffold filtran origen automatizado del proyecto | ← 17.32 | §10 |
| 18.32 | Se decide validar ausencia de meta generator en HTML | HTML sin `<meta name="generator">` | GMB Crush | meta generator declara framework y revela origen automatizado | ← 17.33 | §10 |
| 18.33 | Se decide ejecutar grep limpio de referencias a IA en todo el repo | grep -ri "claude\|chatgpt\|openai\|anthropic" sin matches | GMB Crush | Cualquier referencia a IA filtra origen no humano del contenido | ← 17.34 | §10 |
| 18.34 | Se decide validar package.json con nombre real del proyecto | "name": "cerrajeros-madrid-24h" | GMB Crush | "astro-starter" en package.json delata sitio sin personalizar | ← 17.35 | §10 |
| 18.35 | Se decide validar commits sin referencias a IA | git log limpio | GMB Crush | Commits con "via Claude" filtran origen IA en repo público | ← 17.36 | §10 |

## Bloque 5 — Deploy a Cloudflare Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 18.36 | Se decide conectar el repositorio a Cloudflare Pages | github.com/cliente/cerrajeros-madrid-24h conectado a Cloudflare | GMB Crush | Cloudflare Pages da CDN global y SSL gratis sin trade-offs | no | §12.1 |
| 18.37 | Se decide configurar build command `pnpm run build` | Build command: `pnpm run build`, output dir: `dist` | GMB Crush | pnpm reduce tiempo de build y tamaño del lockfile vs npm | no | §12.1 |
| 18.38 | Se decide conectar el dominio del Paso 1.02 a Cloudflare con SSL | https://www.cerrajerosmadrid24h.com con SSL activo | GMB Crush | Sin SSL, Google penaliza ranking y bloquea trust | ← 1.02 | §12.2 |
| 18.39 | Se decide configurar redirección entre apex y www según versión canónica del Paso 1.03 | apex cerrajerosmadrid24h.com → www.cerrajerosmadrid24h.com | GMB Crush | Sin redirección apex/www se generan duplicados invisibles | ← 1.03 | §12.2 |
| 18.40 | Se decide validar sitemap, robots.txt y URLs en producción | sitemap-index.xml accesible, 200 OK en 29 URLs | GMB Crush | Verificar post-deploy detecta 404 y 500 que QA local no ve | no | §12.3 |
| 18.41 | Se decide registrar sitemap en Google Search Console tras deploy | sitemap registrado en GSC con status Success | GMB Crush | Sin GSC el crawler tarda semanas en empezar a indexar | no | §12.3 |
