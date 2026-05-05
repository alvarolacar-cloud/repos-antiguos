Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 17 — Constructor del Sitio

## §2 Índice corto

**Paso 17 — Constructor del Sitio**

## §3 Objetivo del Paso 17

Este paso ejecuta el sistema. Toma todos los outputs de los pasos 1–16 y construye el sitio web funcional listo para QA y deploy.

La construcción es ejecución pura: no se toman decisiones de arquitectura, ni de copy, ni de diseño. Si algo no está en los pasos anteriores, el constructor para y pregunta. La regla de oro es **"no decides, ejecutas"**.

Este paso aporta tres cosas:

1. **Stack técnico fijo**: Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages.
2. **Seis fases obligatorias** con dos paradas de confirmación: Acta de Lectura y construcción completa antes del QA.
3. **Limpieza de rastros de IA** antes de cerrar para que el repositorio no muestre que el sitio fue generado.

Cuando este paso se omite o se rellena mal:

- El constructor improvisa diseño y rompe la coherencia visual.
- Las URLs en producción no coinciden con la URL Matrix.
- Aparecen comentarios de IA o referencias al starter kit en producción.
- El stack se mezcla (Astro 6 + Tailwind v4) y rompe la build de Cloudflare.

Este paso debe ejecutarse después del Paso 16 (Extracción de Diseño) y antes del Paso 18 (QA + Deploy).

Error que previene: que el constructor invente diseño o copy.
Error que previene: URLs en producción distintas a la URL Matrix.
Error que previene: rastros de IA visibles (README starter kit, meta generator, comentarios).
Error que previene: stack roto por mezclar versiones incompatibles.

## §4 Lo que tienes que rellenar

```text
Fase 0 — Acta de Lectura y Autocontraste:
1. Leer literalmente los outputs de Pasos 1, 2, 3, 4, 5, 6, 7, 15 y 16.
2. Detectar contradicciones entre bloques (autocontraste).
3. Materializar Design Tokens y Layout-Map del Paso 16 en archivos consumibles.

⛔ PARADA 1 — Esperar confirmación del usuario antes de Fase 1.

Fase 1 — Setup y Design Tokens:
4. Inicializar proyecto Astro 5 + Tailwind v3 + pnpm.
5. Configurar tailwind.config.mjs con tokens del Paso 16.
6. Inyectar variables CSS en global.css.

Fase 2 — Componentes UI:
7. Construir 7 componentes base parametrizables (Button, Card, Badge, Hero, Testimonial, FAQ, ContactForm).

Fase 3 — Layout Global:
8. Construir Header, Footer y Layout wrapper.

Fase 4 — Construcción de Páginas:
9. Construir las 28 páginas SEO base + /contacto/ siguiendo URL Matrix (Paso 3) y copy del Paso 15.

Fase 5 — SEO y Schema:
10. Implementar SEO.astro, schemas, sitemap y robots.txt.

Fase 6 — Limpieza de Rastros de IA:
11. Eliminar todo rastro del starter kit y referencias a IA.

⛔ PARADA 2 — Sitio completo. Esperar confirmación antes del Paso 18 (QA + Deploy).
```

## §5 Ejemplo rellenado

```text
Negocio: Cerrajeros Madrid 24h
Stack:
- Astro 5
- Tailwind v3 + @astrojs/tailwind
- pnpm
- Hosting: Cloudflare Pages
- Build command: pnpm run build

Páginas construidas: 28 SEO base + /contacto/ = 29 páginas.
Componentes: 7 base + 3 layout (Header, Footer, Layout).
Schemas: LocalBusiness, Service, FAQPage, BreadcrumbList, Article, Speakable.
```

# §6 Cuerpo operativo del Paso 17

> **Definición operativa — Regla de oro del Paso 17:** "No decides, ejecutas". Toda decisión está en los Pasos 1–16. Si una pieza no está cubierta (un color sin token, una URL sin matriz, un copy sin redacción), el constructor para y pregunta. No improvisa.

## §7 Fase 0 — Acta de Lectura y Autocontraste

### §7.1 Acta de Lectura

Output de §7.1: valores copiados literalmente de cada paso.

