# Paso 17 — Constructor del Sitio

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

## Bloque 1 — Fase 0: Acta de Lectura y Autocontraste

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.01 | Se decide leer literalmente los outputs de Pasos 1, 2, 3, 4, 5, 6, 7, 15 y 16 | Acta con valores literales: nombre, NAP, Main City, LCAs, servicios, URL Matrix, Internal Linking, Design Tokens | Sin lectura literal el constructor inventa o reinterpreta inputs | GMB Crush | Sí | no |  Paso-17 §7.1 |
| 17.02 | Se decide ejecutar autocontraste entre bloques antes de construir | 8 cruces verificados: URLs, servicios, Main City, NAP, Internal Linking, Layout-Map vs secciones | Contradicciones invisibles en construcción son carísimas en QA | GMB Crush | Sí | no |  Paso-17 §7.2 |
| 17.03 | Se decide materializar Design Tokens y Layout-Map en archivos consumibles | design-tokens.md, layout-map.md, contraste-check.md | Tokens en archivos evita decisiones ad hoc en cada componente | GMB Crush | Sí | no |  Paso-17 §7.3 |

## Bloque 2 — Fase 1: Setup técnico

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.04 | Se decide inicializar el proyecto Astro 5 | `pnpm create astro@latest` | Astro 5 da SSG rápido sin JS innecesario en cliente | GMB Crush | Sí | no |  Paso-17 §8 |
| 17.05 | Se decide instalar Tailwind CSS v3 | `pnpm astro add tailwind` | Tailwind v4 aún no es compatible con `@astrojs/tailwind` | GMB Crush | Sí | no |  Paso-17 §8 |
| 17.06 | Se decide configurar `tailwind.config.mjs` con tokens del Paso 16 | tailwind.config.mjs con font-heading, primary, btn-radius, etc. | Sin tokens en config, las utilidades Tailwind ignoran el sistema | GMB Crush | Sí | ← 16.18–16.20 |  Paso-17 §8; Paso-16 §8.2 |
| 17.07 | Se decide inyectar variables CSS heredadas del Paso 16 en `global.css` | src/styles/global.css con variables CSS root | Variables CSS exponen tokens fuera de Tailwind para fallbacks | GMB Crush | Sí | ← 16.18–16.20 |  Paso-17 §8; Paso-16 §8.2 |

## Bloque 3 — Fase 2: Componentes UI

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.08 | Se decide construir Button.astro parametrizable | src/components/Button.astro con tokens del Paso 16 | Botón único centraliza variantes y evita CSS duplicado | GMB Crush | Sí | no |  Paso-17 §9; Paso-16 §8.2.4 |
| 17.09 | Se decide construir Card.astro parametrizable | src/components/Card.astro | Card único cubre servicio, zona, testimonio y teaser sin duplicados | GMB Crush | Sí | no |  Paso-17 §9; Paso-16 §8.2.4 |
| 17.10 | Se decide construir Badge.astro | src/components/Badge.astro | Badge centralizado evita inconsistencia en trust signals | GMB Crush | Sí | no |  Paso-17 §9; Paso-16 §8.2.4 |
| 17.11 | Se decide construir Hero.astro parametrizable según page type | src/components/Hero.astro | Hero por page type evita duplicar layout en cada página | GMB Crush | Sí | no |  Paso-17 §9; Paso-16 §8.2.4 |
| 17.12 | Se decide construir Testimonial.astro estático | src/components/Testimonial.astro | Sin GBP no hay reseñas reales, sin reseñas no se inventan | GMB Crush | Sí | ← 1.44, 14.46 |  Paso-17 §9; Paso-16 §8.2.4 |
| 17.13 | Se decide construir FAQ.astro como acordeón accesible | src/components/FAQ.astro | Sin ARIA correcto, lectores de pantalla no abren el acordeón | GMB Crush | Sí | no |  Paso-17 §9; Paso-16 §8.2.4 |
| 17.14 | Se decide construir ContactForm.astro con campos del NAP | src/components/ContactForm.astro con campos basados en NAP | Formulario sin campos NAP no captura el dato necesario | GMB Crush | Sí | ← 1.08–1.15 |  Paso-17 §9; Paso-16 §8.2.4 |

## Bloque 4 — Fase 3: Layout Global

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.15 | Se decide construir Header.astro con menú del Paso 7 y teléfono del Paso 1 | Header con menú a SO + GeoHub + Contacto + teléfono | Header sin teléfono pierde llamada directa desde móvil | GMB Crush | Sí | ← 1.14, 7.01–7.04 |  Paso-17 §10; Paso-07 §8; Paso-01 §9 |
| 17.16 | Se decide construir Footer.astro con NAP completo del Paso 1 | Footer con NAP completo + enlaces a silos del Paso 7 | Footer sin NAP rompe la consistencia local sitewide | GMB Crush | Sí | ← 1.08–1.15 |  Paso-17 §10; Paso-01 §9; Paso-07 §8 |
| 17.17 | Se decide construir Layout.astro como wrapper global | src/layouts/Layout.astro | Wrapper único evita duplicar Header + Footer en cada página | GMB Crush | Sí | no |  Paso-17 §10; Paso-16 §8.3 |

