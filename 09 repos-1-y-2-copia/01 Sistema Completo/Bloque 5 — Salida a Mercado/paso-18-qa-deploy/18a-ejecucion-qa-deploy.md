Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 18 — QA y Deploy

## §2 Índice corto

**Paso 18 — QA y Deploy**

## §3 Objetivo del Paso 18

Este paso valida el sitio construido en el Paso 17 contra 35 criterios objetivos antes de publicarlo en Cloudflare Pages. Sin QA pasando, no hay deploy.

El QA cubre cuatro dimensiones: técnica, contenido, visual y rastros de IA. Cada dimensión tiene su lista de criterios verificables. Cada criterio se contrasta contra los outputs de los pasos anteriores (1–17), no contra el criterio del operador.

Este paso aporta tres cosas:

1. **35 criterios de validación** repartidos en 4 auditorías (16 + 8 + 5 + 6).
2. **Trazabilidad cruzada** — cada criterio cita el output de paso anterior contra el que se contrasta.
3. **Deploy a Cloudflare Pages** con stack canónico verificado y dominio conectado.

Cuando este paso se omite o se rellena mal:

- Se publica un sitio con URLs que no coinciden con la URL Matrix.
- Aparecen schemas mal formados en producción.
- Quedan rastros de IA que el cliente detecta antes que tú.
- El responsive se rompe en móvil porque solo se probó en desktop.
- Cloudflare falla la build por stack incompatible.

Este paso debe ejecutarse después del Paso 17 (Constructor del Sitio) y antes del Paso 19 (Acciones Futuro y Escalado). El GBP del Paso 14 se crea después de este Paso 18 (regla web-first del Paso 1.05 + Paso 10.16).

Error que previene: publicar con criterios subjetivos en lugar de objetivos.
Error que previene: schemas mal formados sin validación.
Error que previene: rastros de IA visibles en producción.
Error que previene: build de Cloudflare rota por stack incompatible.

## §4 Lo que tienes que rellenar

```text
Auditoría Técnica:
1. 16 criterios — URLs, canonical, navegación, meta tags, schemas, sitemap, robots, formulario, responsive, CTAs, links, interlinking.

Auditoría de Contenido:
2. 8 criterios — copy de cada page type coincide con Paso 15, NAP consistente, contexto local presente.

Auditoría Visual:
3. 5 criterios — colores, tipografías, layout, jerarquía, contenido propio del GeoHub.

Auditoría de Rastros IA:
4. 6 criterios — README, comentarios, meta generator, grep limpio, package.json, commits.

Deploy:
5. Conectar repositorio a Cloudflare Pages.
6. Configurar build command y dominio.
7. Verificar deploy + sitemap accesible + schemas válidos en producción.

Validación:
Sin los 35 criterios en verde, no hay deploy.
```

## §5 Ejemplo rellenado

```text
Negocio: Cerrajeros Madrid 24h
Framework: Astro + Tailwind CSS
Dominio: cerrajerosmadrid24h.com (heredado del Paso 1.02)
Hosting: Cloudflare Pages

Resultado esperado:
- 35/35 criterios en verde
- Deploy a producción con dominio activo
- Sitemap accesible en https://cerrajerosmadrid24h.com/sitemap-index.xml
- Schemas validados en Schema.org Validator y Google Rich Results Test
```

# §6 Cuerpo operativo del Paso 18

> **Definición operativa — QA del Paso 18:** validación objetiva contra outputs de pasos anteriores. No hay criterios subjetivos. Cada criterio se cita contra su output de origen. Si un criterio no pasa, se vuelve al paso correspondiente y se corrige antes de reanudar el QA.

## §7 Auditoría Técnica

16 criterios. Cada uno contrastado contra su output de origen.

