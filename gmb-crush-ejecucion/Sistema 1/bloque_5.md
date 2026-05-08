# Bloque 5 — Salida a Mercado (Pasos 15-19)

**Propósito:** Redacción de contenido (Paso 15), extracción de diseño (Paso 16), construcción del sitio (Paso 17), QA y deploy (Paso 18), y plan de escalado (Paso 19).

**Total outputs:** 39 (15.1–15.13 + 16.1–16.6 + 17.1–17.8 + 18.1–18.7 + 19.1–19.5)
**Outputs no_aplica:** 15.13, 16.3, 17.1

---

## Reglas Globales del Bloque 5

### Regla web-first

El Bloque 5 produce el sitio web publicado. El GBP (Paso 14, Bloque 7) se crea DESPUÉS de que 18.6 tenga valor (URL live). Ningún output de Bloque 5 referencia GBP como si existiera.

### Regla de stack fijo (Paso 17)

Stack inmutable: **Astro 5 + Tailwind v3 + pnpm + Cloudflare Pages**. No se sustituye ninguna parte. Toda desviación bloquea el output.

### Regla de fuente única de copy (Paso 15 → Paso 17)

El constructor (Paso 17) coge el copy del Paso 15 sin modificarlo. El constructor no toma decisiones de contenido ni de diseño.

### Regla de fuente única de diseño (Paso 16 → Paso 17)

Todas las decisiones de diseño se toman en el Paso 16. El constructor (Paso 17) implementa el Layout-Map definitivo (16.6) y los Design Tokens (16.4) sin añadir ni quitar elementos.

### Regla 35/35 (Paso 18)

El sitio sale a producción solo cuando los 35 criterios QA están en verde. No hay excepciones.

### Regla 2-de-3 (Paso 19)

Las páginas de barrio solo se crean cuando al menos 2 de los 3 triggers de escalado se activan.

---

## Paso 15 — Redacción de Contenido

### Contexto de doctrina del Paso 15

#### 4 Capas de Redacción (aplicar en orden, no simultáneas)

```
1. ESTRUCTURA — ¿Qué secciones tiene la página y en qué orden?
2. ZONAS — ¿Dónde aparece el contexto geográfico y qué ciudades/barrios se mencionan?
3. ARGUMENTOS — ¿Por qué el usuario debe elegir este servicio/negocio?
4. ENTIDADES — ¿Qué marcas, materiales, normativa, barrios nombra la página?
```

Regla operativa: una capa solo empieza cuando la anterior ha pasado su checklist.

#### 4 Reglas de Calidad Universal

```
RQ-1: HERO Y CTA
  Hero = H1 (servicio + ciudad) + H2 (beneficio en una línea) + 1 CTA principal.
  El Hero cabe en pantalla móvil sin scroll.

RQ-2: PROBLEMA Y REALIDAD
  Cada sección contextualiza el problema real antes de ofrecer la solución.
  No empezar con "Somos la empresa X". Empezar con el problema del cliente.

RQ-3: DATOS / PRECIO / OPINIÓN EXPERTA
  Cada sección incluye al menos un dato verificable (precio real, tiempo, normativa,
  material específico) que el competidor genérico no usa.
  Sin GBP creado: no inventar reseñas. Solo pruebas verificables del negocio.

RQ-4: CONTEXTO LOCAL CONCRETO
  Mencionar una zona implica añadir un detalle real de esa zona.
  Si no hay detalle verificable, no se menciona la zona.
  Listar barrios sin contexto es genérico y penalizable.
```

#### Templates por tipo de página

**Homepage (Root Entity Anchor)**
```
Secciones en orden:
1. Hero: H1 (nombre negocio + Main City) + H2 (propuesta de valor) + CTA primario
2. Servicios Core: grid 3 col con enlace a cada SO
3. Cobertura Local: mención de LCAs con detalle real por zona
4. Por qué elegirnos: 3-4 diferenciadores con datos verificables
5. Trust block: años de experiencia, certificaciones reales, clientes si procede
6. FAQ: 4-6 preguntas sobre el negocio (no sobre servicios específicos)
7. CTA secundario: formulario o teléfono clicable
Schemas: Organization + LocalBusiness + WebSite
Word count: 600-900 palabras
```

**Service Overview (Topical Authority Pillar)**
```
Secciones en orden:
1. Hero: H1 (servicio genérico) + H2 (expertise + cobertura) + CTA hacia LBS
2. Descripción del servicio: qué es, cómo funciona, materiales/técnica
3. Cuándo se necesita: casos de uso reales
4. Proceso: paso a paso del servicio (3-5 pasos)
5. FAQ genérica del servicio (no de ciudad)
6. CTA hacia LBS local: "¿Necesitas [servicio] en [Main City]? → LBS"
Schemas: Service + BreadcrumbList + FAQPage
Word count: 800-1.200 palabras
Regla crítica: SO informa, LBS convierte. NO añadir precios ni teléfono de contacto local.
```

**Location-Based Service (Main City Converter)**
```
Secciones en orden:
1. Hero: H1 (servicio + Main City) + H2 (diferenciador local + tiempo/precio) + CTA urgente
2. Contexto local: por qué este servicio es relevante en Main City (tipo inmueble, normativa, casos)
3. Zonas de cobertura: LCAs con detalle específico de cada zona
4. Proceso local: cómo opera el servicio en la ciudad (logística, tiempo real)
5. Precio: rango real + qué lo afecta
6. FAQ local: preguntas sobre el servicio en la ciudad
7. CTA final: formulario + teléfono clicable
Schemas: LocalBusiness + Service + FAQPage + BreadcrumbList
Word count: 900-1.400 palabras
```

**Additional Category Page**
```
Secciones en orden:
1. Hero: H1 (categoría adicional + Main City) + H2 + CTA
2. Descripción de la categoría
3. Relación con servicios core
4. Cobertura local
5. FAQ de la categoría
6. CTA hacia contacto o LBS relacionada
Schemas: Service + BreadcrumbList + FAQPage
Word count: 600-900 palabras
```

