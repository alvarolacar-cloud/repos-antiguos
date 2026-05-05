# Fuente 02 — `Cliente preflight`

> **Qué es:** valor declarado por el cliente en los 8 campos del Bloque 0 (5 negocio + 3 credenciales deploy).
> **Tool / método:** lectura de `02 ejecución/Bloque 0 Preflight/00preflight.md`. Tokens/credenciales se leen de entorno seguro, no del markdown.

> **Cómo leer este doc:** lista de TODOS los inputs del Bloque 0 + outputs del sistema cuya `Fuente` es `Cliente preflight`, con el detalle completo de cada uno.

---

## Inputs del Bloque 0 (8 inputs)

### Campos de negocio (5)

#### Input 1 — Nombre del negocio
- **Qué es:** nombre comercial canónico del cliente.
- **Para qué sirve:** alimenta 1.1 Business Name → brand anchor en Homepage H1, schema Organization, anchors branded, GBP listing.
- **Dato que buscamos:** `[nombre comercial del cliente]`.
- **Cómo se obtiene:** Le preguntamos al cliente cómo se llama el negocio.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente declara en `02 ejecución/Bloque 0 Preflight/00preflight.md`.

#### Input 2 — Qué hace (descripción corta)
- **Qué es:** descripción breve del servicio principal del negocio.
- **Para qué sirve:** input para inferir categoría GBP, core services, sector. Alimenta análisis Local Pack del Paso 1.
- **Dato que buscamos:** `[descripción corta de la actividad del negocio en 1-2 frases]`.
- **Cómo se obtiene:** Le pedimos al cliente que nos describa en pocas palabras a qué se dedica.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente declara.

#### Input 3 — Dirección con CP
- **Qué es:** dirección física completa del negocio (calle + número + ciudad + CP).
- **Para qué sirve:** alimenta 1.4 Full NAP, 1.7 Main City, 1.8 Physical Location City, 1.10 Direct LCAs.
- **Dato que buscamos:** `[dirección física: calle + número + ciudad + CP]`.
- **Cómo se obtiene:** Le pedimos al cliente la dirección física del negocio.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente declara.

#### Input 4 — Estado del GBP
- **Qué es:** lifecycle del Google Business Profile en el momento de arrancar.
- **Para qué sirve:** alimenta 1.3 GBP Lifecycle Status. Determina si aplica web-first (default) o el cluster se construye con GBP ya existente.
- **Cómo se asigna:**
  - **Not Created** → no existe GBP. Default web-first.
  - **Created** → GBP creado pero sin verificar.
  - **Verified** → GBP verificado y operativo.
  - **Pending** → en proceso de verificación.
  - **Suspended** → GBP suspendido por Google.
- **Dato que buscamos:** `[uno de los 5 estados GBP]`.
- **Cómo se obtiene:** Le preguntamos al cliente si tiene ficha de Google y en qué estado está.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente declara cuál de los 5 estados aplica.

#### Input 5 — Ciudades para análisis Local Pack
- **Qué es:** lista de ciudades para ejecutar análisis competitivo (extracción top 5 Local Pack).
- **Para qué sirve:** input para análisis Local Pack del Paso 1. Normalmente la Main City + 1-2 ciudades de referencia para benchmark sectorial cruzado.
- **Dato que buscamos:** `[lista de ciudades para Local Pack: Main City + comparables]`.
- **Cómo se obtiene:** Le preguntamos al cliente qué ciudades nos interesa analizar (su ciudad principal + alguna comparable del sector).
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente declara.

### Credenciales de deploy (3)

#### Input 6 — Token de GitHub
- **Qué es:** Personal Access Token con permisos sobre el repo del cluster (push + actions).
- **Para qué sirve:** alimenta 18.6 Sitio en Producción → push a main + auto-deploy desde GitHub Actions.
- **Dato que buscamos:** `[GitHub Personal Access Token con scopes repo + workflow]`.
- **Cómo se obtiene:** Le pedimos al cliente que nos genere un token de GitHub con permisos de push sobre el repo del cluster.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente lo crea en GitHub Settings → Developer Settings → Personal Access Tokens. **⚠ Aviso:** se almacena en entorno seguro, no en markdown.

