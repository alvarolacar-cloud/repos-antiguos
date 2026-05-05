Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 16 — Extracción de Diseño y Layout

## §2 Índice corto

**Paso 16 — Extracción de Diseño y Layout**

## §3 Objetivo del Paso 16

Este paso convierte una referencia visual (web de referencia o moodboard) en design tokens y layout-map listos para que el constructor del sitio (Paso 17) los aplique sin tomar decisiones de diseño.

La arquitectura (Paso 2-7) define qué páginas existen y cómo se enlazan. La redacción (Paso 15) define qué dice cada página. Pero sin sistema visual claro, cada página acaba con criterios distintos: tipografías que no combinan, colores arbitrarios, layouts inconsistentes entre tipos de página.

Este paso aporta tres cosas:

1. **Extracción CSS exacta** de la web de referencia: colores HEX, tipografías, tamaños, border-radius, box-shadow.
2. **Layout-Map** por tipo de página: cuántas columnas, qué secciones, posición de imágenes.
3. **Design Tokens en formato Tailwind** + reglas críticas de aplicación que el constructor consume sin reinterpretar.

Cuando este paso se omite o se rellena mal:

- El constructor toma decisiones de diseño sobre la marcha y el sitio queda inconsistente.
- Cada page type se construye con criterios distintos.
- Los tokens se reinventan en CSS en lugar de venir de un sistema.
- La web parece "de plantilla" sin identidad visual coherente.

Este paso debe ejecutarse después del Paso 15 (Redacción de Contenido) y antes del Paso 17 (Constructor del Sitio).

Error que previene: que el constructor invente tokens sobre la marcha.
Error que previene: layouts inconsistentes entre Homepage, LBS y GeoArticle.
Error que previene: tipografías o colores arbitrarios sin justificación.
Error que previene: que el sitio parezca starter kit sin personalización.

## §4 Lo que tienes que rellenar

```text
Fase 1 — Extracción:
1. Solicitar al usuario screenshots full-page de la web de referencia:
   - Homepage
   - Página de servicio
   - Location Page (si existe)
   - Blog Post (si existe)
2. Extraer CSS exacto: colores HEX, tipografías, tamaños, radius, shadow.
3. Mapear layout por sección: columnas, contenido, posición de imágenes.

Fase 2 — Propuesta y Output Definitivo:
4. Generar Design Tokens en nomenclatura Tailwind.
5. Definir reglas críticas de aplicación CSS.
6. Generar Layout-Map definitivo por tipo de página, cruzado con secciones del Paso 15.

Validación:
Pedir aprobación al usuario tras Fase 1 antes de generar Fase 2.
```

## §5 Ejemplo rellenado

```text
Negocio: Cerrajeros Madrid 24h
Web de referencia: [WEB_REFERENCIA_APROBADA_POR_CLIENTE]

Output esperado:
- Design Tokens Tailwind (font-heading, font-body, primary, secondary, accent, etc.)
- Layout-Map para 6 page types (Homepage, SO, LBS, AC, GeoHub, GeoArticle)
- Reglas críticas de aplicación CSS

El constructor del Paso 17 toma estos outputs literalmente, sin reinterpretar.
```

# §6 Cuerpo operativo del Paso 16

> **Definición operativa — Web de referencia:** la web sobre la que se extrae el sistema visual. Puede ser (a) la web actual del cliente si ya tiene branding, (b) una web competidora aprobada por el cliente como referencia estética, o (c) un moodboard creado por la agencia y aprobado por el cliente. En cualquier caso, la elección debe estar documentada y aprobada antes de ejecutar Fase 1.

## §7 Fase 1 — Extracción

### §7.1 Identidad Visual y CSS Base

Output de §7.1: valores CSS exactos extraídos de la web de referencia.

| Variable | Valor |
|:---|:---|
| Color primario | [HEX] |
| Color secundario | [HEX] |
| Color acento | [HEX] |
| Color fondo claro | [HEX] |
| Color fondo oscuro | [HEX] |
| Color texto principal | [HEX] |
| Color texto secundario | [HEX] |
| Tipografía heading | [FONT_FAMILY] |
| Tipografía body | [FONT_FAMILY] |
| Tamaño H1 | [PX] |
| Tamaño H2 | [PX] |
| Tamaño H3 | [PX] |
| Tamaño body | [PX] |
| Border-radius botones | [PX] |
| Border-radius cards | [PX] |
| Box-shadow cards | [CSS_VALUE] |

Reglas operativas para §7.1:

