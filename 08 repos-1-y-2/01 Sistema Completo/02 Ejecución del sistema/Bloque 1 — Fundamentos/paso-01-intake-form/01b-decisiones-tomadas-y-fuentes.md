# Paso 1 — Intake Form

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — resumen de 6-12 palabras de la regla concreta que se aplica a esa fila.
- **Fuente de la decisión** — quién dicta la decisión. Si la doctrina dirige a otra fuente para obtener el valor, se combinan con `+`.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` si el valor nace en esta fila; `← X.YY` (o `← X.YY, Z.ZZ`) si cascadea.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

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

## Regla de palabras en `Por qué esta decisión`

```text
Target: 8 palabras de media.
Máximo: 12 palabras.
Hard cap: 15 palabras.
Si la regla necesita más, vive en §X del ejecutable.
```

---

## Bloque 1 — Identidad del negocio

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.01 | Se define el nombre del negocio | Cerrajeros Madrid 24h | Nombre real es base de toda referencia NAP | Input humano | Sí | no | §7 |
| 1.02 | Se define la URL principal de la web | https://www.cerrajerosmadrid24h.com | Dominio es ancla canónica de todo el sitio | Input humano | Sí | no | §8 |
| 1.03 | Se define el dominio canónico | https://www.cerrajerosmadrid24h.com | Versión canónica evita duplicados www vs apex | Input humano | Sí | no | §8 |

## Bloque 2 — Estado inicial del GBP

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.04 | Se decide el estado del GBP | GBP Status: Not Created | Cliente confirma si el GBP existe ya | Input humano | Sí | no | §4 |
| 1.05 | Se decide el momento de creación del GBP | After website launch | Web-first: GBP solo después de publicar la web | GMB Crush | Sí | no |  Paso-14 §7; Paso-01 §4 |
| 1.06 | Se decide el estado de verificación del GBP | Not Started | Cliente confirma estado de verificación del GBP | Input humano | Sí | no | §4 |
| 1.07 | Se decide que no hay GBP URL todavía | N/A — GBP not created yet | No inventar GBP URL antes del Paso 14 | GMB Crush | Sí | no |  Paso-14 §11; Paso-01 §4 |

## Bloque 3 — NAP y contacto

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.08 | Se define el nombre NAP | Cerrajeros Madrid 24h | NAP es nombre legal sin variantes ni eslogans | Input humano | Sí | ← 1.01 | §9 |
| 1.09 | Se define la dirección del negocio | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí | Cliente aporta la dirección física completa | Input humano | Sí | no | §9 |
| 1.10 | Se define la ciudad del negocio | Madrid | Cliente aporta la ciudad del NAP | Input humano | Sí | no | §9 |
| 1.11 | Se define la provincia o comunidad | Comunidad de Madrid | Provincia se infiere de la ciudad del NAP | GMB Crush | Sí | ← 1.10 | §9 |
| 1.12 | Se define el código postal | 28010 | Cliente aporta el código postal | Input humano | Sí | no | §9 |
| 1.13 | Se define el país | España | Cliente aporta el país | Input humano | Sí | no | §9 |
| 1.14 | Se define el teléfono del negocio | +34 600 000 000 | Cliente aporta el teléfono de contacto | Input humano | Sí | no | §9 |
| 1.15 | Se define el email del negocio | info@cerrajerosmadrid24h.com | Cliente aporta el email de contacto | Input humano | Sí | no | §9 |

## Bloque 4 — Categorías GBP planificadas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.16 | Se define la categoría principal planificada para el futuro GBP | Cerrajero | Categoría más usada en el Local Pack del sector | GMB Crush + Competidores | No | no | §10 |
| 1.17 | Se define una categoría adicional planificada | Servicio de cerrajería de urgencia | Categoría secundaria frecuente en competidores del sector | GMB Crush + Competidores | No | no | §11 |
| 1.18 | Se define otra categoría adicional planificada | Servicio de duplicado de llaves | Categoría secundaria frecuente en competidores del sector | GMB Crush + Competidores | No | no | §11 |

## Bloque 5 — Dirección física, Main City y zonas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.19 | Se define la dirección física como ancla del sistema | Calle Rafael Calvo 12, Barrio Almagro, Distrito Chamberí, Madrid | Dirección física es ancla del cluster local | GMB Crush | Sí | ← 1.09 |  Paso-01 §9; Paso-01 §12 |
| 1.20 | Se define la ciudad que crea la arquitectura base | Madrid | Ciudad del NAP es la Main City del sistema | GMB Crush | Sí | ← 1.10 |  Paso-01 §12; Paso-01 §9 |
| 1.21 | Se define la ciudad de ubicación física | Madrid | Cliente confirma ubicación física real del negocio | Input humano | Sí | no | §13 |
| 1.22 | Se define una Direct Local Coverage Area | Almagro | Barrio que aparece en la dirección física | GMB Crush | Sí | ← 1.09 |  Paso-01 §15; Paso-06 §10 |
| 1.23 | Se define una Direct Local Coverage Area | Chamberí | Distrito que aparece en la dirección física | GMB Crush | Sí | ← 1.09 |  Paso-01 §15; Paso-06 §10 |
| 1.24 | Se define una Candidate Local Coverage Area | Salamanca | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.25 | Se define una Candidate Local Coverage Area | Retiro | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.26 | Se define una Candidate Local Coverage Area | Centro | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.27 | Se define una Candidate Local Coverage Area | Tetuán | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.28 | Se define una Candidate Local Coverage Area | Chamartín | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.29 | Se define una Candidate Local Coverage Area | Arganzuela | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.30 | Se define una Candidate Local Coverage Area | Moncloa | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |
| 1.31 | Se define una Candidate Local Coverage Area | Prosperidad | Barrio con cobertura competitiva pendiente test GEO 3/6 | GMB Crush + Competidores | No | no |  Paso-01 §15; Paso-06 §10 |

## Bloque 6 — Expansión geográfica

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.32 | Se decide que las Local Coverage Areas no generarán páginas en la base | No, not in the base build | URL por LCA dispersa autoridad y canibaliza la LBS | GMB Crush | Sí | no |  Paso-01 §16; Paso-04 §15; Paso-06 §31 |
| 1.33 | Se decide que no hay Approved Expansion Areas en la fase inicial | None in Phase 1 | Expansión sin tracción real produce páginas zombie | GMB Crush | Sí | no |  Paso-01 §16; Paso-02 §13 |

## Bloque 7 — Servicios principales

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.34 | Se define el servicio principal 1 | Cerrajero urgente | 5 servicios core extraídos del análisis competitivo | GMB Crush + Competidores | No | no | §14 |
| 1.35 | Se define el servicio principal 2 | Apertura de puertas | 5 servicios core extraídos del análisis competitivo | GMB Crush + Competidores | No | no | §14 |
| 1.36 | Se define el servicio principal 3 | Cambio de cerraduras | 5 servicios core extraídos del análisis competitivo | GMB Crush + Competidores | No | no | §14 |
| 1.37 | Se define el servicio principal 4 | Cambio de bombines | 5 servicios core extraídos del análisis competitivo | GMB Crush + Competidores | No | no | §14 |
| 1.38 | Se define el servicio principal 5 | Instalación de cerraduras de seguridad | 5 servicios core extraídos del análisis competitivo | GMB Crush + Competidores | No | no | §14 |

## Bloque 8 — Consolidación de categorías adicionales

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.39 | Se decide que una categoría adicional ya está cubierta por un servicio principal | Servicio de cerrajería de urgencia queda cubierta por Cerrajero urgente | Si servicio core cubre la categoría, no necesita página | GMB Crush | Sí | ← 1.17, 1.34 |  Paso-01 §21; Paso-02 §10 |
| 1.40 | Se decide que una categoría adicional necesita página propia | Servicio de duplicado de llaves | Categoría no cubierta por servicio core necesita página | GMB Crush | Sí | ← 1.18 |  Paso-01 §21; Paso-02 §10 |

## Bloque 9 — Contenido, conversión y confianza

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 1.41 | Se define el número de GeoArticles por servicio | 3 | 3 satélites por servicio para cobertura semántica | GMB Crush | Sí | no |  Paso-02 §11; Paso-01 §4 |
| 1.42 | Se define el CTA principal | Llamar ahora | Operador elige el CTA según urgencia del servicio | Decisión de diseño | Sí | no | §17 |
| 1.43 | Se define una señal de confianza | 10+ años de experiencia | Garantías y beneficios frecuentes en competidores del sector | GMB Crush + Competidores | No | no | §18 |
| 1.44 | Se define una señal de confianza pendiente del futuro GBP | Reseñas iniciales pendientes de recopilar tras crear y verificar el GBP | Prohibido inventar reseñas antes de tener GBP verificado | GMB Crush | Sí | no |  Paso-01 §18; Paso-14 §15 |
| 1.45 | Se define una señal de confianza | Técnicos cerrajeros cualificados | Garantías y beneficios frecuentes en competidores del sector | GMB Crush + Competidores | No | no | §18 |
| 1.46 | Se define una señal de confianza | Servicio móvil en el mismo día | Garantías y beneficios frecuentes en competidores del sector | GMB Crush + Competidores | No | no | §18 |
| 1.47 | Se define una señal de confianza | Garantía de trabajo | Garantías y beneficios frecuentes en competidores del sector | GMB Crush + Competidores | No | no | §18 |