**GeoHub (Main City Silo Container)**
```
Secciones en orden:
1. Hero: H1 (todos los servicios + Main City) + H2 + CTA general
2. Índice de servicios: enlace a cada LBS en la ciudad
3. Por qué Main City: contexto de la ciudad (demografía, tipo de mercado, normativa relevante)
4. Zonas de cobertura ampliada: todas las LCAs con detalles
5. FAQ sobre servicios en la ciudad
6. CTA final
Schemas: CollectionPage + LocalBusiness + BreadcrumbList
Word count: 800-1.200 palabras
Regla: el GeoHub tiene contenido propio. No es un listado de links vacío.
```

**GeoArticle (Semantic Booster — Regla de 3 puentes narrativos)**
```
Secciones en orden:
1. H1 informacional (problema/pregunta real del usuario)
2. Introducción: contexto del problema en Main City
3. Desarrollo: respuesta detallada con datos verificables y contexto local
   → PUNTO 1: enlace inline a LBS padre con anchor descriptivo
4. Sección intermedia: casos, materiales, normativa
   → PUNTO 2: bloque "¿Necesitas [servicio]?" con anchor de acción hacia LBS
5. Conclusión práctica
   → PUNTO 3: CTA suave con anchor cerrado ("Solicitar presupuesto")
Schemas: Article + BreadcrumbList + Speakable
Word count: 700-1.000 palabras
Regla crítica: 3 puntos = 3 anchors distintos. No repetir el mismo anchor literal.
Anchor 1: descriptivo inline | Anchor 2: de acción (bloque) | Anchor 3: cerrado (CTA)
```

**Flujo del cluster (por servicio core)**
```
Captación (GeoArticle) → Distribución (SO o GeoHub) → Conversión (LBS)

Tabla de enlaces internos obligatorios:
| Página         | Enlaza a                                        |
|----------------|-------------------------------------------------|
| GeoArticle     | LBS padre (3 puentes) + GeoHub                  |
| Service Overview | LBS local + servicios relacionados             |
| LBS            | SO padre + GeoHub + LBS relacionadas + GA       |
| GeoHub         | Todas las LBS + AC + GeoArticles                |
| Homepage       | Service Overviews + GeoHub + AC + Contacto      |
```

**Página de contacto**
```
Contenido: NAP completo + teléfono clicable + formulario + horario + áreas de cobertura
Schema: LocalBusiness (NAP consistente con web y schema global)
Regla: no inventar señales GBP antes del Paso 14. Solo NAP verificable.
```

#### Reglas operativas adicionales del Paso 15

```
RO-1: Una sola fuente de copy por página. El constructor no reescribe.
RO-2: SO no compite con LBS. SO informa, LBS convierte.
RO-3: GeoArticle enlaza siempre a su LBS padre (3 puentes).
RO-4: Datos verificables, no claims. "Los mejores" no diferencia.
RO-5: Sin GBP creado → sin reseñas en el copy. Solo pruebas reales del negocio.
RO-6: Contexto local concreto. Mencionar zona = añadir detalle real de esa zona.
RO-7: Hero en pantalla móvil sin scroll.
RO-8: Anchors variados. Tres puntos de enlace = tres anchors distintos.
RO-9: Cluster completo o no se publica. SO+LBS+G×GeoArticles antes de publicar.
RO-10: Capas en orden: Estructura → Zonas → Argumentos → Entidades.
RO-11: Copy no añade URLs ni enlaces que no estén en los Pasos 3, 4 y 7.
```

---

### Output 15.1 — Capas de Redacción (4 capas)

Produce el documento maestro de las 4 capas de redacción que se aplicará a cada página.

**Contenido del output:**
- Definición de cada capa (Estructura, Zonas, Argumentos, Entidades)
- Checklist por capa
- Orden de aplicación y regla de dependencia secuencial
- Ejemplo práctico con el negocio del cliente (usando 1.1, 1.7, 1.9)

**Formato:** Documento estructurado con tabla de capas + checklist por capa.

**Validación:** El output confirma que las 4 capas están definidas y que el orden es inviolable.

---

### Output 15.2 — Reglas de Calidad Universal (4 reglas)

Produce las 4 reglas de calidad que se aplican a todo el copy de todas las páginas.

**Contenido del output:**
- RQ-1: Hero y CTA (H1+H2+CTA, cabe en móvil sin scroll)
- RQ-2: Problema y Realidad (contexto antes de solución)
- RQ-3: Datos/Precio/Opinión Experta (al menos 1 dato verificable por sección)
- RQ-4: Contexto Local Concreto (mencionar zona = añadir detalle real)

**Formato:** Tabla con RQ-ID, nombre, patrón canónico, ejemplo correcto, ejemplo incorrecto.

**Validación:** Las 4 reglas son aplicables a los page types del cliente.

---

### Output 15.3 — Homepage redactada

Produce el copy completo de la homepage aplicando las 4 capas y las 4 reglas de calidad.

**Inputs requeridos:** 1.1 (nombre negocio), 1.7 (Main City), 1.9 (servicios), 1.10 (LCAs), 1.13 (CTA), 1.14 (trust signals), 6.6 (Content Architecture Homepage)

**Contenido del output:**
- H1, H2 y CTA del Hero
- Copy de cada sección según template Homepage
- Contexto local por zona (LCAs con detalle real)
- Trust signals verificables (sin reseñas inventadas)
- FAQ (4-6 preguntas con respuesta)
- Schemas previstos: Organization + LocalBusiness + WebSite

**Formato:** Copy listo para constructor, estructurado por sección con etiquetas (HERO / SERVICIOS / COBERTURA / FAQ / CTA).

**Validación:** RQ-1 a RQ-4 aplicadas. No hay reseñas inventadas.

---

### Output 15.4 — Service Overview Pages redactadas

Produce el copy completo de las S Service Overview Pages.

**Inputs requeridos:** 1.9 (servicios core), 2.4 (service slugs), 6.7 (Content Architecture SO)

**Contenido del output por SO:**
- H1, H2, CTA
- Descripción del servicio (proceso, materiales, técnica)
- Casos de uso con datos verificables
- FAQ genérica del servicio (no de ciudad)
- CTA hacia LBS: "¿Necesitas [servicio] en [Main City]?"
- Schema: Service + BreadcrumbList + FAQPage

**Formato:** Un documento de copy por servicio, etiquetado con [SO-001], [SO-002], etc.

**Validación:** Ninguna SO incluye precios locales ni CTA de contacto directo. SO informa, LBS convierte.