#### Input 7 — ID account de Cloudflare
- **Qué es:** Account ID del cliente en Cloudflare.
- **Para qué sirve:** alimenta 18.5 Configuración Cloudflare → wrangler/dashboard apuntan a la cuenta correcta para deploy.
- **Dato que buscamos:** `[Cloudflare Account ID]`.
- **Cómo se obtiene:** Le pedimos al cliente el ID de su cuenta de Cloudflare (visible en su dashboard).
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente lo provee — visible en dashboard Cloudflare > Overview.

#### Input 8 — Token de Cloudflare
- **Qué es:** API Token con permisos sobre Pages + DNS del dominio del cluster.
- **Para qué sirve:** alimenta 18.5 Configuración Cloudflare + 18.6 Sitio en Producción + 18.7 Sitemap GSC (DNS TXT verification).
- **Dato que buscamos:** `[Cloudflare API Token con scopes Pages:Edit + DNS:Edit del zone del cliente]`.
- **Cómo se obtiene:** Le pedimos al cliente que nos genere un API token de Cloudflare con permisos sobre Pages y DNS del dominio.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Cliente lo crea en Cloudflare > My Profile > API Tokens. **⚠ Aviso:** se almacena en entorno seguro.

---

## Outputs (10 total — 4 directos preflight + 6 reasignados desde `Doctrina + Cliente confirmación`)

> **Reasignación post-unificación:** tras eliminar la fuente `Doctrina + Cliente confirmación`, sus 6 outputs se reasignaron así:
> - **Sin filtro doctrinal (2):** 1.4 Full NAP, 16.1 Identidad Visual → `Cliente preflight` (puro).
> - **Con filtro doctrinal (4):** 14.1 GBP creado, 14.2 Estado verificación, 14.4 Modelo negocio, 14.11 Plan fotos → `Cliente preflight + Doctrina GMB Crush`.

### 1.1 Business Name
- **Qué es:** nombre comercial canónico del cliente.
- **Para qué sirve:** brand anchor en Homepage H1 (5.1), schema Organization, anchors branded (7.9), GBP listing (14.1+).
- **Dato que buscamos:** `[nombre comercial del cliente]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 1 (Nombre del negocio).
- **Cómo se obtiene:** Lo cogemos directamente del preflight.
  - **Fuente:** `Info heredada` (output puro heredado del preflight).

### 1.2 Website URL / Canonical Domain
- **Qué es:** dominio canónico en formato HTTPS + www + trailing slash (ej: `https://www.cerrajerosmadrid24h.com/`).
- **Para qué sirve:** alimenta 4.1 Canonical Domain → todas las URLs del cluster usan este formato.
- **Dato que buscamos:** `[dominio canónico HTTPS+www+trailing slash]`.
- **Cómo se obtiene:** Lo normal es que el cliente nos diga su web. Si no la tiene, slugificamos el nombre del negocio + `.com` y se lo proponemos.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Slugify(nombre del negocio) + `.com` propuesto, o cliente declara dominio existente. Forzar formato HTTPS + www + trailing.

### 1.3 GBP Lifecycle Status
- **Qué es:** estado actual del GBP + reglas doctrinales asociadas (web-first / verification flow / URL del GBP).
- **Para qué sirve:** alimenta 9.15 GBP Not Created QA Checklist, 12.7 Web-First GBP Rule, 14.1 GBP creado.
- **Dato que buscamos:** `[estado GBP del preflight]` + `[regla web-first según el estado]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 4 (Estado del GBP).
- **Cómo se obtiene:** Cogemos el estado declarado por el cliente y le aplicamos la regla doctrinal web-first según el caso.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush`.
  - **Método:** Estado del preflight + aplicar §7 (web-first) que dicta timing/verification/URL.

