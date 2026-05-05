# Paso 17 — Constructor del Sitio

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`17a-ejecucion-constructor-sitio.md`).

---

## Bloque 1 — Fase 0: Acta de Lectura y Autocontraste

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.01 | Se decide leer literalmente los outputs de Pasos 1, 2, 3, 4, 5, 6, 7, 15 y 16 | Acta con valores literales: nombre, NAP, Main City, LCAs, servicios, URL Matrix, Internal Linking, Design Tokens | GMB Crush | Sin lectura literal el constructor inventa o reinterpreta inputs | no | §7.1 |
| 17.02 | Se decide ejecutar autocontraste entre bloques antes de construir | 8 cruces verificados: URLs, servicios, Main City, NAP, Internal Linking, Layout-Map vs secciones | GMB Crush | Contradicciones invisibles en construcción son carísimas en QA | no | §7.2 |
| 17.03 | Se decide materializar Design Tokens y Layout-Map en archivos consumibles | design-tokens.md, layout-map.md, contraste-check.md | GMB Crush | Tokens en archivos evita decisiones ad hoc en cada componente | no | §7.3 |

## Bloque 2 — Fase 1: Setup técnico

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.04 | Se decide inicializar el proyecto Astro 5 | `pnpm create astro@latest` | GMB Crush | Astro 5 da SSG rápido sin JS innecesario en cliente | no | §8 |
| 17.05 | Se decide instalar Tailwind CSS v3 | `pnpm astro add tailwind` | GMB Crush | Tailwind v4 aún no es compatible con `@astrojs/tailwind` | no | §8 |
| 17.06 | Se decide configurar `tailwind.config.mjs` con tokens del Paso 16 | tailwind.config.mjs con font-heading, primary, btn-radius, etc. | GMB Crush | Sin tokens en config, las utilidades Tailwind ignoran el sistema | ← 16.18–16.20 | §8 |
| 17.07 | Se decide inyectar variables CSS heredadas del Paso 16 en `global.css` | src/styles/global.css con variables CSS root | GMB Crush | Variables CSS exponen tokens fuera de Tailwind para fallbacks | ← 16.18–16.20 | §8 |

## Bloque 3 — Fase 2: Componentes UI

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.08 | Se decide construir Button.astro parametrizable | src/components/Button.astro con tokens del Paso 16 | GMB Crush | Botón único centraliza variantes y evita CSS duplicado | no | §9 |
| 17.09 | Se decide construir Card.astro parametrizable | src/components/Card.astro | GMB Crush | Card único cubre servicio, zona, testimonio y teaser sin duplicados | no | §9 |
| 17.10 | Se decide construir Badge.astro | src/components/Badge.astro | GMB Crush | Badge centralizado evita inconsistencia en trust signals | no | §9 |
| 17.11 | Se decide construir Hero.astro parametrizable según page type | src/components/Hero.astro | GMB Crush | Hero por page type evita duplicar layout en cada página | no | §9 |
| 17.12 | Se decide construir Testimonial.astro estático | src/components/Testimonial.astro | GMB Crush | Sin GBP no hay reseñas reales, sin reseñas no se inventan | ← 1.44, 14.46 | §9 |
| 17.13 | Se decide construir FAQ.astro como acordeón accesible | src/components/FAQ.astro | GMB Crush | Sin ARIA correcto, lectores de pantalla no abren el acordeón | no | §9 |
| 17.14 | Se decide construir ContactForm.astro con campos del NAP | src/components/ContactForm.astro con campos basados en NAP | GMB Crush | Formulario sin campos NAP no captura el dato necesario | ← 1.08–1.15 | §9 |

## Bloque 4 — Fase 3: Layout Global

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.15 | Se decide construir Header.astro con menú del Paso 7 y teléfono del Paso 1 | Header con menú a SO + GeoHub + Contacto + teléfono | GMB Crush | Header sin teléfono pierde llamada directa desde móvil | ← 1.14, 7.01–7.04 | §10 |
| 17.16 | Se decide construir Footer.astro con NAP completo del Paso 1 | Footer con NAP completo + enlaces a silos del Paso 7 | GMB Crush | Footer sin NAP rompe la consistencia local sitewide | ← 1.08–1.15 | §10 |
| 17.17 | Se decide construir Layout.astro como wrapper global | src/layouts/Layout.astro | GMB Crush | Wrapper único evita duplicar Header + Footer en cada página | no | §10 |