---

### Output 15.5 — LBS Pages redactadas

Produce el copy completo de las S Location-Based Service Pages para Main City.

**Inputs requeridos:** 1.7 (Main City), 1.9 (servicios), 1.10 (LCAs), 6.8 (Content Architecture LBS), 4.6 (URL pattern LBS)

**Contenido del output por LBS:**
- H1 (servicio + Main City), H2 (diferenciador + tiempo/precio), CTA urgente
- Contexto local: tipo de inmueble, normativa o casos en la ciudad
- Zonas de cobertura: LCAs con detalle específico por zona
- Proceso local (logística, tiempo real de respuesta)
- Rango de precios real
- FAQ local
- CTA final: formulario + tel clicable
- Schema: LocalBusiness + Service + FAQPage + BreadcrumbList

**Formato:** Un documento de copy por LBS, etiquetado con [LBS-001], [LBS-002], etc.

**Validación:** Cada LBS contiene al menos 1 dato verificable por sección. Ningún claim sin respaldo.

---

### Output 15.6 — Additional Category Page redactada

Produce el copy completo de la Additional Category Page (si A≥1).

**Inputs requeridos:** 1.6 (additional categories), 3.3 (AC slugs), 6.9 (Content Architecture AC)

**Contenido del output:**
- H1 (categoría + Main City), H2, CTA
- Descripción de la categoría y relación con servicios core
- Cobertura local
- FAQ de la categoría
- CTA hacia LBS relacionada o contacto
- Schema: Service + BreadcrumbList + FAQPage

**Formato:** Documento de copy etiquetado [AC-001].

**Validación:** La AC tiene contenido propio, no es copia de ningún SO ni LBS.

---

### Output 15.7 — GeoHub redactada

Produce el copy completo del GeoHub de Main City.

**Inputs requeridos:** 1.7 (Main City), 1.9 (servicios), 1.10 (LCAs), 6.10 (Content Architecture GeoHub), 4.5 (GeoHub URL)

**Contenido del output:**
- H1 (servicios + Main City), H2, CTA general
- Índice de servicios: enlace a cada LBS con descripción breve
- Contexto de la ciudad: demografía relevante, tipo de mercado, normativa
- Zonas de cobertura: todas las LCAs con detalle real por zona
- FAQ sobre servicios en la ciudad
- CTA final
- Schema: CollectionPage + LocalBusiness + BreadcrumbList

**Formato:** Documento de copy etiquetado [GEOHUB-001].

**Validación:** GeoHub tiene contenido propio, no es un listado de links vacío.

---

### Output 15.8 — GeoArticles redactados

Produce el copy completo de los G×S GeoArticles con los 3 puentes narrativos.

**Inputs requeridos:** 3.4 (topics propuestos), 6.11 (Content Architecture GA), 4.8 (GA URL pattern), 1.7 (Main City)

**Contenido del output por GeoArticle:**
- H1 informacional (pregunta/problema real del usuario en Main City)
- Introducción con contexto local
- Desarrollo con datos verificables y contexto de zona
- PUNTO 1: enlace inline a LBS padre (anchor descriptivo)
- Sección intermedia (casos, materiales, normativa)
- PUNTO 2: bloque "¿Necesitas [servicio]?" con anchor de acción
- Conclusión práctica
- PUNTO 3: CTA suave con anchor cerrado
- Schema: Article + BreadcrumbList + Speakable

**Formato:** Un documento por GeoArticle, etiquetado [GA-001] a [GA-N]. Los 3 anchors deben ser diferentes entre sí.

**Validación:**
- Cada GA tiene exactamente 3 puntos de enlace a su LBS padre
- Los 3 anchors son distintos (descriptivo / de acción / cerrado)
- El GA no enlaza directamente a `/contacto/`

---

### Output 15.9 — Página de contacto redactada

Produce el copy de la página de contacto.

**Inputs requeridos:** 1.4 (Full NAP), 1.1 (nombre negocio), 1.10 (LCAs), 1.13 (CTA)

**Contenido del output:**
- Nombre del negocio
- Dirección completa (si procede por modelo de negocio)
- Teléfono clicable
- Email (si procede)
- Horario real
- Áreas de cobertura (LCAs)
- Formulario de contacto (campos: nombre, teléfono, servicio, mensaje)
- Schema: LocalBusiness (NAP idéntico al resto de la web)

**Formato:** Documento de copy etiquetado [CONTACTO].

**Validación:** NAP idéntico al de homepage, LBS pages y schema global. Sin referencias al GBP antes del Paso 14.

---

### Output 15.10 — Validación: clusters completos

Produce la validación de que cada servicio core tiene su cluster completo antes de publicar.

**Checklist por cluster:**
```
| Servicio | SO | LBS | GA-1 | GA-2 | GA-3 | Estado |
|----------|----|-----|------|------|------|--------|
| [Serv 1] | ✓  |  ✓  |  ✓   |  ✓   |  ✓   | COMPLETO |
```

**Regla:** Sin cluster completo (SO + LBS + G×GeoArticles) el servicio no se publica.

**Formato:** Tabla de estado por servicio. Status: COMPLETO / INCOMPLETO (bloqueante).

---

### Output 15.11 — Validación: SO no compite con LBS

Produce la validación de que ninguna SO tiene copy que canibalice la LBS.

**Checklist por par SO/LBS:**
```
| SO URL | LBS URL | ¿SO tiene precios locales? | ¿SO tiene CTA de contacto? | Estado |
```

**Regla:** SO informa (proceso, materiales, FAQ genérica) → CTA hacia LBS. LBS convierte (precios, teléfono, formulario). Si la SO tiene precios o CTA de contacto directo → FAIL.

**Formato:** Tabla de validación con resultado PASS/FAIL por par.

---

### Output 15.12 — Validación: GeoArticle enlaza a LBS padre

Produce la validación de que cada GeoArticle tiene sus 3 puentes hacia la LBS padre.

**Checklist por GA:**
```
| GA URL | LBS padre | Punto 1 (inline) | Punto 2 (bloque) | Punto 3 (CTA) | Anchors distintos | Estado |
```

**Regla:** Sin los 3 puentes con anchors distintos → FAIL. El GA es un callejón sin salida.