- Antes de visitar la web, pedir al usuario screenshots full-page.
- Esperar a que el usuario suba las imágenes antes de continuar.
- Los valores deben ser computados (extraídos del CSS real), no estimados a ojo.
- Las tipografías deben identificarse exactamente (font-family completo + peso + estilo).
- Si la web de referencia usa un sistema de colores variables, documentar también las variables CSS originales.

Checklist §7.1:

| Regla de validación | Estado |
|:---|:---|
| Todos los colores son valores HEX exactos | ☐ |
| Las tipografías se han identificado exactamente | ☐ |
| Los tamaños son computados, no estimados | ☐ |
| Border-radius y box-shadow tienen valores concretos | ☐ |

### §7.2 Layout y Estructura por Sección

Output de §7.2: mapeo de la estructura visual de las páginas analizadas.

**Homepage:**

| Sección | Layout | Columnas | Contenido | Imagen |
|:---|:---|:---|:---|:---|
| Hero | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Servicios Core | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Autoridad | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Zonas | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Prueba social | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| CTA | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |

**Service Overview Page:**

| Sección | Layout | Columnas | Contenido | Imagen |
|:---|:---|:---|:---|:---|
| Hero Servicio | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Problema/Solución | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Proceso | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Materiales | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Dónde operamos | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| FAQs | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| CTA | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |

**Location-Based Service Page:**

| Sección | Layout | Columnas | Contenido | Imagen |
|:---|:---|:---|:---|:---|
| Hero Local | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Contexto Local | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Bloque de Zonas | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Servicio en la ciudad | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Argumentos/Confianza | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| Prueba local | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| FAQs Locales | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |
| CTA | [LAYOUT] | [N] | [DESCRIPCION] | [POSICION/RATIO] |

**Additional Category Page, GeoHub y GeoArticle**: aplicar el mismo patrón con las secciones definidas en el Paso 15.

Checklist §7.2:

| Regla de validación | Estado |
|:---|:---|
| Cada sección visible en los screenshots ha sido mapeada | ☐ |
| El layout de cada sección está identificado (1 col, 2 col, grid, etc.) | ☐ |
| Posición y ratio de imágenes documentados | ☐ |

## §8 Fase 2 — Propuesta y Output Definitivo

### §8.1 Propuesta de Diseño

Output de §8.1: propuesta de UI Kit base y Layout-Map para aprobación del usuario.

Instrucción: presentar resumen al usuario y preguntar "¿Apruebas este diseño para generar el output definitivo?". Esperar respuesta antes de continuar.

### §8.2 Design Tokens en formato Tailwind

Output de §8.2.1 — Tipografía:

| Token | Valor |
|:---|:---|
| font-heading | [FONT] |
| font-body | [FONT] |

Output de §8.2.2 — Colores:

| Token | Valor |
|:---|:---|
| primary | [HEX] |
| secondary | [HEX] |
| accent | [HEX] |
| bg-light | [HEX] |
| bg-dark | [HEX] |
| text-primary | [HEX] |
| text-light | [HEX] |
| text-secondary | [HEX] |

Output de §8.2.3 — Componentes:

| Token | Valor |
|:---|:---|
| btn-radius | [PX] |
| card-radius | [PX] |
| card-shadow | [CSS] |
| input-radius | [PX] |
| section-padding-y | [PX] |

Output de §8.2.4 — Reglas críticas de aplicación CSS:

- **Hero**: fondo, color de texto, tamaño H1, posición CTA.
- **Botones primarios**: color de fondo, color de texto, hover state, focus state.
- **Botones secundarios**: estilo, contraste, hover state.
- **Sección oscura**: cuándo aplica fondo oscuro, qué color de texto, qué color de CTA.
- **Cards**: padding, radius, shadow, hover state.
- **Tipografía**: cuándo font-heading, cuándo font-body, jerarquía de tamaños.

Checklist §8.2:

| Regla de validación | Estado |
|:---|:---|
| Todos los tokens tienen valores concretos | ☐ |
| Las reglas críticas cubren todos los componentes principales | ☐ |
| Los tokens están en nomenclatura Tailwind, listos para `tailwind.config.mjs` | ☐ |

### §8.3 Layout-Map definitivo por tipo de página

Output de §8.3: estructura exacta de componentes por page type, cruzando las secciones del Paso 15 con el layout extraído en §7.2.

Cada page type del sistema (Homepage, Service Overview, LBS, Additional Category, GeoHub, GeoArticle) tiene su layout-map completo:

