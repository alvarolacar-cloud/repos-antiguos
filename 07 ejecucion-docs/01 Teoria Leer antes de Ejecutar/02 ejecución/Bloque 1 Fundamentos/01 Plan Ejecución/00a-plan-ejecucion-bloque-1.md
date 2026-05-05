# Plan de ejecución del Bloque 1 (Pasos 1-3)

> Plantilla del sistema. Vista unificada de los **41 outputs** que producen los pasos 1, 2 y 3 cuando se ejecutan para cualquier cliente. Antes de arrancar la ejecución, esta tabla muestra qué se va a producir, cómo se decide cada output y qué fuentes hacen falta. Una vez ejecutado, este mismo documento se rellena con los valores reales del cliente y su status (confirmed / ⚠ inferido / ⚠ placeholder) y se convierte en el consolidado del Bloque 1 para ese cliente.

> **Punto de entrada:** si arrancas a ejecutar el sistema desde aquí, lee primero `00 convenciones/01flujo-ejecucion.md` para entender el orden global (Convenciones → Preflight → Bloques 1-6) y las condiciones de paso entre bloques.

> **Cómo usar esta plantilla:**
> 1. Rellena la sección "Cliente" con los 5 campos del preflight.
> 2. Lee las 3 tablas (Paso 1, 2, 3) para entender qué outputs hay que producir y de dónde viene cada uno.
> 3. Resuelve los bloqueos críticos antes de arrancar la ejecución (sección final).
> 4. Una vez ejecutado, vuelca los valores reales en las columnas (o crea un consolidado paralelo en `Fase 3 - Consolidado/`).

---

## Cliente

> Datos del preflight (`Bloque 0 Preflight/00preflight.md`). Rellenar antes de arrancar la ejecución.

| Campo | Valor |
|---|---|
| 1. Nombre del negocio | `[pendiente]` |
| 2. Qué hace | `[pendiente]` |
| 3. Dirección con CP | `[pendiente]` |
| 4. Estado del GBP | `[pendiente]` |
| 5. Ciudades para análisis Local Pack | `[pendiente]` |

---

## Fuentes

> Las **8 fuentes válidas** del sistema (`Doctrina GMB Crush`, `Cliente preflight`, `Cliente preflight + Doctrina GMB Crush`, `Arquitectura técnica`, `Tracking`, `Doctrina + Local Pack`, `Doctrina + Keyword research`, `Doctrina + Google Search`) y la notación de herencia `← X.Y` (Info heredada) están documentadas en `00 convenciones/02fuentes-y-outputs.md` y `01 fuentes/00-fuentes-en-uso.md`. Cualquier valor en la columna `Fuentes para Decidir` de las tablas de abajo debe pertenecer a ese catálogo.

---

## Paso 1 — Intake Form (14 outputs)

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **1.1** Business Name | `Cliente preflight` | Lo declara el cliente |
| **1.2** Website URL / Canonical Domain | `Cliente preflight` | Slugify(nombre) + `.com` (propuesto) o lo declara el cliente — formato HTTPS + www + trailing slash |
| **1.3** GBP Lifecycle Status | `Cliente preflight` + `Doctrina GMB Crush` | Default web-first según preflight; doctrina marca timing/verification/URL |
| **1.4** Full NAP (8 campos) | `Cliente preflight` | Cliente declara los 8 campos (los 6 primeros del preflight; phone + email confirmados durante ejecución del Paso 1). La doctrina no aporta criterio aquí |
| **1.5** Planned Primary GBP Category | `Doctrina + Local Pack` | Análisis Local Pack — categoría más repetida en el top 5 de competidores |
| **1.6** Planned Additional GBP Categories | `Doctrina + Local Pack` | Análisis Local Pack — categorías secundarias frecuentes; clasificar cubierta/página propia |
| **1.7** Main City | `← 1.4` (City) | Ciudad extraída del NAP del preflight |
| **1.8** Physical Location City | `Cliente preflight` | Ciudad de presencia física, normalmente = Main City |
| **1.9** Servicios principales (S=5) | `Doctrina + Local Pack` | Top 5 frecuencia en Local Pack + cruzar con oferta real del cliente |
| **1.10** Direct + Candidate LCAs | `← 1.4` (NAP Street + City) + `Doctrina + Local Pack` | Direct: barrio/distrito del NAP. Candidate: zonas en 2+ competidores top, validables con test GEO |
| **1.11** Approved Expansion Areas | `Tracking` | Default vacío en Phase 1; se rellena con datos post-launch |
| **1.12** GeoArticles per Service (G) | `Doctrina GMB Crush` | Default doctrina G=3 |
| **1.13** Preferred CTA | `Doctrina + Local Pack` | Según urgencia del servicio + benchmarking top 5 competidores (Llamar ahora / Reservar online / Solicitar presupuesto / Contactar) |
| **1.14** Trust Signals | `Doctrina + Local Pack` | Estándar del sector + diferenciadores extraídos de competidores |