**Formato:** Tabla de validación con resultado PASS/FAIL por GeoArticle.

---

### Output 15.13 — Validación: datos verificables

**Status: no_aplica**

Este output requiere validación humana de los datos del cliente (precios reales, tiempos reales, certificaciones reales). No es automatizable sin fuente externa verificable.

---

## Paso 16 — Extracción de Diseño y Layout

### Contexto de doctrina del Paso 16

```
FASE 1: Extracción CSS
  Extraer del sitio de referencia (si existe) o definir desde cero:
  - Colores: primario (HEX), secundario (HEX), fondo (HEX), texto (HEX), acento (HEX)
  - Fuentes: familia principal + tamaños (H1/H2/H3/body/small)
  - Border-radius: valor para botones, cards, badges
  - Box-shadow: valor para cards y elementos elevados
  - Espaciado base: unidad de spacing (4px, 8px, 16px, etc.)

FASE 2: Tokens en formato Tailwind
  Convertir valores CSS a extend de tailwind.config.js:
  colors: { primary: '#...', secondary: '#...', ... }
  fontFamily: { sans: [...], display: [...] }
  borderRadius: { card: '...', btn: '...' }

LAYOUT-MAP por tipo de página:
  Definir estructura visual de cada page type:
  Homepage ├── Hero (1 col, H1+H2+CTA) ├── Servicios (3 col grid) ├── ...
  Service Overview ├── Hero ├── Descripción ├── Proceso ├── FAQ ├── CTA
  LBS ├── Hero urgente ├── Contexto local ├── Zonas ├── Precio ├── FAQ ├── CTA
  GeoHub ├── Hero ├── Índice servicios ├── Ciudad ├── Zonas ├── FAQ ├── CTA
  GeoArticle ├── Hero info ├── Desarrollo ├── Puente 1 ├── Puente 2 ├── Puente 3+CTA

Breakpoints mobile-first:
  375px (base) → 768px (md) → 1280px (lg)

Regla de oro: el constructor (Paso 17) NO toma decisiones de diseño.
  Toda decisión de diseño es del Paso 16.
```

---

### Output 16.1 — Identidad Visual y CSS Base

Produce la extracción completa de la identidad visual del negocio.

**Inputs requeridos:** sitio de referencia del cliente (si existe) o datos de preflight para definir from scratch.

**Contenido del output:**
- Paleta de colores: primario, secundario, fondo, texto, acento (todos en HEX)
- Tipografía: familia principal + fallback, familia de display si aplica
- Jerarquía tipográfica: H1 / H2 / H3 / body / small / caption (px o rem)
- Border-radius: botones, cards, badges (px)
- Box-shadow: cards y elementos elevados
- Espaciado base (múltiplo en px)

**Formato:** Tabla de tokens CSS + justificación de cada decisión.

**Validación:** Todos los valores son HEX/px/rem concretos. Ningún valor es "variable" o "placeholder".

---

### Output 16.2 — Layout y Estructura por Sección

Produce el mapa de layout de cada sección para cada tipo de página.

**Contenido del output:**
- Grid/flex por sección (1 col / 2 col / 3 col grid / etc.)
- Altura estimada por sección (en viewport units o px)
- Orden visual de secciones por page type
- Qué elementos contiene cada sección (imagen, texto, CTA, iconos, etc.)

**Formato:** Layout-Map en formato árbol de texto:

```text
Homepage
├── Hero: 1 col, 100vh móvil, H1+H2+CTA+imagen 50/50 desktop
├── Servicios Core: 3 col grid (1 col móvil), cards con icono+título+descripción+enlace
├── Cobertura: 2 col (texto+mapa o imagen ciudad)
├── Trust: 3 col (años, certificaciones, clientes)
├── FAQ: 1 col, acordeón
└── CTA Final: 1 col, fondo primario, tel+formulario
```

**Validación:** Cada page type tiene su Layout-Map definido. Sin ambigüedades.

---

### Output 16.3 — Propuesta de Diseño aprobada

**Status: no_aplica**

La aprobación de la propuesta de diseño requiere revisión humana. Este paso no es automatizable: el cliente o el operador debe ver y aprobar visualmente el Layout-Map y la paleta antes de que el constructor ejecute.

---

### Output 16.4 — Design Tokens Tailwind

Produce la configuración `extend` de `tailwind.config.js` con los tokens de 16.1.

**Inputs requeridos:** 16.1 (Identidad Visual y CSS Base)

**Contenido del output:**

```javascript
// tailwind.config.js extend section
extend: {
  colors: {
    primary: '#HEXVALUE',
    secondary: '#HEXVALUE',
    background: '#HEXVALUE',
    text: '#HEXVALUE',
    accent: '#HEXVALUE',
  },
  fontFamily: {
    sans: ['NombreFuente', 'sans-serif'],
  },
  borderRadius: {
    card: 'Xpx',
    btn: 'Xpx',
  },
  boxShadow: {
    card: '...',
  },
  spacing: {
    // extensiones si el spacing base difiere de Tailwind
  },
}
```

**Formato:** Bloque de código JavaScript listo para insertar en tailwind.config.js.

**Validación:** Todos los tokens de 16.1 están representados. Sintaxis Tailwind v3 válida.

---

### Output 16.5 — Reglas Críticas CSS

Produce las reglas CSS que el constructor debe respetar sin excepción.

**Contenido del output:**
```
RC-1: Mobile-first. Los estilos base son para 375px. md: 768px, lg: 1280px.
RC-2: Usar solo los tokens de 16.4. No hardcodear HEX directamente en componentes.
RC-3: No añadir fuentes externas no definidas en 16.1.
RC-4: El Hero siempre ocupa el viewport completo en móvil (min-h-screen).
RC-5: Las CTAs primarias usan siempre color.primary con texto contrastado.
RC-6: Los links internos usan anchor text variado según la regla RO-8 del Paso 15.
RC-7: Sin animaciones que no estén en el Layout-Map. Keeps it static by default.
```

**Formato:** Lista numerada de reglas con descripción y justificación.

---

### Output 16.6 — Layout-Map Definitivo

Produce el Layout-Map consolidado y definitivo para todos los page types del cliente.

**Inputs requeridos:** 16.2 (Layout por Sección), 15.3-15.9 (copy redactado por page type)

