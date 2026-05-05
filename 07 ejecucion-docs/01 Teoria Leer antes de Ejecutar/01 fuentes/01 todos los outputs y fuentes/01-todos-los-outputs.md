# 04 — Outputs explicados

> Guía operativa de los **242 outputs (5 marcados 'no aplica')** del sistema GMB Crush. Cada output explicado con un patrón consistente:
>
> - **Qué es:** definición simple
> - **Para qué sirve:** rol downstream con cross-refs nominales
> - **Cómo se asigna:** bullets con ejemplos (solo en outputs con niveles discretos)
> - **Dato que buscamos:** placeholder del dato bruto (3 checks: transferibilidad / autosuficiencia / spreadsheet)
> - **Hereda info de pasos anteriores:** outputs upstream referenciados (solo si hay herencia)
> - **Cómo se obtiene:** frase plain-language + bullets Fuente / Método

> **Diferencia con `02fuentes-y-outputs.md`:** ese doc es vista catálogo (fuente + método); este es vista operativa (qué hace cada output, dónde encaja, qué dato concreto se busca, cómo se explica en lenguaje normal).

---

## Tabla de contenidos

- [Bloque 0 — Preflight (8 inputs)](#bloque-0--preflight-8-inputs)
- [Bloque 1 — Fundamentos (42 outputs)](#bloque-1--fundamentos-42-outputs)
- [Bloque 2 — Arquitectura (57 outputs)](#bloque-2--arquitectura-57-outputs)
- [Bloque 3 — Priorización (43 outputs)](#bloque-3--priorización-43-outputs)
- [Bloque 4 — Automatización (41 outputs)](#bloque-4--automatización-41-outputs)
- [Bloque 5 — Salida a Mercado (39 outputs)](#bloque-5--salida-a-mercado-39-outputs)
- [Bloque 7 — GBP (20 outputs)](#bloque-7--gbp-20-outputs)
- [Resumen — outputs problemáticos](#resumen--outputs-problemáticos)

---

## Bloque 0 — Preflight (8 inputs)

> Inputs mínimos del cliente. Los 5 primeros derivan en outputs del Paso 1; los 3 últimos alimentan deploy en Paso 18.

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

## Bloque 1 — Fundamentos (42 outputs)

### Paso 1 — Intake Form (14 outputs)

#### 1.1 Business Name
- **Qué es:** nombre comercial canónico del cliente.
- **Para qué sirve:** brand anchor en Homepage H1 (5.1), schema Organization, anchors branded (7.9), GBP listing (14.1+).
- **Dato que buscamos:** `[nombre comercial del cliente]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 1 (Nombre del negocio).
- **Cómo se obtiene:** Lo cogemos directamente del preflight.
  - **Fuente:** `Info heredada`.

#### 1.2 Website URL / Canonical Domain
- **Qué es:** dominio canónico en formato HTTPS + www + trailing slash (ej: `https://www.cerrajerosmadrid24h.com/`).
- **Para qué sirve:** alimenta 4.1 Canonical Domain → todas las URLs del cluster usan este formato.
- **Dato que buscamos:** `[dominio canónico HTTPS+www+trailing slash]`.
- **Cómo se obtiene:** Lo normal es que el cliente nos diga su web. Si no la tiene, slugificamos el nombre del negocio + `.com` y se lo proponemos.
  - **Fuente:** `Cliente preflight`.
  - **Método:** Slugify(nombre del negocio) + `.com` propuesto, o cliente declara dominio existente. Forzar formato HTTPS + www + trailing.

#### 1.3 GBP Lifecycle Status
- **Qué es:** estado actual del GBP + reglas doctrinales asociadas (web-first / verification flow / URL del GBP).
- **Para qué sirve:** alimenta 9.15 GBP Not Created QA Checklist, 12.7 Web-First GBP Rule, 14.1 GBP creado.
- **Dato que buscamos:** `[estado GBP del preflight]` + `[regla web-first según el estado]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 4 (Estado del GBP).
- **Cómo se obtiene:** Cogemos el estado declarado por el cliente y le aplicamos la regla doctrinal web-first según el caso.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush`.
  - **Método:** Estado del preflight + aplicar §7 (web-first) que dicta timing/verification/URL.

#### 1.4 Full NAP (8 campos)
- **Qué es:** Name + Address + Phone consolidados en 8 campos (Business Name, Street, City, State, ZIP, Country, Phone, Email).
- **Para qué sirve:** schema LocalBusiness (5.10), página de contacto (15.9), GBP NAP (14.3), validaciones de coherencia (4.14, 5.10, 9.7).
- **Dato que buscamos:** `[NAP en 8 campos: business name + street + city + state + zip + country + phone + email]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 1 (Business Name) + Input 3 (Dirección con CP).
- **Cómo se obtiene:** Cogemos lo del preflight (nombre + dirección) y le pedimos al cliente que nos confirme también teléfono y email del negocio.
  - **Fuente:** `Cliente preflight` — la doctrina no aporta criterio (cliente declara los 8 campos sin filtro doctrinal).
  - **Método:** Cliente declara los 8 campos durante ejecución del Paso 1 (los 6 primeros del preflight; phone + email confirmados).

#### 1.5 Planned Primary GBP Category
- **Qué es:** categoría primaria del GBP que mejor representa al negocio.
- **Para qué sirve:** alimenta 2.1 GBP Categories Status, 8.4 GBP Category Relevance, 14.5 Categoría confirmada.
- **Dato que buscamos:** `[categoría GBP más repetida en top 5 Local Pack del sector]`.
- **Cómo se obtiene:** Buscamos el servicio del cliente en Google Maps en la ciudad principal, miramos los 5 primeros perfiles del Local Pack, y la categoría primaria que más se repite es la nuestra.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Buscar `[servicio] [Main City]` en Maps → top 5 → categoría primaria más frecuente. Doctrina dicta "más frecuente = Primary".

#### 1.6 Planned Additional GBP Categories
- **Qué es:** categorías secundarias del GBP (cubiertas por core services o con página propia).
- **Para qué sirve:** alimenta 2.1, 3.3 Additional Category Slugs, 5.4 Spec AC, 14.6 Categorías confirmadas/descartadas.
- **Dato que buscamos:** `[lista de categorías GBP secundarias frecuentes en top 5 Local Pack]` + `[clasificación por categoría: cubierta/página propia]`.
- **Cómo se obtiene:** En el mismo análisis del top 5 Local Pack, listamos las categorías secundarias frecuentes. Para cada una decidimos si la cubre algún core service o si necesita página propia.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Top 5 Local Pack → categorías secundarias frecuentes → clasificar cubierta/página propia según doctrina.

#### 1.7 Main City
- **Qué es:** ciudad principal de operación del cluster (city del NAP).
- **Para qué sirve:** ancla geográfica de toda la arquitectura. Alimenta 4.5 GeoHub Style, 4.6 LBS pattern, 4.8 GeoArticle pattern, schemas, contenido.
- **Dato que buscamos:** `[ciudad principal extraída del NAP]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP (campo `City`).
- **Cómo se obtiene:** Lo extraemos directamente del NAP del cliente — la ciudad de la dirección que nos dio.
  - **Fuente:** `Info heredada`.

#### 1.8 Physical Location City
- **Qué es:** ciudad de presencia física real del negocio.
- **Para qué sirve:** validación anti-fake-location (5.10, 9.7, 4.14). Normalmente coincide con Main City.
- **Dato que buscamos:** `[ciudad de presencia física del negocio]`.
- **Hereda info de pasos anteriores:** Bloque 0 — Input 3 (Dirección con CP).
- **Cómo se obtiene:** Lo cogemos del preflight — la ciudad donde el negocio tiene presencia física real.
  - **Fuente:** `Info heredada`.

#### 1.9 Servicios principales (S=5)
- **Qué es:** lista de los 5 core services que la arquitectura va a cubrir.
- **Para qué sirve:** variable S de la fórmula maestra (2.5). Genera S Service Overview + S Location-Based Service + G×S GeoArticles. Alimenta scores 8.2-8.7.
- **Dato que buscamos:** `[top 5 servicios más frecuentes en perfiles top 5 Local Pack del sector]`.
- **Cómo se obtiene:** Listamos los servicios que aparecen en los 5 perfiles top del Local Pack y nos quedamos con los 5 más frecuentes. Esos son los core services del cluster.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Listar servicios de cada perfil top 5 → 5 más frecuentes. Doctrina dicta S=5.

#### 1.10 Direct + Candidate LCAs
- **Qué es:** Local Coverage Areas — Direct (barrio/distrito del NAP) + Candidate (zonas en 2+ competidores top, validables).
- **Para qué sirve:** schemas `areaServed` (5.10, 6.17), contenido cobertura local (6.2, 6.12), validaciones (4.9, 4.14).
- **Dato que buscamos:** `[barrio/distrito del NAP]` + `[zonas atendidas por 2+ competidores top 5]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP (street + city del NAP para Direct LCAs).
- **Cómo se obtiene:** Para las Direct: extraemos el barrio/distrito de la dirección del cliente. Para las Candidate: miramos qué zonas atienden los competidores del top 5 y nos quedamos con las que aparecen en 2 o más.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Direct: extraer del NAP. Candidate: cruzar áreas declaradas por top 5 → zonas en ≥2 competidores → test GEO de coherencia.

#### 1.11 Approved Expansion Areas
- **Qué es:** zonas con URLs propias aprobadas para expansión (default vacío en Phase 1).
- **Para qué sirve:** activa el módulo Optional Expansion (2.10, 4.10, 11.11, 19.5).
- **Dato que buscamos:** `[lista de zonas con URLs aprobadas: vacío por defecto, se rellena post-launch con datos tracking]`.
- **Cómo se obtiene:** En Phase 1 está vacío por defecto. Post-launch (≥30 días con tracking activo), si los datos demuestran demanda real en zonas concretas, se aprueban como expansión.
  - **Fuente:** `Tracking`.
  - **Método:** Default vacío `[]` en Phase 1. Post-launch: revisar GSC + GA4 + Geo Grid → identificar zonas con demanda → aprobar.

#### 1.12 GeoArticles per Service (G)
- **Qué es:** número de GeoArticles por core service (variable G de la fórmula maestra).
- **Para qué sirve:** factor multiplicador en 2.7 → genera G×S GeoArticles totales.
- **Dato que buscamos:** `[entero G según doctrina]`.
- **Cómo se obtiene:** La doctrina dicta G=3 por defecto.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Default doctrinal `G=3`.

#### 1.13 Preferred CTA
- **Qué es:** call-to-action principal del cluster (verbo dominante: Llamar / Reservar / Solicitar presupuesto / Contactar).
- **Para qué sirve:** alimenta 5.9 Validación CTA por page type, 7.9 Anchor text variado, 9.13 CTA QA.
- **Cómo se asigna:**
  - **Llamar ahora** → servicios urgentes (cerrajero, fontanero emergencia, asistencia 24h).
  - **Reservar online** → servicios programables (peluquería, dentista, restaurante).
  - **Solicitar presupuesto** → servicios B2B / proyectos (reformas, consultoría, instalaciones).
  - **Contactar** → genérico (cuando ninguno de los anteriores domina claramente).
- **Dato que buscamos:** `[CTA dominante en top 5 Local Pack según urgencia/tipo del servicio]`.
- **Cómo se obtiene:** Miramos qué CTAs usan los 5 primeros del Local Pack y elegimos el más usado, alineado con la urgencia del servicio.
  - **Fuente:** `Doctrina + Local Pack` — **la doctrina no aporta en este output** (selección directa del CTA dominante en top 5, sin filtro doctrinal).
  - **Método:** Inspeccionar CTAs visibles en top 5 perfiles + cruzar con tipo de servicio (urgente / programable / B2B).

#### 1.14 Trust Signals
- **Qué es:** señales de confianza del sector + diferenciadores extraídos del top 5.
- **Para qué sirve:** alimenta 5.1 Spec Homepage, 6.15 Reviews y trust contextualizados, contenido Hero de cada page type.
- **Dato que buscamos:** `[trust signals presentes en 3+ perfiles top 5]` + `[diferenciadores únicos del cliente vs sector]`.
- **Cómo se obtiene:** Identificamos las señales de confianza que repiten 3 o más competidores del top 5 (años, certificaciones, badges, garantías). Esas son las "obligatorias del sector".
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Extraer trust signals de top 5 → estándar = presente en 3+ perfiles. Doctrina dicta el threshold.

### Paso 2 — Fórmula Maestra (14 outputs)

#### 2.1 Planned GBP Categories Status
- **Qué es:** estado de las categorías GBP en el flujo web-first (`Planned` hasta crear el GBP en Paso 14).
- **Para qué sirve:** marca conceptualmente que las categorías están propuestas pero no confirmadas en Google.
- **Dato que buscamos:** `[categorías 1.5 + 1.6 marcadas como Planned]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category + 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Tomamos las categorías que ya tenemos planeadas y las marcamos con estado `Planned`. Pasarán a `Confirmed` cuando se cree el GBP en el Paso 14.
  - **Fuente:** `Info heredada`.

#### 2.2 Primary Category Slug
- **Qué es:** slug del primary category (kebab-case, sin acentos).
- **Para qué sirve:** componente de URLs en patrones 4.4, 4.6, 4.7.
- **Dato que buscamos:** `[slug kebab-case de la primary category]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category.
- **Cómo se obtiene:** Aplicamos slugify al nombre de la primary category (lowercase, sin acentos, kebab-case).
  - **Fuente:** `Info heredada`.

#### 2.3 Main City Slug
- **Qué es:** slug de la Main City (kebab-case).
- **Para qué sirve:** componente de URLs en patrones 4.5, 4.6, 4.7, 4.8.
- **Dato que buscamos:** `[slug kebab-case de Main City]`.
- **Hereda info de pasos anteriores:** 1.7 Main City.
- **Cómo se obtiene:** Aplicamos slugify al nombre de la Main City.
  - **Fuente:** `Info heredada`.

#### 2.4 Service Slugs
- **Qué es:** slugs de cada uno de los S core services.
- **Para qué sirve:** componente de URLs en patrones 4.4, 4.6.
- **Dato que buscamos:** `[lista de S slugs kebab-case, uno por core service]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales (S=5).
- **Cómo se obtiene:** Aplicamos slugify a cada uno de los 5 core services.
  - **Fuente:** `Info heredada`.

#### 2.5 Variable S
- **Qué es:** entero — número de core services aplicables a la Main City.
- **Para qué sirve:** factor de la fórmula maestra `1 + S + 1 + S + A + G×S`.
- **Dato que buscamos:** `[count de core services aplicables a Main City]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales.
- **Cómo se obtiene:** Contamos los core services. Típicamente S=5.
  - **Fuente:** `Info heredada`.

#### 2.6 Variable A
- **Qué es:** entero — número de Additional Categories que necesitan página propia.
- **Para qué sirve:** factor de la fórmula maestra (genera A páginas AC).
- **Dato que buscamos:** `[count de Additional Categories no cubiertas por core services]`.
- **Hereda info de pasos anteriores:** 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Contamos las Additional Categories clasificadas como "página propia" en 1.6.
  - **Fuente:** `Info heredada`.

#### 2.7 Variable G
- **Qué es:** entero — GeoArticles per service.
- **Para qué sirve:** factor multiplicador (genera G×S GeoArticles).
- **Dato que buscamos:** `[entero G heredado de 1.12, default 3]`.
- **Hereda info de pasos anteriores:** 1.12 GeoArticles per Service.
- **Cómo se obtiene:** Lo cogemos directo de 1.12. Default doctrinal G=3.
  - **Fuente:** `Info heredada`.

#### 2.8 Total páginas SEO base
- **Qué es:** total entero del cluster base aplicando fórmula maestra.
- **Para qué sirve:** dimensiona producción, calendario (10.9), QA (9.X), priorización (8.X).
- **Dato que buscamos:** `[total entero según fórmula 1+S+1+S+A+G×S]`.
- **Hereda info de pasos anteriores:** 2.5 Variable S + 2.6 Variable A + 2.7 Variable G.
- **Cómo se obtiene:** Aplicamos la fórmula maestra con los valores de S, A, G. Por ejemplo: con S=5, A=0, G=3 → 1+5+1+5+0+15 = 27 páginas.
  - **Fuente:** `Info heredada`.

#### 2.9 Inventario por tipo de página
- **Qué es:** desglose del total por page type (HP / SO / GH / LBS / AC / GA).
- **Para qué sirve:** alimenta 10.4-10.6 Fases, 11.X funciones generate_*(), 8.10 Publish Phase.
- **Dato que buscamos:** `[count por page type: 1 HP + S SO + 1 GH + S LBS + A AC + G×S GAs]`.
- **Hereda info de pasos anteriores:** 2.5 Variable S + 2.6 Variable A + 2.7 Variable G.
- **Cómo se obtiene:** Desglosamos la fórmula maestra por page type. Resultado: 1 Homepage + S Service Overview + 1 GeoHub + S LBS + A Additional Category + G×S GeoArticle.
  - **Fuente:** `Info heredada`.

#### 2.10 Optional Expansion Formula
- **Qué es:** fórmula activable para sub-clusters de expansión.
- **Para qué sirve:** ejecuta cuando 1.11 Approved Expansion ≠ vacío. Replica fórmula base por área aprobada.
- **Dato que buscamos:** `[fórmula declarada inactiva en Phase 1; activa cuando Approved Expansion declaradas]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** En Phase 1 está inactiva por defecto (1.11 vacío). Cuando se aprueban zonas de expansión, replica la fórmula maestra por cada zona.
  - **Fuente:** `Info heredada`.

#### 2.11 Validación anti-duplicación
- **Qué es:** validación binaria — Additional Categories vs core services no duplican intención.
- **Para qué sirve:** evita crear AC para algo ya cubierto por SO/LBS.
- **Cómo se asigna:**
  - **Pass** → 0 duplicados detectados.
  - **Fail** → ≥1 Additional Category duplica intención de core service.
- **Dato que buscamos:** `[resultado del check: pass/fail + lista de duplicados detectados]`.
- **Hereda info de pasos anteriores:** 1.6 Additional Categories + 1.9 Servicios principales.
- **Cómo se obtiene:** Comparamos cada Additional Category con los core services semánticamente. Si alguna AC ya está cubierta por un core service, marca duplicado.
  - **Fuente:** `Info heredada`.

#### 2.12 Validación dependencias
- **Qué es:** validación de orden estructural (HP → SO → GH → LBS → AC → GAs).
- **Para qué sirve:** evita publicar páginas que dependan de upstream no creado.
- **Cómo se asigna:**
  - **Pass** → orden topológico respetado.
  - **Fail** → algún hijo declarado antes que su parent.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo de página.
- **Cómo se obtiene:** Validamos que en el inventario no haya hijos antes que su parent (LBS antes que SO, GAs antes que LBS, etc.).
  - **Fuente:** `Info heredada`.

#### 2.13 Validación LCAs fuera fórmula
- **Qué es:** validación binaria — ninguna LCA genera URL en la fórmula base.
- **Para qué sirve:** evita inflar el cluster con URLs `/{lca}/`.
- **Cómo se asigna:**
  - **Pass** → 0 URLs LCA detectadas.
  - **Fail** → al menos 1 URL `/{lca}/` en la matriz.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 Direct + Candidate LCAs.
- **Cómo se obtiene:** Comprobamos que ninguna LCA aparece como URL en la fórmula base.
  - **Fuente:** `Info heredada`.

#### 2.14 Validación auditabilidad del total
- **Qué es:** validación binaria — el total 2.8 se desglosa rastreablemente por page type.
- **Para qué sirve:** integridad de la fórmula (cada página del total tiene origen rastreable).
- **Cómo se asigna:**
  - **Pass** → suma del desglose 2.9 = total 2.8.
  - **Fail** → discrepancia entre suma desglose y total.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 2.8 Total páginas + 2.9 Inventario por tipo.
- **Cómo se obtiene:** Sumamos el desglose por page type y comprobamos que coincide con el total.
  - **Fuente:** `Info heredada`.

### Paso 3 — Matriz Base (14 outputs)

#### 3.1 Spreadsheet Name
- **Qué es:** nombre del spreadsheet de la matriz URL.
- **Para qué sirve:** convención de nomenclatura para identificar el doc del cluster.
- **Dato que buscamos:** `[nombre del spreadsheet aplicando convención]`.
- **Hereda info de pasos anteriores:** 1.1 Business Name.
- **Cómo se obtiene:** Aplicamos la convención `[Cliente] – GMB Crush Website Architecture`.
  - **Fuente:** `Info heredada`.

#### 3.2 GeoHub URL Style
- **Qué es:** estilo de URL del GeoHub de la Main City — Option A `/[main-city]/` o Option B `/[primary-cat]/[main-city]/`.
- **Para qué sirve:** decisión técnica que afecta a 4.5, 4.8, 5.5 (Spec GeoHub).
- **Cómo se asigna:**
  - **Option A** `/[main-city]/` → cuando el GeoHub es el ancla geográfica principal (default).
  - **Option B** `/[primary-cat]/[main-city]/` → cuando el GeoHub debe vivir bajo el silo de categoría.
- **Dato que buscamos:** `[Option A o Option B según contexto del cluster]`.
- **Cómo se obtiene:** Decisión técnica del operador según el stack canónico — por defecto Option A.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** Default Option A. Cambiar a B solo cuando hay razón estratégica (ej: cluster muy categoría-céntrico).

#### 3.3 Additional Category Slugs
- **Qué es:** slugs de las Additional Categories que necesitan página propia.
- **Para qué sirve:** componente de URLs en patrón 4.7.
- **Dato que buscamos:** `[lista de slugs kebab-case de las A categorías con página propia]`.
- **Hereda info de pasos anteriores:** 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Aplicamos slugify a cada Additional Category con página propia.
  - **Fuente:** `Info heredada`.

#### 3.4 GeoArticle Topics propuestos
- **Qué es:** lista de G×S topics para los GeoArticles (uno por combinación service × geo intent).
- **Para qué sirve:** alimenta 5.6 Spec GA, 6.11 GA Content Architecture, 15.8 GAs redactados.
- **Dato que buscamos:** `[topics filtrados por intent GEO + volumen ≥ threshold doctrinal + cruce con core services]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos keyword research por cada core service, filtramos las queries con intent GEO y validamos que tienen volumen suficiente. La doctrina dicta el threshold de volumen mínimo.
  - **Fuente:** `Doctrina + Keyword research`.
  - **Método:** Keyword research (Ahrefs/Semrush/KP) por core service → filtrar intent GEO + validar volumen mínimo doctrinal.

#### 3.5 URL Matrix completa
- **Qué es:** tabla N filas × 20 columnas con todas las URLs derivadas de la fórmula maestra (ID, Page Type, Parent, Service, Service Slug, Main City, Main City Slug, Additional Cat, LCAs Used, AEA, URL, H1, Meta Title, Meta Description, Schema Type, Required Internal Links, Priority, Publish Phase, Status, Notes).
- **Para qué sirve:** **artefacto central del sistema**. Alimenta prácticamente todos los outputs de Bloques 2-5.
- **Dato que buscamos:** `[matriz N×20 con todas las URLs y metadatos asignados]`.
- **Hereda info de pasos anteriores:** 2.8 Total páginas + 2.9 Inventario por tipo + outputs 1.X y 2.X relevantes.
- **Cómo se obtiene:** Generamos una fila por cada URL del inventario aplicando los patrones de URL del Paso 4 y los metadatos doctrinales.
  - **Fuente:** `Info heredada`.

#### 3.6 IDs por tipo de página
- **Qué es:** convención de IDs `[PageType-Index]` (HP-001, SO-001..S, GH-001, LBS-001..S, AC-001..A, GA-001..(G×S)).
- **Para qué sirve:** identifica unívocamente cada URL en cross-refs, QA, deploy.
- **Dato que buscamos:** `[ID único por fila siguiendo convención PageType-Index]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Aplicamos la convención `[PageType-Index]` por fila de la matriz.
  - **Fuente:** `Info heredada`.

#### 3.7 Parent Page declarado por fila
- **Qué es:** referencia al parent topológico de cada URL.
- **Para qué sirve:** alimenta 7.5 LBS conecta con SO+GH, 8.11 Validación landing antes que GA, 10.10 Matriz de dependencias.
- **Dato que buscamos:** `[ID parent de cada URL según jerarquía doctrinal]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Aplicamos la jerarquía doctrinal: HP es root, SO tiene HP como parent, LBS tiene SO como parent, AC tiene GeoHub como parent, GA tiene LBS como parent.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`.
  - **Método:** Mapping doctrinal padre↔hijo por page type.

#### 3.8 Schema asignado desde matriz
- **Qué es:** tipo de schema JSON-LD por page type (Organization / Service / LocalBusiness / FAQPage / Article…).
- **Para qué sirve:** alimenta 5.7 Validación Schema, 6.17 areaServed coherente, 11.X generate_schema, 17.6 Schemas implementados.
- **Dato que buscamos:** `[schema type por page type según mapping doctrinal]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Asignamos el schema según el mapping doctrinal: Homepage → Organization, SO → Service, LBS → LocalBusiness, AC → Service, GeoHub → CollectionPage, GA → Article + FAQPage.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`.
  - **Método:** Mapping doctrinal por page type.

#### 3.9 Enlaces internos Required por fila
- **Qué es:** listado contractual de enlaces obligatorios por page type.
- **Para qué sirve:** alimenta 7.11 Matriz enlaces, 9.11 QA enlaces internos, 11.12 assign_internal_links.
- **Dato que buscamos:** `[lista de enlaces obligatorios por page type según doctrina §7]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Aplicamos el listado contractual de enlaces por page type según la doctrina §7.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`.
  - **Método:** Listado doctrinal por page type.

#### 3.10 Priority y Publish Phase por fila
- **Qué es:** Priority (P1-P4) y Publish Phase (1-4) doctrinales por page type.
- **Para qué sirve:** alimenta 8.9 Priority Tiers, 8.10 Publish Phase derivada, 10.4-10.6 Fases.
- **Cómo se asigna:**
  - **HP** → P1, Phase 1.
  - **LBS** → P1, Phase 1.
  - **SO** → P2, Phase 2.
  - **GH** → P2, Phase 2.
  - **GAs** → P3-P4, Phases 3-4.
- **Dato que buscamos:** `[Priority + Phase por page type]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Asignamos Priority y Phase según el mapping doctrinal por page type.
  - **Fuente:** `← 3.5 + Doctrina GMB Crush`.
  - **Método:** Mapping doctrinal directo.

#### 3.11 Default Page Status
- **Qué es:** estado inicial de cada fila (`Planned`).
- **Para qué sirve:** marca conceptualmente que la URL existe en la matriz pero no está construida ni publicada.
- **Dato que buscamos:** `[estado Planned como default]`.
- **Cómo se obtiene:** Marcamos todas las filas con estado `Planned` por defecto. Pasarán a `In Progress` y `Published` durante Bloque 5.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Constante doctrinal.

#### 3.12 Notes estratégicas por fila
- **Qué es:** notas operativas opcionales por fila de la matriz (contexto operativo, dependencias, riesgos).
- **No aplica:** no es un output formal del sistema — son **comentarios libres del operador en la columna "Notes" del 3.5 URL Matrix**, sin fuente declarada ni alimentación downstream.
  - **Fuente:** `no aplica`.
  - **Acción:** mantener como referencia documental. Las notas operativas se añaden directamente al spreadsheet 3.5 cuando el operador necesita anotar contexto.

#### 3.13 Validación LCAs sin filas base
- **Qué es:** validación binaria — ninguna LCA genera fila URL en la matriz base.
- **Para qué sirve:** integridad estructural (LCAs viven en `areaServed`/contenido, no en URLs).
- **Cómo se asigna:**
  - **Pass** → 0 filas con LCA en URL.
  - **Fail** → ≥1 fila con `/{lca}/` en URL.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 Direct + Candidate LCAs + 3.5 URL Matrix.
- **Cómo se obtiene:** Comprobamos que ninguna LCA aparece como path en la URL Matrix.
  - **Fuente:** `Info heredada`.

#### 3.14 Validación matriz cerrada antes de contenido
- **Qué es:** validación binaria — todas las celdas del 3.5 están rellenas antes de pasar al Paso 5.
- **Para qué sirve:** integridad pre-Bloque 2 (no se puede empezar Page Type Rules con matriz incompleta).
- **Cómo se asigna:**
  - **Pass** → todas las celdas no-vacías.
  - **Fail** → al menos 1 celda vacía.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix completa.
- **Cómo se obtiene:** Inspeccionamos visualmente o con script que todas las celdas de la matriz están rellenas antes de avanzar al Bloque 2.
  - **Fuente:** `Info heredada`.

---

## Bloque 2 — Arquitectura (57 outputs)

### Paso 4 — URL Rules (15 outputs)

#### 4.1 Canonical Domain
- **Qué es:** dominio canónico del cluster en formato HTTPS + www + trailing slash.
- **Para qué sirve:** todas las URLs heredan este dominio. Schema canonical, sitemap, redirects.
- **Dato que buscamos:** `[dominio canónico aplicado HTTPS+www+trailing]`.
- **Hereda info de pasos anteriores:** 1.2 Website URL / Canonical Domain.
- **Cómo se obtiene:** Cogemos el dominio del intake y forzamos formato HTTPS + www + trailing slash.
  - **Fuente:** `Info heredada`.

#### 4.2 Trailing Slash
- **Qué es:** decisión global Yes/No sobre trailing slash en URLs.
- **Para qué sirve:** consistencia en toda la matriz, redirects, canonical.
- **Cómo se asigna:**
  - **Yes** (default) → todas las URLs terminan en `/`.
  - **No** → todas las URLs sin slash final.
- **Dato que buscamos:** `[Yes o No, coherente para todas las URLs del cluster]`.
- **Cómo se obtiene:** Decisión técnica del operador — por defecto Yes (con trailing slash) según stack canónico.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** Default Yes. Aplicar coherentemente a todas las URLs.

#### 4.3 Homepage URL
- **Qué es:** URL de la Homepage — siempre raíz `/`.
- **Para qué sirve:** alimenta 5.1 Spec Homepage, schema Organization root.
- **Dato que buscamos:** `[siempre raíz /]`.
- **Cómo se obtiene:** La Homepage siempre es la raíz `/` del dominio.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Constante doctrinal.

#### 4.4 Service Overview URL pattern
- **Qué es:** patrón de URL para Service Overview pages — `/[primary-cat-slug]/[service-slug]/`.
- **Para qué sirve:** instancia × S core services en la matriz 3.5.
- **Dato que buscamos:** `[patrón /[primary-cat]/[service]/ aplicado a cada core service]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[primary-cat-slug]/[service-slug]/` a cada uno de los S core services.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Patrón constante doctrinal.

#### 4.5 Main City GeoHub URL Style
- **Qué es:** estilo elegido para GeoHub (Option A o B según 3.2).
- **Para qué sirve:** afecta a 4.8 GeoArticle pattern + estructura del silo geográfico.
- **Dato que buscamos:** `[Option A o Option B heredado de 3.2]`.
- **Hereda info de pasos anteriores:** 3.2 GeoHub URL Style.
- **Cómo se obtiene:** Cogemos el estilo elegido en 3.2.
  - **Fuente:** `Info heredada`.

#### 4.6 Location-Based Service URL pattern
- **Qué es:** patrón para LBS — `/[primary-cat-slug]/[main-city-slug]/[service-slug]/`.
- **Para qué sirve:** instancia × S × Main City (S LBS pages).
- **Dato que buscamos:** `[patrón LBS aplicado a cada core service en Main City]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[primary-cat-slug]/[main-city-slug]/[service-slug]/`.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Patrón constante doctrinal.

#### 4.7 Additional Category URL pattern
- **Qué es:** patrón para AC — `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/`.
- **Para qué sirve:** instancia × A categorías con página propia.
- **Dato que buscamos:** `[patrón AC aplicado a cada Additional Category con página propia]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[primary-cat-slug]/[main-city-slug]/[additional-slug]/`.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Patrón constante doctrinal.

#### 4.8 GeoArticle URL pattern
- **Qué es:** patrón para GAs — `/[main-city-slug]/[topic-slug]/`.
- **Para qué sirve:** instancia × G×S combinaciones.
- **Dato que buscamos:** `[patrón GA aplicado a cada G×S combinación de topic]`.
- **Cómo se obtiene:** Aplicamos el patrón doctrinal `/[main-city-slug]/[topic-slug]/`.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Patrón constante doctrinal.

#### 4.9 LCAs no generan URLs
- **Qué es:** regla doctrinal — LCAs viven en contenido y `areaServed` schema, NO en URLs `/[lca]/`.
- **Para qué sirve:** evita inflar cluster con URLs falsas. Validado por 2.13 + 3.13 + 4.14.
- **Dato que buscamos:** `[regla aplicada como filtro de QA: 0 URLs /[lca]/ en matriz]`.
- **Hereda info de pasos anteriores:** 1.10 Direct + Candidate LCAs.
- **Cómo se obtiene:** Aplicamos la regla doctrinal: las LCAs aparecen en contenido y schema, nunca como URL.
  - **Fuente:** `← 1.10 + Doctrina GMB Crush`.
  - **Método:** Aplicar regla como filtro QA.

#### 4.10 Approved Expansion URLs
- **Qué es:** URLs generadas por sub-clusters de expansión (vacío en Phase 1).
- **Para qué sirve:** activa cuando 1.11 ≠ vacío. Genera sub-cluster por área aprobada.
- **Dato que buscamos:** `[lista URLs vacía en Phase 1, se rellena cuando AEAs declaradas]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Vacío por defecto en Phase 1. Cuando se aprueban AEAs, se generan URLs por cada área.
  - **Fuente:** `Info heredada`.

#### 4.11 Validación No "near me"
- **Qué es:** validación binaria — 0 URLs con patrón `near-me` o variantes.
- **Para qué sirve:** evita anti-pattern SEO local.
- **Cómo se asigna:**
  - **Pass** → 0 URLs match `near-?me`.
  - **Fail** → ≥1 URL con `near-me`.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Comprobamos las URLs contra blacklist `near-me` y variantes.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Comprobación regex contra blacklist.

#### 4.12 Validación No adjetivos vacíos
- **Qué es:** validación binaria — 0 URLs con `best`, `cheap`, `top-rated`, `professional`, etc.
- **Para qué sirve:** evita keyword stuffing en path.
- **Cómo se asigna:**
  - **Pass** → 0 URLs match blacklist.
  - **Fail** → ≥1 URL con adjetivo vacío.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Comprobamos las URLs contra blacklist de adjetivos vacíos doctrinal.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Comprobación regex contra blacklist.

#### 4.13 Validación Slugs limpios
- **Qué es:** validación binaria — todos los slugs en kebab-case, lowercase, sin acentos.
- **Para qué sirve:** evita problemas técnicos (URL encoding, redirects, canonical).
- **Cómo se asigna:**
  - **Pass** → todos los slugs match `^[a-z0-9-]+$`.
  - **Fail** → al menos 1 slug con mayúscula, acento o caracter especial.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 2.2 + 2.3 + 2.4 + 3.3 (todos los slugs).
- **Cómo se obtiene:** Validamos cada slug contra el regex `^[a-z0-9-]+$`.
  - **Fuente:** `Info heredada`.

#### 4.14 Validación No falsa ubicación
- **Qué es:** validación binaria — URLs solo usan Main City (1.7) o Approved Expansion (1.11), nunca otras.
- **Para qué sirve:** evita anti-pattern fake-location (atribuirse ciudades donde no operas).
- **Cómo se asigna:**
  - **Pass** → todas las URLs match Main City o AEA.
  - **Fail** → al menos 1 URL con ciudad no autorizada.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.8 Physical Location City + 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Cruzamos las URLs vs ciudades autorizadas (Main City + AEAs aprobadas).
  - **Fuente:** `Info heredada`.

#### 4.15 Validación No duplicar intención
- **Qué es:** validación binaria — 0 pares de URLs cubren la misma intención (servicio + ciudad + topic).
- **Para qué sirve:** evita canibalización SEO.
- **Cómo se asigna:**
  - **Pass** → 0 duplicados detectados.
  - **Fail** → ≥1 par con misma intención.
- **Dato que buscamos:** `[resultado del check + lista de duplicados detectados]`.
- **Cómo se obtiene:** Cruzamos las URLs por intención (servicio + ciudad + topic) y detectamos pares solapados.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Cruce semántico de URLs.

### Paso 5 — Page Type Rules (10 outputs)

#### 5.1 Spec Homepage (Root Entity Anchor)
- **Qué es:** spec completo de la Homepage (purpose / H1 / meta / word count / sections / FAQ / CTA / schema / links).
- **Para qué sirve:** alimenta 6.6 Homepage Content Architecture, 11.4 generate_homepage(), 15.3 Homepage redactada, 17.5 Page construida.
- **Dato que buscamos:** `[spec Homepage rellenado con inputs heredados según template doctrinal]`.
- **Hereda info de pasos anteriores:** 1.1 Business Name + 1.4 Full NAP + 1.13 Preferred CTA + 1.14 Trust Signals + 4.3 Homepage URL.
- **Cómo se obtiene:** Aplicamos el spec doctrinal de Homepage rellenando los inputs heredados (nombre, NAP, CTA, trust, URL).
  - **Fuente:** `Info heredada`.

#### 5.2 Spec Service Overview (Topical Authority Pillar)
- **Qué es:** spec completo de SO (replicado a S core services).
- **Para qué sirve:** alimenta 6.7, 11.5 generate_service_overview(), 15.4 SO redactadas.
- **Dato que buscamos:** `[spec SO rellenado × S core services]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 2.4 Service Slugs + 4.4 SO URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal de SO replicado a cada uno de los S core services.
  - **Fuente:** `Info heredada`.

#### 5.3 Spec LBS (Main City Converter)
- **Qué es:** spec de LBS — schema LocalBusiness con `areaServed` = LCAs.
- **Para qué sirve:** alimenta 6.8, 11.7 generate_lbs(), 15.5 LBS redactadas.
- **Dato que buscamos:** `[spec LBS × S × Main City con LocalBusiness schema + areaServed]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios + 1.10 LCAs + 2.4 Service Slugs + 4.6 LBS URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal LBS × S × Main City. Schema LocalBusiness con `areaServed` = LCAs reales.
  - **Fuente:** `Info heredada`.

#### 5.4 Spec Additional Category (GBP AC Support)
- **Qué es:** spec de AC para Additional Categories con página propia.
- **Para qué sirve:** alimenta 6.9, 11.8 generate_additional_category(), 15.6 AC redactada.
- **Dato que buscamos:** `[spec AC rellenado × A categorías con página propia]`.
- **Hereda info de pasos anteriores:** 1.6 Additional Categories + 3.3 AC Slugs + 4.7 AC URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal AC a cada Additional Category con página propia.
  - **Fuente:** `Info heredada`.

#### 5.5 Spec GeoHub (Main City Silo Container)
- **Qué es:** spec del GeoHub.
- **Para qué sirve:** alimenta 6.10, 11.6 generate_geohub(), 15.7 GeoHub redactada.
- **Dato que buscamos:** `[spec GeoHub para Main City con services + ACs + LCAs section + GA ideas]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.10 LCAs + 2.3 Main City Slug + 4.5 GeoHub URL Style.
- **Cómo se obtiene:** Aplicamos el spec doctrinal GeoHub al Main City.
  - **Fuente:** `Info heredada`.

#### 5.6 Spec GeoArticle (Semantic Booster)
- **Qué es:** spec de GA — boost semántico con LCAs como ejemplos.
- **Para qué sirve:** alimenta 6.11, 11.9 generate_geoarticles(), 15.8 GAs redactados.
- **Dato que buscamos:** `[spec GA × G×S con LCAs como ejemplos semánticos]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 3.4 GeoArticle Topics + 4.8 GA URL pattern.
- **Cómo se obtiene:** Aplicamos el spec doctrinal GA a cada combinación de G×S topics.
  - **Fuente:** `Info heredada`.

#### 5.7 Validación Schema por tipo de página
- **Qué es:** validación binaria — schema asignado coincide con el page type esperado.
- **Para qué sirve:** filtro QA aplicable a las 6 page types.
- **Cómo se asigna:**
  - **Pass** → todos los schemas matchean el page type.
  - **Fail** → ≥1 page type con schema incorrecto.
- **Dato que buscamos:** `[resultado del check + lista de fallos]`.
- **Cómo se obtiene:** Comprobamos que cada page type tiene el schema doctrinal correcto (Homepage→Organization, SO→Service, LBS→LocalBusiness, etc.).
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Aplicar regla doctrinal por page type.

#### 5.8 Validación Word count por intención
- **Qué es:** validación binaria — word count dentro del rango doctrinal por page type.
- **Para qué sirve:** filtro QA, evita contenido thin o overstuffed.
- **Cómo se asigna:**
  - **Pass** → todos los page types dentro del rango doctrinal.
  - **Fail** → ≥1 page type fuera de rango.
- **Dato que buscamos:** `[resultado del check + word count por page type]`.
- **Cómo se obtiene:** Comparamos el word count de cada page type contra los rangos doctrinales.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Rangos doctrinales por page type.

#### 5.9 Validación CTA adaptado al page type
- **Qué es:** validación binaria — CTA por page type respeta funnel position.
- **Para qué sirve:** evita CTAs inapropiados (ej: "Comprar ahora" en GeoArticle informacional).
- **Cómo se asigna:**
  - **Pass** → CTAs alineados con funnel.
  - **Fail** → ≥1 page type con CTA fuera de funnel.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.13 Preferred CTA.
- **Cómo se obtiene:** Mapeamos CTAs a page types según funnel position (top → branded / mid → SO / bottom → LBS+AC).
  - **Fuente:** `← 1.13 + Doctrina GMB Crush`.
  - **Método:** Mapping doctrinal CTAs × page types.

#### 5.10 Validación No false location claims
- **Qué es:** validación binaria — `address` schema = NAP físico real, `areaServed` = LCAs reales.
- **Para qué sirve:** evita anti-pattern fake location (lo que también validan 4.14 + 9.7).
- **Cómo se asigna:**
  - **Pass** → schema coherente con NAP + LCAs reales.
  - **Fail** → ≥1 inconsistencia.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.8 Physical Location City + 1.10 LCAs + 4.14 No falsa ubicación.
- **Cómo se obtiene:** Comprobamos que el schema `address` coincide con el NAP real y `areaServed` lista solo LCAs reales.
  - **Fuente:** `Info heredada`.

### Paso 6 — Estructura de Contenido + LCAs (17 outputs)

#### 6.1 Principio 1 — Main City crea arquitectura
- **Qué es:** principio doctrinal — la Main City es el ancla geográfica única que estructura el cluster.
- **Para qué sirve:** filtro QA aplicable a toda la arquitectura.
- **Dato que buscamos:** `[principio aplicado como filtro: 1 Main City única estructura el cluster]`.
- **Hereda info de pasos anteriores:** 1.7 Main City.
- **Cómo se obtiene:** Aplicamos el principio: la Main City es la única ciudad que estructura URLs y schemas.
  - **Fuente:** `Info heredada`.

#### 6.2 Principio 2 — LCAs enriquecen contenido
- **Qué es:** principio doctrinal — LCAs van en contenido + `areaServed`, 0 URLs `/{lca}/`.
- **Para qué sirve:** filtro QA.
- **Dato que buscamos:** `[principio aplicado: LCAs en contenido + areaServed, 0 URLs LCA]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs.
- **Cómo se obtiene:** Aplicamos el principio: LCAs van en contenido y schema, nunca como URL.
  - **Fuente:** `Info heredada`.

#### 6.3 Principio 3 — AEAs crean URLs solo si se aprueban
- **Qué es:** principio doctrinal — solo Approved Expansion Areas (1.11) generan URLs propias.
- **Para qué sirve:** filtro QA + control de inflación del cluster.
- **Dato que buscamos:** `[principio aplicado: solo AEAs aprobadas → URLs]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Aplicamos el principio: solo zonas con AEA aprobada generan URLs propias.
  - **Fuente:** `Info heredada`.

#### 6.4 Principio 4 — Mencionar zona ≠ crear página
- **Qué es:** principio doctrinal — mencionar una zona en contenido o anchor text NO obliga a crear URL para esa zona.
- **Para qué sirve:** filtro QA contra inflación.
- **Dato que buscamos:** `[principio aplicado al contenido y enlaces]`.
- **Cómo se obtiene:** Aplicamos el principio: una mención en contenido o anchor no genera URL.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Aplicar regla.

#### 6.5 Principio 5 — No falsa ubicación
- **Qué es:** principio doctrinal — schema, NAP y contenido alineados con ubicación física real.
- **Para qué sirve:** filtro QA.
- **Dato que buscamos:** `[principio aplicado: 0 inconsistencias schema/NAP/contenido]`.
- **Hereda info de pasos anteriores:** 1.8 Physical Location City.
- **Cómo se obtiene:** Aplicamos el principio: lo que decimos en contenido y schema coincide con la ubicación física real.
  - **Fuente:** `Info heredada`.

#### 6.6 Homepage Content Architecture
- **Qué es:** arquitectura de contenido de la Homepage (Hero, Quick Answer, Service Menu, Local Coverage Preview, Trust, FAQ, CTA, Schema).
- **Para qué sirve:** alimenta 15.3 Homepage redactada, 17.5 Page construida.
- **Dato que buscamos:** `[arquitectura Homepage con secciones doctrinales]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.1 Spec Homepage.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal de Homepage al spec.
  - **Fuente:** `Info heredada`.

#### 6.7 Service Overview Content Architecture
- **Qué es:** arquitectura de SO × S instancias.
- **Para qué sirve:** alimenta 15.4.
- **Dato que buscamos:** `[arquitectura SO × S instancias]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.2 Spec SO.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal SO × S core services.
  - **Fuente:** `Info heredada`.

#### 6.8 Location-Based Service Content Architecture
- **Qué es:** arquitectura de LBS × S × Main City.
- **Para qué sirve:** alimenta 15.5.
- **Dato que buscamos:** `[arquitectura LBS × S × Main City]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.3 Spec LBS.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal LBS.
  - **Fuente:** `Info heredada`.

#### 6.9 Additional Category Content Architecture
- **Qué es:** arquitectura de AC × A instancias.
- **Para qué sirve:** alimenta 15.6.
- **Dato que buscamos:** `[arquitectura AC × A instancias]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.4 Spec AC.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal AC.
  - **Fuente:** `Info heredada`.

#### 6.10 GeoHub Content Architecture
- **Qué es:** arquitectura del GeoHub (services available, ACs, LCAs section, GA ideas, schema).
- **Para qué sirve:** alimenta 15.7.
- **Dato que buscamos:** `[arquitectura GeoHub Main City]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.5 Spec GeoHub.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal GeoHub.
  - **Fuente:** `Info heredada`.

#### 6.11 GeoArticle Content Architecture
- **Qué es:** arquitectura de GA × G×S instancias (con LCAs como ejemplos semánticos).
- **Para qué sirve:** alimenta 15.8.
- **Dato que buscamos:** `[arquitectura GA × G×S]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 5.6 Spec GA.
- **Cómo se obtiene:** Aplicamos la arquitectura doctrinal GA con LCAs como ejemplos semánticos.
  - **Fuente:** `Info heredada`.

#### 6.12 Tabla de uso de LCAs por page type
- **Qué es:** matriz fila-por-page-type indicando dónde y cómo se usan LCAs.
- **Para qué sirve:** alimenta 11.10 inject_local_coverage(), 9.6 Local Coverage QA.
- **Dato que buscamos:** `[matriz N filas (page types) × 5 cols (FAQ, intro, body, schema, anchors) con uso permitido]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs.
- **Cómo se obtiene:** Generamos la matriz aplicando reglas doctrinales sobre dónde puede usarse cada LCA por page type.
  - **Fuente:** `Info heredada`.

#### 6.13 Ejemplo práctico completo (sección cobertura)
- **Qué es:** bloque modelo de "sección cobertura" para una LBS (ejemplo doctrinal).
- **Para qué sirve:** referencia para redacción (15.X).
- **Dato que buscamos:** `[bloque modelo redactado aplicando arquitectura LBS]`.
- **Cómo se obtiene:** Redactamos un bloque modelo aplicando la arquitectura LBS doctrinal como referencia para los redactores.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Redacción siguiendo arquitectura 6.8.

#### 6.14 FAQ ejemplo
- **Qué es:** 4-6 FAQs modelo que mencionen LCAs naturalmente.
- **Para qué sirve:** referencia para 6.16, 15.X.
- **Dato que buscamos:** `[4-6 Q&A modelo con menciones LCA naturales]`.
- **Cómo se obtiene:** Redactamos 4-6 FAQs modelo siguiendo la doctrina §FAQ con menciones naturales de LCAs.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Redacción siguiendo doctrina FAQ.

#### 6.15 Reviews y trust blocks contextualizados
- **Qué es:** mapping de trust signals (1.14) a cada page type según funnel position.
- **Para qué sirve:** alimenta 15.X (Hero blocks por page type).
- **Dato que buscamos:** `[mapping trust signals × page types según funnel]`.
- **Hereda info de pasos anteriores:** 1.14 Trust Signals.
- **Cómo se obtiene:** Mapeamos cada trust signal al page type donde mejor encaja según funnel position.
  - **Fuente:** `Info heredada`.

#### 6.16 FAQs con cobertura natural
- **Qué es:** validación binaria — FAQs no contienen keyword stuffing de LCAs.
- **Para qué sirve:** filtro QA.
- **Cómo se asigna:**
  - **Pass** → FAQs naturales, LCAs mencionadas con contexto.
  - **Fail** → ≥1 FAQ con LCAs forzadas/listadas.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Validamos las FAQs contra blacklist de keyword stuffing de LCAs.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Validación contra blacklist.

#### 6.17 Schema `areaServed` coherente
- **Qué es:** validación binaria — `areaServed` lista solo zonas reales (NO zonas inventadas).
- **Para qué sirve:** filtro QA, evita anti-pattern fake-area.
- **Cómo se asigna:**
  - **Pass** → todas las zonas en `areaServed` están en LCAs reales.
  - **Fail** → ≥1 zona inventada.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs.
- **Cómo se obtiene:** Cruzamos `areaServed` schema con la lista de LCAs reales.
  - **Fuente:** `Info heredada`.

### Paso 7 — Internal Linking Rules (15 outputs)

#### 7.1 Regla 1 — Enlazar arriba/abajo/lateral
- **Qué es:** regla doctrinal — cada URL del cluster tiene enlaces en 3 direcciones.
- **Para qué sirve:** alimenta 7.11 Matriz, 9.11 QA enlaces.
- **Dato que buscamos:** `[regla aplicada: cada URL ≥1 inbound, ≥1 outbound up, ≥1 outbound lateral]`.
- **Cómo se obtiene:** Aplicamos la regla doctrinal: cada URL tiene enlaces en las 3 direcciones (arriba al parent, abajo a hijos, lateral a peers).
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Aplicar regla a la matriz 7.11.

#### 7.2 Regla 2 — Homepage distribuye autoridad
- **Qué es:** regla doctrinal — Homepage outbound respeta matriz 7.11.
- **Para qué sirve:** filtro QA Homepage.
- **Dato que buscamos:** `[regla aplicada al outbound de Homepage]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que la Homepage enlaza outbound a SO + GeoHub + LBS clave según matriz.
  - **Fuente:** `Info heredada`.

#### 7.3 Regla 3 — SO empuja versión local
- **Qué es:** regla doctrinal — cada SO enlaza a su LBS correspondiente.
- **Para qué sirve:** filtro QA SO.
- **Dato que buscamos:** `[regla aplicada × S SO: cada SO → LBS]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada SO empuja su versión local correspondiente (LBS).
  - **Fuente:** `Info heredada`.

#### 7.4 Regla 4 — GeoHub organiza Main City
- **Qué es:** regla doctrinal — GeoHub outbound a SO + LBS + AC + GAs de Main City.
- **Para qué sirve:** filtro QA GeoHub.
- **Dato que buscamos:** `[regla aplicada al outbound del GeoHub]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que el GeoHub enlaza a todos los SO + LBS + AC + GAs de la Main City.
  - **Fuente:** `Info heredada`.

#### 7.5 Regla 5 — LBS conecta servicio y ciudad
- **Qué es:** regla doctrinal — LBS enlaza a parent SO + GeoHub + lateral LBS + GAs + contacto.
- **Para qué sirve:** filtro QA LBS.
- **Dato que buscamos:** `[regla aplicada × S LBS]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada LBS tiene los 5 enlaces obligatorios (SO padre, GeoHub, LBS lateral, GAs, contacto).
  - **Fuente:** `Info heredada`.

#### 7.6 Regla 6 — AC se integra en silo local
- **Qué es:** regla doctrinal — AC enlaza a GeoHub padre + lateral con LBS relacionadas.
- **Para qué sirve:** filtro QA AC.
- **Dato que buscamos:** `[regla aplicada × A AC]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada AC enlaza al GeoHub padre y a LBS relacionadas lateral.
  - **Fuente:** `Info heredada`.

#### 7.7 Regla 7 — GeoArticle pasa relevancia a landing
- **Qué es:** regla doctrinal — cada GA enlaza a su matching LBS + GeoHub + GA relacionado.
- **Para qué sirve:** filtro QA GAs (prevenir GAs huérfanos).
- **Dato que buscamos:** `[regla aplicada × G×S GAs]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Validamos que cada GA tiene los 3 enlaces clave (LBS matching, GeoHub, GA relacionado).
  - **Fuente:** `Info heredada`.

#### 7.8 Regla 8 — LCAs sin URL no reciben enlaces
- **Qué es:** validación binaria — 0 URLs del cluster enlazan a `/{lca}/` (porque no existen).
- **Para qué sirve:** filtro QA, integridad cluster.
- **Cómo se asigna:**
  - **Pass** → 0 enlaces a `/{lca}/`.
  - **Fail** → ≥1 enlace a LCA.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs + 4.9 LCAs no generan URLs.
- **Cómo se obtiene:** Validamos que ninguna URL del cluster enlaza a un path con LCA.
  - **Fuente:** `Info heredada`.

#### 7.9 Regla 9 — Anchor text variado
- **Qué es:** catálogo de tipos de anchor (branded / exact / partial / topic / generic / CTA) con distribución doctrinal.
- **Para qué sirve:** alimenta 11.12 assign_internal_links(), evita over-optimization.
- **Dato que buscamos:** `[catálogo de anchors aplicado a la matriz de enlaces con distribución doctrinal]`.
- **Hereda info de pasos anteriores:** 1.1 Business Name + 1.13 Preferred CTA.
- **Cómo se obtiene:** Aplicamos el catálogo doctrinal de tipos de anchor para evitar over-optimization de exact match.
  - **Fuente:** `Info heredada`.

#### 7.10 Regla 10 — Enlaces contextuales primero
- **Qué es:** regla doctrinal — enlaces inline antes que footer/sidebar.
- **Para qué sirve:** filtro QA placement.
- **Dato que buscamos:** `[regla aplicada al placement de enlaces]`.
- **Cómo se obtiene:** Aplicamos la regla doctrinal: enlaces contextuales (inline) tienen prioridad sobre footer/sidebar.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Aplicar regla.

#### 7.11 Matriz de enlaces obligatorios por page type
- **Qué es:** matriz N filas (combinaciones source-target) × 4 cols (source, target, anchor, direction).
- **Para qué sirve:** **artefacto central de linking**. Alimenta 9.11, 11.12, 15.X, 17.4.
- **Dato que buscamos:** `[matriz fila-por-conexión con source / target / anchor / direction]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Generamos la matriz de enlaces aplicando las reglas 7.1-7.10 sobre la URL Matrix.
  - **Fuente:** `Info heredada`.

#### 7.12 Ejemplo completo de enlaces para LBS modelo
- **Qué es:** ejemplo aplicado a una LBS modelo con todos sus enlaces resueltos.
- **Para qué sirve:** referencia para 17.X (constructor).
- **Dato que buscamos:** `[ejemplo redactado de LBS con enlaces completos según matriz]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Redactamos un ejemplo completo de LBS modelo con todos los enlaces resueltos como referencia.
  - **Fuente:** `Info heredada`.

#### 7.13 Breadcrumbs por page type
- **Qué es:** jerarquía Home > Categoría > Ciudad > Servicio aplicada por page type.
- **Para qué sirve:** alimenta 17.4 Header+Footer+Layout, schema BreadcrumbList.
- **Dato que buscamos:** `[breadcrumb jerarquía por page type]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Aplicamos la jerarquía Home > Categoría > Ciudad > Servicio por page type.
  - **Fuente:** `Info heredada`.

#### 7.14 Inbound links esperados (cross-cutting)
- **Qué es:** validación — cada URL recibe el mínimo de inbound según matriz 7.11.
- **Para qué sirve:** filtro QA cross-cutting.
- **Cómo se asigna:**
  - **Pass** → todas las URLs ≥ inbound mínimo doctrinal.
  - **Fail** → ≥1 URL con inbound insuficiente.
- **Dato que buscamos:** `[resultado del check + URLs con inbound insuficiente]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix.
- **Cómo se obtiene:** Cruzamos el inbound count de cada URL con el threshold doctrinal mínimo.
  - **Fuente:** `Info heredada`.

#### 7.15 Expansion linking separado (cross-cutting)
- **Qué es:** regla — sub-clusters de expansión tienen linking aislado del cluster base.
- **Para qué sirve:** evita sangrar autoridad del base hacia sub-clusters no consolidados.
- **Dato que buscamos:** `[regla aplicada solo si E≥1: sub-cluster aislado]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Vacío en Phase 1. Si E≥1, aplicamos la regla: el sub-cluster de expansión tiene linking aislado del base.
  - **Fuente:** `Info heredada`.

---

## Bloque 3 — Priorización (43 outputs)

### Paso 8 — Priority Score (14 outputs)

#### 8.1 Priority Score Formula
- **Qué es:** fórmula maestra fija — `R + I + G + L + C + U` (rango 6-30 puntos).
- **Para qué sirve:** alimenta 8.8 Total Score, 8.9 Tiers. **Artefacto central de priorización**.
- **Dato que buscamos:** `[fórmula declarativa: 6 factores con peso 1, suma simple, rango 6-30]`.
- **Cómo se obtiene:** Aplicamos la fórmula doctrinal — suma simple de los 6 factores (Revenue, Intent, GBP, Local, Competition, Urgency) con peso 1.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Fórmula constante doctrinal.

#### 8.2 Revenue Value
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

#### 8.3 Search Intent
- **Qué es:** score 1-5 — % queries transaccionales / informacionales del servicio.
- **Para qué sirve:** factor I del Priority Score.
- **Cómo se asigna:**
  - **5** → ≥80% queries transaccionales del servicio.
  - **3** → mix balanceado.
  - **1** → ≥80% queries informacionales.
- **Dato que buscamos:** `[% queries transaccionales del servicio en Main City según KR]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos keyword research por servicio y calculamos el porcentaje de queries con intent transaccional.
  - **Fuente:** `Doctrina + Keyword research` — **la doctrina no aporta en este output** (cálculo directo de % sin filtro doctrinal).
  - **Método:** Ahrefs/Semrush para clasificación intent + cálculo de %.

#### 8.4 GBP Category Relevance
- **Qué es:** score 1-5 — match entre categoría declarada (1.5/1.6) y categorías Local Pack del sector.
- **Para qué sirve:** factor G del Priority Score.
- **Cómo se asigna:**
  - **5** → match perfecto categoría declarada vs top 5 Local Pack.
  - **3** → match parcial.
  - **1** → categoría divergente del Local Pack.
- **Dato que buscamos:** `[match-rate categorías declaradas vs categorías top 5 Local Pack]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category + 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Cruzamos las categorías que declaramos (1.5 + 1.6) con las que aparecen en el top 5 Local Pack y calculamos el match-rate.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Cruzar categorías + aplicar regla doctrinal de match (perfecto = 5, parcial = 3, divergente = 1).

#### 8.5 Local Relevance
- **Qué es:** score 1-5 — coherencia URL + schema + contenido vs NAP/Main City/LCAs.
- **Para qué sirve:** factor L del Priority Score.
- **Cómo se asigna:**
  - **5** → URL + schema + contenido alineados perfectamente con NAP + Main City + LCAs.
  - **3** → 2 de 3 alineados.
  - **1** → ≤1 alineado.
- **Dato que buscamos:** `[score basado en inspección URL + schema + contenido vs NAP/Main City/LCAs]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.8 Physical Location City + 1.10 LCAs.
- **Cómo se obtiene:** Inspeccionamos URL + schema + contenido de cada página y comparamos con NAP/Main City/LCAs reales.
  - **Fuente:** `Info heredada`.

#### 8.6 Competition Gap
- **Qué es:** score 1-5 — fortaleza del top 10 SERP por keyword (oportunidad de rankear).
- **Para qué sirve:** factor C del Priority Score.
- **Cómo se asigna:**
  - **5** → top 10 débil (DR <30 promedio + URLs poco optimizadas) → alta oportunidad.
  - **3** → competencia media.
  - **1** → top 10 muy fuerte (DR >70 + grandes marcas) → baja oportunidad.
- **Dato que buscamos:** `[DR/UR promedio top 10 SERP del keyword]` + `[fortaleza on-page de top 3]`.
- **Hereda info de pasos anteriores:** 1.7 Main City + 1.9 Servicios principales.
- **Cómo se obtiene:** Hacemos análisis SERP manual de los top 10 + miramos DR/UR en Ahrefs + evaluamos fortaleza on-page de los top 3.
  - **Fuente:** `Doctrina + Local Pack + Doctrina + Keyword research` — la doctrina aporta para la parte Local Pack (interpretación competidores) pero **no aporta para la parte KR** (DR/UR son inputs cuantitativos directos).
  - **Método:** SERP analysis manual + DR/UR Ahrefs + inspección on-page top 3.

#### 8.7 Conversion Urgency
- **Qué es:** score 1-5 — ventana de decisión + queries de urgencia del servicio.
- **Para qué sirve:** factor U del Priority Score.
- **Cómo se asigna:**
  - **5** → servicios con queries `urgente`/`24h`/`ahora`/`emergencia` (ej: cerrajero urgente).
  - **3** → servicios con ventana de decisión media (ej: reforma puntual).
  - **1** → servicios sin urgencia (ej: contenido informacional).
- **Dato que buscamos:** `[clasificación servicio por ventana de decisión + presencia de queries de urgencia en KR]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 1.13 Preferred CTA.
- **Cómo se obtiene:** Cruzamos el tipo de servicio + la urgencia del CTA + las queries de urgencia que aparecen en KR.
  - **Fuente:** `Info heredada`.

#### 8.8 Total Score por página
- **Qué es:** suma simple de los 6 factores (8.2-8.7), rango 6-30.
- **Para qué sirve:** alimenta 8.9 Tiers, 8.10 Phase, 8.14 Inventario priorizado, 13.7 Tabla URL.
- **Dato que buscamos:** `[entero 6-30 = R+I+G+L+C+U]`.
- **Hereda info de pasos anteriores:** 8.2-8.7 (los 6 factores).
- **Cómo se obtiene:** Sumamos los 6 factores con peso 1.
  - **Fuente:** `Info heredada`.

#### 8.9 Priority Tiers
- **Qué es:** mapping doctrinal del score total a tier.
- **Para qué sirve:** alimenta 8.10 Publish Phase, 10.4-10.6 Fases, 13.7 Tabla.
- **Cómo se asigna:**
  - **P1** → 26-30.
  - **P2** → 21-25.
  - **P3** → 16-20.
  - **P4** → 10-15.
  - **Hold** → 6-9.
- **Dato que buscamos:** `[tier P1-P4 o Hold según score]`.
- **Hereda info de pasos anteriores:** 8.8 Total Score.
- **Cómo se obtiene:** Aplicamos el mapping doctrinal score → tier.
  - **Fuente:** `Info heredada`.

#### 8.10 Publish Phase derivada
- **Qué es:** fase de publicación derivada del Tier × dependencias estructurales.
- **Para qué sirve:** alimenta 10.4-10.8 Fases, 10.10 Matriz de dependencias.
- **Dato que buscamos:** `[phase 1-4 según tier × dependencias]`.
- **Hereda info de pasos anteriores:** 8.9 Priority Tiers + 2.10 Optional Expansion Formula.
- **Cómo se obtiene:** Cruzamos el Tier con las dependencias estructurales (parent ya en phase anterior).
  - **Fuente:** `Info heredada`.

#### 8.11 Validación Landing antes que GeoArticle
- **Qué es:** validación binaria — phase(parent) < phase(GA) por fila.
- **Para qué sirve:** evita publicar GAs huérfanos sin LBS padre.
- **Cómo se asigna:**
  - **Pass** → todas las GAs publicadas en phase ≥ phase(parent).
  - **Fail** → ≥1 GA con phase < phase(parent).
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 8.10 Publish Phase.
- **Cómo se obtiene:** Validamos por fila que phase(parent) < phase(GA).
  - **Fuente:** `Info heredada`.

#### 8.12 Validación Homepage = P1 obligatorio
- **Qué es:** validación binaria — la fila HP es siempre P1, Phase 1.
- **Para qué sirve:** integridad doctrinal (HP siempre primero).
- **Cómo se asigna:**
  - **Pass** → HP es P1, Phase 1.
  - **Fail** → HP con tier o phase distinto.
- **Dato que buscamos:** `[resultado del check]`.
- **Cómo se obtiene:** Forzamos HP=P1+Phase1 doctrinalmente.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Constante doctrinal — HP siempre P1+Phase1.

#### 8.13 Validación LCAs sin score
- **Qué es:** validación binaria — 0 LCAs en el inventario priorizado (porque no son URLs).
- **Para qué sirve:** integridad estructural.
- **Cómo se asigna:**
  - **Pass** → 0 intersecciones LCA × inventario.
  - **Fail** → ≥1 LCA con score asignado.
- **Dato que buscamos:** `[resultado del check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs + 4.9 LCAs no generan URLs.
- **Cómo se obtiene:** Comprobamos que ninguna LCA aparece en el inventario priorizado.
  - **Fuente:** `Info heredada`.

#### 8.14 Inventario priorizado completo
- **Qué es:** tabla N filas con score + tier + phase por URL.
- **Para qué sirve:** **artefacto central de priorización**. Alimenta 9.1 QA por página, 10.X Fases, 13.7 Tabla URL.
- **Dato que buscamos:** `[tabla N filas con score + tier + phase por URL]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 8.8 Total Score + 8.9 Tiers + 8.10 Phase.
- **Cómo se obtiene:** Generamos la tabla cruzando URL Matrix con scores, tiers y phases.
  - **Fuente:** `Info heredada`.

### Paso 9 — QA Checklist (15 outputs)

#### 9.1 Plantilla de QA por página
- **Qué es:** formulario de 10 campos por URL del inventario priorizado.
- **Para qué sirve:** template para 9.14 Final Publish Gate, 18.X Auditorías.
- **Dato que buscamos:** `[plantilla 10 campos: URL/Tipo/H1/Meta/Schema/WC/Links/CTA/Coverage/Validación]`.
- **Hereda info de pasos anteriores:** 8.14 Inventario priorizado.
- **Cómo se obtiene:** Generamos un formulario de 10 campos por cada URL del inventario priorizado.
  - **Fuente:** `Info heredada`.

#### 9.2 Regla 1 — URL QA
- **Qué es:** validación binaria por URL — match con patrón doctrinal del page type.
- **Para qué sirve:** filtro 1 del Final Publish Gate (9.14).
- **Cómo se asigna:**
  - **Pass** → URL match patrón 4.3-4.8.
  - **Fail** → URL desviada del patrón.
- **Dato que buscamos:** `[resultado check por URL]`.
- **Hereda info de pasos anteriores:** 4.3-4.8 URL patterns.
- **Cómo se obtiene:** Comparamos cada URL contra el patrón doctrinal de su page type.
  - **Fuente:** `Info heredada`.

#### 9.3 Regla 2 — Page Type QA
- **Qué es:** validación binaria — H1 + estructura + schema match con spec del page type.
- **Para qué sirve:** filtro 2 del Final Publish Gate.
- **Dato que buscamos:** `[resultado check por URL]`.
- **Hereda info de pasos anteriores:** 5.1-5.6 Specs + 6.6-6.11 Content Architecture.
- **Cómo se obtiene:** Inspeccionamos H1 + estructura + schema de cada URL contra el spec doctrinal.
  - **Fuente:** `Info heredada`.

#### 9.4 Regla 3 — One service only
- **Qué es:** validación binaria — cada URL local cubre 1 solo servicio.
- **Para qué sirve:** filtro 3 del Gate. Evita pages mezclando servicios.
- **Dato que buscamos:** `[resultado check + URLs con múltiples servicios]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 5.3-5.6 Specs.
- **Cómo se obtiene:** Inspeccionamos H1 + body de cada URL local y validamos que cubre 1 solo servicio.
  - **Fuente:** `Info heredada`.

#### 9.5 Regla 4 — One Main City only
- **Qué es:** validación binaria — cada URL cubre 1 sola Main City.
- **Para qué sirve:** filtro 4 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 1.7 Main City.
- **Cómo se obtiene:** Inspeccionamos H1 + breadcrumb + cobertura de cada URL.
  - **Fuente:** `Info heredada`.

#### 9.6 Regla 5 — Local Coverage QA
- **Qué es:** validación binaria — LCAs en contenido + areaServed correctos.
- **Para qué sirve:** filtro 5 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 1.10 LCAs + 4.14 No falsa ubicación.
- **Cómo se obtiene:** Validamos que las LCAs aparecen en contenido y areaServed correctamente.
  - **Fuente:** `Info heredada`.

#### 9.7 Regla 6 — No fake location
- **Qué es:** validación binaria — schema + copy alineados con ubicación física real.
- **Para qué sirve:** filtro 6 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 1.4 NAP + 1.8 Physical Location + 4.14 + 5.10.
- **Cómo se obtiene:** Inspeccionamos schema + copy contra ubicación física real.
  - **Fuente:** `Info heredada`.

#### 9.8 Regla 7 — Metadata QA
- **Qué es:** validación binaria — H1 + meta title + meta description coherentes.
- **Para qué sirve:** filtro 7 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 5.1-5.6 Specs.
- **Cómo se obtiene:** Validamos H1 + meta title + meta description de cada URL contra el spec.
  - **Fuente:** `Info heredada`.

#### 9.9 Regla 8 — Word count QA
- **Qué es:** validación binaria — word count dentro de rango doctrinal por page type.
- **Para qué sirve:** filtro 8 del Gate.
- **Dato que buscamos:** `[resultado check + WC por page]`.
- **Hereda info de pasos anteriores:** 5.8 Validación Word count.
- **Cómo se obtiene:** Verificamos el word count contra los rangos doctrinales por page type.
  - **Fuente:** `Info heredada`.

#### 9.10 Regla 9 — Schema QA
- **Qué es:** validación binaria — JSON-LD válido + areaServed coherente.
- **Para qué sirve:** filtro 9 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 5.7 Validación Schema + 6.17 areaServed coherente.
- **Cómo se obtiene:** Validamos JSON-LD por page type + areaServed coherente con LCAs.
  - **Fuente:** `Info heredada`.

#### 9.11 Regla 10 — Enlaces internos QA
- **Qué es:** validación binaria — cada URL cumple matriz 7.11.
- **Para qué sirve:** filtro 10 del Gate.
- **Dato que buscamos:** `[resultado check + URLs con enlaces faltantes]`.
- **Hereda info de pasos anteriores:** 7.11 Matriz de enlaces.
- **Cómo se obtiene:** Cruzamos cada URL con la matriz de enlaces obligatorios.
  - **Fuente:** `Info heredada`.

#### 9.12 Regla 11 — Canibalización QA
- **Qué es:** validación binaria — cada URL cubre intención única, 0 pares solapados.
- **Para qué sirve:** filtro 11 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 4.15 Validación No duplicar intención.
- **Cómo se obtiene:** Cruzamos URLs por intención semántica y detectamos pares solapados.
  - **Fuente:** `Info heredada`.

#### 9.13 Regla 12 — CTA QA
- **Qué es:** validación binaria — CTA adaptado al page type según funnel.
- **Para qué sirve:** filtro 12 del Gate.
- **Dato que buscamos:** `[resultado check]`.
- **Hereda info de pasos anteriores:** 5.9 Validación CTA + 1.13 Preferred CTA.
- **Cómo se obtiene:** Validamos que el CTA de cada URL respeta el funnel position del page type.
  - **Fuente:** `Info heredada`.

#### 9.14 Final Publish Gate
- **Qué es:** consolidación de las 12 reglas anteriores en gate binario.
- **Para qué sirve:** **gate crítico de Bloque 3**. Sin Pass aquí, no se publica nada en Paso 18.
- **Cómo se asigna:**
  - **Pass** → todas las 12 reglas Pass por URL.
  - **Fail** → ≥1 regla Fail en cualquier URL.
- **Dato que buscamos:** `[resultado consolidado: pass/fail por URL + listado de fallos]`.
- **Hereda info de pasos anteriores:** 9.2-9.13 (las 12 reglas).
- **Cómo se obtiene:** Consolidamos los resultados de las 12 reglas en un gate binario por URL.
  - **Fuente:** `Info heredada`.

#### 9.15 GBP Not Created QA Checklist
- **Qué es:** 7 checks específicos para flujo web-first (cuando GBP=Not Created).
- **Para qué sirve:** filtro adicional cuando se aplica web-first. Alimenta 12.7, 14.1.
- **Cómo se asigna:**
  - **Pass** → 7 checks Pass.
  - **Fail** → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 7 checks web-first]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle Status.
- **Cómo se obtiene:** Inspeccionamos copy + schema + footer contra los 7 checks específicos web-first.
  - **Fuente:** `Info heredada`.

### Paso 10 — Producción en Fases (14 outputs)

#### 10.1 Publishing Capacity
- **Qué es:** capacidad de páginas/semana declarada por la doctrina del paso (no depende del equipo, depende de lo que toca producir).
- **Para qué sirve:** alimenta 10.9 Calendario semanal.
- **Dato que buscamos:** `[capacity doctrinal del paso]`.
- **Cómo se obtiene:** La doctrina del paso declara la capacity sin depender del equipo concreto del operador.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Constante doctrinal.

#### 10.2 Equipo de contenido óptimo
- **Qué es:** axioma del sistema — el operador cuenta con el mejor equipo disponible para que el plan de contenido sea el mejor.
- **Para qué sirve:** elimina restricciones de capacity por equipo. La capacity dictada por 10.1 se cumple sin limitaciones de team composition.
- **Dato que buscamos:** axioma del sistema (no es dato a obtener, es declaración de precondición).
- **Cómo se obtiene:** El sistema asume como precondición que el operador tiene el mejor equipo posible para producir el contenido óptimo.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Asunción declarada.

#### 10.3 CMS + capabilities
- **Qué es:** CMS del cliente + capabilities declaradas (schema, internal linking, reviews embedding, tracking stack).
- **No aplica:** el stack canónico está definido en **17.2 Proyecto Astro 5 + Tailwind v3 + pnpm** (fuente `Arquitectura técnica`). El CMS del cliente es irrelevante en el flujo actual.
  - **Fuente:** `no aplica`.
  - **Acción:** mantener como output documental para referencia, pero NO se ejecuta en el flujo actual.

#### 10.4 Fase 1 — Entity Foundation
- **Qué es:** lista de páginas page_type ∈ {HP, SO, GH} del inventario priorizado.
- **Para qué sirve:** primera fase de producción (semanas 1-2 típicamente).
- **Dato que buscamos:** `[lista de páginas {HP, SO, GH} ordenadas por phase]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo + 8.10 Publish Phase.
- **Cómo se obtiene:** Filtramos el inventario priorizado por page_type ∈ {HP, SO, GH}.
  - **Fuente:** `Info heredada`.

#### 10.5 Fase 2 — Main City Conversion Layer
- **Qué es:** lista de páginas page_type ∈ {LBS, AC} ordenadas por Priority Tier.
- **Para qué sirve:** segunda fase (conversión local).
- **Dato que buscamos:** `[lista de páginas {LBS, AC} ordenadas por tier]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo + 8.10 Publish Phase.
- **Cómo se obtiene:** Filtramos el inventario priorizado por page_type ∈ {LBS, AC}.
  - **Fuente:** `Info heredada`.

#### 10.6 Fase 3 — Main City Semantic Expansion
- **Qué es:** lista de páginas page_type = GeoArticle ordenadas por Priority Tier.
- **Para qué sirve:** tercera fase (expansión semántica).
- **Dato que buscamos:** `[lista de GAs ordenados por tier]`.
- **Hereda info de pasos anteriores:** 2.9 Inventario por tipo + 8.10 Publish Phase.
- **Cómo se obtiene:** Filtramos el inventario priorizado por page_type = GeoArticle.
  - **Fuente:** `Info heredada`.

#### 10.7 Fase 4 — Optimization Loop
- **Qué es:** cadencia de revisión y optimización post-launch.
- **Para qué sirve:** cuarta fase (mejora continua).
- **Dato que buscamos:** `[cadencia revisión según tracking stack]`.
- **Hereda info de pasos anteriores:** 10.3 CMS + capabilities.
- **Cómo se obtiene:** Definimos cadencia de revisión según el tracking stack del cliente.
  - **Fuente:** `Info heredada`.

#### 10.8 Fase 5 — Optional Expansion Module
- **Qué es:** activación del módulo de expansión (solo si 1.11 ≠ vacío).
- **Para qué sirve:** quinta fase (sub-clusters de expansión).
- **Dato que buscamos:** `[módulo activo solo si AEAs declaradas]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas.
- **Cómo se obtiene:** Activa solo si hay Approved Expansion Areas declaradas.
  - **Fuente:** `Info heredada`.

#### 10.9 Calendario semanal de publicación
- **Qué es:** distribución de páginas por semana respetando Capacity.
- **Para qué sirve:** plan operativo de Bloque 5 (qué se redacta cada semana).
- **Dato que buscamos:** `[calendario semana × páginas según capacity + fases]`.
- **Hereda info de pasos anteriores:** 10.1 Publishing Capacity + 10.4-10.8 Fases.
- **Cómo se obtiene:** Distribuimos las páginas de las fases por semana respetando la Capacity doctrinal.
  - **Fuente:** `Info heredada`.

#### 10.10 Matriz de dependencias de publicación
- **Qué es:** cruce Parent Page × Publish Phase por URL.
- **Para qué sirve:** alimenta 11.14 check_dependencies(), evita publicar hijos sin parent.
- **Dato que buscamos:** `[matriz dependencias parent×phase]`.
- **Hereda info de pasos anteriores:** 3.7 Parent Page + 8.10 Publish Phase.
- **Cómo se obtiene:** Cruzamos Parent Page con Publish Phase por URL.
  - **Fuente:** `Info heredada`.

#### 10.11 Reglas operativas
- **Qué es:** reglas operativas literales del original §14-§23.
- **Para qué sirve:** referencia operativa para Bloque 5.
- **Dato que buscamos:** `[10 reglas operativas literales del original]`.
- **Cómo se obtiene:** Portamos literalmente las reglas operativas del original §14-§23.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Portar literal del original.

#### 10.12 Checklist pre-publicación
- **Qué es:** checks finales antes de pasar a Bloque 5.
- **Para qué sirve:** integridad pre-Bloque 5.
- **Cómo se asigna:**
  - **Pass** → todos los checks pasan contra outputs heredados.
  - **Fail** → ≥1 check no pasa.
- **Dato que buscamos:** `[resultado consolidado checklist]`.
- **Hereda info de pasos anteriores:** 10.4-10.10.
- **Cómo se obtiene:** Validamos cada check del checklist contra los outputs heredados.
  - **Fuente:** `Info heredada`.

#### 10.13 Validación Bloques 1-2 cerrados
- **Qué es:** validación binaria — todos los outputs upstream en `confirmed` o `validated`.
- **Para qué sirve:** integridad sistema (no avanzar con `⚠ inferido` o `⚠ placeholder`).
- **Cómo se asigna:**
  - **Pass** → todos los outputs B1+B2 + Pasos 8+9 cerrados.
  - **Fail** → ≥1 con status `⚠`.
- **Dato que buscamos:** `[resultado consolidado de status upstream]`.
- **Hereda info de pasos anteriores:** Bloques 1+2 + Pasos 8+9.
- **Cómo se obtiene:** Inspeccionamos el status de cada output upstream y comprobamos que todos están en `confirmed` o `validated`.
  - **Fuente:** `Info heredada`.

#### 10.14 GBP Creation & Website Alignment (sección separada)
- **Qué es:** referencia adelantada al Paso 14 (GBP creado post-Paso 18).
- **Para qué sirve:** marca conceptualmente el web-first flow (GBP después de web LIVE).
- **Dato que buscamos:** `[sección referenciada al Paso 14]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle Status + Paso-14 (forward).
- **Cómo se obtiene:** Cross-ref adelantado al Paso 14 que se ejecuta en Bloque 7.
  - **Fuente:** `Info heredada`.

---

## Bloque 4 — Automatización (41 outputs)

### Paso 11 — Pseudocódigo del Sistema (16 outputs)

> Cada output es una función pseudo-código que codifica la lógica del sistema. **Documental** — los Bloques 1-3 ya producen los outputs manualmente paso a paso; el pseudocódigo es la versión "ejecutable por LLM" de la misma lógica.

#### 11.1 Función `load_inputs()`
- **Qué es:** función pseudo-código que carga §8 de cada a-doc + preflight en estructura dict.
- **Para qué sirve:** input para todas las demás funciones del Paso 11.
- **Dato que buscamos:** `[firma + cuerpo de la función load_inputs()]`.
- **Hereda info de pasos anteriores:** Paso-01 + Paso-02 + Paso-03.
- **Cómo se obtiene:** Codificamos la función que lee §8 de cada a-doc + preflight y devuelve un dict estructurado.
  - **Fuente:** `Info heredada`.

#### 11.2 Función `normalize_slugs()`
- **Qué es:** función pseudo-código — slugify estándar aplicado a 4 grupos de slugs (primary cat, main city, services, additional cats).
- **Para qué sirve:** output normalizado para generate_*().
- **Dato que buscamos:** `[firma + cuerpo función normalize_slugs()]`.
- **Hereda info de pasos anteriores:** 2.2 + 2.3 + 2.4 + 3.3 (los 4 grupos de slugs).
- **Cómo se obtiene:** Codificamos slugify + lo aplicamos a los 4 grupos.
  - **Fuente:** `Info heredada`.

#### 11.3 Función `validate_categories()`
- **Qué es:** función pseudo-código — comparar Additional vs core, aplicar criterio cobertura.
- **Para qué sirve:** alimenta validación 2.11.
- **Dato que buscamos:** `[firma + cuerpo función validate_categories()]`.
- **Hereda info de pasos anteriores:** 2.7 Variable G + 2.12 Validación dependencias.
- **Cómo se obtiene:** Codificamos la comparación Additional vs core con criterio cobertura.
  - **Fuente:** `Info heredada`.

#### 11.4 Función `generate_homepage()`
- **Qué es:** función pseudo-código — aplicar spec 5.1 a Homepage.
- **Para qué sirve:** generación automatizada de Homepage.
- **Dato que buscamos:** `[firma + cuerpo función generate_homepage()]`.
- **Hereda info de pasos anteriores:** 4.3 Homepage URL + 5.1 Spec Homepage.
- **Cómo se obtiene:** Codificamos generate_homepage() aplicando el spec doctrinal.
  - **Fuente:** `Info heredada`.

#### 11.5 Función `generate_service_overview()`
- **Qué es:** función pseudo-código — aplicar spec 5.2 × S core services.
- **Para qué sirve:** generación de S SO pages.
- **Dato que buscamos:** `[firma + cuerpo función generate_service_overview()]`.
- **Hereda info de pasos anteriores:** 4.4 SO URL pattern + 5.4 Spec AC.
- **Cómo se obtiene:** Codificamos generate_service_overview() iterando × S.
  - **Fuente:** `Info heredada`.

#### 11.6 Función `generate_geohub()`
- **Qué es:** función pseudo-código — aplicar spec 5.5 al GeoHub.
- **Para qué sirve:** generación de GeoHub Main City.
- **Dato que buscamos:** `[firma + cuerpo función generate_geohub()]`.
- **Hereda info de pasos anteriores:** 4.5 GeoHub URL Style + 5.7 Validación Schema + 3.2.
- **Cómo se obtiene:** Codificamos generate_geohub() aplicando el spec.
  - **Fuente:** `Info heredada`.

#### 11.7 Función `generate_lbs()`
- **Qué es:** función pseudo-código — aplicar spec 5.3 × S × Main City.
- **Para qué sirve:** generación de S LBS pages.
- **Dato que buscamos:** `[firma + cuerpo función generate_lbs()]`.
- **Hereda info de pasos anteriores:** 4.6 LBS URL pattern + 5.5 Spec GeoHub.
- **Cómo se obtiene:** Codificamos generate_lbs() iterando × S × Main City.
  - **Fuente:** `Info heredada`.

#### 11.8 Función `generate_additional_category()`
- **Qué es:** función pseudo-código — aplicar spec 5.4 a A categorías efectivas.
- **Para qué sirve:** generación de A AC pages.
- **Dato que buscamos:** `[firma + cuerpo función generate_additional_category()]`.
- **Hereda info de pasos anteriores:** 4.7 AC URL pattern + 5.6 Spec GA + 3.3 AC Slugs.
- **Cómo se obtiene:** Codificamos generate_additional_category() iterando × A.
  - **Fuente:** `Info heredada`.

#### 11.9 Función `generate_geoarticles()`
- **Qué es:** función pseudo-código — aplicar spec 5.6 a G×S combinaciones.
- **Para qué sirve:** generación de G×S GAs.
- **Dato que buscamos:** `[firma + cuerpo función generate_geoarticles()]`.
- **Hereda info de pasos anteriores:** 4.8 GA URL pattern + 5.8 Word count + 3.4 GA Topics.
- **Cómo se obtiene:** Codificamos generate_geoarticles() iterando × G×S.
  - **Fuente:** `Info heredada`.

#### 11.10 Función `inject_local_coverage()`
- **Qué es:** función pseudo-código — itera páginas, mapea page_type → LCAs según matriz 6.12.
- **Para qué sirve:** inyección automatizada de LCAs sin generar URLs.
- **Dato que buscamos:** `[firma + cuerpo función inject_local_coverage()]`.
- **Hereda info de pasos anteriores:** 6.2 Principio LCAs + 6.12 Tabla LCAs + 6.17 areaServed.
- **Cómo se obtiene:** Codificamos inject_local_coverage() iterando páginas + mapping según matriz 6.12.
  - **Fuente:** `Info heredada`.

#### 11.11 Función `generate_expansion()` (opcional)
- **Qué es:** función pseudo-código — replica generate_*() por Approved Expansion Area.
- **Para qué sirve:** generación de sub-clusters cuando 1.11 ≠ vacío.
- **Dato que buscamos:** `[firma + cuerpo función generate_expansion()]`.
- **Hereda info de pasos anteriores:** 1.11 Approved Expansion Areas + 4.10 AEA URLs.
- **Cómo se obtiene:** Codificamos generate_expansion() replicando lógica generate_*() por AEA. Vacío si E=0.
  - **Fuente:** `Info heredada`.

#### 11.12 Función `assign_internal_links()`
- **Qué es:** función pseudo-código — lookup matriz 7.11 + selección anchor por catálogo 7.9.
- **Para qué sirve:** asignación automatizada de enlaces internos.
- **Dato que buscamos:** `[firma + cuerpo función assign_internal_links()]`.
- **Hereda info de pasos anteriores:** 7.9 Anchor catálogo + 7.11 Matriz enlaces.
- **Cómo se obtiene:** Codificamos assign_internal_links() haciendo lookup matriz + selección anchor.
  - **Fuente:** `Info heredada`.

#### 11.13 Función `score_priority()`
- **Qué es:** función pseudo-código — 6 funciones de medición + suma + mapeo tier/phase (thresholds 26/21/16/10).
- **Para qué sirve:** scoring automatizado de Bloque 3.
- **Dato que buscamos:** `[firma + cuerpo función score_priority()]`.
- **Hereda info de pasos anteriores:** 8.1-8.10 (fórmula + factores + tiers + phase).
- **Cómo se obtiene:** Codificamos las 6 funciones de medición + suma + mapeo tier/phase.
  - **Fuente:** `Info heredada`.

#### 11.14 Función `check_dependencies()`
- **Qué es:** función pseudo-código — lookup parents + comparar phases + bloquear conflictos.
- **Para qué sirve:** integridad de matriz de dependencias.
- **Dato que buscamos:** `[firma + cuerpo función check_dependencies()]`.
- **Hereda info de pasos anteriores:** 8.11 Validación Landing antes que GA + 10.10 Matriz dependencias.
- **Cómo se obtiene:** Codificamos check_dependencies() haciendo lookup parents + comparando phases.
  - **Fuente:** `Info heredada`.

#### 11.15 Función `run_qa()`
- **Qué es:** función pseudo-código — 5 funciones QA + consolidación gate + opcional GBP checklist.
- **Para qué sirve:** ejecución automatizada del Final Publish Gate.
- **Dato que buscamos:** `[firma + cuerpo función run_qa()]`.
- **Hereda info de pasos anteriores:** 9.2-9.13 (las 12 reglas).
- **Cómo se obtiene:** Codificamos las 5 funciones QA + consolidación del gate.
  - **Fuente:** `Info heredada`.

#### 11.16 Función `output_matrices()`
- **Qué es:** función pseudo-código — serializa páginas scored + link_matrix en 3 estructuras tabulares.
- **Para qué sirve:** output final del pseudocódigo.
- **Dato que buscamos:** `[firma + cuerpo función output_matrices()]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 3.8 Schema + 7.11 Matriz enlaces.
- **Cómo se obtiene:** Codificamos output_matrices() serializando las 3 estructuras tabulares.
  - **Fuente:** `Info heredada`.

### Paso 12 — Master Prompt (13 outputs)

> El Master Prompt es el sistema en formato prompt LLM. **Documental** — el sistema actual ejecuta Bloques 1-3 manualmente paso a paso, no aplica el Master Prompt principal. Lo que SÍ se usa son los Auxiliary Prompts (12.2-12.5) en el paso de Redacción (Bloque 5).

#### 12.1 Master Prompt principal
- **Qué es:** prompt completo (~580 líneas) que un LLM puede ejecutar end-to-end para producir los outputs de planning de Bloques 1-3.
- **Para qué sirve:** alternativa "all-in-one" al flujo manual de Bloques 1-3. **No se ejecuta en el flujo actual** (manual paso a paso).
- **Dato que buscamos:** `[prompt completo ~580 líneas con 7 secciones + placeholders]`.
- **Hereda info de pasos anteriores:** Paso-11 + Bloques 1-3.
- **Cómo se obtiene:** Componemos las 7 secciones literales del original con placeholders para los inputs.
  - **Fuente:** `Info heredada`.

#### 12.2 Auxiliary Prompt URL Matrix
- **Qué es:** prompt aislado para generar la URL Matrix.
- **Para qué sirve:** **se aplica en Bloque 5 Redacción** cuando la matriz no se generó manualmente.
- **Dato que buscamos:** `[prompt aislado URL Matrix con ROLE simplificado]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 4.3-4.8 URL patterns.
- **Cómo se obtiene:** Aislamos la sección URL Matrix del Master Prompt + simplificamos el ROLE.
  - **Fuente:** `Info heredada`.

#### 12.3 Auxiliary Prompt Content Architecture
- **Qué es:** prompt aislado para generar Content Architecture por page type.
- **Para qué sirve:** **se aplica en Bloque 5 Redacción** (15.3-15.7).
- **Dato que buscamos:** `[prompt aislado Content Architecture]`.
- **Hereda info de pasos anteriores:** 5.3-5.8 Specs + 6.6-6.11 Content Architecture.
- **Cómo se obtiene:** Aislamos la sección Content Architecture del Master Prompt.
  - **Fuente:** `Info heredada`.

#### 12.4 Auxiliary Prompt GeoArticles
- **Qué es:** prompt aislado para generar GeoArticles.
- **Para qué sirve:** **se aplica en Bloque 5 Redacción** (15.8).
- **Dato que buscamos:** `[prompt aislado GeoArticles + integración keyword research]`.
- **Hereda info de pasos anteriores:** 3.4 GA Topics + 8.11 Validación landing antes que GA.
- **Cómo se obtiene:** Aislamos la sección GA del Master Prompt + integramos keyword research.
  - **Fuente:** `Info heredada`.

#### 12.5 Auxiliary Prompt QA
- **Qué es:** prompt aislado para ejecutar QA Checklist.
- **Para qué sirve:** alternativa al QA manual del Paso 9.
- **Dato que buscamos:** `[prompt aislado QA]`.
- **Hereda info de pasos anteriores:** 9.2-9.13 (las 12 reglas QA).
- **Cómo se obtiene:** Aislamos la sección QA del Master Prompt.
  - **Fuente:** `Info heredada`.

#### 12.6 Estructura del prompt
- **Qué es:** plantilla de 10 secciones (ROLE / CONTEXT / INPUTS / PROCESS / OUTPUT / VALIDATION / EXAMPLES / EDGE-CASES / FAILURES / CITATIONS).
- **Para qué sirve:** estandariza la redacción del Master + Auxiliary Prompts.
- **Dato que buscamos:** `[plantilla 10 secciones canónicas]`.
- **Cómo se obtiene:** Aplicamos la plantilla doctrinal de 10 secciones para estructurar cualquier prompt del sistema.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Plantilla doctrinal.

#### 12.7 Web-First GBP Rule
- **Qué es:** regla embebida en Master Prompt que activa flujo web-first cuando GBP=Not Created.
- **Para qué sirve:** alimenta 14.1, 9.15.
- **Dato que buscamos:** `[regla web-first activada condicionalmente según GBP status]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle Status + 9.15 GBP Not Created Checklist.
- **Cómo se obtiene:** Embebemos la regla en el Master Prompt + la activamos condicionalmente según GBP status.
  - **Fuente:** `Info heredada`.

#### 12.8 14 Reglas operativas (§22-§34 original)
- **Qué es:** reglas operativas literales del original consolidadas en sección del prompt.
- **Para qué sirve:** referencia operativa del Master Prompt.
- **Dato que buscamos:** `[14 reglas literales del original]`.
- **Hereda info de pasos anteriores:** Bloques 1-3.
- **Cómo se obtiene:** Compilamos las reglas desde los pasos origen y las consolidamos en sección del prompt.
  - **Fuente:** `Info heredada`.

#### 12.9 Inputs Validation embedded
- **Qué es:** checks de validación de inputs embebidos en Master Prompt.
- **Para qué sirve:** evita que el LLM genere outputs con inputs corruptos.
- **Dato que buscamos:** `[checks validación embebidos en sección 8 del prompt]`.
- **Hereda info de pasos anteriores:** Paso-01 1.X + Paso-02 2.X.
- **Cómo se obtiene:** Compilamos los checks desde §3 Heredados + integramos en sección 8 del prompt.
  - **Fuente:** `Info heredada`.

#### 12.10 Executive Summary template
- **Qué es:** plantilla con placeholders rellenados por el prompt al final.
- **Para qué sirve:** output final del Master Prompt (resumen ejecutivo del cluster).
- **Dato que buscamos:** `[plantilla executive summary con placeholders]`.
- **Hereda info de pasos anteriores:** Paso-01 + Paso-02 + Paso-08.
- **Cómo se obtiene:** Compilamos la plantilla con placeholders que el prompt rellena al final.
  - **Fuente:** `Info heredada`.

#### 12.11 Validación prompt produce los 20 outputs del Master Prompt
- **Qué es:** validación binaria — el output del Master genera los 20 outputs declarados en TASK.
- **Para qué sirve:** integridad del prompt.
- **Cómo se asigna:**
  - **Pass** → 20 outputs producidos.
  - **Fail** → ≥1 output faltante.
- **Dato que buscamos:** `[resultado check 20 outputs producidos]`.
- **Hereda info de pasos anteriores:** 12.1-12.5.
- **Cómo se obtiene:** Inspeccionamos la salida del Master Prompt y comprobamos que se produjeron los 20 outputs declarados.
  - **Fuente:** `Info heredada`.

#### 12.12 Validación prompt cumple web-first
- **Qué es:** validación binaria — Master Prompt aplica los 7 sub-checks de 9.15 cuando GBP=Not Created.
- **Para qué sirve:** integridad web-first.
- **Dato que buscamos:** `[resultado check 7 sub-checks web-first]`.
- **Hereda info de pasos anteriores:** 1.3 GBP Lifecycle + 9.15 GBP Not Created Checklist.
- **Cómo se obtiene:** Comprobamos que la salida del prompt cumple los 7 sub-checks de 9.15.
  - **Fuente:** `Info heredada`.

#### 12.13 10 Reglas doctrinales (§7-§16 original)
- **Qué es:** reglas doctrinales literales del original consolidadas.
- **Para qué sirve:** referencia conceptual del Master Prompt.
- **Dato que buscamos:** `[10 reglas literales del original §7-§16]`.
- **Cómo se obtiene:** Portamos literalmente las 10 reglas doctrinales del original.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Portar literal del original.

### Paso 13 — Sistema Final Operativo (12 outputs)

> Documental. Compila el SOP final del sistema GMB Crush en formato canónico (workflow + carpetas + reglas + checklist + outputs).

#### 13.1 Resumen ejecutivo (principio §20 + fórmula §21 + aplicación §22)
- **Qué es:** principio doctrinal + fórmula + aplicación al cluster.
- **Para qué sirve:** opening del SOP.
- **Dato que buscamos:** `[principio + fórmula + aplicación al cluster del cliente]`.
- **Hereda info de pasos anteriores:** 1.X + 2.X.
- **Cómo se obtiene:** Compilamos principio doctrinal + fórmula + aplicación al cluster.
  - **Fuente:** `Info heredada`.

#### 13.2 12 Sistemas literales (§7-§18 original)
- **Qué es:** cross-ref literal a cada uno de los 12 pasos del sistema.
- **Para qué sirve:** índice del SOP.
- **Dato que buscamos:** `[lista de los 12 pasos del original con cross-refs]`.
- **Hereda info de pasos anteriores:** Pasos 1-12.
- **Cómo se obtiene:** Cross-ref literal a cada uno de los 12 pasos del sistema.
  - **Fuente:** `Info heredada`.

#### 13.3 7 Módulos A-G literales (§29-§35 original)
- **Qué es:** módulos Entidad / Servicios / Categorías / Cobertura / Expansión / Schema / Tracking.
- **Para qué sirve:** estructura modular del SOP.
- **Dato que buscamos:** `[7 módulos compilados desde pasos origen]`.
- **Hereda info de pasos anteriores:** 1.X + 6.X + 8.X + 13.8.
- **Cómo se obtiene:** Compilamos los 7 módulos (A-G) desde pasos origen.
  - **Fuente:** `Info heredada`.

#### 13.4 16 Reglas operativas literales (§36-§51 original)
- **Qué es:** reglas operativas literales del original.
- **Para qué sirve:** referencia operativa del SOP.
- **Dato que buscamos:** `[16 reglas literales del original]`.
- **Cómo se obtiene:** Portamos literalmente las 16 reglas del original.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Portar literal del original.

#### 13.5 Workflow operativo de 21 pasos (§25 original)
- **Qué es:** workflow numerado de 21 pasos del original.
- **Para qué sirve:** referencia al flujo del original (con la adición del Bloque 5 el flujo real es distinto — este output queda como referencia documental al original).
- **Dato que buscamos:** `[workflow 21 pasos literal del original]`.
- **Hereda info de pasos anteriores:** Bloques 1-4.
- **Cómo se obtiene:** Portamos literalmente los 21 pasos numerados del original.
  - **Fuente:** `Info heredada`.

#### 13.6 Carpetas recomendadas del repo (§26 original)
- **Qué es:** estructura `docs/01-... 13-...` del original.
- **Para qué sirve:** referencia al original (el repo real tiene estructura distinta — Bloques con 01/02/03 — este output queda como referencia documental).
- **Dato que buscamos:** `[estructura carpetas literal del original]`.
- **Cómo se obtiene:** Portamos literalmente la estructura de carpetas recomendada del original §26.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Portar literal.

#### 13.7 Tabla inventario URL con scores literales (§54.2 original)
- **Qué es:** scores literales 100/95/92/.../70/68/65 del original.
- **Para qué sirve:** referencia operativa al inventario priorizado.
- **Dato que buscamos:** `[tabla literal scores del original]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 8.14 Inventario priorizado.
- **Cómo se obtiene:** Portamos literalmente los scores 100/95/92/.../70/68/65 del original.
  - **Fuente:** `Info heredada`.

#### 13.8 Calendario de producción de 7 fases (§54.4 original)
- **Qué es:** calendario 7 fases × semanas 1-8 del original.
- **Para qué sirve:** referencia (coexiste con 10.9 Calendario semanal — este output queda como referencia documental al calendario del original).
- **Dato que buscamos:** `[calendario 7 fases × semanas 1-8 literal]`.
- **Hereda info de pasos anteriores:** 10.4-10.9 Fases + Calendario.
- **Cómo se obtiene:** Portamos literalmente el calendario 7 fases × semanas 1-8 del original.
  - **Fuente:** `Info heredada`.

#### 13.9 Output final del Paso 13 (§28 original) — 13 elementos
- **Qué es:** compilación de los 13 elementos del output final del Paso 13.
- **Para qué sirve:** entregable consolidado del SOP.
- **Dato que buscamos:** `[13 elementos compilados desde 13.1-13.8]`.
- **Hereda info de pasos anteriores:** 13.1-13.8.
- **Cómo se obtiene:** Compilamos los 13 elementos del output final del Paso 13.
  - **Fuente:** `Info heredada`.

#### 13.10 Relación con Paso 14 (§27 original)
- **Qué es:** referencia literal "Paso 13 entrega → Paso 14 ejecuta".
- **Para qué sirve:** marca conceptualmente la transición Bloque 4 → Bloque 7.
- **Dato que buscamos:** `[texto literal de la relación 13→14]`.
- **Hereda info de pasos anteriores:** 9.15 GBP Not Created Checklist + 10.10 Matriz dependencias.
- **Cómo se obtiene:** Portamos literalmente el texto de la relación 13→14 del original.
  - **Fuente:** `Info heredada`.

#### 13.11 Checklist final de 13 preguntas (§52 original)
- **Qué es:** 13 preguntas literales del checklist final del SOP.
- **Para qué sirve:** auto-verificación del SOP antes de pasar a ejecución.
- **Dato que buscamos:** `[13 preguntas literales]`.
- **Cómo se obtiene:** Portamos literalmente las 13 preguntas del checklist final.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Portar literal del original.

#### 13.12 8 Outputs del Paso 13 (§53 original)
- **Qué es:** 8 outputs literales del Paso 13.
- **Para qué sirve:** declaración formal de los outputs del SOP.
- **Dato que buscamos:** `[8 outputs literales]`.
- **Cómo se obtiene:** Portamos literalmente los 8 outputs del Paso 13.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Portar literal del original.

---

## Bloque 5 — Salida a Mercado (39 outputs)

### Paso 15 — Redacción de Contenido (13 outputs)

#### 15.1 Capas de redacción (4 capas)
- **Qué es:** framework declarativo de 4 capas — Estructura / Zonas / Argumentos / Entidades.
- **Para qué sirve:** alimenta 15.3-15.9 (toda la redacción) como esqueleto conceptual.
- **Dato que buscamos:** `[4 capas declarativas + reglas por capa]`.
- **Cómo se obtiene:** Aplicamos el framework doctrinal de 4 capas como esqueleto para toda la redacción del cluster.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Framework doctrinal.

#### 15.2 Reglas de calidad universal (4 reglas)
- **Qué es:** 4 reglas fijas — Hero+CTA / Problema / Datos / Local.
- **Para qué sirve:** filtro de calidad aplicable a toda página redactada.
- **Dato que buscamos:** `[4 reglas universales]`.
- **Cómo se obtiene:** Aplicamos las 4 reglas doctrinales como filtro de calidad universal.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Constantes doctrinales.

#### 15.3 Homepage redactada
- **Qué es:** copy completo de la Homepage (Hero, Quick Answer, Service Menu, Local Coverage Preview, Trust, FAQ, CTA, Schema).
- **Para qué sirve:** alimenta 17.5 Page construida.
- **Dato que buscamos:** `[copy Homepage según spec + arquitectura + Auxiliary Prompt]`.
- **Hereda info de pasos anteriores:** 5.3 Spec LBS + 6.6 Homepage Content Architecture + 12.3 Auxiliary Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture prompt a la Homepage spec para generar el copy.
  - **Fuente:** `Info heredada`.

#### 15.4 Service Overview Pages redactadas
- **Qué es:** copy de las S Service Overview pages.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy SO × S core services]`.
- **Hereda info de pasos anteriores:** 5.4 Spec AC + 6.7 SO Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture × S core services.
  - **Fuente:** `Info heredada`.

#### 15.5 Location-Based Service Pages redactadas
- **Qué es:** copy de las S LBS pages × Main City.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy LBS × S × Main City con LCAs incluidas]`.
- **Hereda info de pasos anteriores:** 5.5 Spec GeoHub + 6.8 LBS Content Architecture + 1.10 LCAs.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture × S × Main City + integramos LCAs.
  - **Fuente:** `Info heredada`.

#### 15.6 Additional Category Page redactada
- **Qué es:** copy de las A AC pages.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy AC × A categorías efectivas]`.
- **Hereda info de pasos anteriores:** 5.6 Spec GA + 6.9 AC Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture × A categorías.
  - **Fuente:** `Info heredada`.

#### 15.7 GeoHub redactada
- **Qué es:** copy del GeoHub Main City.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy GeoHub Main City con services + ACs + LCAs section + GA ideas]`.
- **Hereda info de pasos anteriores:** 5.7 Validación Schema + 6.10 GeoHub Content Architecture.
- **Cómo se obtiene:** Aplicamos el Auxiliary Content Architecture con la spec GeoHub.
  - **Fuente:** `Info heredada`.

#### 15.8 GeoArticles redactados
- **Qué es:** copy de los G×S GeoArticles.
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy GAs × G×S combinaciones con LCAs como ejemplos semánticos]`.
- **Hereda info de pasos anteriores:** 5.8 Word count + 6.11 GA Content Architecture + 3.4 GA Topics.
- **Cómo se obtiene:** Aplicamos el Auxiliary GeoArticles prompt × G×S combinaciones.
  - **Fuente:** `Info heredada`.

#### 15.9 Página de contacto redactada
- **Qué es:** copy de la página de contacto (NAP + form + schema).
- **Para qué sirve:** alimenta 17.5.
- **Dato que buscamos:** `[copy Contact con NAP + form + schema]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP.
- **Cómo se obtiene:** Aplicamos plantilla básica de contacto + NAP + form + schema.
  - **Fuente:** `Info heredada`.

#### 15.10 Validación clusters completos
- **Qué es:** validación binaria — count por cluster (SO + LBS + 3 GAs por core service).
- **Para qué sirve:** filtro QA cluster-level.
- **Cómo se asigna:**
  - **Pass** → todos los clusters tienen SO + LBS + 3 GAs.
  - **Fail** → ≥1 cluster incompleto.
- **Dato que buscamos:** `[resultado check + clusters incompletos]`.
- **Cómo se obtiene:** Validamos por core service que tiene SO + LBS + 3 GAs como mínimo.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Validación count por cluster.

#### 15.11 Validación SO no compite con LBS
- **Qué es:** validación binaria — H1 SO ≠ H1 LBS por servicio core.
- **Para qué sirve:** evita canibalización.
- **Cómo se asigna:**
  - **Pass** → 0 colisiones H1.
  - **Fail** → ≥1 SO con mismo H1 que LBS.
- **Dato que buscamos:** `[resultado check colisiones H1]`.
- **Cómo se obtiene:** Comparamos H1 de SO vs H1 de LBS por servicio core.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Comparación H1.

#### 15.12 Validación GA enlaza a LBS padre
- **Qué es:** validación binaria — cada GA tiene 3 puntos de enlace a su LBS padre.
- **Para qué sirve:** filtro QA linking.
- **Cómo se asigna:**
  - **Pass** → todos los GAs ≥3 enlaces a parent LBS.
  - **Fail** → ≥1 GA con <3 enlaces.
- **Dato que buscamos:** `[resultado check enlaces por GA]`.
- **Cómo se obtiene:** Inspeccionamos los 3 puntos de enlace por GA hacia su LBS padre.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Inspección enlaces.

#### 15.13 Validación datos verificables
- **Qué es:** validación binaria — copy + schema cumplen reglas web-first (sin afirmaciones falsas sobre GBP).
- **No aplica:** ya está definido en **9.15 GBP Not Created QA Checklist** (Paso 9), que es el canónico. La validación se ejecuta sobre el sitio construido en **18.2 Auditoría de Contenido** (Paso 18).
  - **Fuente:** `no aplica`.
  - **Acción:** mantener como output documental. La validación real ocurre en 9.15 (planning) + 18.2 (build).

### Paso 16 — Diseño y Layout (6 outputs)

#### 16.1 Identidad Visual y CSS Base
- **Qué es:** tokens visuales extraídos de la web de referencia del cliente (colores, typography, spacing, shadows, radius).
- **Para qué sirve:** alimenta 16.4 Design Tokens, 16.5 Reglas CSS, 17.3 Componentes UI.
- **Dato que buscamos:** `[paleta de colores hex]` + `[font families + sizes + weights]` + `[spacing scale]` + `[border radius]` + `[shadows]`.
- **Cómo se obtiene:** El cliente nos provee la URL de su web de referencia y nosotros la inspeccionamos visualmente + DevTools para extraer los tokens visuales (colores, tipografía, spacing, etc.).
  - **Fuente:** `Cliente preflight` — la doctrina no aporta criterio (cliente provee URL ref, operador extrae tokens sin filtro doctrinal).
  - **Método:** Cliente provee URL web ref → operador inspecciona visual + DevTools → extrae tokens.

#### 16.2 Layout y Estructura por Sección
- **Qué es:** mapa de secciones por page type derivado de specs heredados.
- **Para qué sirve:** alimenta 16.6 Layout-Map, 17.4 Layout wrapper.
- **Dato que buscamos:** `[mapa secciones × page types derivado de specs]`.
- **Hereda info de pasos anteriores:** 5.3-5.8 Specs + 6.6-6.11 Content Architecture.
- **Cómo se obtiene:** Mapeamos las secciones por page type partiendo de los specs y arquitecturas heredadas.
  - **Fuente:** `Info heredada`.

#### 16.3 Propuesta de Diseño aprobada
- **Qué es:** mockups Figma → cliente revisa → iteración → aprobación final.
- **No aplica:** **el sistema deriva el diseño extrayendo tokens de la web de referencia del cliente (16.1), sin ciclo mockup→aprobación**. El flujo real no incluye propuesta-revisión-iteración-aprobación.
  - **Fuente:** `no aplica`.
  - **Acción:** mantener como referencia documental. El diseño se deriva mecánicamente de 16.1 (tokens visuales extraídos) + 16.2 (layout heredado de specs), sin intervención de cliente más allá de proveer la web de referencia inicial.

#### 16.4 Design Tokens Tailwind
- **Qué es:** `tailwind.config.js` con tokens de 16.1.
- **Para qué sirve:** alimenta 17.2 Proyecto Astro+Tailwind, 17.3 Componentes UI.
- **Dato que buscamos:** `[tailwind.config.js con tokens visuales]`.
- **Hereda info de pasos anteriores:** 16.1 Identidad Visual.
- **Cómo se obtiene:** Convertimos los tokens visuales de 16.1 a `tailwind.config.js`.
  - **Fuente:** `Info heredada`.

#### 16.5 Reglas Críticas CSS
- **Qué es:** reglas por componente (Hero / Buttons / Cards / Grids / Forms).
- **Para qué sirve:** alimenta 17.3 Componentes UI parametrizados.
- **Dato que buscamos:** `[reglas CSS por componente: Hero, Buttons, Cards, Grids, Forms]`.
- **Hereda info de pasos anteriores:** 16.4 Design Tokens Tailwind.
- **Cómo se obtiene:** Definimos reglas por componente (Hero/Buttons/Cards/Grids/Forms) usando los tokens Tailwind.
  - **Fuente:** `Info heredada`.

#### 16.6 Layout-Map Definitivo
- **Qué es:** mapeo secciones → Components con props alineados con copy.
- **Para qué sirve:** **artefacto puente Bloque 5 → Bloque 5 Constructor**. Alimenta 17.4, 17.5.
- **Dato que buscamos:** `[mapa secciones → Components + props alineados con copy]`.
- **Hereda info de pasos anteriores:** 16.2 Layout y Estructura + 15.3-15.9 (toda la redacción).
- **Cómo se obtiene:** Mapeamos las secciones a Components Astro con props alineados con el copy de cada page.
  - **Fuente:** `Info heredada`.

### Paso 17 — Constructor del Sitio (8 outputs)

#### 17.1 Acta de Lectura y Autocontraste
- **Qué es:** lectura sistemática de §8 de cada paso anterior + cross-check URL Matrix vs copy vs schemas vs links.
- **No aplica:** convertido a **checklist procedimiento previo al Paso 17**, no output declarado del sistema. Es disciplina operativa del operador antes de empezar a construir, no produce un dato downstream.
  - **Fuente:** `no aplica`.
  - **Acción:** mantener como referencia documental. La lectura se ejecuta como checklist operativo previo al Paso 17, no como output que alimente otros outputs.

#### 17.2 Proyecto Astro 5 + Tailwind v3 + pnpm
- **Qué es:** proyecto base Astro 5 + Tailwind v3 + pnpm con tailwind.config copiado de Paso 16.
- **Para qué sirve:** scaffolding del cluster.
- **Dato que buscamos:** `[proyecto Astro funcional con Tailwind config aplicado]`.
- **Cómo se obtiene:** Creamos el proyecto Astro con Tailwind y pnpm como stack canónico, copiando el tailwind.config del Paso 16.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** `pnpm create astro` + `pnpm add -D tailwindcss` + copia tailwind.config Paso-16.

#### 17.3 7 componentes UI parametrizados
- **Qué es:** 7 componentes Astro (Hero, Section, Card, Button, Form, FAQ, Footer) con props alineados a 16.5.
- **Para qué sirve:** building blocks de las páginas.
- **Dato que buscamos:** `[7 componentes Astro con props parametrizados]`.
- **Hereda info de pasos anteriores:** 16.5 Reglas Críticas CSS.
- **Cómo se obtiene:** Construimos los 7 componentes Astro con props alineados a las reglas CSS del Paso 16.
  - **Fuente:** `Info heredada`.

#### 17.4 Header + Footer + Layout wrapper
- **Qué es:** layouts globales aplicando Layout-Map + matriz enlaces.
- **Para qué sirve:** estructura común a todas las páginas.
- **Dato que buscamos:** `[Header + Footer + BaseLayout aplicando Layout-Map + enlaces]`.
- **Hereda info de pasos anteriores:** 7.11 Matriz enlaces + 16.6 Layout-Map.
- **Cómo se obtiene:** Construimos los layouts globales aplicando el Layout-Map y la matriz de enlaces.
  - **Fuente:** `Info heredada`.

#### 17.5 N páginas construidas
- **Qué es:** páginas Astro construidas iterando URL Matrix + copy + Components + Layout-Map.
- **Para qué sirve:** **output central de Bloque 5 Constructor**. Alimenta 17.6, 17.8, 18.X.
- **Dato que buscamos:** `[N páginas Astro funcionales según URL Matrix]`.
- **Hereda info de pasos anteriores:** 3.5 URL Matrix + 15.3-15.9 (toda la redacción) + 16.6 Layout-Map.
- **Cómo se obtiene:** Iteramos la URL Matrix y componemos cada página con BaseLayout + Components + copy.
  - **Fuente:** `Info heredada`.

#### 17.6 Schemas implementados y validados
- **Qué es:** JSON-LD embebido en cada page según mapping doctrinal.
- **Para qué sirve:** rich snippets + entidad para Google.
- **Dato que buscamos:** `[JSON-LD embebido por page con areaServed coherente]`.
- **Hereda info de pasos anteriores:** 5.9 Validación CTA + 6.17 areaServed coherente + 9.10 Schema QA.
- **Cómo se obtiene:** Embebemos JSON-LD en cada page según el mapping doctrinal y validamos con tools (Schema.org validator + Rich Results Test).
  - **Fuente:** `Info heredada`.

#### 17.7 Limpieza de rastros IA
- **Qué es:** eliminación de rastros de generación IA en 5 áreas (README / src / meta / package / commits).
- **Para qué sirve:** evita anti-pattern "AI-generated obvious" en producción.
- **Cómo se asigna:**
  - **Pass** → 0 rastros detectados.
  - **Fuente:** ≥1 rastro (placeholder, comentario IA, autoría falsa).
- **Dato que buscamos:** `[resultado check + áreas con rastros]`.
- **Cómo se obtiene:** Iteramos las 5 áreas (README/src/meta/package/commits) + grep contra patrones típicos de generación IA.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Iteración 5 áreas + grep + validación final.

#### 17.8 Build local pasando
- **Qué es:** build Astro local sin errores ni warnings críticos.
- **Para qué sirve:** pre-requisito de Paso 18 (deploy).
- **Cómo se asigna:**
  - **Pass** → `pnpm build` exit 0 + 0 warnings.
  - **Fail** → exit ≠ 0 o warnings críticos.
- **Dato que buscamos:** `[output de pnpm build]`.
- **Hereda info de pasos anteriores:** 17.2-17.7.
- **Cómo se obtiene:** Ejecutamos `pnpm install && pnpm build` y revisamos el output.
  - **Fuente:** `Info heredada`.

### Paso 18 — QA y Deploy (7 outputs)

#### 18.1 Auditoría Técnica (16 criterios)
- **Qué es:** 16 checks técnicos ejecutados con Lighthouse + GRT + manual responsive.
- **Para qué sirve:** validación técnica pre-deploy.
- **Cómo se asigna:**
  - **Pass** → 16 checks Pass.
  - **Fail** → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 16 checks técnicos: Lighthouse + GRT + responsive]`.
- **Hereda info de pasos anteriores:** 4.1 Canonical Domain + 5.9 Validación CTA + 17.5 Páginas + 17.6 Schemas.
- **Cómo se obtiene:** Ejecutamos los 16 checks con tools (Lighthouse + Google Rich Results + manual responsive en 3 breakpoints).
  - **Fuente:** `Info heredada`.

#### 18.2 Auditoría de Contenido (8 criterios)
- **Qué es:** 8 checks de contenido (metadata + word count + schema + web-first verification).
- **Para qué sirve:** validación de copy pre-deploy.
- **Cómo se asigna:**
  - **Pass** → 8 checks Pass.
  - **Fail** → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 8 checks contenido]`.
- **Hereda info de pasos anteriores:** 15.3-15.13 + 9.8 Metadata QA + 9.9 Word count + 9.10 Schema + 9.15 GBP Not Created.
- **Cómo se obtiene:** Inspección manual + grep + cruce con redacción y NAP.
  - **Fuente:** `Info heredada`.

#### 18.3 Auditoría Visual (5 criterios)
- **Qué es:** 5 checks visuales (Layout-Map respetado + tokens aplicados + responsive + accesibilidad).
- **Para qué sirve:** validación visual pre-deploy.
- **Cómo se asigna:**
  - **Pass** → 5 checks Pass.
  - **Fail** → ≥1 check Fail.
- **Dato que buscamos:** `[resultado 5 checks visuales]`.
- **Hereda info de pasos anteriores:** 16.4 Design Tokens + 16.6 Layout-Map.
- **Cómo se obtiene:** Inspección visual de las N páginas + cruce con Layout-Map y tokens.
  - **Fuente:** `Info heredada`.

#### 18.4 Auditoría de Rastros IA (6 criterios)
- **Qué es:** 6 checks contra rastros IA en 5 áreas + commits.
- **Para qué sirve:** validación anti-IA-obvious pre-deploy.
- **Dato que buscamos:** `[resultado 6 checks rastros IA]`.
- **Hereda info de pasos anteriores:** 17.7 Limpieza de rastros IA.
- **Cómo se obtiene:** grep + inspección manual de README + package.json + git log + src.
  - **Fuente:** `Info heredada`.

#### 18.5 Configuración Cloudflare
- **Qué es:** deploy-config.md + config aplicada en Cloudflare dashboard (Pages + DNS).
- **Para qué sirve:** infraestructura de deploy.
- **Dato que buscamos:** `[deploy-config + Pages project + DNS records aplicados]`.
- **Hereda info de pasos anteriores:** Bloque 0 Inputs 7+8 (Cloudflare Account ID + Token).
- **Cómo se obtiene:** Aplicamos el stack canónico Cloudflare usando las credenciales del preflight.
  - **Fuente:** `Arquitectura técnica`.
  - **Método:** Crear deploy-config.md + aplicar config Pages + DNS via wrangler/dashboard usando Account ID + Token del preflight.

#### 18.6 Sitio en Producción
- **Qué es:** sitio LIVE en producción tras push a main + Cloudflare auto-deploy.
- **Para qué sirve:** **artefacto central de Bloque 5**. Alimenta Bloque 7 (GBP) y Paso 19 (tracking).
- **Dato que buscamos:** `[URL del sitio LIVE + verificación post-deploy: 200 OK + render correcto]`.
- **Hereda info de pasos anteriores:** 18.1-18.5 + Bloque 0 Input 6 (GitHub Token).
- **Cómo se obtiene:** Push a main usando el GitHub Token del preflight → Cloudflare auto-deploy → verificación post-deploy (200 OK + render).
  - **Fuente:** `Info heredada`.

#### 18.7 Sitemap en GSC
- **Qué es:** sitemap.xml submitted en Google Search Console + DNS TXT verificado.
- **Para qué sirve:** indexación + tracking.
- **Dato que buscamos:** `[sitemap submitted OK + DNS TXT verified]`.
- **Hereda info de pasos anteriores:** 18.6 Sitio en Producción + Bloque 0 Input 8 (Cloudflare Token para DNS).
- **Cómo se obtiene:** GSC dashboard → submit sitemap.xml → DNS TXT verification usando Cloudflare Token.
  - **Fuente:** `Info heredada`.

### Paso 19 — Acciones Futuro y Escalado (5 outputs)

#### 19.1 Tablero de vigilancia post-launch
- **Qué es:** dashboards configurados (GSC + GA4 + Rank Tracker + Geo Grid + GBP performance).
- **Para qué sirve:** monitorización post-launch + input para 19.2-19.5 + 14.19.
- **Dato que buscamos:** `[dashboards configurados con métricas: impresiones / clicks / posición / cobertura geo]`.
- **Hereda info de pasos anteriores:** 13.8 Calendario 7 fases + 18.7 Sitemap GSC.
- **Cómo se obtiene:** Configuramos dashboards de GSC + GA4 + Rank Tracker + Geo Grid + GBP performance y los revisamos regularmente.
  - **Fuente:** `Tracking`.
  - **Método:** Configurar dashboards en cada tool del stack de tracking.

#### 19.2 Estado de los 3 triggers por candidato
- **Qué es:** evaluación de los 3 triggers (volumen / posición / concurrencia) por candidato a expansión.
- **Para qué sirve:** input para 19.3 decisión escalado.
- **Cómo se asigna:**
  - **Trigger 1 — Volumen:** ≥X impresiones/mes para queries del área.
  - **Trigger 2 — Posición:** ranking top 10 conseguido en query relacionada.
  - **Trigger 3 — Concurrencia:** GBP responde + GeoArticles traen tráfico.
- **Dato que buscamos:** `[estado de los 3 triggers por área candidata: pass/fail por trigger]`.
- **Hereda info de pasos anteriores:** 19.1 Tablero de vigilancia.
- **Cómo se obtiene:** Cruzamos las métricas del Tablero con los 3 triggers doctrinales para cada área candidata.
  - **Fuente:** `Info heredada`.

#### 19.3 Análisis SERP + decisión
- **Qué es:** análisis SERP de queries target + decisión de escalado por área.
- **Para qué sirve:** alimenta 19.4 Log de decisiones.
- **Dato que buscamos:** `[análisis SERP por área + DR/UR top 10 + decisión: aprobar/posponer/descartar]`.
- **Hereda info de pasos anteriores:** 19.2 Estado triggers + 8.6 Competition Gap.
- **Cómo se obtiene:** Hacemos análisis SERP manual + Ahrefs para fortaleza top 10 y decidimos aprobar/posponer/descartar.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** SERP analysis manual + DR/UR Ahrefs por keyword + aplicar criterio doctrinal.

#### 19.4 Log de decisiones de escalado
- **Qué es:** plantilla con 8 campos por decisión (área / fecha / score triggers / análisis SERP / decisión / fundamentación / fecha aprobación / responsable).
- **Para qué sirve:** trazabilidad de decisiones de escalado.
- **Dato que buscamos:** `[log de decisiones con 8 campos por entrada]`.
- **Hereda info de pasos anteriores:** 19.3 Análisis SERP + 13.7 Tabla URL.
- **Cómo se obtiene:** Rellenamos la plantilla con los 8 campos por cada decisión de escalado.
  - **Fuente:** `Info heredada`.

#### 19.5 URL Matrix actualizada con Approved Expansion
- **Qué es:** URL Matrix re-generada incluyendo Approved Expansion Areas.
- **Para qué sirve:** activa el sub-cluster de expansión en producción.
- **Dato que buscamos:** `[URL Matrix expandida con AEAs aprobadas]`.
- **Hereda info de pasos anteriores:** 19.4 Log de decisiones + 1.11 Approved Expansion Areas + 11.11 generate_expansion().
- **Cómo se obtiene:** Aplicamos generate_expansion() y actualizamos la URL Matrix con las AEAs aprobadas, documentando el cambio.
  - **Fuente:** `Info heredada`.

---

## Bloque 7 — GBP (20 outputs)

### Paso 14 — GBP Creation & Website Alignment (20 outputs)

> Bloque 7 ejecuta DESPUÉS de Bloque 5 (web LIVE) Y DESPUÉS de cerrar todos los `⚠` agregados en el Bloque 6 Info que falta. El GBP se crea/actualiza usando la web ya publicada como source of truth, con datos confirmados (no `⚠`).

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

#### 14.3 NAP final aprobado
- **Qué es:** NAP consolidado final que va al GBP (cruzado contra web schema + página contacto).
- **Para qué sirve:** alimenta GBP listing.
- **Dato que buscamos:** `[NAP final aprobado coherente con web]`.
- **Hereda info de pasos anteriores:** 1.4 Full NAP.
- **Cómo se obtiene:** Aplicamos §9: cruzamos NAP web vs schema vs página contacto vs GBP. Cualquier discrepancia se resuelve antes de aprobar.
  - **Fuente:** `Info heredada`.

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

#### 14.5 Categoría principal confirmada
- **Qué es:** Primary Category Planned (1.5) convertida en Confirmed sin keyword stuffing.
- **Para qué sirve:** GBP listing primary category.
- **Dato que buscamos:** `[categoría primaria confirmada sin keyword stuffing]`.
- **Hereda info de pasos anteriores:** 1.5 Planned Primary GBP Category.
- **Cómo se obtiene:** Aplicamos §8 + §26: convertimos Planned en Confirmed validando que no hay keyword stuffing.
  - **Fuente:** `Info heredada`.

#### 14.6 Categorías adicionales confirmadas o descartadas
- **Qué es:** Additional Categories planned (1.6) clasificadas en confirmadas (con soporte web real) o descartadas.
- **Para qué sirve:** GBP listing additional categories.
- **Dato que buscamos:** `[Additional Categories con soporte web real / Additional Categories descartadas]`.
- **Hereda info de pasos anteriores:** 1.6 Planned Additional GBP Categories.
- **Cómo se obtiene:** Aplicamos §14 + §27: cada Additional necesita soporte web real (página propia o cobertura por core service); si no, se descarta.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Validar soporte web real + benchmark Local Pack del sector.

#### 14.7 Servicios del GBP mapeados a páginas web
- **Qué es:** mapping cada GBP service → SO o LBS de la web.
- **Para qué sirve:** asegura coherencia GBP ↔ web (cada servicio del GBP existe en la web).
- **Dato que buscamos:** `[mapping GBP service → URL web]`.
- **Hereda info de pasos anteriores:** 1.9 Servicios principales + 5.4 Spec AC + 5.5 Spec GeoHub.
- **Cómo se obtiene:** Aplicamos §13: mapeamos cada servicio del GBP a su SO o LBS correspondiente en la web.
  - **Fuente:** `Info heredada`.

#### 14.8 URL de web seleccionada para el GBP
- **Qué es:** URL del campo "Website" del GBP (homepage o strongest local entity page).
- **Para qué sirve:** conecta GBP con web.
- **Dato que buscamos:** `[URL web seleccionada para el campo Website del GBP]`.
- **Hereda info de pasos anteriores:** 4.3 Homepage URL.
- **Cómo se obtiene:** Aplicamos §11: conectamos a homepage o a la strongest local entity page del cluster.
  - **Fuente:** `Info heredada`.

#### 14.9 URL UTM preparada
- **Qué es:** URL con parámetros UTM (utm_source=gbp, utm_medium=organic, utm_campaign=local).
- **Para qué sirve:** tracking de tráfico desde GBP en GA4.
- **Dato que buscamos:** `[URL UTM sin romper canonical]`.
- **Cómo se obtiene:** Aplicamos §12: añadimos parámetros UTM sin romper canonical (UTM solo en el campo Website del GBP, no en links de la web).
  - **Fuente:** `Tracking`.
  - **Método:** UTM builder + verificar que canonical no se rompe.

#### 14.10 Descripción GBP aprobada
- **Qué es:** descripción del GBP siguiendo patrón doctrinal (brand + category + city + services + CTA).
- **Para qué sirve:** GBP listing description.
- **Dato que buscamos:** `[descripción GBP siguiendo patrón doctrinal validado contra benchmarking top 5]`.
- **Cómo se obtiene:** Aplicamos §17 + §18: redactamos descripción con patrón brand+category+city+services+CTA, validamos contra benchmarking del top 5.
  - **Fuente:** `Doctrina + Local Pack`.
  - **Método:** Patrón doctrinal + benchmarking top 5 Local Pack.

#### 14.11 Plan de fotos
- **Qué es:** pack de fotos reales del cliente clasificadas por tipo (logo, cover, exterior, interior, team, vehicle, work examples, local context).
- **Para qué sirve:** GBP photos section.
- **Dato que buscamos:** `[lista de fotos disponibles del cliente clasificadas por tipo + presencia/no según modelo de negocio]`.
- **Cómo se obtiene:** Le pedimos al cliente que nos dé fotos reales (logo, vehículo, trabajos, contexto local) y las clasificamos según §16 según su modelo de negocio.
  - **Fuente:** `Cliente preflight + Doctrina GMB Crush` — la doctrina §16 dicta la clasificación por tipo según modelo de negocio. Cliente provee las fotos reales.
  - **Método:** Cliente provee fotos reales + clasificación según §16.

#### 14.12 Plan de Q&A
- **Qué es:** preguntas pre-pobladas para Q&A del GBP usando 4 fuentes (Auto-Suggest / PAA / Keyword research / competitors).
- **Para qué sirve:** alimenta Q&A del GBP.
- **Dato que buscamos:** `[lista de Q&A pre-pobladas con respuestas alineadas con web]`.
- **Hereda info de pasos anteriores:** 9.X QA Checklist.
- **Cómo se obtiene:** Aplicamos §23: extraemos preguntas de Auto-Suggest + PAA + Keyword research + competitors top 5, generamos respuestas alineadas con la web.
  - **Fuente:** `Doctrina + Local Pack` — **la doctrina no aporta en este output** (§23 solo dicta los 4 métodos a nivel general; no añade filtro específico).
  - **Método:** 4 fuentes (Auto-Suggest + PAA + KR + competitors top 5) + alinear respuestas con web.

#### 14.13 Plan de posts
- **Qué es:** plan de Posts del GBP (URLs P1/P2 + queries transaccionales por URL + frecuencia).
- **Para qué sirve:** estrategia de Posts post-launch.
- **Dato que buscamos:** `[plan de posts: URLs target + queries + frecuencia + CTA]`.
- **Hereda info de pasos anteriores:** 8.X Priority Score.
- **Cómo se obtiene:** Aplicamos §24: identificamos URLs P1/P2 + queries transaccionales por URL + definimos frecuencia.
  - **Fuente:** `Doctrina + Keyword research` — **la doctrina no aporta en este output** (§24 solo dicta el método general).
  - **Método:** URLs P1/P2 + KR para queries transaccionales + cadencia doctrinal.

#### 14.14 Estrategia de reseñas reales
- **Qué es:** estrategia de solicitud de reseñas con benchmarking de top 5 competidores GBP (volumen, frecuencia, patrones, métodos).
- **Para qué sirve:** plan de generación de reseñas reales (sin incentivos prohibidos).
- **Dato que buscamos:** `[volumen objetivo realista del sector + frecuencia mensual + patrones respuesta owner + métodos solicitud visibles en top 5]`.
- **Cómo se obtiene:** Hacemos benchmarking del top 5 GBP del sector + respetamos §15 como constraint negativo (no incentivos, no inventar reseñas). El plan operativo sale del benchmarking.
  - **Fuente:** `Doctrina + Local Pack` — **la doctrina no aporta en este output** (§15 actúa solo como constraint negativo, no es filtro positivo del dato Local Pack).
  - **Método:** Benchmark top 5 GBP del sector (volumen, frecuencia, métodos) + §15 como constraint negativo.

#### 14.15 Cola de actualización post-GBP
- **Qué es:** lista priorizada de elementos web a actualizar tras verificación del GBP.
- **Para qué sirve:** alimenta 14.16-14.18.
- **Dato que buscamos:** `[lista priorizada de updates post-verificación]`.
- **Cómo se obtiene:** Aplicamos §29: compilamos los elementos web a actualizar tras verificación (schema sameAs, homepage reseñas reales, contact page enlace GBP).
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Aplicar §29.

#### 14.16 Schema update plan
- **Qué es:** plan de añadir `sameAs` al schema de la web apuntando al GBP verificado.
- **Para qué sirve:** entity consolidation Google ↔ web.
- **Dato que buscamos:** `[plan de añadir sameAs al schema apuntando al GBP verificado]`.
- **Hereda info de pasos anteriores:** 3.8 Schema asignado.
- **Cómo se obtiene:** Aplicamos §20 + §28: añadimos `sameAs` al schema solo después de GBP verificado.
  - **Fuente:** `Info heredada`.

#### 14.17 Homepage update plan
- **Qué es:** plan de sincronizar Homepage con GBP (enlace, reseñas reales embebidas, mapa).
- **Para qué sirve:** Homepage post-GBP.
- **Dato que buscamos:** `[plan Homepage post-GBP: enlace + reseñas reales + mapa]`.
- **Hereda info de pasos anteriores:** 5.3 Spec LBS.
- **Cómo se obtiene:** Aplicamos §21: sincronizamos Homepage con GBP (enlace, reseñas reales embebidas si aplica, mapa).
  - **Fuente:** `Info heredada`.

#### 14.18 Contact page update plan
- **Qué es:** plan de sincronizar página de contacto con NAP final + enlace al GBP verificado.
- **Para qué sirve:** Contact page post-GBP.
- **Dato que buscamos:** `[plan Contact page post-GBP: NAP final + enlace GBP]`.
- **Hereda info de pasos anteriores:** 5.X Specs.
- **Cómo se obtiene:** Aplicamos §22: sincronizamos página de contacto con NAP final + enlace al GBP verificado.
  - **Fuente:** `Info heredada`.

#### 14.19 Tracking baseline plan
- **Qué es:** plan de tracking baseline para GBP (geo-grid + GSC + GA4 + GBP performance).
- **Para qué sirve:** monitoring del GBP post-verificación.
- **Dato que buscamos:** `[plan tracking: geo-grid + GSC + GA4 + GBP performance + cadencia revisión]`.
- **Hereda info de pasos anteriores:** 19.1 Tablero de vigilancia post-launch.
- **Cómo se obtiene:** Aplicamos §30: configuramos baseline de tracking GBP (geo-grid + GSC + GA4 + GBP performance).
  - **Fuente:** `Tracking`.
  - **Método:** Configurar baseline en cada tool del stack.

#### 14.20 Lista de riesgos
- **Qué es:** compilación de riesgos doctrinales (duplicados / keyword stuffing / NAP falso / cobertura inflada).
- **Para qué sirve:** check final pre-publicación GBP.
- **Dato que buscamos:** `[lista de riesgos identificados en el listing actual]`.
- **Cómo se obtiene:** Compilamos los riesgos doctrinales (§25 duplicados / §26 keyword stuffing / NAP falso / cobertura inflada) y los aplicamos al listing actual.
  - **Fuente:** `Doctrina GMB Crush`.
  - **Método:** Aplicar checklist de riesgos doctrinales.

---

## Resumen — outputs problemáticos

> Tras la auditoría + las decisiones aplicadas en esta iteración, los outputs siguientes siguen flageados como problemáticos (no resueltos definitivamente). Pendientes de fix.

| Output | Problema | Acción propuesta |
|---|---|---|
| 18.1-18.4 Auditorías | Redefinen las 12 reglas QA del Paso 9 (duplicación) | Colapsar a "Ejecución del Final Publish Gate" o eliminar |
| 15.13 Validación datos verificables | Triplica con 9.15 + 18.2 | ✅ **Marcado `no aplica`** — canónico es 9.15; ejecución sobre build en 18.2 |
| 10.3 CMS + capabilities | Obsoleto por stack canónico Astro | ✅ **Marcado `no aplica`** — stack canónico definido en 17.2 |
| 17.5 N páginas construidas | Numeración hardcoded "28+1" en a-doc | ✅ **Rebrand aplicado** — "28+1" → "N páginas según fórmula maestra 2.8" |
| 17.1 Acta de Lectura | Output meta-procedimental | ✅ **Marcado `no aplica`** — convertido a checklist procedimiento previo al Paso 17 |
| Workflow phases vs deploy atómico | Ambigüedad: ¿se publica iterativamente o de golpe? | ✅ **Resuelto** — GMB Crush manda: deploy iterativo por fases según calendario 10.9 (múltiples deploys, no atómico) |
| 18.1-18.4 Auditorías vs Paso 9 QA | ¿Duplicación? | ✅ **Clarificado** — Paso 18 viene del Bloque 5 (sistema añadido), valida el sitio CONSTRUIDO. Paso 9 valida el planning. Niveles distintos, no duplicación |
| 12.1 Master Prompt principal | No se ejecuta en flujo manual | ✅ **Marcado documental** — flujo actual ejecuta Bloques 1-3 manualmente; Auxiliary 12.2-12.5 sí se aplican en Paso 15 |
| 13.5 Workflow 21 pasos | Workflow del original, distinto al actual | ✅ **Marcado referencia documental al original** |
| 13.6 Carpetas recomendadas §26 | Estructura del original, distinta al repo | ✅ **Marcado referencia documental al original** |
| 13.8 Calendario 7 fases vs 10.9 Calendario semanal | Dos calendarios coexistiendo | ✅ **Marcado referencia documental al original** — operativo es 10.9 |

**Total outputs con problema:** 0 outputs problemáticos abiertos. Los 10 detectados en la auditoría inicial están resueltos:
- **3 marcados `no aplica`** con razón documentada (10.3, 15.13, 17.1)
- **1 rebrand** de wording (17.5)
- **1 clarificación de workflow** (deploy iterativo por fases según GMB Crush)
- **1 clarificación de niveles** (Paso 18 vs Paso 9 — no duplicación)
- **4 marcados como referencia documental al original** (12.1, 13.5, 13.6, 13.8)

> **Principio aplicado:** los outputs no se eliminan, se marcan como `no aplica` con razón. Total outputs del sistema se mantiene en 240 (con 3 outputs `no aplica`).

---

## Cómo usar este doc

1. **Revisar un output específico:** localiza por ID (ej: `8.2`) y lee las 4-6 secciones.
2. **Auditar fuentes:** lee "Cómo se obtiene" para ver si la fuente declarada coincide con el método real necesario.
3. **Decidir cambios de fuente:** lee "Dato que buscamos" — el placeholder describe el dato bruto. Si la fuente actual no produce ese dato eficientemente, es candidata a cambio.
4. **Verificar coherencia con el catálogo:** las fuentes mencionadas en "Cómo se obtiene" deben aparecer en `02fuentes-y-outputs.md` Parte 1.
5. **Ensamblar el sistema:** los placeholders + cross-refs ("Hereda info de pasos anteriores") componen el grafo de ejecución del cluster.

---

## Conteo final

- **Bloque 0:** 8 inputs preflight
- **Bloque 1:** 42 outputs (Pasos 1, 2, 3)
- **Bloque 2:** 57 outputs (Pasos 4, 5, 6, 7)
- **Bloque 3:** 43 outputs (Pasos 8, 9, 10)
- **Bloque 4:** 41 outputs (Pasos 11, 12, 13)
- **Bloque 5:** 39 outputs (Pasos 15, 16, 17, 18, 19)
- **Bloque 7:** 20 outputs (Paso 14)

**Total:** 8 inputs + **242 outputs** (5 marcados `no aplica`: 3.12, 10.3, 15.13, 16.3, 17.1) = **250 entries**.

