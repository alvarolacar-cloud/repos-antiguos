# 00 Preflight — AEROETERM

> **Cliente:** AEROETERM
> **Fecha de arranque:** 2026-05-04
> **Operador:** Álvaro Lacar
> **Estado:** rellenado, pendiente validación en `02 IA valida ejecutar/`

---

## Campos de negocio (5)

### 1. Nombre del negocio

`AEROETERM`

> **Nota de fidelidad:** el nombre semánticamente sugiere aerotermia/climatización, pero la actividad real es reforma de baños. Operador confirma que el nombre es correcto y se mantiene como marca canónica del negocio (decisión documentada).

### 2. Qué hace (descripción corta del servicio)

`Reforma de baños`

> **Sector real:** reformas de baños (fontanería, alicatado, sanitarios, mamparas). NO es aerotermia ni climatización pese al nombre del negocio.
>
> **Implicación operativa para Bloque 1:** el análisis Local Pack se ejecuta sobre la query `[reforma de baños] [ciudad]`, NO sobre `[aerotermia] [ciudad]`. La actividad real determina el sector competitivo, no el nombre del negocio.

### 3. Dirección con código postal

`Gomez Ortega 3, 28002 Madrid` ⚠ barrio/distrito pendiente confirmar (catastro o Google Maps)

> **Inferencia:** Madrid se infiere del CP 28002 (no provista textualmente por el operador). El CP 28002 corresponde al barrio Lista (distrito Salamanca). Confirmar con catastro antes de cerrar Bloque 1.

### 4. Estado del GBP

- [x] Not Created (default web-first)
- [ ] Created (sin verificar)
- [ ] Verified
- [ ] Pending Verification
- [ ] Suspended

> **Implicación:** flujo web-first puro. El GBP se crea en el Bloque 7 después de cerrar el deploy del Paso 18 + cerrar todos los `⚠` del Bloque 6.

### 5. Ciudades donde analizar competidores (Local Pack)

`Madrid, Sevilla, Barcelona`

> **Main City:** Madrid (presencia física por dirección + CP).
> **Comparables sectoriales:** Sevilla y Barcelona (benchmark cruzado del sector reformas de baños en otras ciudades). NO implica que el negocio opere allí — solo se usa para benchmark de top 5 competidores y patrones doctrinales del sector.

---

## Credenciales de deploy (3)

> **⚠ Seguridad:** los tokens reales NO están en este markdown. Viven en el entorno seguro del operador (env vars del sistema, secret manager, etc.).

### 6. Token de GitHub

- **Estado:** ✅ Provisto en entorno seguro
- **Scopes esperados:** `repo` + `workflow`
- **Variable de entorno:** `GITHUB_TOKEN`

### 7. ID account de Cloudflare

- **Estado:** ✅ Provisto en entorno seguro
- **Variable de entorno:** `CLOUDFLARE_ACCOUNT_ID`

### 8. Token de Cloudflare

- **Estado:** ✅ Provisto en entorno seguro
- **Scopes esperados:** `Pages:Edit` + `DNS:Edit` (zone del dominio del cluster)
- **Variable de entorno:** `CLOUDFLARE_API_TOKEN`

---

## Inferencias provisionales (sujetas a validación en `02 IA valida ejecutar/`)

| Concepto | Valor inferido | Cómo se valida |
|---|---|---|
| Main City | `Madrid` | Confirmado por CP 28002 |
| Direct LCAs | `Lista, Salamanca` (barrio + distrito del CP 28002) | Pendiente confirmación catastral |
| Categoría primaria GBP | a inferir del top 5 Local Pack `reforma de baños Madrid` | Bloque 1 — output 1.5 |
| Servicios core (S=5) | a inferir del top 5 Local Pack | Bloque 1 — output 1.9 |
| Domain canónico | `aeroeterm.com` (slugify del nombre + `.com`) | Operador confirma o declara dominio existente |
| GeoArticles per Service (G) | `3` (default doctrinal) | — |
| Approved Expansion Areas | `None` (E=0 en Phase 1, default) | — |

---

## Bloqueos y avisos

### Mismatch nombre ↔ actividad
El nombre del negocio (`AEROETERM`) no refleja la actividad (reforma de baños). Esto puede generar fricciones doctrinales:

- **Schema Organization name** = `AEROETERM` (no editable, es la marca legal).
- **GBP business name** = `AEROETERM` (Google penaliza keyword stuffing tipo "AEROETERM Reformas Baños Madrid"; mantener nombre limpio).
- **Web copy** debe explicar la propuesta de valor real (reforma de baños) sin apoyarse en el nombre.
- **Categoría primaria GBP** vendrá del sector real (`Bathroom remodeler` o equivalente español), no del nombre.

### Validación del barrio/distrito
Output `1.10 Direct LCAs` queda como `⚠ placeholder` hasta que el operador confirme barrio + distrito vía catastro.

---

## Cierre del preflight

- ☑ 5 campos de negocio rellenos
- ☑ 3 credenciales confirmadas en entorno seguro
- ☑ 2 inconsistencias (nombre↔actividad + barrio pendiente) flageadas
- ☐ Aprobación final para pasar a `02 IA valida ejecutar/`

---

> **Próximo paso:** `02 IA valida ejecutar/precheck-cliente.md` — la IA proyecta status de los 242 outputs según estos inputs y emite GO/NO-GO + plan de tools externas.