**Contenido del output:**
- Layout-Map completo para cada page type: Homepage, SO, LBS, GeoHub, GeoArticle, AC, Contacto
- Indicación de componentes UI por sección (Hero.astro, Card.astro, FAQ.astro, etc.)
- Breakpoint behavior por sección

**Formato:** Documento de especificaciones técnicas de layout listo para que el constructor lo ejecute sin preguntas.

**Validación:** Cada page type tiene Layout-Map cerrado. El constructor puede ejecutar sin tomar decisiones de diseño.

---

## Paso 17 — Constructor del Sitio

### Contexto de doctrina del Paso 17

```
STACK FIJO (no se cambia ninguna parte):
  Framework: Astro 5
  CSS: Tailwind v3
  Package manager: pnpm
  Deploy: Cloudflare Pages vía GitHub

FASES DE CONSTRUCCIÓN:
  Fase 0: PARADA 1 — Lectura y autocontraste (17.1 = no_aplica, paso humano)
  Fase 1: Setup + Tokens (init proyecto, tailwind.config.js con 16.4)
  Fase 2: Componentes (7 componentes base)
  Fase 3: Layout (Header + Footer + Layout wrapper)
  Fase 4: Páginas (todas las páginas de la URL Matrix)
  Fase 5: SEO + Schema (meta tags, JSON-LD por página)
  Fase 6: Limpieza de rastros IA

PARADA 2: Antes de QA (Paso 18). El sitio debe pasar build local antes de QA.

7 COMPONENTES UI (parametrizados, sin valores hardcoded):
  Button.astro      — variantes: primary, secondary, outline; tamaños: sm, md, lg
  Card.astro        — título, descripción, enlace, icono opcional
  Badge.astro       — texto, color variant
  Hero.astro        — H1, H2, CTA, imagen opcional, variante (urgente/informacional)
  Testimonial.astro — nombre, texto, estrella rating (solo si hay reseñas reales)
  FAQ.astro         — pares pregunta/respuesta, acordeón
  ContactForm.astro — campos: nombre, teléfono, servicio, mensaje; acción configurada

SCHEMAS JSON-LD por tipo de página:
  Homepage:         Organization + LocalBusiness + WebSite
  Service Overview: Service + BreadcrumbList + FAQPage
  LBS:              LocalBusiness + Service + FAQPage + BreadcrumbList
  GeoHub:           CollectionPage + LocalBusiness + BreadcrumbList
  GeoArticle:       Article + BreadcrumbList + Speakable
  AC:               Service + BreadcrumbList + FAQPage
  Contacto:         LocalBusiness (NAP completo)

LIMPIEZA DE RASTROS IA (antes de PARADA 2):
  - Borrar README.md generado por el framework
  - Eliminar comentarios generados por IA en el código
  - Eliminar meta generator en <head>
  - grep recursivo por "Claude", "ChatGPT", "AI", "generated by"
  - Actualizar name en package.json al slug del cliente
  - Commit messages sin referencias a IA
```

---

### Output 17.1 — Acta de Lectura y Autocontraste

**Status: no_aplica**

El Acta de Lectura requiere que el operador lea en voz alta o contraste manualmente la identidad visual y el copy aprobado antes de que el constructor empiece. No es automatizable.

---

### Output 17.2 — Proyecto Astro 5 + Tailwind v3 + pnpm

Produce el proyecto inicializado con el stack fijo.

**Contenido del output:**
```
Comandos ejecutados:
  pnpm create astro@latest [slug-cliente] -- --template minimal
  cd [slug-cliente]
  pnpm add -D tailwindcss@3 @astrojs/tailwind
  pnpm astro add tailwind

Archivos configurados:
  astro.config.mjs   — integración tailwind
  tailwind.config.js — extend con tokens de 16.4
  tsconfig.json      — strict mode
  .gitignore         — node_modules, dist, .env
  package.json       — name: [slug-cliente]

GitHub repo creado:
  nombre: [slug-cliente]
  rama: main
  acceso: creds.github_token
```

**Formato:** Log de comandos ejecutados + confirmación de estructura de carpetas (`src/`, `public/`, `src/components/`, `src/layouts/`, `src/pages/`).

**Validación:** `pnpm run dev` arranca sin errores. tailwind.config.js tiene todos los tokens de 16.4.

---

### Output 17.3 — 7 componentes UI parametrizados

Produce los 7 componentes Astro con sus props tipadas y sin valores hardcoded.

**Inputs requeridos:** 16.4 (Design Tokens), 16.6 (Layout-Map)

**Contenido del output por componente:**
- Archivo `.astro` con `interface Props { ... }`
- Uso de tokens Tailwind (clases como `bg-primary`, `text-text`, `rounded-card`)
- Sin HEX hardcodeados
- Sin strings de marca hardcodeados (todo via props)

**Componentes a producir:**
1. `src/components/Button.astro`
2. `src/components/Card.astro`
3. `src/components/Badge.astro`
4. `src/components/Hero.astro`
5. `src/components/Testimonial.astro`
6. `src/components/FAQ.astro`
7. `src/components/ContactForm.astro`

**Formato:** Código fuente de cada componente + tabla de props con tipo y descripción.

**Validación:** Todos los componentes renderizan sin error. Ninguno tiene valores hardcoded.

---

### Output 17.4 — Header + Footer + Layout wrapper

Produce el layout global del sitio.

**Inputs requeridos:** 16.6 (Layout-Map), 1.1 (nombre negocio), 1.9 (servicios para nav), 1.13 (CTA)

**Contenido del output:**
- `src/layouts/Layout.astro` — wrapper con `<head>` parametrizado (title, description, canonical, og)
- `src/components/Header.astro` — nav con servicios core + CTA principal + hamburger móvil
- `src/components/Footer.astro` — NAP, links legales, servicios, copyright

**Reglas:**
- `<head>` acepta props: `title`, `description`, `canonical`, `ogImage`
- Nav mobile: hamburger colapsable
- Footer: NAP exacto de 1.4

**Formato:** Código fuente de los 3 archivos.

**Validación:** Layout renderiza en 375px y 1280px sin overflow. NAP del footer coincide con 1.4.

---

### Output 17.5 — N páginas construidas