---

## Paso 2 — Fórmula Maestra (14 outputs)

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **2.1** Planned GBP Categories Status | `← 1.5 + 1.6` | Marcar como `Planned` hasta que se cree el GBP en Paso 14 |
| **2.2** Primary Category Slug | `← Paso-03 §4 intake (slugs nativos del Paso 3)` | Heredado del Paso 3 — referenciado aquí porque la fórmula maestra necesita el slug |
| **2.3** Main City Slug | `← Paso-03 §4 intake` | Heredado del Paso 3 |
| **2.4** Service Slugs | `← Paso-03 §4 intake` | Heredado del Paso 3 — aplicado a cada core service |
| **2.5** Variable S | `← 1.9` | Contar core services aplicables a la Main City |
| **2.6** Variable A | `← 1.6` | Contar Additional Categories que necesitan página propia |
| **2.7** Variable G | `← 1.12` | Hereda directo de 1.12 |
| **2.8** Total páginas SEO base | `← 2.5 + 2.6 + 2.7` | Aplicar fórmula maestra `1 + S + 1 + S + A + G×S` |
| **2.9** Inventario por tipo de página | `← 2.5 + 2.6 + 2.7` | Desglose de la fórmula 2.8 por page type |
| **2.10** Optional Expansion Formula | `← 1.11` | Declarar fórmula de expansión inactiva en Phase 1 |
| **2.11** Validación anti-duplicación | `← 1.6 + 1.9` | Cruzar Additional Categories vs core services y consolidar duplicados |
| **2.12** Validación dependencias | `← 2.9` | Validar orden HP → SO → GH → LBS → AC → GAs |
| **2.13** Validación LCAs fuera fórmula | `← 1.10` | Confirmar que ninguna LCA genera URL en la fórmula base |
| **2.14** Validación auditabilidad del total | `← 2.8 + 2.9` | Validar que el total se desglosa rastreablemente por page type |

---

## Paso 3 — Matriz Base (13 outputs)

| Output a decidir | Fuentes para Decidir | Cómo Decidimos |
|---|---|---|
| **3.1** Spreadsheet Name | `← 1.1` | Convención `[Cliente] – GMB Crush Website Architecture` |
| **3.2** GeoHub URL Style | `Arquitectura técnica` | Stack canónico — Option A `/[main-city]/` o Option B `/[primary-cat]/[main-city]/` |
| **3.3** Additional Category Slugs | `← 1.6` | Slugify aplicado a las Additional Categories que necesitan página propia |
| **3.4** GeoArticle Topics propuestos | `← 1.9` + `Doctrina + Keyword research` | Keyword research por core service + filtrar por intent GEO + validar volumen |
| **3.5** URL Matrix completa | `← 2.8 + 2.9` + outputs 1.X y 2.X relevantes | Generar matriz N filas × 20 columnas con todas las URLs derivadas de la fórmula |
| **3.6** IDs por tipo de página | `← 3.5` | Convención `[PageType-Index]` aplicada por fila |
| **3.7** Parent Page declarado por fila | `← 3.5` + `Doctrina GMB Crush` | Mapear jerarquía padre→hijo según doctrina |
| **3.8** Schema asignado desde matriz | `← 3.5` + `Doctrina GMB Crush` | Mapping doctrinal por page type |
| **3.9** Enlaces internos Required por fila | `← 3.5` + `Doctrina GMB Crush` | Listado contractual por page type según doctrina |
| **3.10** Priority y Publish Phase por fila | `← 3.5` + `Doctrina GMB Crush` | Doctrina: HP P1, LBS P1, SO P2, GH P2, GAs P3-4 |
| **3.11** Default Page Status | `Doctrina GMB Crush` | `Planned` (default al cerrar matriz) |
| **3.13** Validación LCAs sin filas base | `← 1.10 + 3.5` | Confirmar que ninguna LCA genera fila URL en la matriz |
| **3.14** Validación matriz cerrada antes de contenido | `← 3.5` | Validar que todas las celdas de la matriz están rellenas |

> **Nota:** el output 3.12 fue eliminado en refactor del catálogo de fuentes. Los IDs 3.13 y 3.14 mantienen su numeración para no romper cross-refs upstream.

---

## Resumen — qué necesita la IA antes de ejecutar

### Inputs del cliente / preflight (8 campos)

