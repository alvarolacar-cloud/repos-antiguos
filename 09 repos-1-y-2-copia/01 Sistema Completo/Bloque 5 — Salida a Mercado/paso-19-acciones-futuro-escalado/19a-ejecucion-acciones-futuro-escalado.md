Versión literal del chat · Sistema GMB Crush para webs locales
Documento regenerado siguiendo la estructura fija acordada en la conversación.
Proveniencia: sistema construido paso a paso en el chat y alineado con los frameworks oficiales GMB Crush.

# §1 Paso 19 — Acciones Futuro y Escalado

## §2 Índice corto

**Paso 19 — Acciones Futuro y Escalado**

## §3 Objetivo del Paso 19

Este paso establece la hoja de ruta posterior al lanzamiento: qué se vigila, cuándo se escala y cómo se decide si crear nuevas páginas (especialmente páginas de barrio).

La trampa más frecuente del SEO local es escalar antes de tiempo: ver una zona con búsqueda y crear una página dedicada sin que la base esté validada. Eso rompe el flujo del cluster, produce páginas débiles sin autoridad y disipa el presupuesto de rastreo.

Este paso aporta tres cosas:

1. **Sistema de vigilancia post-launch** — qué métricas medir y qué acción correctiva aplicar si fallan.
2. **Regla de escalado** — la base se construye antes de barrios. La demanda valida oportunidad pero no prioriza ejecución.
3. **Herramienta de análisis SERP por barrio** — un protocolo objetivo para decidir CREAR / NO CREAR páginas de barrio basado en el comportamiento real de Google, no en volumen estimado.

Cuando este paso se omite o se rellena mal:

- Se crean páginas de barrio prematuramente que no rankean.
- Se gasta presupuesto de rastreo en URLs débiles.
- El flujo GeoArticle → Location se rompe porque hay capas extras que distraen.
- Decisiones de escalado se toman por intuición ("hay demanda en Almagro") en vez de por evidencia SERP.

Este paso debe ejecutarse después del Paso 18 (QA + Deploy) y se mantiene activo durante toda la vida del proyecto. La creación del GBP del Paso 14 ocurre justo después del Paso 18 y antes de aplicar los criterios de escalado de este paso.

Error que previene: escalar a barrios antes de validar la Location.
Error que previene: decidir páginas de barrio por volumen estimado en vez de SERP real.
Error que previene: ignorar el flujo del cluster post-launch.
Error que previene: añadir páginas que disipan el presupuesto de rastreo sin tracción.

## §4 Lo que tienes que rellenar

```text
Vigilancia post-launch:
1. Definir métricas de los 3 elementos a vigilar (flujo GeoArticle→Location, autoridad GeoHub, conversión LBS core).
2. Definir umbrales de fallo y acciones correctivas.

Criterios de escalado:
3. Confirmar que la base (Service Overview + LBS + GeoArticles) está construida y publicada.
4. Aplicar regla 2-de-3 sobre los triggers antes de decidir nuevas páginas.

Análisis SERP por barrio:
5. Para cada candidato a página de barrio, ejecutar el análisis SERP con doble búsqueda y comparación.
6. Clasificar el resultado en escenario A (no segmentación) o B (con segmentación).
7. Documentar output con decisión, justificación y nivel de confianza.

Validación:
La decisión de crear una página de barrio nueva pasa siempre por este protocolo. Sin protocolo aplicado, no se aprueba la creación.
```

## §5 Ejemplo rellenado

```text
Negocio: Cerrajeros Madrid 24h
Estado post-launch: web publicada (Paso 18) + GBP creado (Paso 14).

Vigilancia post-launch:
- Flujo GeoArticle → Location: medir CTR de los puentes narrativos en GA4.
- Autoridad GeoHub: medir impresiones y posiciones de /madrid/ en Google Search Console.
- Conversión LBS core: medir tasa de envío de formulario y clicks en CTA "Llamar ahora" en /cerrajero/madrid/cerrajero-urgente/.

Estado actual de los 3 triggers para crear páginas de barrio (ejemplo: Almagro):
- Trigger 1 (Location ya responde): pendiente — la LBS necesita 4–8 semanas para acumular impresiones.
- Trigger 2 (GeoArticles traen tráfico): pendiente — los GeoArticles necesitan tiempo para indexarse y empezar a rankear.
- Trigger 3 (SERP cambia con barrio): pendiente — ejecutar análisis SERP cuando los otros 2 estén activos.

Resultado: NO CREAR páginas de barrio en Almagro hasta que se cumplan al menos 2 de los 3 triggers.
```

