# Preflight — [CLIENTE_NOMBRE_AQUI]

> 8 inputs del cliente. Rellénalos antes de arrancar la ejecución.
> Las credenciales (6-8) NO van en este markdown — viven en env vars del sistema.

---

## 1. Nombre del negocio

`[CLIENTE_NOMBRE]`

## 2. Qué hace (descripción corta)

`[Descripción 1-2 frases del servicio principal]`

## 3. Dirección con código postal

`[Calle y número, CP, Ciudad]`

> Si es móvil sin local físico: `Servicio móvil — Main City: [ciudad]`

## 4. Estado del GBP

- [ ] Not Created (default web-first)
- [ ] Created (sin verificar)
- [ ] Verified
- [ ] Pending Verification
- [ ] Suspended

## 5. Ciudades para análisis Local Pack

`[Main City + 1-2 comparables sectoriales]`

---

## Credenciales de deploy (NO pegar tokens reales aquí)

### 6. Token de GitHub
- **Estado:** [ ] Provisto en env / [ ] Pendiente
- **Variable de entorno:** `GITHUB_TOKEN`

### 7. ID account de Cloudflare
- **Estado:** [ ] Provisto en env / [ ] Pendiente
- **Variable de entorno:** `CLOUDFLARE_ACCOUNT_ID`

### 8. Token de Cloudflare
- **Estado:** [ ] Provisto en env / [ ] Pendiente
- **Variable de entorno:** `CLOUDFLARE_API_TOKEN`
