# 00 Preflight — Inputs del cliente

> Este documento contiene los **8 inputs** que el operador entrega antes de que la IA ejecute el sistema:
> - **5 campos de negocio** (1-5) — alimentan los Pasos 1-3 (intake, fórmula, matriz).
> - **3 credenciales de deploy** (6-8) — alimentan el Paso 18 (deploy a producción).
>
> Todo lo demás lo infiere la IA aplicando la doctrina, el análisis competitivo (Local Pack) y las reglas de cada paso.

> **Punto de entrada:** si arrancas a ejecutar el sistema desde aquí, lee primero `00 convenciones/01flujo-ejecucion.md` para entender el orden global (Convenciones → Preflight → Bloques 1-7) y las condiciones de paso entre bloques.

> **⚠ Seguridad:** las credenciales de los campos 6-8 (tokens API) se almacenan en **entorno seguro** (variables de entorno, secret manager, etc.), **NO en este markdown**. Aquí solo se documenta que el operador las ha provisto.

---

## Campos de negocio (5)

### 1. Nombre del negocio

<!-- ej. Cerrajeros Madrid 24h -->

`Aeroterm`


### 2. Qué hace (descripción corta del servicio)

<!-- ej. cerrajería urgente y apertura de puertas en domicilios y oficinas -->

`Instalación, mantenimiento y sustitución de sistemas de aerotermia en domicilios; servicios de calefacción/climatización + energía solar como complemento.`


### 3. Dirección con código postal

<!-- ej. Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, 28010 Madrid -->

`Marqués de Valdecilla 16, 28002 Madrid` ⚠ barrio/distrito pendiente confirmar (catastro o Google Maps).

> Si el negocio es móvil sin dirección física, declarar `Servicio móvil — Main City: [ciudad]`. La IA infiere Main City desde aquí.


### 4. Estado del GBP

- [x] Not Created (default web-first)
- [ ] Created (sin verificar)
- [ ] Verified
- [ ] Pending Verification
- [ ] Suspended


### 5. Ciudades donde analizar competidores

<!-- ej. Madrid -->

`Madrid`

> Una o varias. La IA usa estas ciudades como base del Local Pack analysis para extraer Primary Category, servicios core, categorías adicionales, Candidate LCAs y trust signals.

---

## Credenciales de deploy (3)

> **⚠ NUNCA pegar el valor real del token aquí.** Documentar solo el estado (provisto/pendiente) y la ubicación segura (env var, secret manager). Los tokens reales viven fuera del repo.

### 6. Token de GitHub

- **Qué es:** Personal Access Token con scopes `repo` + `workflow` sobre el repo del cluster.
- **Para qué sirve:** push a `main` desde la IA/operador → trigger de GitHub Actions → auto-deploy del cluster.
- **Cómo se genera:** GitHub → Settings → Developer Settings → Personal Access Tokens → Generate new token (classic) → seleccionar scopes `repo` + `workflow`.
- **Estado:** `[ ] Provisto / [ ] Pendiente`
- **Ubicación segura:** `[entorno seguro / env var GITHUB_TOKEN / secret manager]`


### 7. ID account de Cloudflare

- **Qué es:** Account ID de la cuenta de Cloudflare donde vive el dominio del cluster.
- **Para qué sirve:** wrangler / Cloudflare Dashboard apuntan a la cuenta correcta para deploy de Pages.
- **Cómo se obtiene:** Cloudflare Dashboard → Overview (panel derecho) → copiar `Account ID`.
- **Estado:** `[ ] Provisto / [ ] Pendiente`
- **Ubicación segura:** `[entorno seguro / env var CLOUDFLARE_ACCOUNT_ID]`


### 8. Token de Cloudflare

- **Qué es:** API Token con scopes `Pages:Edit` + `DNS:Edit` sobre el zone del dominio del cluster.
- **Para qué sirve:** deploy a Cloudflare Pages (output 18.5) + verificación DNS TXT del sitemap en GSC (output 18.7).
- **Cómo se genera:** Cloudflare Dashboard → My Profile → API Tokens → Create Token → seleccionar template "Edit Cloudflare Pages" o custom con scopes `Account: Cloudflare Pages: Edit` + `Zone: DNS: Edit`.
- **Estado:** `[ ] Provisto / [ ] Pendiente`
- **Ubicación segura:** `[entorno seguro / env var CLOUDFLARE_API_TOKEN]`

---

## Lo que la IA infiere a partir de aquí

| Concepto | Cómo lo infiere |
|---|---|
| Servicios core (S=5) | Top 5 frecuencia en Local Pack de las ciudades del campo 5 |
| Planned Primary GBP Category | Categoría más repetida en Local Pack top |
| Planned Additional Categories | Secundarias frecuentes en competidores |
| Main City | Extraída del campo 3 (ciudad de la dirección) |
| Direct Local Coverage Areas | Barrio + distrito del campo 3 |
| Candidate Local Coverage Areas | Áreas declaradas por 2+ competidores top |
| GBP Creation Timing / Verification / URL | Defaults web-first según campo 4 |
| Slugs (Primary, Main City, Services, Additional) | Slugify aplicado a cada nombre |
| GeoHub URL Style | Default `/city/` salvo razón explícita |
| GeoArticles per Service (G) | Default 3 (doctrina) |
| Domain canónico | Slugify(nombre).com — propuesto, pendiente confirmar |
| Teléfono / Email | Placeholder pendiente que cliente confirme |
| Trust signals | Estándar del sector + diferenciadores extraídos de competidores |
| CTA preferido | Default según urgencia del servicio |
| Approved Expansion Areas | None en Phase 1 (default) |
| Default Page Status | Planned (default) |
| Default Priority | Por tipo de página según doctrina |

---

> **Cuando los 8 campos estén rellenos** (5 negocio + 3 credenciales **provistas en entorno seguro**), la IA puede arrancar Paso 1 → 2 → 3 sin pedir nada más al humano. Las credenciales 6-8 se consumen en Paso 18 al hacer deploy a producción.
