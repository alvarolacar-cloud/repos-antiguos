# 05 IA crea GBP — Bloque 7 GBP del cliente

> **Qué pasa aquí:** la IA crea el Google Business Profile del cliente sincronizado con la web LIVE como source of truth. Es el último paso del flujo de salida a mercado.

---

## Pre-requisito (bloqueante — cero tolerancia a `⚠`)

`04 info que falta/06-info-que-falta-cliente.md` con tabla agregada **vacía**. Todos los `⚠ inferido` y `⚠ placeholder` heredados de Bloques 1-5 promovidos a `confirmed` o `validated`.

**Razón:** Google penaliza GBPs con NAP falso, fotos genéricas o categorías inventadas. La web sí puede salir LIVE con datos provisionales (re-deploy cuando lleguen los reales), pero el GBP no admite invento.

---

## Estructura interna esperada

Réplica de `01 Teoria Leer antes de Ejecutar/02 ejecución/Bloque 7 GBP/` adaptada al cliente:

```
05 IA crea GBP/
├── 01 Plan Ejecución/      (heredado de teoría — referencia, no se reescribe)
├── 02 Ejecución/            (a-doc 14a con §8 Outputs Consolidados rellenos con valores cliente)
└── 03 Consolidación Outputs/ (consolidado del Bloque 7 con valores reales)
```

---

## Cómo ejecuta la IA

1. Lee el plan-ejecución teórico (`01 Teoria Leer antes de Ejecutar/02 ejecución/Bloque 7 GBP/01 Plan Ejecución/`).
2. Ejecuta el a-doc del Paso 14 (`02 Ejecución/14a-ejecucion-gbp-creation-website-alignment.md`):
   - Crea el GBP en Google con NAP final aprobado, categorías confirmadas, servicios mapeados a páginas web, descripción aprobada.
   - Sube fotos reales del cliente clasificadas según §16 doctrinal.
   - Configura UTM, Q&A, posts, estrategia de reseñas reales.
3. Cierra con el consolidado del bloque (`03 Consolidación Outputs/bloque-7-consolidado-cliente.md`).
4. Verifica sincronización web ⟷ GBP (NAP coherente, categorías web supportan categorías GBP, areaServed coherente con LCAs).

---

## Salida — cierre del ciclo

Tras cerrar Bloque 7:

- Web base publicada (entregada en Bloque 5)
- Todos los datos confirmados (cerrado en Bloque 6 / `04 info que falta/`)
- GBP creado y verificado, sincronizado con la web
- Tracking activo (GSC + GA4 + GBP performance + geo-grid)
- Paso 19 continuo evaluando triggers de escalado a sub-clusters

**Si Paso 19 detecta los 3 triggers cumplidos** (Location ya responde / GeoArticles traen tráfico / Señal en SERP), arranca un nuevo ciclo del sistema para el sub-cluster aprobado (vuelve a `01 cliente preflight/` con `Approved Expansion Areas` activas).

---

## Estado del bloque (operativo)

```
[ ] 04 info que falta/ vacía (todos los ⚠ cerrados)
[ ] Último deploy refleja los datos cerrados (no quedó re-deploy pendiente)
[ ] Estructura interna creada (01 Plan / 02 Ejecución / 03 Consolidación)
[ ] Paso 14 ejecutado con datos confirmados
[ ] GBP creado en Google
[ ] GBP verificado por Google
[ ] Sincronización web ⟷ GBP validada
```
