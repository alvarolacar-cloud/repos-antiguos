# Paso 16 — Extracción de Diseño y Layout

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`16a-ejecucion-extraccion-diseno-layout.md`).

---

## Bloque 1 — CSS Base de la web de referencia

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 16.01 | Se decide la web de referencia para extracción visual | Web de referencia aprobada por Cerrajeros Madrid 24h (pendiente de definir cuál) | Input humano | Sin web de referencia el constructor inventa diseño sin marco | no | §7.1 |
| 16.02 | Se decide el color primario | primary: [HEX extraído de referencia] | Decisión de diseño | Color primario marca CTAs y elementos de conversión clave | ← 16.01 | §7.1 |
| 16.03 | Se decide el color secundario | secondary: [HEX extraído de referencia] | Decisión de diseño | Color secundario soporta jerarquía sin competir con primary | ← 16.01 | §7.1 |
| 16.04 | Se decide el color acento | accent: [HEX extraído de referencia] | Decisión de diseño | Acento se reserva para fondos oscuros y rupturas visuales | ← 16.01 | §7.1 |
| 16.05 | Se decide la paleta de fondo y texto | bg-light, bg-dark, text-primary, text-light, text-secondary [HEX extraídos] | Decisión de diseño | Sin contraste WCAG AA hay riesgo de accesibilidad y ranking | ← 16.01 | §7.1 |
| 16.06 | Se decide la tipografía heading | font-heading: [FONT_FAMILY identificada] | Decisión de diseño | Heading distinta del body crea jerarquía visual clara | ← 16.01 | §7.1 |
| 16.07 | Se decide la tipografía body | font-body: [FONT_FAMILY identificada] | Decisión de diseño | Body legible reduce abandono en lecturas largas | ← 16.01 | §7.1 |
| 16.08 | Se decide la jerarquía de tamaños tipográficos | H1 [PX], H2 [PX], H3 [PX], body [PX] | Decisión de diseño | Sin jerarquía clara el copy pierde estructura escaneable | ← 16.01 | §7.1 |
| 16.09 | Se decide los radius de botones, cards e inputs | btn-radius, card-radius, input-radius [PX] | Decisión de diseño | Radius coherente refuerza identidad visual del sistema | ← 16.01 | §7.1 |
| 16.10 | Se decide el box-shadow base de cards | card-shadow: [CSS_VALUE] | Decisión de diseño | Shadow consistente da profundidad sin sobrecargar la página | ← 16.01 | §7.1 |

## Bloque 2 — Layout y Estructura por Sección

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 16.11 | Se decide el layout de cada sección de la Homepage | 6 layouts uno por sección Homepage | Decisión de diseño | Sin layout por sección el constructor improvisa estructura | ← 15.05 | §7.2 |
| 16.12 | Se decide el layout de cada sección de las Service Overview Pages | 7 layouts uno por sección SO | Decisión de diseño | Sin layout por sección el constructor improvisa estructura | ← 15.10 | §7.2 |
| 16.13 | Se decide el layout de cada sección de las Location-Based Service Pages | 8 layouts uno por sección LBS | Decisión de diseño | Sin layout por sección el constructor improvisa estructura | ← 15.15 | §7.2 |
| 16.14 | Se decide el layout de cada sección de la Additional Category Page | 6 layouts uno por sección AC | Decisión de diseño | Sin layout por sección el constructor improvisa estructura | ← 15.20 | §7.2 |
| 16.15 | Se decide el layout de cada sección del GeoHub | 8 layouts uno por sección GeoHub | Decisión de diseño | Sin layout por sección el constructor improvisa estructura | ← 15.25 | §7.2 |
| 16.16 | Se decide el layout de cada sección del GeoArticle | 6 layouts uno por sección GeoArticle | Decisión de diseño | Sin layout por sección el constructor improvisa estructura | ← 15.30 | §7.2 |