| Dato | Valor copiado | Output de referencia |
|:---|:---|:---|
| Nombre empresa | [COPIAR_LITERAL] | Paso 1.01 |
| URL canónica | [COPIAR_LITERAL] | Paso 1.02–1.03 |
| NAP completo | [COPIAR_LITERAL] | Paso 1.08–1.15 |
| Main City | [COPIAR_LITERAL] | Paso 1.20 |
| Direct LCAs | [COPIAR_LITERAL] | Paso 1.22–1.23 |
| Candidate LCAs | [COPIAR_LITERAL] | Paso 1.24–1.31 |
| Servicios core | [COPIAR_LITERAL] | Paso 1.34–1.38 |
| Categoría adicional con página | [COPIAR_LITERAL] | Paso 1.40 |
| URL Matrix completa | [COPIAR_LITERAL] | Paso 3 |
| Internal Linking Map | [COPIAR_LITERAL] | Paso 7 |
| Color primario | [COPIAR_LITERAL] | Paso 16.02 |
| Tipografía heading | [COPIAR_LITERAL] | Paso 16.06 |

### §7.2 Autocontraste entre bloques

Output de §7.2: cruces para detectar contradicciones.

| Cruce | Bloque A | Bloque B | ¿Coinciden? |
|:---|:---|:---|:---|
| URLs base | Paso 3 (URL Matrix) | Paso 4 (URL Rules) | ☐ |
| Servicios | Paso 1.34–1.38 | Paso 5.06–5.10 (SO) | ☐ |
| Servicios | Paso 1.34–1.38 | Paso 5.12 (LBS canónica) | ☐ |
| Main City | Paso 1.20 | URL GeoHub /madrid/ (Paso 3.12) | ☐ |
| NAP | Paso 1.08–1.15 | Paso 9.17 (QA NAP) | ☐ |
| Internal Linking | Paso 7 (Map) | Paso 11.12 (Pseudocódigo) | ☐ |
| Copy Homepage | Paso 15.06 | Paso 9.6 (Estructura del Paso 6) | ☐ |
| Layout-Map | Paso 16.27–16.32 | Paso 15 secciones por page type | ☐ |

Reglas operativas para §7.2:

- Si un cruce no coincide, parar y reportar al usuario antes de continuar.
- No improvisar resolución de contradicciones — el usuario decide qué prevalece.
- Si la contradicción afecta a la URL Matrix, volver al Paso 3 y actualizar antes de continuar.

### §7.3 Materialización del Diseño

Output de §7.3: archivos consumibles para Fase 1.

| Acción | Estado | Archivo |
|:---|:---|:---|
| Extraer Design Tokens del Paso 16 | Pendiente | design-tokens.md |
| Extraer Layout-Map del Paso 16 | Pendiente | layout-map.md |
| Validar contraste WCAG AA | Pendiente | contraste-check.md |

⛔ **PARADA 1** — Esperar confirmación del usuario antes de Fase 1.

## §8 Fase 1 — Setup y Design Tokens

| Acción | Estado | Comando / Archivo |
|:---|:---|:---|
| Inicializar proyecto Astro | Pendiente | `pnpm create astro@latest` |
| Instalar Tailwind CSS v3 | Pendiente | `pnpm astro add tailwind` (verificar que es v3) |
| Configurar `tailwind.config.mjs` | Pendiente | Inyectar tokens del Paso 16.18–16.20 |
| Crear `src/styles/global.css` | Pendiente | Variables CSS heredadas del Paso 16 |
| Verificar build inicial | Pendiente | `pnpm install && pnpm build` |

Reglas operativas para §8:

- Stack obligatorio: Astro 5 + Tailwind v3 + pnpm. No Astro 6 (incompatible con `@astrojs/tailwind`). No Tailwind v4 (requiere `@tailwindcss/vite`).
- Antes del primer push, ejecutar `pnpm install && pnpm build` localmente para validar que la build pasa.
- Cualquier cambio de stack debe escalarse al usuario.

## §9 Fase 2 — Componentes UI

Construir 7 componentes base parametrizables. Los estilos vienen del Paso 16.

| Componente | Estado | Ruta | Notas |
|:---|:---|:---|:---|
| Button.astro | Pendiente | src/components/ | Variantes: primary, secondary, outline. Tokens del Paso 16. |
| Card.astro | Pendiente | src/components/ | Variantes: servicio, zona, testimonio, geoarticle teaser. Tokens del Paso 16. |
| Badge.astro | Pendiente | src/components/ | Etiquetas de trust signals. |
| Hero.astro | Pendiente | src/components/ | Parametrizable según el page type (Paso 16.27–16.32). |
| Testimonial.astro | Pendiente | src/components/ | Widget estático sin reseñas inventadas si no hay GBP. |
| FAQ.astro | Pendiente | src/components/ | Acordeón accesible (ARIA correcto). |
| ContactForm.astro | Pendiente | src/components/ | Campos según NAP del Paso 1.08–1.15. |