Produce todas las páginas de la URL Matrix usando copy de Paso 15 y Layout-Map de Paso 16.

**Inputs requeridos:** 3.5 (URL Matrix), 15.3-15.9 (copy por página), 16.6 (Layout-Map), 17.3 (componentes), 17.4 (layout)

**Contenido del output:**
- Todas las páginas en `src/pages/` siguiendo los patrones de URL de Paso 4
- Cada página usa el Layout wrapper con title/description/canonical correctos
- Cada página usa los componentes parametrizados con el copy del Paso 15
- Páginas dinámicas (si aplica) usando getStaticPaths()

**Inventario esperado:**
```
src/pages/index.astro               (Homepage)
src/pages/[servicio]/index.astro    (SO, S páginas)
src/pages/[ciudad]/index.astro      (GeoHub)
src/pages/[servicio]/[ciudad]/index.astro  (LBS, S páginas)
src/pages/[ciudad]/[ga-slug].astro  (GeoArticles, G×S páginas)
src/pages/[ac-slug]/index.astro     (AC, A páginas)
src/pages/contacto/index.astro      (Contacto)
```

**Formato:** Lista de archivos creados con sus rutas + confirmación del total de páginas.

**Validación:** Total de páginas coincide con 2.8 (Total páginas SEO base + contacto).

---

### Output 17.6 — Schemas implementados y validados

Produce los JSON-LD de cada tipo de página implementados como componentes.

**Inputs requeridos:** 5.7 (Schema por tipo), 1.1, 1.4, 1.7, 18.6 (URL live — placeholder hasta deploy)

**Schemas a implementar:**
```
src/components/schema/
  OrganizationSchema.astro
  LocalBusinessSchema.astro
  ServiceSchema.astro
  CollectionPageSchema.astro
  ArticleSchema.astro
  FAQSchema.astro
  BreadcrumbSchema.astro
  SpeakableSchema.astro
```

**Reglas:**
- JSON-LD en `<script type="application/ld+json">` en el `<head>`
- NAP idéntico en todos los schemas que lo incluyan
- `sameAs`: solo URLs reales verificables (NO GBP URL antes del Paso 14)
- `url` en schema = canonical URL de la página

**Formato:** Código fuente de cada schema component + tabla de validación por tipo de página.

**Validación:** Google Rich Results Test o schema.org validator confirma sintaxis válida.

---

### Output 17.7 — Limpieza de rastros IA

Produce el informe de limpieza de todos los rastros de IA del proyecto.

**Checklist de limpieza:**
```
☐ README.md generado por framework eliminado o reescrito
☐ Comentarios generados por IA eliminados de todo el código fuente
☐ <meta name="generator"> eliminado del <head>
☐ grep -r "Claude|ChatGPT|Anthropic|AI generated|Generated by" → resultado: 0 matches
☐ package.json name = [slug-cliente] (no "my-astro-site" ni similar)
☐ Commit messages sin "AI", "generated", "Claude", etc.
☐ astro.config.mjs sin comentarios autogenerados de instalación
```

**Formato:** Lista de checks con resultado (LIMPIO / ENCONTRADO+CORREGIDO).

**Validación:** Todos los items en LIMPIO antes de PARADA 2.

---

### Output 17.8 — Build local pasando

Produce la confirmación de que el build local pasa sin errores.

**Comando:** `pnpm run build`

**Contenido del output:**
```
Resultado esperado:
  ✓ [N] pages built in [Xs]
  dist/ directory: [N] files

Verificaciones post-build:
  ☐ No errores TypeScript
  ☐ No errores de Astro (undefined props, import failures)
  ☐ dist/ contiene todas las páginas del inventario (17.5)
  ☐ `pnpm run preview` sirve el sitio en localhost sin errores de consola
```

**Formato:** Log del build + confirmación de páginas generadas + resultado de preview.

**Validación:** Build exit code 0. Todas las páginas accesibles en preview.

---

## Paso 18 — QA y Deploy

### Contexto de doctrina del Paso 18

```
35 CRITERIOS QA (todos deben estar en verde antes de deploy):

TÉCNICOS (16):
  T-01: Cada URL coincide con la URL Matrix (Paso 3/4)
  T-02: Canonical correcto en cada página (no self-referencing relativo)
  T-03: Nav header presenta todos los servicios core
  T-04: Footer contiene NAP completo y links legales
  T-05: No hay páginas huérfanas (todas enlazadas desde al menos 1 página)
  T-06: Meta title ≤ 60 chars con keyword principal
  T-07: Meta description ≤ 160 chars con propuesta de valor
  T-08: H1 único por página con servicio + ciudad donde aplica
  T-09: Schema Organization en homepage
  T-10: Schema LocalBusiness en homepage + LBS + contacto
  T-11: Schema Service en SO + LBS + AC
  T-12: Schema CollectionPage en GeoHub
  T-13: Schema Article en GeoArticles
  T-14: Schema FAQPage en páginas con FAQ
  T-15: Schema BreadcrumbList en todas las páginas excepto homepage
  T-16: sitemap.xml generado + robots.txt correcto

CONTENIDO (8):
  C-01: Copy de cada página coincide exactamente con Paso 15 (sin modificaciones)
  C-02: NAP consistente en homepage, contacto, footer y todos los schemas
  C-03: Puentes narrativos GeoArticle → LBS presentes y correctos (3 por GA)
  C-04: Anchors de GeoArticles son 3 anchors distintos por GA
  C-05: SO no tiene precios locales ni CTA de contacto directo
  C-06: Sin reseñas inventadas (0 claims de "X reseñas en Google" sin GBP)
  C-07: Word count dentro del rango del page type
  C-08: FAQ present en páginas que lo requieren (SO, LBS, AC, GeoHub)

VISUAL (5):
  V-01: Design tokens de 16.4 aplicados correctamente (colores, fuentes, radios)
  V-02: Layout-Map de 16.6 respetado en cada página
  V-03: GeoHub tiene contenido propio (no es lista de links vacía)
  V-04: Responsive correcto en 375px, 768px, 1280px
  V-05: Hero cabe en pantalla móvil sin scroll (RQ-1)

RASTROS IA (6):
  AI-01: 0 resultados en grep de "Claude|ChatGPT|AI generated"
  AI-02: <meta name="generator"> eliminado
  AI-03: README.md sin contenido autogenerado
  AI-04: Comentarios de código no mencionan IA
  AI-05: package.json name = slug del cliente
  AI-06: Commit history limpia de referencias a IA

DEPLOY (Cloudflare Pages):
  Framework: Astro
  Build command: pnpm run build
  Output dir: dist
  Node version: 18+
  ENV vars: ninguna requerida para sitio estático base

FLUJO DE DEPLOY:
  1. Push a GitHub main
  2. Cloudflare Pages detecta push → build automático
  3. DNS apunta al dominio del cliente (CNAME o registros A)
  4. SSL automático activado
  5. URL live confirmada → 18.6 recibe valor
  6. Sitemap enviado a Google Search Console → 18.7 recibe valor
```