## Bloque 5 — Fase 4: Construcción de Páginas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.18 | Se decide construir la Homepage según copy del Paso 15 y layout del Paso 16 | src/pages/index.astro | GMB Crush | Homepage debe respetar copy aprobado y Layout-Map sin reinterpretar | ← 15.06, 16.27 | §11 |
| 17.19 | Se decide construir las 5 Service Overview Pages | 5 src/pages/cerrajero/[service].astro | GMB Crush | SO debe respetar copy aprobado y Layout-Map sin reinterpretar | ← 15.11, 16.28, 1.34–1.38 | §11 |
| 17.20 | Se decide construir las 5 Location-Based Service Pages | 5 src/pages/cerrajero/madrid/[service].astro | GMB Crush | LBS debe respetar copy aprobado y Layout-Map sin reinterpretar | ← 15.16, 16.29, 1.34–1.38 | §11 |
| 17.21 | Se decide construir la Additional Category Page | src/pages/cerrajero/madrid/duplicado-llaves.astro | GMB Crush | AC debe respetar copy aprobado y Layout-Map sin reinterpretar | ← 15.21, 16.30, 1.18 | §11 |
| 17.22 | Se decide construir el GeoHub /madrid/ | src/pages/madrid/index.astro | GMB Crush | GeoHub debe respetar copy aprobado y Layout-Map sin reinterpretar | ← 15.26, 16.31, 1.20 | §11 |
| 17.23 | Se decide construir los 15 GeoArticles | 15 src/pages/madrid/[topic].astro | GMB Crush | GeoArticles deben respetar topics validados y estructura aprobada | ← 15.31, 16.32, 3.19–3.33 | §11 |
| 17.24 | Se decide construir /contacto/ como página auxiliar | src/pages/contacto.astro | GMB Crush | Contacto necesita NAP completo y formulario funcional | ← 1.08–1.15 | §11 |

## Bloque 6 — Fase 5: SEO y Schema

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.25 | Se decide implementar SEO.astro con title, meta description y canonical | src/components/SEO.astro | GMB Crush | Componente SEO único evita olvidar canonical o description | ← 5.18 | §12 |
| 17.26 | Se decide implementar Schema LocalBusiness en Homepage, LBS y GeoHub | LocalBusiness JSON-LD en 7 páginas | GMB Crush | LocalBusiness es la entidad clave para activar Local Pack | ← 1.08–1.15 | §12 |
| 17.27 | Se decide implementar Schema Service en Service Overview Pages y Additional Category | Service JSON-LD en 6 páginas | GMB Crush | Schema Service desambigua qué se vende en cada SO/AC | ← 5.18 | §12 |
| 17.28 | Se decide implementar Schema FAQPage en páginas con FAQ (LBS + GeoArticles + Homepage) | FAQPage JSON-LD donde aplique | GMB Crush | FAQPage captura rich results y eleva CTR en SERP | no | §12 |
| 17.29 | Se decide implementar sitemap.xml con todas las URLs del Paso 3 | public/sitemap-index.xml | GMB Crush | Sin sitemap el crawler tarda meses en descubrir el cluster | ← 3.04–3.33 | §12 |
| 17.30 | Se decide implementar robots.txt apuntando al sitemap | public/robots.txt | GMB Crush | robots.txt mal configurado puede bloquear URLs SEO clave | no | §12 |

## Bloque 7 — Fase 6: Limpieza de Rastros de IA

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 17.31 | Se decide sustituir o eliminar el README.md del starter kit | README.md propio o eliminado | GMB Crush | README de Astro starter visible delata sitio sin curar | no | §13 |
| 17.32 | Se decide eliminar comentarios de instrucción del scaffold en archivos `.astro/.ts/.js` | Archivos limpios sin comentarios scaffold | GMB Crush | Comentarios scaffold filtran origen automatizado del proyecto | no | §13 |
| 17.33 | Se decide verificar ausencia de `meta generator` en HTML de producción | HTML final sin meta generator | GMB Crush | meta generator declara framework y revela origen automatizado | no | §13 |
| 17.34 | Se decide ejecutar grep limpio de referencias a IA | grep sin matches | GMB Crush | Cualquier referencia a IA filtra origen no humano del contenido | no | §13 |
| 17.35 | Se decide renombrar `package.json` con el nombre real del proyecto | "name": "cerrajeros-madrid-24h" | GMB Crush | "astro-starter" en package.json delata sitio sin personalizar | ← 1.01 | §13 |
| 17.36 | Se decide revisar commits para eliminar referencias a IA | git log limpio | GMB Crush | Commits con "via Claude" filtran origen IA en repo público | no | §13 |