Reglas operativas para §9:

- Cada componente recibe props para parametrizar contenido. La estética viene fija del Paso 16.
- Validar accesibilidad: contraste, ARIA, navegación por teclado.
- No incluir texto literal en los componentes — el copy viene del Paso 15 vía props.

## §10 Fase 3 — Layout Global

| Componente | Estado | Elementos |
|:---|:---|:---|
| Header.astro | Pendiente | Menú según Paso 7.01–7.04. Teléfono del Paso 1.14. |
| Footer.astro | Pendiente | Enlaces a silos según Paso 7. NAP del Paso 1.08–1.15. |
| Layout.astro | Pendiente | Wrapper: Header + slot + Footer + fuentes + estilos globales. |

Reglas operativas para §10:

- Header y Footer son globales — aparecen en todas las páginas.
- El menú del Header sigue exactamente la estructura del Paso 7 — no añadir ni quitar.
- El NAP en Footer es el mismo que en página de contacto (Paso 1).

## §11 Fase 4 — Construcción de Páginas

Regla principal: **el copy viene del Paso 15** sin modificación. La URL viene del Paso 3 sin modificación. El layout viene del Paso 16 sin modificación.

| URL (Paso 3) | Tipo | Copy de | Layout de | Estado |
|:---|:---|:---|:---|:---|
| / | Homepage | Paso 15.06 | Paso 16.27 | ☐ |
| /cerrajero/[service]/ | Service Overview (×5) | Paso 15.11 | Paso 16.28 | ☐ |
| /cerrajero/madrid/[service]/ | LBS (×5) | Paso 15.16 | Paso 16.29 | ☐ |
| /cerrajero/madrid/duplicado-llaves/ | Additional Category | Paso 15.21 | Paso 16.30 | ☐ |
| /madrid/ | GeoHub | Paso 15.26 | Paso 16.31 | ☐ |
| /madrid/[topic]/ | GeoArticle (×15) | Paso 15.31 | Paso 16.32 | ☐ |
| /contacto/ | Página auxiliar | Heredado del Paso 1.08–1.15 | Layout simple | ☐ |

Reglas operativas para §11:

- La estructura de carpetas en `src/pages/` genera las URLs. No crear `/blog/`, `/servicios/` o `/zonas/` como directorios padre.
- Antes de cada página, consultar Paso 7 (Internal Linking Map) para verificar enlaces obligatorios.
- Implementar enlaces contextuales tal cual están en el Internal Linking Map.
- Los puentes narrativos de GeoArticles (Paso 15 §14.5) son obligatorios.

## §12 Fase 5 — SEO y Schema

| Elemento | Estado | Requisitos |
|:---|:---|:---|
| SEO.astro | Pendiente | title, meta description, canonical (heredados del Paso 5.18) |
| Schema Organization | Pendiente | Homepage |
| Schema WebSite | Pendiente | Homepage |
| Schema LocalBusiness | Pendiente | Homepage + LBS + GeoHub (con NAP del Paso 1) |
| Schema Service | Pendiente | Service Overview Pages + Additional Category |
| Schema CollectionPage | Pendiente | GeoHub |
| Schema Article | Pendiente | GeoArticles |
| Schema FAQPage | Pendiente | Páginas con FAQ (LBS + GeoArticles + Homepage) |
| Schema BreadcrumbList | Pendiente | Todas las páginas |
| Schema Speakable | Pendiente | Homepage + LBS |
| sitemap.xml | Pendiente | `@astrojs/sitemap` con todas las URLs del Paso 3 |
| robots.txt | Pendiente | `public/`, apuntando al sitemap |

Reglas operativas para §12:

- El schema map es canónico (Paso 5.18). No añadir schemas no definidos en el sistema.
- El NAP del schema debe ser idéntico al del Header, Footer y página de contacto (Paso 1.08–1.15).
- No incluir `sameAs` con GBP URL hasta que exista el GBP (Paso 14).
- Validar el schema con Schema.org Validator y Google Rich Results Test antes de cerrar.

## §13 Fase 6 — Limpieza de Rastros de IA