---

### Output 18.1 — Auditoría Técnica (16 criterios)

Produce el informe de los 16 criterios técnicos con estado por página.

**Formato:**
```
| ID   | Criterio                        | Estado  | Notas |
|------|---------------------------------|---------|-------|
| T-01 | URLs coinciden con URL Matrix   | PASS/FAIL | ... |
| ...  | ...                             | ...     | ... |
```

**Validación:** Los 16 criterios en PASS antes de deploy. Cualquier FAIL bloquea el deploy.

---

### Output 18.2 — Auditoría de Contenido (8 criterios)

Produce el informe de los 8 criterios de contenido con estado por página.

**Formato:** Tabla C-01 a C-08 con estado PASS/FAIL y notas de corrección si procede.

**Validación:** Los 8 criterios en PASS. C-06 (sin reseñas inventadas) es bloqueante absoluto.

---

### Output 18.3 — Auditoría Visual (5 criterios)

Produce el informe de los 5 criterios visuales con evidencia de breakpoints.

**Formato:** Tabla V-01 a V-05 con estado PASS/FAIL. Para V-04 incluir confirmación de 375px/768px/1280px.

**Validación:** Los 5 criterios en PASS.

---

### Output 18.4 — Auditoría de Rastros IA (6 criterios)

Produce el informe de limpieza de rastros IA con evidencia del grep.

**Formato:** Tabla AI-01 a AI-06 con estado LIMPIO/ENCONTRADO. Para AI-01 incluir salida del grep.

**Validación:** Los 6 criterios en LIMPIO. Cualquier ENCONTRADO debe corregirse antes de deploy.

---

### Output 18.5 — Configuración Cloudflare Pages

Produce la configuración exacta del proyecto en Cloudflare Pages.

**Contenido del output:**
```
Project name: [slug-cliente]
Production branch: main
Framework preset: Astro
Build command: pnpm run build
Build output directory: dist
Root directory: / (raíz del repo)
Node.js version: 18
Environment variables: ninguna (sitio estático)

Custom domain:
  Dominio: [1.2 del cliente]
  DNS record: CNAME [slug].pages.dev → [dominio cliente]
  SSL: Cloudflare automático (Full)

Account: credenciales de creds.cloudflare_account_id
API token: creds.cloudflare_api_token
```

**Formato:** Configuración documentada + confirmación de deploy inicial exitoso.

**Validación:** URL de Cloudflare Pages responde con status 200.

---

### Output 18.6 — Sitio en Producción (URL live)

Produce la confirmación de que el sitio está publicado en el dominio del cliente.

**Contenido del output:**
```
URL live: https://[dominio cliente]/
Status: 200 OK
SSL: válido
Cloudflare Pages: activo
Homepage accesible: ✓
Todas las URLs del inventario accesibles: ✓
```

**Formato:** URL live confirmada + lista de páginas verificadas.

**Validación:** Este output desbloquea el Bloque 7 (Paso 14 — GBP Creation). Sin 18.6 confirmado, el GBP no se crea.

---

### Output 18.7 — Sitemap en GSC

Produce la confirmación de que el sitemap ha sido enviado a Google Search Console.

**Contenido del output:**
```
Google Search Console:
  Property: [URL del dominio]
  Sitemap URL: https://[dominio]/sitemap-index.xml
  Status: enviado / pendiente de indexación
  Páginas declaradas: [N] (debe coincidir con 2.8)

robots.txt:
  Sitemap: https://[dominio]/sitemap-index.xml
  User-agent: * → Allow: /
```

**Formato:** Confirmación de envío con URL del sitemap y número de páginas declaradas.

**Validación:** GSC acepta el sitemap sin errores. N páginas declaradas = 2.8.

---

## Paso 19 — Acciones Futuras y Escalado

### Contexto de doctrina del Paso 19

```
3 ELEMENTOS DE VIGILANCIA POST-LANZAMIENTO:

M-1: Flujo GA4 → Location
  Evento: clic en CTA o formulario de LBS
  Qué mide: ¿La LBS convierte o solo recibe visitas?
  Señal positiva: CTR > 2% en GA4 location events

M-2: Autoridad del GeoHub en GSC
  Métrica: impresiones + clics del GeoHub en GSC
  Qué mide: ¿El GeoHub está ganando posición para queries ciudad+servicios?
  Señal positiva: GeoHub en TOP 10 para al menos 1 query ciudad+servicio

M-3: Conversión de LBS (formularios + llamadas)
  Métrica: form submissions + eventos tel: en GA4
  Qué mide: ¿Las LBS generan contactos reales?
  Señal positiva: al menos 1 conversión por LBS por mes

3 TRIGGERS DE ESCALADO (necesarios 2-de-3 para crear páginas de barrio):

TRIGGER 1: Location + tráfico
  LBS tiene > 100 impresiones + > 10 clics en GSC
  Y al menos 1 keyword rankea en posición < 30
  → La LBS está siendo encontrada y tiene margen de mejora

TRIGGER 2: GeoArticle + tráfico
  Al menos 1 GeoArticle tiene > 50 impresiones + > 5 clics en GSC
  → El contenido informacional de la zona funciona

TRIGGER 3: SERP diferenciada por barrio
  Protocolo: buscar "{servicio} {Main City}" vs "{servicio} {barrio}"
  Escenario A: SERPs idénticas o similares → NO crear páginas de barrio
  Escenario B: SERP diferente + 3+ páginas específicas de barrio en TOP 10 → crear páginas
  → Hay segmentación real de la SERP por barrio

REGLA 2-DE-3: Solo cuando ≥ 2 triggers se activan se crean páginas de barrio.
  Un solo trigger no es suficiente.

ORDEN DE ESCALADO:
  1. SO → publicar primero todos los SO
  2. Location → optimizar LBS con más impresiones
  3. GeoArticles → publicar todos los GA antes de crear barrios
  4. Páginas de barrio → solo cuando 2-de-3 triggers activos

PROTOCOLO SERP para Trigger 3:
  Paso 1: buscar "{servicio} {ciudad}" y anotar TOP 10
  Paso 2: buscar "{servicio} {barrio}" y anotar TOP 10
  Paso 3: comparar SERPs
    - Si < 3 páginas diferentes entre SERPs → Escenario A → NO crear
    - Si ≥ 3 páginas específicas de barrio en Paso 2 → Escenario B → candidato a crear
  Paso 4: confirmar 2-de-3 triggers antes de ejecutar
```