| # | Elemento | Criterio | Fuente | Estado | Notas |
|:---|:---|:---|:---|:---|:---|
| 1 | URLs | Slugs coinciden con la URL Matrix. Sin 404. | Paso 3 | ☐ | |
| 2 | Canonical | Cada página tiene canonical apuntando a su propia URL | Paso 4.07–4.09 | ☐ | |
| 3 | Navegación Header | Menú sigue Paso 7. Teléfono del Paso 1.14. | Paso 7.01–7.04, Paso 1.14 | ☐ | |
| 4 | Footer | Enlaces a silos del Paso 7. NAP del Paso 1. | Paso 7, Paso 1.08–1.15 | ☐ | |
| 5 | Páginas huérfanas | Ninguna página sin enlace entrante en el Internal Linking Map | Paso 3, Paso 7 | ☐ | |
| 6 | Meta Tags | Title y description únicos por página | Paso 5.18 | ☐ | |
| 7 | H1 | Un H1 por página con keyword principal | Paso 5 (cada page type), Paso 15 | ☐ | |
| 8 | Schema Organization + WebSite | Presente en Homepage | Paso 5.18 | ☐ | |
| 9 | Schema LocalBusiness | Presente en Homepage + LBS + GeoHub con NAP del Paso 1 | Paso 5.18, Paso 1.08–1.15 | ☐ | |
| 10 | Schema Service | Presente en Service Overview Pages + Additional Category | Paso 5.18 | ☐ | |
| 11 | Schema CollectionPage | Presente en GeoHub | Paso 5.18 | ☐ | |
| 12 | Schema Article + FAQPage | Presente en GeoArticles | Paso 5.18 | ☐ | |
| 13 | Schema BreadcrumbList | Presente en todas las páginas | Paso 5.18 | ☐ | |
| 14 | Sitemap | Contiene todas las URLs del Paso 3 | Paso 3 | ☐ | |
| 15 | robots.txt | Existe, no bloquea URLs SEO, apunta al sitemap | — | ☐ | |
| 16 | Responsive | Sin desbordamientos en 375px / 768px / 1280px | Paso 16 §10 (mobile-first) | ☐ | |

Reglas operativas para §7:

- Cada criterio se valida contra su output de origen, no contra el criterio del operador.
- Si un criterio falla, se vuelve al paso correspondiente y se corrige antes de seguir.
- Validar schemas con Schema.org Validator + Google Rich Results Test.

## §8 Auditoría de Contenido

8 criterios. Validan que el copy del sitio coincide con lo redactado en el Paso 15.

| # | Elemento | Criterio | Fuente | Estado | Notas |
|:---|:---|:---|:---|:---|:---|
| 1 | Copy Homepage | Coincide con las 4 capas del Paso 15.06–15.09 | Paso 15.06–15.09 | ☐ | |
| 2 | Copy Service Overview Pages | Coincide con las 4 capas del Paso 15.11–15.14 (×5 SOs) | Paso 15.11–15.14 | ☐ | |
| 3 | Copy Location-Based Service Pages | Coincide con las 4 capas del Paso 15.16–15.19 (×5 LBS) | Paso 15.16–15.19 | ☐ | |
| 4 | Copy Additional Category | Coincide con las 4 capas del Paso 15.21–15.24 | Paso 15.21–15.24 | ☐ | |
| 5 | Copy GeoHub | Coincide con las 4 capas del Paso 15.26–15.29 | Paso 15.26–15.29 | ☐ | |
| 6 | Copy GeoArticles | Coincide con las 4 capas del Paso 15.31–15.34 (×15) | Paso 15.31–15.34 | ☐ | |
| 7 | Puentes narrativos GeoArticles | 3 puntos de transición a la LBS padre con anchors variados | Paso 15.35 | ☐ | |
| 8 | NAP consistente | Mismo NAP en Header, Footer, Contact, schema | Paso 1.08–1.15 | ☐ | |

Reglas operativas para §8:

- Si el copy en producción difiere del Paso 15, hay que decidir: ¿el copy del Paso 15 estaba mal o el constructor lo modificó?
- Cualquier modificación del copy en el constructor se vuelve al Paso 15 para regenerar la decisión correspondiente.
- Validar trust signals: ningún claim sin prueba (Paso 15 §20).

## §9 Auditoría Visual

5 criterios. Validan que la web aplica los Design Tokens y el Layout-Map del Paso 16.

| # | Elemento | Criterio | Fuente | Estado | Notas |
|:---|:---|:---|:---|:---|:---|
| 1 | Colores | Coinciden con Design Tokens del Paso 16.18–16.20 | Paso 16.18–16.20 | ☐ | |
| 2 | Tipografías | Coinciden con Design Tokens del Paso 16.18 | Paso 16.18 | ☐ | |
| 3 | Layout | Estructura de secciones sigue Layout-Map del Paso 16.27–16.32 por page type | Paso 16.27–16.32 | ☐ | |
| 4 | Jerarquía Homepage | Servicios Core destacados sobre Additional Category | Paso 15.05, Paso 16.27 | ☐ | |
| 5 | GeoHub contenido propio | No es solo índice de enlaces — tiene contenido propio | Paso 15.26 | ☐ | |

Reglas operativas para §9:

