# 01 cliente preflight — Preflight del cliente

> **Qué pasa aquí:** el cliente entrega los 8 inputs que el sistema necesita para arrancar. Esta carpeta contiene el preflight rellenado con los datos reales del cliente.

---

## Pre-requisito

`00 IA lee teoria/check-1-confirmacion.md` aprobado. Sin la teoría interiorizada, no se arranca preflight.

---

## Qué entrega el cliente (8 inputs)

### Campos de negocio (5)

1. **Nombre del negocio** — nombre comercial canónico.
2. **Qué hace** — descripción corta en 1-2 frases.
3. **Dirección con CP** — calle + número + ciudad + CP. Si es móvil sin local, declarar `Servicio móvil — Main City: [ciudad]`.
4. **Estado del GBP** — uno de los 5 estados (Not Created / Created / Verified / Pending / Suspended).
5. **Ciudades para análisis Local Pack** — Main City + comparables del sector.

### Credenciales de deploy (3)

6. **Token de GitHub** — Personal Access Token con scopes `repo` + `workflow`.
7. **ID account de Cloudflare** — visible en el dashboard de Cloudflare > Overview.
8. **Token de Cloudflare** — API Token con scopes `Pages:Edit` + `DNS:Edit`.

> **⚠ Seguridad:** las credenciales (6-8) se almacenan en **entorno seguro** (variables de entorno, secret manager, etc.), **NO en este markdown**. Aquí solo se documenta que el operador las ha provisto.

---

## Cómo se rellena

Copiar la plantilla del sistema:

```
01 Teoria Leer antes de Ejecutar/02 ejecución/Bloque 0 Preflight/00preflight.md
```

a esta carpeta como `00preflight-cliente.md` y rellenar los 8 campos con los valores reales del cliente.

---

## Salida

`00preflight-cliente.md` rellenado completo (incluyendo confirmación de que las 3 credenciales están en entorno seguro) → desbloquea `02 IA valida ejecutar/`.