# §6 Cuerpo operativo del Paso 19

> **Definición operativa — Escalado:** crear páginas nuevas más allá del inventario base de 28 SEO + /contacto/. Las páginas de barrio (`/madrid/almagro/cerrajero-urgente/` o similar) son la forma típica de escalado en cerrajería. El escalado solo se aplica cuando la base ya tiene tracción real, no antes.

## §7 Elementos a vigilar post-launch

Tres elementos críticos miden si el sistema funciona en producción.

### §7.1 Flujo GeoArticle → Location

Mide si los puentes narrativos del Paso 15 §14.5 cumplen su función: llevar al usuario del GeoArticle (captación informacional) a la LBS (conversión local).

| Métrica | Cómo medir | Acción correctiva si falla |
|:---|:---|:---|
| % usuarios que hacen click en los puentes narrativos | GA4: eventos de click en enlaces internos desde GeoArticles a LBS | Ajustar copy de puentes (Paso 15 §14.5) o posición de botones |
| Páginas/sesión desde GeoArticle | GA4: páginas por sesión cuando entrada es GeoArticle | Si <2, los puentes no convierten → revisar redacción |

### §7.2 Autoridad del GeoHub

Mide si `/[ciudad]/` está rankeando para búsquedas informativas amplias y cumpliendo su rol de Main City Silo Container.

| Métrica | Cómo medir | Acción correctiva si falla |
|:---|:---|:---|
| Impresiones de `/[ciudad]/` en GSC | Google Search Console: filtrar por URL exacta | Ampliar contenido contextual (Paso 15 §13.1) o añadir datos estadísticos verificables |
| Posiciones para búsquedas amplias | GSC: queries informativas tipo "cerrajeros madrid" | Si posición >20 tras 3 meses, revisar contenido y enlaces internos |

### §7.3 Conversión del Servicio Core

Mide si la LBS del servicio core (la página principal de conversión del cluster) está convirtiendo.

| Métrica | Cómo medir | Acción correctiva si falla |
|:---|:---|:---|
| Tasa de conversión de la LBS core | GA4: eventos de envío de formulario o click en `tel:` desde la LBS | Mejorar copy (Paso 15 §11), añadir calculadora o prueba social |
| CTR del CTA "Llamar ahora" | GA4: eventos de click en CTA principal | Si <5%, revisar Hero (Paso 15 §11.1 + Paso 16 §8.2.4) |

Reglas operativas para §7:

- Establecer baseline a las 4 semanas tras lanzamiento.
- Revisar métricas mensualmente durante los primeros 6 meses.
- Cada métrica que falle desencadena una acción correctiva, no la creación de páginas nuevas.

## §8 Criterios de Escalado: ¿Cuándo crear páginas de barrio?

### §8.1 La regla fundamental

```text
Que algo tenga demanda no significa que sea el punto de entrada.
La demanda valida la oportunidad, pero el sistema ordena la ejecución.
```

### §8.2 Por qué NO se empieza por páginas de barrio

| Razón | Explicación |
|:---|:---|
| Falta de ancla de autoridad | Las páginas `/[servicio]/` y `/[servicio]/[ciudad]/` son los cimientos. Sin esta base, una página de barrio nace débil. |
| Ruptura del flujo | Introducir barrios prematuramente rompe el ecosistema GeoArticle → Location → Conversión. |
| Validación ≠ Prioridad | Detectar demanda significa "esto puede funcionar en el futuro", no "esto es lo primero que debo construir". |