## Bloque 3 — Design Tokens en Tailwind

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 16.17 | Se decide convertir los CSS extraídos a tokens Tailwind | tailwind.config.mjs con tokens completos | GMB Crush | Tokens centralizados garantizan consistencia entre páginas | no | §8.2 |
| 16.18 | Se decide los tokens de tipografía Tailwind | font-heading, font-body con valores definitivos | Decisión de diseño | Tokens evitan que el constructor mezcle font-families ad hoc | ← 16.06, 16.07 | §8.2.1 |
| 16.19 | Se decide los tokens de colores Tailwind | primary, secondary, accent, bg-light, bg-dark, text-primary, text-light, text-secondary | Decisión de diseño | Tokens evitan colores hardcoded que rompen consistencia visual | ← 16.02–16.05 | §8.2.2 |
| 16.20 | Se decide los tokens de componentes Tailwind | btn-radius, card-radius, card-shadow, input-radius, section-padding-y | Decisión de diseño | Tokens de componente fuerzan unidad visual entre cards y formularios | ← 16.09, 16.10 | §8.2.3 |

## Bloque 4 — Reglas críticas de aplicación CSS

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 16.21 | Se decide la regla crítica para Hero (fondo, texto, CTA) | Hero con fondo bg-light, H1 text-primary, CTA primario | Decisión de diseño | Sin regla fija, el constructor reinterpreta el Hero por página | no | §8.2.4 |
| 16.22 | Se decide la regla crítica para botones primarios y secundarios | Primario: bg-primary text-light radius btn-radius. Secundario: bg-transparent border-primary text-primary | Decisión de diseño | Botones inconsistentes confunden la jerarquía de acciones | no | §8.2.4 |
| 16.23 | Se decide la regla crítica para secciones de fondo oscuro | bg-dark con text-light. CTA usa accent en vez de primary. | Decisión de diseño | Primary sobre bg-dark pierde contraste y baja conversión | no | §8.2.4 |
| 16.24 | Se decide la regla crítica para cards (padding, radius, shadow, hover) | Padding 24px, radius card-radius, card-shadow base, hover lift 4px | Decisión de diseño | Cards inconsistentes rompen la sensación de sistema | no | §8.2.4 |
| 16.25 | Se decide la regla crítica para uso de fuentes (cuándo heading vs body) | H1-H3 con font-heading. Body, captions, FAQs con font-body. | Decisión de diseño | Mezcla de fuentes en niveles equivocados rompe jerarquía | no | §8.2.4 |
| 16.26 | Se decide la regla crítica para formularios y inputs | Input radius input-radius, border 1px text-secondary, focus border primary | Decisión de diseño | Inputs sin foco visible bajan accesibilidad y conversión | no | §8.2.4 |

## Bloque 5 — Layout-Map definitivo por page type

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 16.27 | Se decide el Layout-Map definitivo de la Homepage cruzado con Paso 15 §9.1 | Homepage: 6 secciones con layout completo y comportamiento mobile/tablet/desktop | Decisión de diseño | Layout-Map cierra layout + breakpoints para que constructor no decida | ← 15.05 | §8.3 |
| 16.28 | Se decide el Layout-Map definitivo de las Service Overview Pages cruzado con Paso 15 §10.1 | SO: 7 secciones con layout completo | Decisión de diseño | Layout-Map cierra layout + breakpoints para que constructor no decida | ← 15.10 | §8.3 |
| 16.29 | Se decide el Layout-Map definitivo de las LBS cruzado con Paso 15 §11.1 | LBS: 8 secciones con layout completo | Decisión de diseño | Layout-Map cierra layout + breakpoints para que constructor no decida | ← 15.15 | §8.3 |
| 16.30 | Se decide el Layout-Map definitivo de la AC cruzado con Paso 15 §12.1 | AC: 6 secciones con layout completo | Decisión de diseño | Layout-Map cierra layout + breakpoints para que constructor no decida | ← 15.20 | §8.3 |
| 16.31 | Se decide el Layout-Map definitivo del GeoHub cruzado con Paso 15 §13.1 | GeoHub: 8 secciones con layout completo | Decisión de diseño | Layout-Map cierra layout + breakpoints para que constructor no decida | ← 15.25 | §8.3 |
| 16.32 | Se decide el Layout-Map definitivo de los GeoArticles cruzado con Paso 15 §14.1 | GeoArticle: 6 secciones con layout completo | Decisión de diseño | Layout-Map cierra layout + breakpoints para que constructor no decida | ← 15.30 | §8.3 |