### 1.8 Physical Location City
- **Qué es:** ciudad de presencia física real del negocio.
- **Para qué sirve:** validación anti-fake-location (5.10, 9.7, 4.14). Normalmente coincide con Main City.
- **Dato que buscamos:** `[ciudad de presencia física del negocio]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 3 (Dirección con CP).
- **Cómo se obtiene:** Lo cogemos del preflight — la ciudad donde el negocio tiene presencia física real.
  - **Fuente:** `Info heredada` (output puro heredado del preflight).

---

## Outputs reasignados desde `Doctrina + Cliente confirmación` (6 outputs)

> Fueron `Doctrina + Cliente confirmación` antes de la unificación. Se separan según si la doctrina aporta criterio o no.

### Sin filtro doctrinal (2 outputs) — `Cliente preflight` puro

#### 1.4 Full NAP (8 campos)
- **Qué es:** Name + Address + Phone consolidados en 8 campos (Business Name, Street, City, State, ZIP, Country, Phone, Email).
- **Para qué sirve:** schema LocalBusiness (5.10), página de contacto (15.9), GBP NAP (14.3), validaciones de coherencia (4.14, 5.10, 9.7).
- **Dato que buscamos:** `[NAP en 8 campos: business name + street + city + state + zip + country + phone + email]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 1 (Business Name) + Input 3 (Dirección con CP).
- **Cómo se obtiene:** Cogemos lo del preflight (nombre + dirección) y le pedimos al cliente que nos confirme también teléfono y email del negocio.
  - **Fuente:** `Cliente preflight` — la doctrina no aporta criterio (cliente declara los 8 campos sin filtro doctrinal).
  - **Método:** Cliente declara los 8 campos durante ejecución del Paso 1 (los 6 primeros del preflight; phone + email confirmados).

#### 16.1 Identidad Visual y CSS Base
- **Qué es:** tokens visuales extraídos de la web de referencia del cliente (colores, typography, spacing, shadows, radius).
- **Para qué sirve:** alimenta 16.4 Design Tokens, 16.5 Reglas CSS, 17.3 Componentes UI.
- **Dato que buscamos:** `[paleta de colores hex]` + `[font families + sizes + weights]` + `[spacing scale]` + `[border radius]` + `[shadows]`.
- **Cómo se obtiene:** El cliente nos provee la URL de su web de referencia y nosotros la inspeccionamos visualmente + DevTools para extraer los tokens visuales (colores, tipografía, spacing, etc.).
  - **Fuente:** `Cliente preflight` — la doctrina no aporta criterio (cliente provee URL ref, operador extrae tokens sin filtro doctrinal).
  - **Método:** Cliente provee URL web ref → operador inspecciona visual + DevTools → extrae tokens.

### Con filtro doctrinal (4 outputs) — `Cliente preflight + Doctrina GMB Crush`

#### 14.1 GBP creado o plan de creación listo
- **Qué es:** GBP creado en Google + plan de listing definido (categorías + servicios + descripción + horarios).
- **Para qué sirve:** alimenta el resto del Bloque 7.
- **Dato que buscamos:** `[GBP creado en Google con NAP + categorías + servicios] o [plan listo para crearlo cuando aplique]`.
- **Cómo se obtiene:** Aplicamos la doctrina §7 (web-first): el GBP se crea/aprueba post-Paso 18 (web LIVE). Cliente confirma timing.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush`.
  - **Método:** Doctrina §7 web-first + cliente declara timing.

#### 14.2 Estado de verificación definido
- **Qué es:** uno de 5 estados (Not Created / Created / Verified / Pending / Suspended).
- **Para qué sirve:** alimenta workflow del Bloque 7.
- **Cómo se asigna:**
  - **Not Created** → no existe GBP.
  - **Created** → GBP creado, sin verificar.
  - **Verified** → verificado y operativo.
  - **Pending** → en verificación.
  - **Suspended** → suspendido por Google.
- **Dato que buscamos:** `[uno de los 5 estados]`.
- **Cómo se obtiene:** La doctrina dicta los 5 estados válidos. Cliente declara cuál aplica.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush`.
  - **Método:** Doctrina dicta set válido + cliente declara estado actual.

