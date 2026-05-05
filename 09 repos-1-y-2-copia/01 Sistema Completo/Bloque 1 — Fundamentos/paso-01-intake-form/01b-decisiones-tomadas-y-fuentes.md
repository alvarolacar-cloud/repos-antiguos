# Paso 1 — Intake Form

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Si la doctrina dirige a otra fuente para obtener el valor, se combinan con `+`.
- **Qué dicta la fuente** — resumen de 6-12 palabras de la regla concreta que se aplica a esa fila.
- **Dato en cascada** — `no` si el valor nace en esta fila; `← X.YY` (o `← X.YY, Z.ZZ`) si cascadea.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`01a-ejecucion-intake-form.md`).

## Fuentes permitidas

```text
GMB Crush
Input humano
Decisión de diseño
Competidores
Datos de búsqueda
IA sin respaldo
```

Combinaciones permitidas (cuando la doctrina dirige a otra fuente):

```text
GMB Crush + Competidores
GMB Crush + Datos de búsqueda
GMB Crush + IA sin respaldo
GMB Crush + Input humano
```

## Regla de palabras en `Qué dicta la fuente`

```text
Target: 8 palabras de media.
Máximo: 12 palabras.
Hard cap: 15 palabras.
Si la regla necesita más, vive en §X del ejecutable.
```

---

## Bloque 1 — Identidad del negocio

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.01 | Se define el nombre del negocio | Cerrajeros Madrid 24h | Input humano | Nombre real es base de toda referencia NAP | no | §7 |
| 1.02 | Se define la URL principal de la web | https://www.cerrajerosmadrid24h.com | Input humano | Dominio es ancla canónica de todo el sitio | no | §8 |
| 1.03 | Se define el dominio canónico | https://www.cerrajerosmadrid24h.com | Input humano | Versión canónica evita duplicados www vs apex | no | §8 |

## Bloque 2 — Estado inicial del GBP

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.04 | Se decide el estado del GBP | GBP Status: Not Created | Input humano | Cliente confirma si el GBP existe ya | no | §4 |
| 1.05 | Se decide el momento de creación del GBP | After website launch | GMB Crush | Web-first: GBP solo después de publicar la web | no | §4 |
| 1.06 | Se decide el estado de verificación del GBP | Not Started | Input humano | Cliente confirma estado de verificación del GBP | no | §4 |
| 1.07 | Se decide que no hay GBP URL todavía | N/A — GBP not created yet | GMB Crush | No inventar GBP URL antes del Paso 14 | no | §4 |

## Bloque 3 — NAP y contacto

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.08 | Se define el nombre NAP | Cerrajeros Madrid 24h | Input humano | NAP es nombre legal sin variantes ni eslogans | ← 1.01 | §9 |
| 1.09 | Se define la dirección del negocio | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí | Input humano | Cliente aporta la dirección física completa | no | §9 |
| 1.10 | Se define la ciudad del negocio | Madrid | Input humano | Cliente aporta la ciudad del NAP | no | §9 |
| 1.11 | Se define la provincia o comunidad | Comunidad de Madrid | GMB Crush | Provincia se infiere de la ciudad del NAP | ← 1.10 | §9 |
| 1.12 | Se define el código postal | 28010 | Input humano | Cliente aporta el código postal | no | §9 |
| 1.13 | Se define el país | España | Input humano | Cliente aporta el país | no | §9 |
| 1.14 | Se define el teléfono del negocio | +34 600 000 000 | Input humano | Cliente aporta el teléfono de contacto | no | §9 |
| 1.15 | Se define el email del negocio | info@cerrajerosmadrid24h.com | Input humano | Cliente aporta el email de contacto | no | §9 |

## Bloque 4 — Categorías GBP planificadas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.16 | Se define la categoría principal planificada para el futuro GBP | Cerrajero | GMB Crush + Competidores | Categoría más usada en el Local Pack del sector | no | §10 |
| 1.17 | Se define una categoría adicional planificada | Servicio de cerrajería de urgencia | GMB Crush + Competidores | Categoría secundaria frecuente en competidores del sector | no | §11 |
| 1.18 | Se define otra categoría adicional planificada | Servicio de duplicado de llaves | GMB Crush + Competidores | Categoría secundaria frecuente en competidores del sector | no | §11 |