| Rastro | Dónde | Acción | Estado |
|:---|:---|:---|:---|
| README.md | Raíz | Sustituir el del starter kit por uno propio o eliminar | ☐ |
| Comentarios de instrucción | Archivos `.astro`, `.ts`, `.js` | Eliminar todos los comentarios "este componente hace X" del scaffold | ☐ |
| meta generator | HTML de producción | Verificar ausencia de `<meta name="generator" content="Astro vX.Y">` | ☐ |
| Referencias a IA | Todo el repositorio | `grep -ri "claude\|chatgpt\|gpt-\|openai\|anthropic"` debe salir limpio | ☐ |
| package.json name | Raíz | Nombre del proyecto real, no `astro-starter` ni similar | ☐ |
| Commits | Git log | Sin referencias a IA en mensajes de commit | ☐ |

Reglas operativas para §13:

- Esta fase es obligatoria antes de la Parada 2.
- El usuario debe poder revisar el repositorio sin ver pruebas de generación automática.
- Si aparece algún rastro nuevo durante el QA (Paso 18), volver a esta fase.

⛔ **PARADA 2** — Sitio completo. Esperar confirmación antes del Paso 18 (QA + Deploy).

## §14 No tomar decisiones — Regla operativa 1

### §14.1 Explicación

El Paso 17 ejecuta lo que dicen los Pasos 1–16. Si el constructor descubre que falta una pieza (un token, una URL, un copy), debe parar y preguntar. Improvisar rompe la trazabilidad y la coherencia.

### §14.2 Patrón

```text
Pieza ausente → constructor para → usuario decide → volver al paso correspondiente → actualizar → reanudar
```

### §14.3 Ejemplo correcto

```text
El constructor descubre que la sección "Argumentos / Confianza" del LBS necesita un color de fondo soft que no está en los Design Tokens del Paso 16. Para. Pregunta al usuario. El usuario aprueba añadir bg-soft al Paso 16. Se actualiza el catálogo. Se reanuda la construcción.
```

### §14.4 Regla final

```text
Toda decisión se toma fuera del constructor. El constructor solo aplica.
```

## §15 Stack canónico cerrado — Regla operativa 2

### §15.1 Explicación

El stack es Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages. Cambiarlo (Astro 6, Tailwind v4, npm en lugar de pnpm) introduce incompatibilidades que rompen la build de Cloudflare.

### §15.2 Patrón

```text
Stack fijo → instalación verificada → build local → push a Cloudflare → deploy
```

### §15.3 Ejemplo correcto

```text
pnpm install (no npm install)
pnpm astro add tailwind (verificar v3)
pnpm build (debe pasar antes del primer push)
```

### §15.4 Regla final

```text
Cualquier cambio de stack se escala al usuario antes de aplicarlo.
```

## §16 Estructura de carpetas genera URLs — Regla operativa 3

### §16.1 Explicación

Astro deriva las URLs del file system. La estructura de `src/pages/` debe coincidir con la URL Matrix del Paso 3. Crear directorios padre como `/blog/` o `/servicios/` añade niveles extra que rompen los slugs canónicos.

### §16.2 Patrón

```text
URL Matrix (Paso 3) → estructura de carpetas en src/pages/ → URL derivada
```

### §16.3 Ejemplo correcto

```text
URL Matrix: /madrid/cuanto-cuesta-un-cerrajero-urgente/
Estructura: src/pages/madrid/cuanto-cuesta-un-cerrajero-urgente.astro
Resultado URL: /madrid/cuanto-cuesta-un-cerrajero-urgente/

Mal:
src/pages/blog/madrid/cuanto-cuesta-un-cerrajero-urgente.astro → /blog/madrid/...
```

### §16.4 Regla final

```text
Sin /blog/, /servicios/, /zonas/ ni otros directorios padre. Las URLs siguen la lógica del sistema, no la navegación.
```

## §17 Internal Linking del Paso 7 implementado tal cual — Regla operativa 4

### §17.1 Explicación

El Paso 7 define exactamente qué enlaces internos tiene cada página. El constructor no añade ni quita enlaces. Si un enlace contextual no está en el Map, no existe.

### §17.2 Patrón

```text
Paso 7 Internal Linking Map → constructor implementa exactamente esos enlaces → ni más ni menos
```

### §17.3 Ejemplo correcto