- Validar contraste WCAG AA en todos los pares texto/fondo.
- Validar comportamiento responsive en 3 breakpoints.
- Si un color o tipografía en producción no está en los Design Tokens, volver al Paso 16.

## §10 Auditoría de Rastros de IA

6 criterios. Validan la limpieza de Fase 6 del Paso 17.

| # | Elemento | Criterio | Estado | Notas |
|:---|:---|:---|:---|:---|
| 1 | README.md | No contiene texto del starter kit | ☐ | |
| 2 | Comentarios internos | Sin instrucciones de IA en el código | ☐ | |
| 3 | meta generator | No aparece en HTML de producción | ☐ | |
| 4 | Referencias a IA | grep limpio en todo el repositorio | ☐ | |
| 5 | package.json | Nombre del proyecto real | ☐ | |
| 6 | Commits | Sin referencias a IA en mensajes | ☐ | |

Reglas operativas para §10:

- Si en QA aparece un rastro nuevo, volver a la Fase 6 del Paso 17.
- El cliente debe poder revisar el repositorio sin ver pruebas de generación automática.

## §11 Resultado Global

| Área | Criterios | Superados | Estado |
|:---|:---|:---|:---|
| Técnica | 16 | ☐/16 | ☐ |
| Contenido | 8 | ☐/8 | ☐ |
| Visual | 5 | ☐/5 | ☐ |
| Rastros IA | 6 | ☐/6 | ☐ |
| **TOTAL** | **35** | **☐/35** | **☐** |

Estado global: ☐ PENDIENTE / ☐ APROBADO

Reglas operativas para §11:

- Sin 35/35 en verde, no se inicia Fase Deploy (§12).
- Cualquier criterio en rojo bloquea el deploy.
- Documentar en el output qué criterio falló y dónde se corrigió.

## §12 Deploy a Cloudflare Pages

Tras los 35 criterios en verde, se ejecuta el deploy.

### §12.1 Setup repositorio + Cloudflare

| Acción | Estado | Notas |
|:---|:---|:---|
| Crear repositorio remoto (GitHub) | ☐ | Repo privado o público según cliente |
| Conectar repositorio a Cloudflare Pages | ☐ | Cloudflare Dashboard → Pages → Connect Git |
| Configurar build command | ☐ | `pnpm run build` (no `npm run build`) |
| Configurar build output directory | ☐ | `dist` |
| Configurar Node version | ☐ | Compatible con Astro 5 + pnpm |

### §12.2 Dominio y DNS

| Acción | Estado | Notas |
|:---|:---|:---|
| Conectar dominio del Paso 1.02 | ☐ | cerrajerosmadrid24h.com (registro DNS A o CNAME) |
| Configurar redirección www ↔ apex | ☐ | Versión canónica del Paso 1.03 |
| Activar SSL/HTTPS | ☐ | Cloudflare auto-SSL |
| Configurar redirects 301 si hay URLs viejas | ☐ | Si el dominio ya estaba en uso |

### §12.3 Verificación post-deploy

| Acción | Estado | Notas |
|:---|:---|:---|
| Sitemap accesible | ☐ | https://[dominio]/sitemap-index.xml carga sin error |
| robots.txt accesible | ☐ | https://[dominio]/robots.txt carga sin error |
| Schemas válidos en producción | ☐ | Pasar 3 URLs por Schema.org Validator + Rich Results Test |
| Responsive en 375 / 768 / 1280 | ☐ | Verificar en producción, no solo local |
| 200 OK en todas las URLs del sitemap | ☐ | Crawler que recorre el sitemap entero |

Reglas operativas para §12:

- Antes del primer push, ejecutar `pnpm install && pnpm build` localmente.
- El stack en Cloudflare debe coincidir con el local: `pnpm run build`, no `npm run build`.
- Si Cloudflare falla la build, revisar versiones de Astro, Tailwind y pnpm.
- El sitemap debe registrarse en Google Search Console tras el deploy.

## §13 No publicar con criterios en rojo — Regla operativa 1

### §13.1 Explicación

Cualquier criterio en rojo bloquea el deploy. La tentación de publicar con un criterio menor sin corregir lleva a sitios con bugs visibles. La regla "todo verde o nada" es la barrera de calidad.

### §13.2 Patrón

```text
QA → 35 criterios → ¿35 en verde? → sí: deploy / no: parar y corregir
```

### §13.3 Ejemplo correcto

```text
QA: 34/35 en verde. Criterio 16 (responsive) falla en 768px porque el menú se desborda.
Acción: parar deploy. Volver al Paso 17 a corregir el menú. Reanudar QA. Confirmar 35/35.
```