### §8.3 El orden real de construcción

```text
1. Service Overview (/[servicio]/)
2. Location Page de Ciudad (/[servicio]/[ciudad]/)
3. GeoArticles (/[ciudad]/[tema]/)
4. Páginas de Barrio (Fase de expansión — solo cuando se cumplen los 3 triggers)
```

Reglas operativas para §8:

- Confirmar que los pasos 1–18 están cerrados y publicados antes de aplicar los criterios de escalado.
- No saltar al escalado sin que los 3 elementos a vigilar (§7) tengan baseline.
- Las páginas de barrio son Approved Expansion Areas (Paso 1.33) — entran solo si se aprueban explícitamente.

## §9 Los 3 triggers para crear páginas de barrio

La creación de páginas de barrio solo debe ejecutarse cuando se cumplan **al menos 2 de estos 3 triggers**.

### §9.1 Trigger 1 — Location ya responde

La LBS principal (`/[servicio]/[ciudad]/[servicio-slug]/`) ya tiene impresiones en Google Search Console, clicks reales y empieza a rankear keywords del servicio.

Indicadores concretos:

- Impresiones >100/mes en GSC
- Clicks reales >10/mes
- Al menos 1 keyword en posición <30

### §9.2 Trigger 2 — GeoArticles traen tráfico

Al menos 1–2 GeoArticles tienen impresiones, tráfico real y posicionamiento inicial.

Indicadores concretos:

- Al menos 1 GeoArticle con impresiones >50/mes en GSC
- Al menos 1 GeoArticle con clicks >5/mes
- Posición media <40 para alguna keyword del artículo

### §9.3 Trigger 3 — Señal en SERP

La SERP cambia claramente al añadir el barrio y aparecen 3+ páginas específicas del barrio (patrón confirmado).

Indicadores concretos:

- Al ejecutar el protocolo de §10 (doble búsqueda), la SERP del barrio difiere claramente de la SERP de ciudad
- Aparecen 3+ resultados optimizados específicamente para el barrio (no solo Local Pack)
- Google mantiene la intención al añadir el barrio (no agrupa a nivel ciudad)

### §9.4 Regla 2 de 3

```text
2 de 3 triggers cumplidos = se puede crear.
1 de 3 triggers cumplido = NO escalar.
```

Reglas operativas para §9:

- Documentar el estado de los 3 triggers antes de cada decisión de escalado.
- Si solo se cumple 1 trigger, esperar y reevaluar en 4–8 semanas.
- No usar volumen estimado de keyword research como sustituto de los triggers — el volumen indica oportunidad, no prioridad.

## §10 Herramienta de análisis SERP por barrio

Protocolo objetivo para decidir CREAR / NO CREAR una página de barrio basado en el comportamiento real de Google.

### §10.1 Input

```text
Servicio: [SERVICIO]
Ciudad: [CIUDAD]
Barrio: [BARRIO]
```

### §10.2 Instrucciones de ejecución

```text
1. Ejecutar dos búsquedas en Google:
   a) "{servicio} {ciudad}"
   b) "{servicio} {barrio}"

2. Analizar SOLO resultados orgánicos (ignorar Local Pack y Ads).

3. Comparar las dos SERPs respondiendo:
   a) ¿Los resultados orgánicos son los mismos o muy similares?
   b) ¿Aparecen 3+ páginas optimizadas específicamente para el barrio?
   c) ¿Existen múltiples URLs diferentes orientadas al barrio?
   d) ¿Google mantiene la intención a nivel ciudad aunque se añada el barrio?

4. Clasificar en uno de 2 escenarios:

   ESCENARIO A — SIN segmentación:
   La SERP del barrio es igual o muy similar a la SERP de ciudad.
   Google agrupa la intención a nivel ciudad.
   → NO CREAR página de barrio.

   ESCENARIO B — CON segmentación:
   La SERP cambia claramente. Aparecen 3+ páginas específicas del barrio.
   → CREAR página de barrio (si además se cumplen Triggers 1 y 2 del §9).
```

### §10.3 Output obligatorio