```text
Paso 7.10 dice "LBS enlaza a GeoArticles relacionados".
Constructor implementa esos 3 enlaces a /madrid/cuanto-cuesta-un-cerrajero-urgente/, /madrid/que-hacer-si-no-puedes-entrar-casa/, /madrid/cuanto-tarda-un-cerrajero/.
No añade un cuarto enlace "porque queda bien".
```

### §17.4 Regla final

```text
Internal Linking Map del Paso 7 = enlaces reales en el sitio. Sin desviaciones.
```

## §18 NAP único en toda la web — Regla operativa 5

### §18.1 Explicación

El NAP del Paso 1 (1.08–1.15) aparece en Header, Footer, página de contacto y schema. Cualquier inconsistencia (teléfono distinto en Footer y schema, dirección distinta en Contact y LocalBusiness) rompe la señal de entidad local.

### §18.2 Patrón

```text
NAP Paso 1 → variable única → consumida en Header, Footer, Contact, schema
```

### §18.3 Ejemplo correcto

```text
Crear un archivo nap.ts con los datos del Paso 1.
Header.astro importa nap.ts y muestra teléfono.
Footer.astro importa nap.ts y muestra NAP completo.
ContactForm.astro importa nap.ts y muestra dirección.
SEO.astro inyecta nap.ts en LocalBusiness schema.
```

### §18.4 Regla final

```text
Un solo punto de verdad para el NAP. El constructor consume, no duplica.
```

## §19 Schema validado antes de cerrar — Regla operativa 6

### §19.1 Explicación

El schema mal formado o duplicado puede confundir a Google. Antes de la Parada 2, todo schema debe validar en Schema.org Validator y Google Rich Results Test.

### §19.2 Patrón

```text
Schema implementado → Schema.org Validator → Google Rich Results Test → corregir errores → repetir hasta sin errores
```

### §19.3 Ejemplo correcto

```text
Homepage tiene Organization + WebSite + LocalBusiness + FAQPage.
Schema.org Validator: ✅ sin errores.
Google Rich Results Test: ✅ elegible para Local Business y FAQ.
```

### §19.4 Regla final

```text
Sin schema validado, no se cierra Parada 2.
```

## §20 No `sameAs` con GBP hasta el Paso 14 — Regla operativa 7

### §20.1 Explicación

El sistema es web-first. Hasta que el Paso 14 cree el GBP, no hay GBP URL real. El schema `sameAs` queda sin esa entrada hasta entonces. Si el constructor inventa una `sameAs`, el schema apunta a un perfil inexistente.

### §20.2 Patrón

```text
GBP no creado → schema sin sameAs → Paso 14 crea GBP → actualizar schema con sameAs (Paso 14.41)
```

### §20.3 Ejemplo correcto

```text
LocalBusiness schema en LBS Madrid:
{
  "@type": "LocalBusiness",
  "name": "Cerrajeros Madrid 24h",
  "address": {...},
  "telephone": "+34 600 000 000"
  // sameAs se añade en Paso 14
}
```

### §20.4 Regla final

```text
Sin GBP creado, no hay sameAs. El campo se añade en el Paso 14.
```

## §21 Limpieza de rastros como gate de Parada 2 — Regla operativa 8

### §21.1 Explicación

La limpieza de rastros de IA (Fase 6) no es opcional. Es el último gate antes de la Parada 2. Si quedan rastros visibles (README starter kit, meta generator, comentarios), el sitio se ve "generado" y el cliente lo nota.

### §21.2 Patrón

```text
Fase 6 ejecutada → grep limpio → README propio → package.json renombrado → Parada 2 abierta
```

### §21.3 Ejemplo correcto

```text
grep -ri "claude\|chatgpt\|astro-starter" → 0 resultados.
README.md describe el proyecto real, no el template.
package.json name = "cerrajeros-madrid-24h" no "astro-starter-kit".
Commits sin "via Claude" o similar.
```

### §21.4 Regla final

```text
Sin Fase 6 completa, no se abre Parada 2.
```

## §22 Build local antes de push — Regla operativa 9

### §22.1 Explicación

Cloudflare Pages ejecuta `pnpm run build` cuando recibe un push. Si la build local no pasa, el push genera un fallo en producción. Verificar la build local antes de cada push evita roturas.

### §22.2 Patrón

```text
Cambios → pnpm install → pnpm build → ¿pasa? → sí: push / no: arreglar y reintentar
```

