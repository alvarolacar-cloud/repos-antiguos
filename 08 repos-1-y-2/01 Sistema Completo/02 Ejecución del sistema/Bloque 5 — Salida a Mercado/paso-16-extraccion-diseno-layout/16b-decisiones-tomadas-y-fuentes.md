# Paso 16 — Extracción de Diseño y Layout

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Por qué esta decisión`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Por qué esta decisión** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Fuente de la decisión** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Manual resuelve** — `Sí` si el manual cubre la decisión completa; `No` si falta acción externa (Competidores, Datos de búsqueda).
- **Viene de una decisión anterior** — `no` o `← X.YY`.
- **Referencia exacta en el manual** — una o varias referencias canónicas separadas por `;`.

---

## Bloque 1 — CSS Base de la web de referencia

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 16.01 | Se decide la web de referencia para extracción visual | Web de referencia aprobada por Cerrajeros Madrid 24h (pendiente de definir cuál) | Sin web de referencia el constructor inventa diseño sin marco | Input humano | Sí | no |  Paso-16 §7.1 |
| 16.02 | Se decide el color primario | primary: [HEX extraído de referencia] | Color primario marca CTAs y elementos de conversión clave | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.03 | Se decide el color secundario | secondary: [HEX extraído de referencia] | Color secundario soporta jerarquía sin competir con primary | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.04 | Se decide el color acento | accent: [HEX extraído de referencia] | Acento se reserva para fondos oscuros y rupturas visuales | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.05 | Se decide la paleta de fondo y texto | bg-light, bg-dark, text-primary, text-light, text-secondary [HEX extraídos] | Sin contraste WCAG AA hay riesgo de accesibilidad y ranking | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.06 | Se decide la tipografía heading | font-heading: [FONT_FAMILY identificada] | Heading distinta del body crea jerarquía visual clara | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.07 | Se decide la tipografía body | font-body: [FONT_FAMILY identificada] | Body legible reduce abandono en lecturas largas | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.08 | Se decide la jerarquía de tamaños tipográficos | H1 [PX], H2 [PX], H3 [PX], body [PX] | Sin jerarquía clara el copy pierde estructura escaneable | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.09 | Se decide los radius de botones, cards e inputs | btn-radius, card-radius, input-radius [PX] | Radius coherente refuerza identidad visual del sistema | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |
| 16.10 | Se decide el box-shadow base de cards | card-shadow: [CSS_VALUE] | Shadow consistente da profundidad sin sobrecargar la página | Decisión de diseño | Sí | ← 16.01 |  Paso-16 §7.1; Paso-16 §8.2 |

## Bloque 2 — Layout y Estructura por Sección

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 16.11 | Se decide el layout de cada sección de la Homepage | 6 layouts uno por sección Homepage | Sin layout por sección el constructor improvisa estructura | Decisión de diseño | Sí | ← 15.05 |  Paso-16 §7.2 |
| 16.12 | Se decide el layout de cada sección de las Service Overview Pages | 7 layouts uno por sección SO | Sin layout por sección el constructor improvisa estructura | Decisión de diseño | Sí | ← 15.10 |  Paso-16 §7.2 |
| 16.13 | Se decide el layout de cada sección de las Location-Based Service Pages | 8 layouts uno por sección LBS | Sin layout por sección el constructor improvisa estructura | Decisión de diseño | Sí | ← 15.15 |  Paso-16 §7.2 |
| 16.14 | Se decide el layout de cada sección de la Additional Category Page | 6 layouts uno por sección AC | Sin layout por sección el constructor improvisa estructura | Decisión de diseño | Sí | ← 15.20 |  Paso-16 §7.2 |
| 16.15 | Se decide el layout de cada sección del GeoHub | 8 layouts uno por sección GeoHub | Sin layout por sección el constructor improvisa estructura | Decisión de diseño | Sí | ← 15.25 |  Paso-16 §7.2 |
| 16.16 | Se decide el layout de cada sección del GeoArticle | 6 layouts uno por sección GeoArticle | Sin layout por sección el constructor improvisa estructura | Decisión de diseño | Sí | ← 15.30 |  Paso-16 §7.2 |

## Bloque 3 — Design Tokens en Tailwind

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 16.17 | Se decide convertir los CSS extraídos a tokens Tailwind | tailwind.config.mjs con tokens completos | Tokens centralizados garantizan consistencia entre páginas | GMB Crush | Sí | no |  Paso-16 §8.2; Paso-17 §8 |
| 16.18 | Se decide los tokens de tipografía Tailwind | font-heading, font-body con valores definitivos | Tokens evitan que el constructor mezcle font-families ad hoc | Decisión de diseño | Sí | ← 16.06, 16.07 |  Paso-16 §8.2.1; Paso-16 §7.1 |
| 16.19 | Se decide los tokens de colores Tailwind | primary, secondary, accent, bg-light, bg-dark, text-primary, text-light, text-secondary | Tokens evitan colores hardcoded que rompen consistencia visual | Decisión de diseño | Sí | ← 16.02–16.05 |  Paso-16 §8.2.2; Paso-16 §7.1 |
| 16.20 | Se decide los tokens de componentes Tailwind | btn-radius, card-radius, card-shadow, input-radius, section-padding-y | Tokens de componente fuerzan unidad visual entre cards y formularios | Decisión de diseño | Sí | ← 16.09, 16.10 |  Paso-16 §8.2.3; Paso-16 §7.1 |

## Bloque 4 — Reglas críticas de aplicación CSS

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 16.21 | Se decide la regla crítica para Hero (fondo, texto, CTA) | Hero con fondo bg-light, H1 text-primary, CTA primario | Sin regla fija, el constructor reinterpreta el Hero por página | Decisión de diseño | Sí | no |  Paso-16 §8.2.4; Paso-17 §9 |
| 16.22 | Se decide la regla crítica para botones primarios y secundarios | Primario: bg-primary text-light radius btn-radius. Secundario: bg-transparent border-primary text-primary | Botones inconsistentes confunden la jerarquía de acciones | Decisión de diseño | Sí | no |  Paso-16 §8.2.4; Paso-17 §9 |
| 16.23 | Se decide la regla crítica para secciones de fondo oscuro | bg-dark con text-light. CTA usa accent en vez de primary. | Primary sobre bg-dark pierde contraste y baja conversión | Decisión de diseño | Sí | no |  Paso-16 §8.2.4; Paso-17 §9 |
| 16.24 | Se decide la regla crítica para cards (padding, radius, shadow, hover) | Padding 24px, radius card-radius, card-shadow base, hover lift 4px | Cards inconsistentes rompen la sensación de sistema | Decisión de diseño | Sí | no |  Paso-16 §8.2.4; Paso-17 §9 |
| 16.25 | Se decide la regla crítica para uso de fuentes (cuándo heading vs body) | H1-H3 con font-heading. Body, captions, FAQs con font-body. | Mezcla de fuentes en niveles equivocados rompe jerarquía | Decisión de diseño | Sí | no |  Paso-16 §8.2.4; Paso-17 §9 |
| 16.26 | Se decide la regla crítica para formularios y inputs | Input radius input-radius, border 1px text-secondary, focus border primary | Inputs sin foco visible bajan accesibilidad y conversión | Decisión de diseño | Sí | no |  Paso-16 §8.2.4; Paso-17 §9 |

## Bloque 5 — Layout-Map definitivo por page type

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 16.27 | Se decide el Layout-Map definitivo de la Homepage cruzado con Paso 15 §9.1 | Homepage: 6 secciones con layout completo y comportamiento mobile/tablet/desktop | Layout-Map cierra layout + breakpoints para que constructor no decida | Decisión de diseño | Sí | ← 15.05 |  Paso-16 §8.3; Paso-15 §9.1 |
| 16.28 | Se decide el Layout-Map definitivo de las Service Overview Pages cruzado con Paso 15 §10.1 | SO: 7 secciones con layout completo | Layout-Map cierra layout + breakpoints para que constructor no decida | Decisión de diseño | Sí | ← 15.10 |  Paso-16 §8.3; Paso-15 §10.1 |
| 16.29 | Se decide el Layout-Map definitivo de las LBS cruzado con Paso 15 §11.1 | LBS: 8 secciones con layout completo | Layout-Map cierra layout + breakpoints para que constructor no decida | Decisión de diseño | Sí | ← 15.15 |  Paso-16 §8.3; Paso-15 §11.1 |
| 16.30 | Se decide el Layout-Map definitivo de la AC cruzado con Paso 15 §12.1 | AC: 6 secciones con layout completo | Layout-Map cierra layout + breakpoints para que constructor no decida | Decisión de diseño | Sí | ← 15.20 |  Paso-16 §8.3; Paso-15 §12.1 |
| 16.31 | Se decide el Layout-Map definitivo del GeoHub cruzado con Paso 15 §13.1 | GeoHub: 8 secciones con layout completo | Layout-Map cierra layout + breakpoints para que constructor no decida | Decisión de diseño | Sí | ← 15.25 |  Paso-16 §8.3; Paso-15 §13.1 |
| 16.32 | Se decide el Layout-Map definitivo de los GeoArticles cruzado con Paso 15 §14.1 | GeoArticle: 6 secciones con layout completo | Layout-Map cierra layout + breakpoints para que constructor no decida | Decisión de diseño | Sí | ← 15.30 |  Paso-16 §8.3; Paso-15 §14.1 |