```text
Resultado: [CREAR / NO CREAR]

Justificación (3–5 líneas):
- Si la SERP cambia o no.
- Si hay patrón de páginas específicas del barrio.
- Qué indica Google sobre la intención (ciudad vs barrio).

Nivel de confianza: [Alto / Medio / Bajo]
```

### §10.4 Reglas del protocolo

- **No decidir en base al número de competidores** — la cantidad no es señal de oportunidad.
- **No decidir en base al volumen estimado de búsqueda** — el volumen indica oportunidad, no prioridad.
- **Solo decidir en base al comportamiento real de la SERP** — Google es el árbitro final.
- **Repetir el análisis al menos en 2 ubicaciones físicas distintas** (con VPN o desde dispositivos en zonas distintas) para evitar sesgos de personalización.

## §11 Vigilar antes de escalar — Regla operativa 1

### §11.1 Explicación

El escalado se decide con datos, no con intuición. Sin baseline de las 3 métricas (§7), cualquier decisión de añadir páginas es ciega.

### §11.2 Patrón

```text
Lanzamiento → 4 semanas baseline → revisar 3 métricas → ¿alguna falla? → corregir antes de escalar
```

### §11.3 Ejemplo correcto

```text
Mes 1 post-launch: baseline establecido.
Mes 2: flujo GeoArticle→Location en 2.3 páginas/sesión (✓), autoridad GeoHub con 80 impresiones (pendiente), conversión LBS 4% (✓ borderline).
Decisión: corregir copy del GeoHub para mejorar autoridad antes de pensar en páginas de barrio.
```

### §11.4 Regla final

```text
Sin baseline + corrección de fallos en métricas, no se aplica el escalado.
```

## §12 Volumen no equivale a prioridad — Regla operativa 2

### §12.1 Explicación

Una keyword con volumen alto puede no rankear nunca si Google decide que la intención es de ciudad. La prioridad se decide por comportamiento de Google (Trigger 3 del §9), no por volumen estimado en herramientas de keyword research.

### §12.2 Patrón

```text
Keyword con volumen alto → ¿SERP segmenta? → sí: oportunidad real / no: agrupación de ciudad
```

### §12.3 Ejemplo correcto

```text
"cerrajero almagro" tiene 880 búsquedas/mes (Ahrefs).
Análisis SERP: la primera página es 90% igual a "cerrajero madrid".
Resultado: NO CREAR página /almagro/. El volumen no compensa la falta de segmentación.
```

### §12.4 Regla final

```text
El volumen valida demanda. La SERP valida prioridad.
```

## §13 Páginas de barrio son Expansion Areas — Regla operativa 3

### §13.1 Explicación

Las páginas de barrio entran al sistema como Approved Expansion Areas (Paso 1.33). Su URL canónica es `/[ciudad]/[barrio]/` o `/[servicio]/[ciudad]/[barrio]/[servicio-slug]/`. No son LCAs — las LCAs no generan URLs por defecto (Paso 1.32).

### §13.2 Patrón

```text
LCA validada con triggers + SERP → Approved Expansion Area → URL canónica → entrada en URL Matrix → cluster nuevo
```

### §13.3 Ejemplo correcto

```text
Almagro pasa los 3 triggers + SERP segmentada:
1. Aprobar Almagro como Approved Expansion Area en Paso 1.33.
2. Añadir URL `/cerrajero/madrid/almagro/cerrajero-urgente/` a la URL Matrix (Paso 3).
3. Construir el cluster mínimo de la nueva página (LBS + ¿GeoArticles asociados?).
4. Volver al Paso 15 para redactar el copy y al Paso 16 para validar layout.
```

### §13.4 Regla final

```text
Páginas de barrio entran por la puerta del sistema, no por la lateral.
```

## §14 Repetir análisis SERP en ubicaciones distintas — Regla operativa 4

### §14.1 Explicación

Google personaliza resultados por ubicación física e historial. Un análisis SERP desde una sola ubicación puede ser engañoso. Repetir desde 2+ ubicaciones distintas mejora la fiabilidad.