```text
Homepage
├── Hero (1 col, fondo claro, H1 + H2 + CTA primario, imagen derecha 50/50)
├── Servicios Core (3 col grid, cards con icono + título + descripción)
├── Autoridad (2 col, texto izquierda + lista de pruebas derecha)
├── Zonas (1 col, mapa o ilustración + texto)
├── Prueba social (1 col, testimonio destacado)
└── CTA (1 col, fondo oscuro, H2 + CTA primario)
```

Aplicar el mismo formato a Service Overview, LBS, Additional Category, GeoHub y GeoArticle.

Checklist §8.3:

| Regla de validación | Estado |
|:---|:---|
| Cada page type tiene su layout-map completo | ☐ |
| Las secciones del layout coinciden con las del Paso 15 | ☐ |
| Cada sección tiene layout, columnas y contenido especificados | ☐ |

## §9 No tomar decisiones de diseño en el constructor — Regla operativa 1

### §9.1 Explicación

El constructor del Paso 17 ejecuta lo que dice este paso. Si una decisión de diseño no está aquí (un color, un tamaño, una regla de aplicación), el constructor debe parar y preguntar — no improvisar.

### §9.2 Patrón

```text
Paso 16 → Design Tokens + Layout-Map → Paso 17 ejecuta sin decidir
```

### §9.3 Ejemplo correcto

