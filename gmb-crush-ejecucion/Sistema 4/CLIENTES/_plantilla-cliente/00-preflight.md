# 00-preflight.md — [NOMBRE CLIENTE]

> **Operador:** [tu nombre]
> **Fecha:** [YYYY-MM-DD]

---

## LOS 2 DATOS QUE LA IA NECESITA PARA ARRANCAR

### 1. Dirección
<!-- Calle + número + ciudad. Con CP si lo tienes. -->
<!-- Da la ciudad sola si no tienes la calle — es suficiente para arrancar. -->
`[PENDIENTE]`

### 2. Qué hace la empresa
<!-- 1-2 frases. Ej: reforma integral de baños en domicilios particulares. -->
`[PENDIENTE]`

---

## DA LO QUE TENGAS (la IA infiere el resto con ⚠)

### Nombre del negocio
`[vacío = la IA usa placeholder hasta que lo confirmes]`

### Estado del GBP
- [ ] Not Created ← default
- [ ] Created
- [ ] Verified
- [ ] Pending Verification
- [ ] Suspended

### Ciudades adicionales para benchmark
`[vacío = la IA usa solo la ciudad de la dirección]`

### Teléfono
`[vacío]`

### Email
`[vacío]`

---

## CREDENCIALES DE DEPLOY (solo para el Paso 18 — deploy a producción)

> NUNCA el token real aquí. Solo marcar si está disponible en entorno seguro.

- [ ] `GITHUB_TOKEN` (repo + workflow)
- [ ] `CF_ACCOUNT_ID`
- [ ] `CF_API_TOKEN` (Pages:Edit + DNS:Edit)