### §14.2 Patrón

```text
Análisis SERP → ubicación 1 → ubicación 2 (VPN o dispositivo en otra zona) → comparar → conclusión
```

### §14.3 Ejemplo correcto

```text
Análisis "cerrajero almagro" desde Madrid: SERP A.
Análisis "cerrajero almagro" desde Barcelona (VPN): SERP B.
Si A y B coinciden en patrón (no segmentación), conclusión robusta.
Si A y B difieren, repetir con tercera ubicación.
```

### §14.4 Regla final

```text
Una ubicación no decide. Mínimo dos para concluir.
```

## §15 Documentar cada decisión de escalado — Regla operativa 5

### §15.1 Explicación

Cada decisión CREAR / NO CREAR queda documentada con su justificación y nivel de confianza. Sin documentación, decisiones futuras se toman a ciegas y se repiten errores.

### §15.2 Patrón

```text
Análisis SERP → output con decisión + justificación + confianza → archivar en log de escalado del proyecto
```

### §15.3 Ejemplo correcto

```text
2026-08-15 — Almagro / Cerrajero urgente
Análisis SERP: SERP no segmentada.
Resultado: NO CREAR.
Justificación: la primera página orgánica es 90% idéntica a la búsqueda de Madrid; Google mantiene la intención a nivel ciudad.
Confianza: Alta.
Reevaluar: 6 meses.
```

### §15.4 Regla final

```text
Cada decisión de escalado queda en el log con fecha, datos y confianza.
```

## §16 Checklist final del Paso 19

| Check | Pregunta | Estado |
|---|---|---|
| Vigilancia post-launch | ¿Las 3 métricas tienen baseline establecido? | ☐ |
| Acción correctiva activa | ¿Cualquier métrica que falla tiene su acción correctiva aplicada? | ☐ |
| Triggers documentados | ¿Estado de los 3 triggers documentado para cada candidato a barrio? | ☐ |
| Regla 2-de-3 aplicada | ¿Toda decisión de barrio cumple al menos 2 de 3 triggers? | ☐ |
| Análisis SERP ejecutado | ¿Cada candidato a barrio pasó por el protocolo de §10? | ☐ |
| Output documentado | ¿Cada análisis SERP tiene decisión + justificación + confianza? | ☐ |
| Múltiples ubicaciones | ¿Análisis SERP repetido en 2+ ubicaciones distintas? | ☐ |
| Aprobación como Expansion Area | ¿Las páginas de barrio aprobadas se añaden al Paso 1.33 + URL Matrix? | ☐ |

## §17 Outputs del Paso 19

- Output 19.1 — Tablero de vigilancia post-launch con las 3 métricas y baselines.
- Output 19.2 — Estado actual de los 3 triggers por cada candidato a página de barrio.
- Output 19.3 — Análisis SERP ejecutado para cada candidato + output con decisión.
- Output 19.4 — Log de decisiones de escalado con fechas, justificación y confianza.
- Output 19.5 — URL Matrix actualizada (Paso 3) con cualquier nueva Approved Expansion Area.

---

# §18 Fuentes internas GMB Crush usadas

- Approved Expansion Areas (Paso 1.16, 1.33)
- URL Matrix (Paso 3)
- Internal Linking Map (Paso 7)
- Redacción de Contenido (Paso 15) — para construir las nuevas páginas aprobadas
- Layout-Map (Paso 16) — para aplicar diseño coherente a las nuevas páginas
- 08 antiguo "Acciones a Futuro y Escalado del Sistema" (referencia metodológica)

> **Nota importante — Páginas de barrio NO son LCAs:**
> Las Local Coverage Areas (Paso 1.22–1.31) no generan URLs por defecto (Paso 1.32). Son señales GEO en contenido. Las páginas de barrio que pasan los 3 triggers + SERP segmentada se aprueban como Approved Expansion Areas (Paso 1.33), entran en la URL Matrix del Paso 3, y se redactan/diseñan/construyen siguiendo Pasos 15–17. No hay atajos.
