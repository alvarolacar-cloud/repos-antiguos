# Auditoría de fuentes externas — Bloque 6 GBP

Audit de las decisiones cuya Fuente contiene `Competidores` o `Datos de búsqueda` en el Bloque 6. Se cruza cada fila con su `§X` canónica del ejecutable para validar si la doctrina realmente define el método de extracción del valor.

---

## Alcance

```text
Bloque 6 — GBP:
  paso-14-gbp-creation-website-alignment → 6 filas (2 grupos)

Total Bloque 6: 6 filas en 2 grupos (resueltos).
```

---

## Resumen del audit (post-correcciones)

| Grupo | Filas | §X canónica | Estado original | Estado actual |
|---|---|---|---|---|
| A — Q&A del GBP | 14.33–14.35 | paso-14 §23 | ⚠️ VAGO (define qué pero no cómo) | ✅ DEFINIDO con §23.6 Método |
| B — Google Posts | 14.36–14.38 | paso-14 §24 | ⚠️ VAGO (define qué pero no cómo) | ✅ DEFINIDO con §24.6 Método |

```text
Estado actual: 2 ✅ DEFINIDOS
```

---

## Detalle de cada grupo

### Grupo A — Q&A del GBP

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 14.33 | Q&A 1 ("¿Ofrecéis cerrajero urgente en Madrid?") | GMB Crush + Datos de búsqueda | paso-14 §23 + §23.6 Método |
| 14.34 | Q&A 2 ("¿Atendéis en Chamberí, Salamanca y Retiro?") | GMB Crush + Datos de búsqueda | paso-14 §23 + §23.6 Método |
| 14.35 | Q&A 3 ("¿Podéis hacer apertura sin dañar la cerradura?") | GMB Crush + Datos de búsqueda | paso-14 §23 + §23.6 Método |

**Estado original:** §23 explicaba qué eran las Q&A y mostraba un ejemplo, pero no decía cómo extraer las preguntas reales. La sugerencia "preguntas alineadas con servicios reales" era una guía, no un método.

**Método ahora documentado en §23.6:**

```text
1. GBP Auto-Suggest: capturar sugerencias automáticas de Google Search
   al escribir "[servicio] [main city]".
2. People Also Ask (PAA): anotar 5-10 preguntas del bloque PAA en la
   búsqueda principal.
3. Keyword research informacional: queries con modificadores de
   pregunta y volumen ≥ 10/mes.
4. Reseñas y Q&A de competidores: 3-5 GBP top, leer preguntas ya
   respondidas. Identificar patrones recurrentes.
5. Filtrar y priorizar 3-5 preguntas que cubran objeciones reales
   (cobertura, precio, urgencia, garantía).
6. Redactar respuestas alineadas con copy de Homepage/LBS y NAP.
```

---

### Grupo B — Google Posts

| Filas | Decisión | Fuente | §X canónica |
|---|---|---|---|
| 14.36 | Google Post 1 ("Presentación del negocio") | GMB Crush + Datos de búsqueda | paso-14 §24 + §24.6 Método |
| 14.37 | Google Post 2 ("Servicio de cerrajero urgente 24h") | GMB Crush + Datos de búsqueda | paso-14 §24 + §24.6 Método |
| 14.38 | Google Post 3 ("Cambio de cerraduras y bombines") | GMB Crush + Datos de búsqueda | paso-14 §24 + §24.6 Método |

**Estado original:** §24 explicaba que los posts deben apoyar páginas web reales y daba un ejemplo, pero no decía cómo elegir los topics ni cómo dimensionar el calendario.

**Método ahora documentado en §24.6:**

```text
1. Listar URLs prioritarias del cluster con score Priority ≥ P2:
   Homepage, las 5 LBS, AC, GeoHub. Cada una es candidata a post.
2. Por URL candidata, keyword research transaccional:
   queries top con volumen ≥ 30/mes y intent comercial.
3. Por URL prioritaria, generar 1-3 posts con angles distintos
   (servicio, beneficio diferencial, llamada a acción local).
4. Cada post lleva la URL de la página soporte como destino:
   - Servicio core → URL de la LBS.
   - Cobertura → URL del GeoHub.
   - Categoría adicional → URL de la AC.
5. Calendario: 1 post nuevo por semana mínimo, variando angle.
6. Cada 4 semanas revisar GSC: reforzar URLs con poco tráfico
   con post adicional.
```

---

## Conclusión Bloque 6

```text
Estado original: 2 ⚠️ VAGOS = Q&A y Google Posts definían el qué
                                pero no el método de extracción.

Estado tras fix: 2 ✅ DEFINIDOS

Cambios aplicados en paso-14a:
- §23.6 Método (extraer Q&A de Auto-Suggest, PAA, KR y competidores)
- §24.6 Método (planificar Posts conectados con páginas web)

Resultado: las 6 filas del Bloque 6 marcadas con Datos de búsqueda
           tienen ahora método claro de extracción y planificación.
```