### §13.4 Regla final

```text
Sin 35/35 en verde, no hay deploy.
```

## §14 QA contrasta contra outputs, no opinión — Regla operativa 2

### §14.1 Explicación

Cada criterio del QA tiene su output de origen citado. La validación es objetiva: ¿el sitio en producción coincide con lo aprobado en el paso correspondiente? No "¿el operador opina que está bien?".

### §14.2 Patrón

```text
Criterio QA → output de origen → comparación literal → ¿coinciden? → sí: ✓ / no: ✗
```

### §14.3 Ejemplo correcto

```text
Criterio Técnico 1: "URLs coinciden con la URL Matrix".
Comparación: lista de URLs en producción vs lista en Paso 3.
Resultado: 28 URLs SEO + /contacto/ presentes en producción → ✓
```

### §14.4 Regla final

```text
QA es contraste contra outputs anteriores. No hay criterio subjetivo.
```

## §15 Schemas validados antes de deploy — Regla operativa 3

### §15.1 Explicación

Schema mal formado puede confundir a Google, generar resultados enriquecidos rotos, o invalidar la página entera. Validar antes de deploy evita el desastre.

### §15.2 Patrón

```text
Schema implementado → Schema.org Validator → Google Rich Results Test → corregir errores → repetir hasta limpio → deploy
```

### §15.3 Ejemplo correcto

```text
Pre-deploy:
- Homepage: Organization + WebSite + LocalBusiness + FAQPage validados ✓
- LBS-001: LocalBusiness + Service + FAQPage + BreadcrumbList validados ✓
- GeoArticle GA-001: Article + FAQPage + BreadcrumbList + Speakable validados ✓
```

### §15.4 Regla final

```text
Sin schemas validados, no hay deploy.
```

## §16 Build local antes de cada push — Regla operativa 4

### §16.1 Explicación

Cloudflare ejecuta `pnpm run build` cuando recibe un push. Si la build local no pasa, la build en Cloudflare tampoco. Verificar antes evita roturas en producción.

### §16.2 Patrón

```text
Cambios → pnpm install → pnpm build → ¿pasa? → sí: push / no: arreglar y reintentar
```

### §16.3 Ejemplo correcto

```text
Antes del push final:
pnpm install
pnpm build
> Build succeeded ✓
git push origin main
> Cloudflare deploy in progress
> Cloudflare deploy succeeded ✓
```

### §16.4 Regla final

```text
Sin build local pasando, no hay push.
```

## §17 Dominio del Paso 1.02 — Regla operativa 5

### §17.1 Explicación

El dominio que se conecta a Cloudflare es el del Paso 1.02 (URL principal de la web). No se inventa dominio en el Paso 18 ni se usa uno distinto al del NAP. La consistencia con el NAP es crítica para Local SEO.

### §17.2 Patrón

```text
Paso 1.02 dominio → DNS apunta a Cloudflare → Cloudflare entrega producción → schema y NAP referencian el mismo dominio
```

### §17.3 Ejemplo correcto

```text
Paso 1.02: https://www.cerrajerosmadrid24h.com
Cloudflare: dominio conectado www.cerrajerosmadrid24h.com con SSL activo.
Schema LocalBusiness: url = https://www.cerrajerosmadrid24h.com
NAP en Footer: enlace a https://www.cerrajerosmadrid24h.com
```

### §17.4 Regla final

```text
Un dominio. El del Paso 1.02. Sin desviaciones.
```

## §18 Sitemap registrado en GSC tras deploy — Regla operativa 6

### §18.1 Explicación

El sitemap accesible no garantiza indexación. Hay que registrarlo en Google Search Console tras el deploy para acelerar el rastreo. Sin registro, Google puede tardar semanas en descubrir las páginas.

### §18.2 Patrón

```text
Deploy → sitemap accesible → Google Search Console → enviar sitemap → verificar rastreo
```

### §18.3 Ejemplo correcto

```text
Post-deploy:
1. Verificar https://cerrajerosmadrid24h.com/sitemap-index.xml carga.
2. Google Search Console → Sitemaps → "Add a new sitemap" → sitemap-index.xml.
3. Verificar status "Success" en GSC.
```

### §18.4 Regla final

```text
Sitemap se registra en GSC tras cada deploy mayor.
```

## §19 No fake reviews validable en QA — Regla operativa 7

### §19.1 Explicación

El QA del Paso 18 verifica que el copy publicado respeta la regla web-first del sistema (Paso 1.05, Paso 14.46). Si en producción aparecen reseñas inventadas, el QA falla y se vuelve al Paso 15.