```text
El Paso 16 define `primary = #1A3A5F`. El Paso 17 lo aplica en botones primarios sin reinterpretarlo.
Si el Paso 17 necesita un `bg-warning` no definido en el Paso 16, debe parar y pedir al usuario que apruebe el token nuevo en el Paso 16.
```

### §9.4 Regla final

```text
Toda decisión visual está en el Paso 16. El constructor solo aplica.
```

## §10 Mobile-first en el layout — Regla operativa 2

### §10.1 Explicación

El Layout-Map se diseña pensando primero en móvil (375px) y se escala a tablet (768px) y desktop (1280px+). Sin esta regla, las páginas funcionan en desktop pero rompen en móvil.

### §10.2 Patrón

```text
Sección → versión móvil 1 col → versión tablet ajustada → versión desktop multi-col
```

### §10.3 Ejemplo correcto

```text
Sección Servicios Core de la Homepage:
- Móvil: 1 col, cards apiladas
- Tablet: 2 col grid
- Desktop: 3 col grid
```

### §10.4 Regla final

```text
Cada sección del Layout-Map indica el comportamiento en los 3 breakpoints (375 / 768 / 1280).
```

## §11 Diferenciar Hero por page type — Regla operativa 3

### §11.1 Explicación

Cada page type tiene un Hero distinto en intención. Aplicar el mismo Hero visual a todos los tipos rompe la jerarquía: la Homepage debe sentirse como ancla de marca, la LBS como conversión local, el GeoArticle como entrada informacional.

### §11.2 Patrón

```text
Homepage Hero → ancla de marca (más grande, con imagen)
SO Hero → temático (texto + ilustración o icono)
LBS Hero → conversión local (texto + CTA destacado + foto del servicio)
AC Hero → temático local (similar a LBS pero más ligero)
GeoHub Hero → ciudad como ancla (mapa o ilustración + cobertura)
GeoArticle Hero → pregunta/título + intro corta (sin imagen grande)
```

### §11.3 Ejemplo correcto

```text
Homepage: Hero ocupa 100vh con imagen full-bleed.
LBS: Hero ocupa 60vh con foto del servicio + CTA destacado a un lado.
GeoArticle: Hero ocupa 30vh con solo título + intro.
```

### §11.4 Regla final

```text
Cada page type tiene Hero específico documentado en el Layout-Map.
```

## §12 Cards como unidad reutilizable — Regla operativa 4

### §12.1 Explicación

Servicios, zonas, testimonios, GeoArticles, FAQs: muchas secciones usan cards. Definir UNA card base que se reutiliza con variantes evita inconsistencias visuales.

### §12.2 Patrón

```text
Card base → variantes (servicio, zona, testimonio, GeoArticle teaser)
```

### §12.3 Ejemplo correcto

```text
Card base: padding 24px, radius 12px, shadow suave, fondo blanco.
Variante servicio: añade icono arriba.
Variante zona: añade pin de localización.
Variante testimonio: añade comillas y foto avatar.
```

### §12.4 Regla final

```text
Las cards comparten radius, shadow y padding base. Solo varían el contenido interno.
```

## §13 Validación de contraste — Regla operativa 5

### §13.1 Explicación

Todos los pares texto/fondo deben superar contraste WCAG AA (4.5:1 para texto normal, 3:1 para texto grande). Sin esta validación, la web es inaccesible y Google penaliza.

### §13.2 Patrón

```text
Cada par texto/fondo definido en Design Tokens → validar contraste WCAG AA → ajustar si falla
```

### §13.3 Ejemplo correcto

```text
text-primary (#1A1A1A) sobre bg-light (#FFFFFF) = 18.7:1 → ✅ AAA
text-light (#FFFFFF) sobre primary (#1A3A5F) = 8.5:1 → ✅ AAA
accent (#FF8A00) sobre bg-dark (#1A1A1A) = 5.2:1 → ✅ AA
```

### §13.4 Regla final

```text
No se aprueba ningún token sin validación de contraste.
```

## §14 No usar colores fuera del catálogo — Regla operativa 6

### §14.1 Explicación

Los Design Tokens definen el catálogo completo de colores del proyecto. Si un componente necesita un color que no está, hay que añadirlo al catálogo y reaprobar — no inventar inline.

### §14.2 Patrón

```text
Componente nuevo necesita color X → ¿está en Design Tokens? → sí: usar / no: parar y añadir al catálogo
```

### §14.3 Ejemplo correcto

```text
Card de servicio necesita color de fondo soft. Si bg-light ya existe, usarlo. Si necesita variante (bg-soft), añadirla al catálogo en este paso y reaprobar antes de aplicarla en el Paso 17.
```

### §14.4 Regla final

```text
Catálogo cerrado de colores. Cualquier color nuevo entra por aquí, no por el constructor.
```

## §15 Layout-Map cruzado con Paso 15 — Regla operativa 7

### §15.1 Explicación

El Layout-Map debe respetar las secciones definidas en el Paso 15 (Capa Estructura). Si el Paso 15 dice que la Homepage tiene 6 secciones, el Layout-Map tiene 6 layouts. Sin esta sincronización, hay copy sin layout o layouts sin copy.

### §15.2 Patrón

```text
Paso 15 §9.1 → 6 secciones Homepage → Paso 16 §8.3 → 6 layouts Homepage
```

### §15.3 Ejemplo correcto

```text
Paso 15 §9.1 define Homepage = Hero + Servicios Core + Autoridad + Zonas + Prueba social + CTA (6 secciones).
Paso 16 §8.3 entrega Layout-Map Homepage con 6 layouts (uno por sección).
```

### §15.4 Regla final

```text
Número de secciones (Paso 15) = número de layouts (Paso 16). Si no coinciden, parar y conciliar.
```

## §16 Checklist final del Paso 16

| Check | Pregunta | Estado |
|---|---|---|
| Web de referencia aprobada | ¿El cliente aprobó la web de referencia antes de extraer? | ☐ |
| CSS Base extraído | ¿Colores, tipografías, tamaños y radius están en valores concretos? | ☐ |
| Layout por sección mapeado | ¿Cada sección de cada page type tiene su layout? | ☐ |
| Propuesta aprobada | ¿El usuario aprobó la propuesta antes de generar Output Definitivo? | ☐ |
| Design Tokens completos | ¿Tipografía, colores y componentes en formato Tailwind? | ☐ |
| Reglas críticas CSS | ¿Todas las reglas críticas de aplicación están documentadas? | ☐ |
| Layout-Map definitivo | ¿Cada page type tiene su layout-map cruzado con Paso 15? | ☐ |
| Contraste WCAG AA | ¿Todos los pares texto/fondo validados? | ☐ |
| Mobile-first | ¿Cada sección tiene comportamiento en 375 / 768 / 1280? | ☐ |

## §17 Outputs del Paso 16

- Output 16.1 — Identidad Visual y CSS Base extraído de la web de referencia.
- Output 16.2 — Layout y Estructura por Sección por page type.
- Output 16.3 — Propuesta de Diseño aprobada por el usuario.
- Output 16.4.1 — Design Tokens en formato Tailwind (tipografía, colores, componentes).
- Output 16.4.2 — Reglas críticas de aplicación CSS.
- Output 16.4.3 — Layout-Map definitivo por page type.

---

# §18 Fuentes internas GMB Crush usadas

- Page Type Rules (Paso 5)
- Estructura de Contenido + LCAs (Paso 6)
- Redacción de Contenido — secciones por page type (Paso 15)
- Bloque 4 antiguo "Extracción de Diseño y Layout" (referencia metodológica)

> **Nota importante — Web de referencia:**
> La elección de la web de referencia debe estar aprobada por el cliente antes de iniciar Fase 1. Si la agencia propone una referencia, el cliente debe firmar conformidad para evitar conflictos posteriores sobre estética y branding.