## Bloque 5 — Dirección física, Main City y zonas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.19 | Se define la dirección física como ancla del sistema | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid | GMB Crush | Dirección física es ancla del cluster local | ← 1.09 | §9 |
| 1.20 | Se define la ciudad que crea la arquitectura base | Madrid | GMB Crush | Ciudad del NAP es la Main City del sistema | ← 1.10 | §12 |
| 1.21 | Se define la ciudad de ubicación física | Madrid | Input humano | Cliente confirma ubicación física real del negocio | no | §13 |
| 1.22 | Se define una Direct Local Coverage Area | Almagro | GMB Crush | Barrio que aparece en la dirección física | ← 1.09 | §15 |
| 1.23 | Se define una Direct Local Coverage Area | Chamberí | GMB Crush | Distrito que aparece en la dirección física | ← 1.09 | §15 |
| 1.24 | Se define una Candidate Local Coverage Area | Salamanca | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.25 | Se define una Candidate Local Coverage Area | Retiro | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.26 | Se define una Candidate Local Coverage Area | Centro | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.27 | Se define una Candidate Local Coverage Area | Tetuán | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.28 | Se define una Candidate Local Coverage Area | Chamartín | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.29 | Se define una Candidate Local Coverage Area | Arganzuela | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.30 | Se define una Candidate Local Coverage Area | Moncloa | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |
| 1.31 | Se define una Candidate Local Coverage Area | Prosperidad | GMB Crush + Competidores | Barrio con cobertura competitiva pendiente test GEO 3/6 | no | §15 |

## Bloque 6 — Expansión geográfica

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.32 | Se decide que las Local Coverage Areas no generarán páginas en la base | No, not in the base build | GMB Crush | URL por LCA dispersa autoridad y canibaliza la LBS | no | §16 |
| 1.33 | Se decide que no hay Approved Expansion Areas en la fase inicial | None in Phase 1 | GMB Crush | Expansión sin tracción real produce páginas zombie | no | §16 |

## Bloque 7 — Servicios principales

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.34 | Se define el servicio principal 1 | Cerrajero urgente | GMB Crush + Competidores | 5 servicios core extraídos del análisis competitivo | no | §14 |
| 1.35 | Se define el servicio principal 2 | Apertura de puertas | GMB Crush + Competidores | 5 servicios core extraídos del análisis competitivo | no | §14 |
| 1.36 | Se define el servicio principal 3 | Cambio de cerraduras | GMB Crush + Competidores | 5 servicios core extraídos del análisis competitivo | no | §14 |
| 1.37 | Se define el servicio principal 4 | Cambio de bombines | GMB Crush + Competidores | 5 servicios core extraídos del análisis competitivo | no | §14 |
| 1.38 | Se define el servicio principal 5 | Instalación de cerraduras de seguridad | GMB Crush + Competidores | 5 servicios core extraídos del análisis competitivo | no | §14 |

## Bloque 8 — Consolidación de categorías adicionales

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.39 | Se decide que una categoría adicional ya está cubierta por un servicio principal | Servicio de cerrajería de urgencia queda cubierta por Cerrajero urgente | GMB Crush | Si servicio core cubre la categoría, no necesita página | ← 1.17, 1.34 | §21 |
| 1.40 | Se decide que una categoría adicional necesita página propia | Servicio de duplicado de llaves | GMB Crush | Categoría no cubierta por servicio core necesita página | ← 1.18 | §21 |

## Bloque 9 — Contenido, conversión y confianza

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 1.41 | Se define el número de GeoArticles por servicio | 3 | GMB Crush | 3 satélites por servicio para cobertura semántica | no | §15 |
| 1.42 | Se define el CTA principal | Llamar ahora | Decisión de diseño | Operador elige el CTA según urgencia del servicio | no | §17 |
| 1.43 | Se define una señal de confianza | 10+ años de experiencia | GMB Crush + Competidores | Garantías y beneficios frecuentes en competidores del sector | no | §18 |
| 1.44 | Se define una señal de confianza pendiente del futuro GBP | Reseñas iniciales pendientes de recopilar tras crear y verificar el GBP | GMB Crush | Prohibido inventar reseñas antes de tener GBP verificado | no | §18 |
| 1.45 | Se define una señal de confianza | Técnicos cerrajeros cualificados | GMB Crush + Competidores | Garantías y beneficios frecuentes en competidores del sector | no | §18 |
| 1.46 | Se define una señal de confianza | Servicio móvil en el mismo día | GMB Crush + Competidores | Garantías y beneficios frecuentes en competidores del sector | no | §18 |
| 1.47 | Se define una señal de confianza | Garantía de trabajo | GMB Crush + Competidores | Garantías y beneficios frecuentes en competidores del sector | no | §18 |