## Bloque 5 — Fase 4: Construcción de Páginas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.18 | Se decide construir la Homepage según copy del Paso 15 y layout del Paso 16 | src/pages/index.astro | Homepage debe respetar copy aprobado y Layout-Map sin reinterpretar | GMB Crush | Sí | ← 15.06, 16.27 |  Paso-17 §11; Paso-15 §9.1; Paso-16 §8.3 |
| 17.19 | Se decide construir las 5 Service Overview Pages | 5 src/pages/cerrajero/[service].astro | SO debe respetar copy aprobado y Layout-Map sin reinterpretar | GMB Crush | Sí | ← 15.11, 16.28, 1.34–1.38 |  Paso-17 §11; Paso-15 §10.1; Paso-16 §8.3 |
| 17.20 | Se decide construir las 5 Location-Based Service Pages | 5 src/pages/cerrajero/madrid/[service].astro | LBS debe respetar copy aprobado y Layout-Map sin reinterpretar | GMB Crush | Sí | ← 15.16, 16.29, 1.34–1.38 |  Paso-17 §11; Paso-15 §11.1; Paso-16 §8.3 |
| 17.21 | Se decide construir la Additional Category Page | src/pages/cerrajero/madrid/duplicado-llaves.astro | AC debe respetar copy aprobado y Layout-Map sin reinterpretar | GMB Crush | Sí | ← 15.21, 16.30, 1.18 |  Paso-17 §11; Paso-15 §12.1; Paso-16 §8.3 |
| 17.22 | Se decide construir el GeoHub /madrid/ | src/pages/madrid/index.astro | GeoHub debe respetar copy aprobado y Layout-Map sin reinterpretar | GMB Crush | Sí | ← 15.26, 16.31, 1.20 |  Paso-17 §11; Paso-15 §13.1; Paso-16 §8.3 |
| 17.23 | Se decide construir los 15 GeoArticles | 15 src/pages/madrid/[topic].astro | GeoArticles deben respetar topics validados y estructura aprobada | GMB Crush | Sí | ← 15.31, 16.32, 3.19–3.33 |  Paso-17 §11; Paso-15 §14.1; Paso-16 §8.3 |
| 17.24 | Se decide construir /contacto/ como página auxiliar | src/pages/contacto.astro | Contacto necesita NAP completo y formulario funcional | GMB Crush | Sí | ← 1.08–1.15 |  Paso-17 §11; Paso-01 §9 |

## Bloque 6 — Fase 5: SEO y Schema

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.25 | Se decide implementar SEO.astro con title, meta description y canonical | src/components/SEO.astro | Componente SEO único evita olvidar canonical o description | GMB Crush | Sí | ← 5.18 |  Paso-17 §12; Paso-05 §19 |
| 17.26 | Se decide implementar Schema LocalBusiness en Homepage, LBS y GeoHub | LocalBusiness JSON-LD en 7 páginas | LocalBusiness es la entidad clave para activar Local Pack | GMB Crush | Sí | ← 1.08–1.15 |  Paso-17 §12; Paso-05 §19 |
| 17.27 | Se decide implementar Schema Service en Service Overview Pages y Additional Category | Service JSON-LD en 6 páginas | Schema Service desambigua qué se vende en cada SO/AC | GMB Crush | Sí | ← 5.18 |  Paso-17 §12; Paso-05 §19 |
| 17.28 | Se decide implementar Schema FAQPage en páginas con FAQ (LBS + GeoArticles + Homepage) | FAQPage JSON-LD donde aplique | FAQPage captura rich results y eleva CTR en SERP | GMB Crush | Sí | no |  Paso-17 §12; Paso-05 §19 |
| 17.29 | Se decide implementar sitemap.xml con todas las URLs del Paso 3 | public/sitemap-index.xml | Sin sitemap el crawler tarda meses en descubrir el cluster | GMB Crush | Sí | ← 3.04–3.33 |  Paso-17 §12; Paso-05 §19 |
| 17.30 | Se decide implementar robots.txt apuntando al sitemap | public/robots.txt | robots.txt mal configurado puede bloquear URLs SEO clave | GMB Crush | Sí | no |  Paso-17 §12; Paso-05 §19 |

## Bloque 7 — Fase 6: Limpieza de Rastros de IA

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 17.31 | Se decide sustituir o eliminar el README.md del starter kit | README.md propio o eliminado | README de Astro starter visible delata sitio sin curar | GMB Crush | Sí | no |  Paso-17 §13 |
| 17.32 | Se decide eliminar comentarios de instrucción del scaffold en archivos `.astro/.ts/.js` | Archivos limpios sin comentarios scaffold | Comentarios scaffold filtran origen automatizado del proyecto | GMB Crush | Sí | no |  Paso-17 §13 |
| 17.33 | Se decide verificar ausencia de `meta generator` en HTML de producción | HTML final sin meta generator | meta generator declara framework y revela origen automatizado | GMB Crush | Sí | no |  Paso-17 §13 |
| 17.34 | Se decide ejecutar grep limpio de referencias a IA | grep sin matches | Cualquier referencia a IA filtra origen no humano del contenido | GMB Crush | Sí | no |  Paso-17 §13 |
| 17.35 | Se decide renombrar `package.json` con el nombre real del proyecto | "name": "cerrajeros-madrid-24h" | "astro-starter" en package.json delata sitio sin personalizar | GMB Crush | Sí | ← 1.01 |  Paso-17 §13 |
| 17.36 | Se decide revisar commits para eliminar referencias a IA | git log limpio | Commits con "via Claude" filtran origen IA en repo público | GMB Crush | Sí | no |  Paso-17 §13 |