### §22.3 Ejemplo correcto

```text
Antes del primer push:
pnpm install
pnpm build
> Build succeeded ✓
git push origin main
> Cloudflare deploys
```

### §22.4 Regla final

```text
Sin build local pasando, no se hace push.
```

## §23 Una pieza por archivo — Regla operativa 10

### §23.1 Explicación

Cada componente, cada layout, cada página vive en su propio archivo. Componentes que mezclan responsabilidades (Header.astro que también incluye Footer) son difíciles de mantener.

### §23.2 Patrón

```text
Componente único → archivo único → responsabilidad única
```

### §23.3 Ejemplo correcto

```text
src/components/Header.astro (solo header)
src/components/Footer.astro (solo footer)
src/layouts/Layout.astro (wrapper que importa Header + Footer + slot)
```

### §23.4 Regla final

```text
Un componente, un archivo. Sin mezclas de responsabilidad.
```

## §24 Versionar todo desde el inicio — Regla operativa 11

### §24.1 Explicación

El proyecto se versiona desde el primer commit. Sin versionado, cualquier rotura es difícil de revertir. Sin commits descriptivos, el historial pierde valor.

### §24.2 Patrón

```text
git init → primer commit → commits descriptivos por fase → push al repo remoto al cerrar Parada 1
```

### §24.3 Ejemplo correcto

```text
Commits:
- "Setup: Astro 5 + Tailwind v3 + pnpm"
- "Componentes UI: Button, Card, Badge"
- "Páginas: Homepage + 5 LBS construidas"
- "SEO: schema LocalBusiness + sitemap"
- "Limpieza Fase 6: rastros eliminados"
```

### §24.4 Regla final

```text
Cada fase tiene al menos un commit descriptivo.
```

## §25 Checklist final del Paso 17

| Check | Pregunta | Estado |
|---|---|---|
| Acta de Lectura | ¿Todos los outputs de Pasos 1–16 copiados literalmente? | ☐ |
| Autocontraste | ¿Cruces sin contradicciones? Si las hay, ¿están reportadas? | ☐ |
| Materialización del Diseño | ¿Tokens y Layout-Map extraídos a archivos consumibles? | ☐ |
| Setup técnico | ¿Stack canónico (Astro 5 + Tailwind v3 + pnpm) instalado y funcionando? | ☐ |
| Componentes UI | ¿Los 7 componentes base construidos y parametrizados? | ☐ |
| Layout Global | ¿Header, Footer y Layout wrapper construidos? | ☐ |
| Páginas | ¿Las 28 SEO base + /contacto/ construidas según URL Matrix? | ☐ |
| SEO + Schema | ¿Schemas implementados y validados? | ☐ |
| Limpieza IA | ¿Fase 6 completada (grep limpio, README, package.json, commits)? | ☐ |
| Build local | ¿`pnpm install && pnpm build` pasa sin errores? | ☐ |
| NAP único | ¿Un solo punto de verdad para el NAP, consumido en Header/Footer/Contact/schema? | ☐ |

## §26 Outputs del Paso 17

- Output 17.1 — Acta de Lectura y Autocontraste sin contradicciones.
- Output 17.2 — Proyecto Astro inicializado con Tailwind v3 + pnpm.
- Output 17.3 — 7 componentes UI parametrizados.
- Output 17.4 — Header + Footer + Layout wrapper.
- Output 17.5 — 28 páginas SEO base + /contacto/ construidas.
- Output 17.6 — Schemas implementados y validados.
- Output 17.7 — Fase 6 ejecutada (rastros de IA limpios).
- Output 17.8 — Build local pasando sin errores.

---

# §27 Fuentes internas GMB Crush usadas

- URL Matrix (Paso 3)
- URL Rules (Paso 4)
- Page Type Rules y Schema Map (Paso 5)
- Internal Linking Rules (Paso 7)
- Redacción de Contenido por capas (Paso 15)
- Design Tokens y Layout-Map (Paso 16)
- Bloque 5 antiguo "Constructor del Sitio" (referencia metodológica para Acta de Lectura, fases y limpieza de rastros)

> **Nota importante — Stack obligatorio:**
> El stack Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages es no negociable. Cualquier desviación (Astro 6, Tailwind v4, npm) rompe la compatibilidad con `@astrojs/tailwind` y la build de Cloudflare. Esta nota debe aparecer también en el Paso 18 (QA + Deploy).