- ☐ `Cliente preflight` — Business Name
- ☐ `Cliente preflight` — descripción del servicio
- ☐ `Cliente preflight` — Dirección completa con CP (incluido barrio/distrito)
- ☐ `Cliente preflight` — Estado del GBP
- ☐ `Cliente preflight` — Ciudades para análisis Local Pack
- ☐ `Cliente preflight` — Token de GitHub (deploy)
- ☐ `Cliente preflight` — ID account de Cloudflare (deploy)
- ☐ `Cliente preflight` — Token de Cloudflare (deploy)

### Inputs del cliente posteriores (placeholders → confirmed)

- ☐ Phone real del negocio (output 1.4)
- ☐ Email de contacto (output 1.4)
- ☐ Confirmación dominio web a registrar (output 1.2)
- ☐ Confirmación de la oferta real de servicios (output 1.9 — comparado con top Local Pack)
- ☐ Validación de exclusiones servicio↔Main City si las hay (cliente declara en intake; afecta a output 2.5 Variable S)

### Tools externos

- ☐ **Google Maps (Local Pack)** — análisis top 5 competidores en las ciudades del `Cliente preflight` por la categoría del negocio. Resuelve: 1.5, 1.6, 1.9, 1.10 (Candidate), 1.14
- ☐ **Keyword research (Ahrefs / Semrush / Google KP)** — volumen + intent en la Main City por core service. Resuelve: 3.4 (G×S GeoArticle Topics)

### Decisiones técnicas / configuración

- ☐ Approved Expansion Areas (output 1.11) — `Tracking`, default vacío en Phase 1
- ☐ Preferred CTA (output 1.13) — `Doctrina + Local Pack`, top 5 competidores
- ☐ GeoHub URL Style (output 3.2) — `Arquitectura técnica`, Option A `/[main-city]/` (default) o Option B `/[primary-cat]/[main-city]/`

### Defaults doctrinales (no requieren input)

- GeoArticles per Service G=3 (output 1.12)
- GBP Lifecycle defaults web-first (output 1.3)
- Schema por page type (output 3.8)
- Enlaces internos Required por page type (output 3.9)
- Priority y Publish Phase (output 3.10)
- Default Page Status `Planned` (output 3.11)

---

## Cascada de dependencias (qué bloquea qué)

```
Preflight (5 campos)
    │
    ├─► Local Pack analysis ──► 1.5, 1.6, 1.9, 1.10, 1.14
    │       │
    │       └─► (cliente confirma oferta) ──► 1.9 (exclusiones afectan a 2.5 Variable S)
    │
    ├─► NAP directo ──► 1.4 → 1.7 → 1.8, 1.10 (Direct LCAs)
    │
    ├─► Local Pack ──► 1.13
    ├─► Tracking ──► 1.11 (default vacío)
    ├─► Arquitectura técnica ──► 3.2
    │
    └─► Doctrina ──► 1.3, 1.12, 3.8, 3.9, 3.10, 3.11

Outputs 1.X
    │
    └─► slugify + fórmula maestra ──► todos los outputs 2.X
            │
            └─► Generar matriz ──► 3.5 → 3.6, 3.7, 3.8, 3.9, 3.10, 3.11

Keyword research ──► 3.4 (G×S GeoArticle Topics)
```

---

## Bloqueos antes de ejecutar

> Si alguno de estos bloqueos no se resuelve, los outputs marcados quedarán como `⚠ inferido` o `⚠ placeholder`. La publicación queda bloqueada por la regla del sistema hasta que pasen a `confirmed` / `validated`.

| Bloqueo | Outputs que quedan ⚠ | Cómo se desbloquea |
|---|---|---|
| Local Pack no ejecutado | 1.5, 1.6, 1.9, 1.10 (Candidate), 1.14 | Ejecutar análisis competitivo en Google Maps |
| Keyword research no ejecutado | 3.4 | Ejecutar research en Ahrefs/Semrush/Google KP |
| Cliente no confirma phone/email | 1.4 (Phone, Email) | Pedir al cliente |
| Cliente no confirma dominio | 1.2 | Pedir al cliente |
| Barrio/distrito del NAP no validado | 1.4 (Street completo), 1.10 (Direct LCAs) | Validar en catastro o Google Maps |
| Operador no decide CTA | 1.13 | Decisión del operador |
| Operador no decide GeoHub URL Style | 3.2, y por cascada 4.5 (Paso 4) | Decisión del operador |

---

> **Cuándo arrancar la ejecución:** una vez resueltos los bloqueos críticos del cliente (NAP completo, dominio, oferta de servicios). Local Pack y keyword research se pueden hacer en paralelo a la ejecución — la IA dejará los outputs afectados como `⚠ inferido` y se promueven a `confirmed` cuando lleguen los datos.