#### 14.4 Modelo de negocio definido
- **Qué es:** uno de 3 modelos (Storefront / Service Area Business / Hybrid).
- **Para qué sirve:** define configuración GBP (dirección visible, areaServed, fotos relevantes).
- **Cómo se asigna:**
  - **Storefront** → clientes vienen al local (peluquería, restaurante).
  - **SAB** → negocio va al cliente (cerrajero, fontanero).
  - **Hybrid** → ambos (clínica vet con visitas a domicilio).
- **Dato que buscamos:** `[uno de los 3 modelos según realidad operativa del negocio]`.
- **Cómo se obtiene:** Le preguntamos al cliente cómo opera realmente: ¿los clientes vienen al local? ¿él va al cliente? ¿ambas?
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush` — la doctrina §10 dicta los 3 valores válidos. Cliente declara cuál aplica según realidad operativa.
  - **Método:** Cliente declara según realidad operativa, aplicando §10. Operador puede inferir del preflight (cerrajero → SAB / peluquería → Storefront), confirmar solo en casos ambiguos.

#### 14.11 Plan de fotos
- **Qué es:** pack de fotos reales del cliente clasificadas por tipo (logo, cover, exterior, interior, team, vehicle, work examples, local context).
- **Para qué sirve:** GBP photos section.
- **Dato que buscamos:** `[lista de fotos disponibles del cliente clasificadas por tipo + presencia/no según modelo de negocio]`.
- **Cómo se obtiene:** Le pedimos al cliente que nos dé fotos reales (logo, vehículo, trabajos, contexto local) y las clasificamos según §16 según su modelo de negocio.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush` — la doctrina §16 dicta la clasificación por tipo según modelo de negocio. Cliente provee las fotos reales.
  - **Método:** Cliente provee fotos reales + clasificación según §16.

---

## Outputs marcados `no aplica` (relacionados con esta fuente)

> Outputs que originalmente eran `Cliente confirmación` y que ahora están marcados como `no aplica`. Se conservan en el sistema con su razón documentada.

| Output | Razón "no aplica" |
|---|---|
| 10.3 CMS + capabilities | Stack canónico definido en 17.2 (Astro 5 + Tailwind v3 + pnpm + Cloudflare). El CMS del cliente es irrelevante en el flujo actual |
| 16.3 Propuesta de Diseño aprobada | El sistema deriva el diseño extrayendo tokens de la web de referencia del cliente (16.1), sin ciclo mockup→aprobación |

---

## Resumen

- **Total inputs Bloque 0:** 8 (5 negocio + 3 credenciales)
- **Total outputs con `Cliente preflight`:** 10 (4 directos preflight + 6 reasignados desde `Doctrina + Cliente confirmación`)
  - **Puros `Cliente preflight`:** 3 (1.2, 1.4, 16.1)
  - **Combinados `Cliente preflight + Doctrina GMB Crush`:** 5 (1.3, 14.1, 14.2, 14.4, 14.11)
  - **Heredados puros del preflight:** 2 (1.1, 1.8 → fuente formal `Info heredada` aunque se nutren del preflight)

**Pasos donde aparece como fuente principal:** 0 (preflight), 1, 14, 16.

**Pasos donde alimenta outputs vía credenciales:** 18 (deploy) — los campos 6, 7, 8 son consumidos por:
- **Configuración Cloudflare** (18.5) — usa ID account + Token de Cloudflare
- **Sitio en Producción** (18.6) — usa Token de GitHub (push) + Cloudflare auto-deploy
- **Sitemap en GSC** (18.7) — DNS TXT verification usa Token de Cloudflare

> **Nota:** los 8 inputs del preflight resuelven directamente outputs del Paso 1 + alimentan deploy en Paso 18. Si el preflight se ampliase con más campos (categoría primaria, servicios principales, modelo negocio, etc.), más outputs podrían pasar de `⚠ inferido` a `confirmed` directamente — ver "Análisis del impacto del Preflight" en `02fuentes-y-outputs.md`.