### §19.2 Patrón

```text
QA Contenido → buscar claims tipo "X reseñas" o "miles de clientes" → si aparecen sin fuente, volver al Paso 15
```

### §19.3 Ejemplo correcto

```text
Pre-Paso 14 (sin GBP):
- Trust signals: 10+ años, técnicos cualificados, garantía, servicio móvil ✓
- Sin "250+ reseñas", "miles de clientes", testimonios sin permiso ✓
```

### §19.4 Regla final

```text
Sin GBP creado (Paso 14), sin reseñas en el copy. QA verifica.
```

## §20 GBP solo después de QA aprobado — Regla operativa 8

### §20.1 Explicación

El sistema es web-first. El GBP del Paso 14 se crea después del Paso 18 (QA + Deploy). Sin web publicada, no hay base para crear el GBP. El orden es estricto.

### §20.2 Patrón

```text
QA aprobado → Deploy → web pública → GBP creación (Paso 14)
```

### §20.3 Ejemplo correcto

```text
Día 1: QA 35/35 ✓
Día 2: Deploy a Cloudflare ✓
Día 3: Sitemap registrado en GSC ✓
Día 4: Crear GBP (Paso 14) con URL pública.
```

### §20.4 Regla final

```text
GBP después de QA + Deploy. Sin atajos.
```

## §21 Documentar el deploy — Regla operativa 9

### §21.1 Explicación

El deploy a Cloudflare incluye configuración (build command, dominio, SSL, redirects). Sin documentación, futuras intervenciones (cambios de dominio, migración) se hacen a ciegas.

### §21.2 Patrón

```text
Deploy → documentar configuración Cloudflare → almacenar en repo o doc del cliente
```

### §21.3 Ejemplo correcto

```text
deploy-config.md:
- Repo: github.com/cliente/cerrajeros-madrid-24h
- Build command: pnpm run build
- Output dir: dist
- Domain: cerrajerosmadrid24h.com (apex + www)
- SSL: Cloudflare auto
- Redirects: apex → www
```

### §21.4 Regla final

```text
Toda configuración del deploy queda documentada antes de cerrar el Paso 18.
```

## §22 Checklist final del Paso 18

| Check | Pregunta | Estado |
|---|---|---|
| Auditoría Técnica | ¿16/16 criterios en verde? | ☐ |
| Auditoría de Contenido | ¿8/8 criterios en verde? | ☐ |
| Auditoría Visual | ¿5/5 criterios en verde? | ☐ |
| Auditoría Rastros IA | ¿6/6 criterios en verde? | ☐ |
| Build local | ¿`pnpm install && pnpm build` pasa? | ☐ |
| Schemas validados | ¿Schema.org Validator + Rich Results Test sin errores? | ☐ |
| Repositorio conectado a Cloudflare | ¿Build automática activa? | ☐ |
| Dominio conectado | ¿Apex + www apuntan a Cloudflare con SSL? | ☐ |
| Producción accesible | ¿Sitemap, robots.txt y todas las URLs cargan en producción? | ☐ |
| GSC registrado | ¿Sitemap registrado en Google Search Console? | ☐ |
| Configuración documentada | ¿Existe `deploy-config.md` con la configuración? | ☐ |

## §23 Outputs del Paso 18

- Output 18.1 — Auditoría Técnica con 16 criterios verificados.
- Output 18.2 — Auditoría de Contenido con 8 criterios verificados.
- Output 18.3 — Auditoría Visual con 5 criterios verificados.
- Output 18.4 — Auditoría de Rastros IA con 6 criterios verificados.
- Output 18.5 — Configuración Cloudflare Pages documentada.
- Output 18.6 — Sitio publicado en producción con dominio activo.
- Output 18.7 — Sitemap registrado en Google Search Console.

---

# §24 Fuentes internas GMB Crush usadas

- Todos los pasos anteriores (1–17) — el QA contrasta contra sus outputs.
- Bloque 6 antiguo "Revisión y QA" (referencia metodológica para 35 criterios).
- Bloque 10 antiguo "Deploy Cloudflare Registro" (referencia metodológica para deploy).

> **Nota importante — Web-first y orden estricto:**
> El GBP del Paso 14 se crea después del Paso 18. Esta regla viene del Paso 1.05 (GBP creation timing = After website launch) y del Paso 10.16 (web-first). Cualquier intento de adelantar el Paso 14 antes del deploy rompe el flujo web-first.