---

### Output 19.1 — Tablero de vigilancia post-launch

Produce el tablero de monitoring para las métricas de los 3 elementos de vigilancia.

**Contenido del output:**
```
Tablero de vigilancia — [Nombre Negocio]

M-1: Flujo GA4 → Location
  Evento configurado: [nombre evento GA4]
  URL monitoreada: [LBS URLs]
  Umbral de alerta: CTR < 1% → revisar copy y CTA
  Revisión: mensual

M-2: Autoridad GeoHub en GSC
  Property GSC: [dominio]
  Queries a vigilar: "[servicio] [Main City]" (1 por servicio core)
  Umbral positivo: posición < 10 en al menos 1 query
  Revisión: mensual

M-3: Conversión LBS
  Eventos GA4: form_submit + tel_click por página LBS
  Umbral: ≥ 1 conversión/mes por LBS
  Revisión: mensual
```

**Formato:** Documento de tablero con 3 secciones (M-1/M-2/M-3) + frecuencia de revisión.

**Validación:** Los 3 elementos están definidos con métricas concretas y umbrales numéricos.

---

### Output 19.2 — Estado de los 3 triggers por candidato

Produce la tabla de estado de triggers por cada candidato a página de barrio.

**Formato:**
```
| Barrio candidato | T-1 (LBS impr+clics) | T-2 (GA impr+clics) | T-3 (SERP diferenc.) | Triggers activos | Decisión |
|-----------------|----------------------|----------------------|----------------------|-----------------|----------|
| [Barrio 1]      | ☐ pendiente          | ☐ pendiente          | ☐ pendiente          | 0/3             | ESPERAR  |
| [Barrio 2]      | ...                  | ...                  | ...                  | ...             | ...      |
```

**Nota:** Los candidatos a barrio provienen de 1.10 (LCAs) + SERP analysis.

**Validación:** La tabla se actualiza mensualmente. Solo se crea página cuando decisión = CREAR (≥2 triggers).

---

### Output 19.3 — Análisis SERP + decisión

Produce el análisis SERP según el protocolo de Trigger 3 para cada candidato activo.

**Contenido del output por candidato:**
```
Servicio: [servicio]
Barrio candidato: [barrio]

Búsqueda 1: "[servicio] [Main City]"
TOP 10: [lista URLs]

Búsqueda 2: "[servicio] [barrio]"
TOP 10: [lista URLs]

Páginas exclusivas barrio en TOP 10: [N]
→ Escenario A (< 3) → NO CREAR
→ Escenario B (≥ 3) → CANDIDATO A CREAR

Decisión: [NO CREAR / CANDIDATO] (requiere confirmar 2-de-3 triggers)
```

**Validación:** El protocolo se aplica a cada candidato activo. Ninguna página de barrio se crea sin este análisis.

---

### Output 19.4 — Log de decisiones de escalado

Produce el registro cronológico de decisiones de escalado.

**Formato:**
```
| Fecha | Barrio | T-1 | T-2 | T-3 | Triggers activos | Decisión | Acción tomada |
|-------|--------|-----|-----|-----|-----------------|----------|---------------|
| ...   | ...    | ... | ... | ... | ...             | ...      | ...           |
```

**Propósito:** Trazabilidad de por qué se creó (o no) cada página de barrio. Evita expansión sin datos.

**Validación:** Toda decisión de crear páginas nuevas tiene entrada en el log con al menos 2 triggers confirmados.

---

### Output 19.5 — URL Matrix actualizada con Expansion

Produce la URL Matrix ampliada con las páginas de barrio aprobadas.

**Inputs requeridos:** 3.5 (URL Matrix original), 19.4 (Log de decisiones con al menos 1 CREAR)

**Contenido del output:**
- URL Matrix original de 3.5 sin modificar
- Sección adicional: "Expansion aprobada — [fecha]"
  - Nuevas URLs de barrio con su tipo (LBS barrio), parent page, schema asignado, priority score

**Formato:** URL Matrix extendida en el mismo formato que 3.5, con sección de expansión marcada.

**Validación:** Ninguna URL de barrio aparece en la matrix sin entrada en 19.4 (Log) con decisión CREAR y ≥2 triggers.

---

## Formato de Respuesta

Responde con un JSON array con los outputs del bloque. Incluye TODOS los outputs (15.1–19.5):

```json
[
  {
    "id": "15.1",
    "value": "...",
    "status": "confirmed|validated|inferido|placeholder|no_aplica",
    "source": "doctrina_gmb_crush|cliente_preflight|...",
    "notes": "Obligatorio si status es inferido o placeholder"
  },
  {
    "id": "15.13",
    "value": null,
    "status": "no_aplica",
    "source": null,
    "notes": null
  },
  {
    "id": "16.3",
    "value": null,
    "status": "no_aplica",
    "source": null,
    "notes": null
  },
  {
    "id": "17.1",
    "value": null,
    "status": "no_aplica",
    "source": null,
    "notes": null
  }
]
```

Reglas de estado:
- `confirmed`: valor real validado
- `validated`: herramienta ejecutada y verificada
- `inferido`: estimado sin ejecutar herramienta; `notes` obligatorio
- `placeholder`: esperando dato del cliente; `notes` describe qué se necesita
- `no_aplica`: 15.13, 16.3, 17.1 siempre son `no_aplica`
