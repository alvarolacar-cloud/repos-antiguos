# Decisiones y fuentes — sin fuente territorial como fuente independiente

Esta carpeta contiene la Fase 2 de trazabilidad del sistema GMB Crush.

Cada documento usa el formato:

```text
ID · Ref. canónica
Decisión que se toma
Fuente para la decisión
Funcionamiento de la fuente
Decisión en el ejemplo
```

---

# Fuentes permitidas

```text
GMB Crush
Input humano
Input humano + GMB Crush
Datos de búsqueda
Competidores
IA sin respaldo
GMB Crush + IA sin respaldo
Input humano + IA sin respaldo
```

No se usa una fuente territorial separada.

---

# Criterio aplicado

## 1. Input humano

Se usa cuando el cliente aporta el dato directamente.

Ejemplos:

```text
nombre del negocio
dirección física
GBP Status
ciudad incluida en el NAP
```

---

## 2. GMB Crush

Se usa cuando la decisión viene de la doctrina o reglas operativas del sistema.

Ejemplos:

```text
Homepage como Root Entity Anchor
Service Overview Pages
Location-Based Service Pages
Additional Category Pages
GeoHub
GeoArticles
URL patterns
internal linking
schema por tipo
no URLs para Local Coverage Areas por defecto
```

---

## 3. Input humano + GMB Crush

Se usa cuando el cliente aporta el dato y GMB Crush define cómo usarlo.

Ejemplos:

```text
Dirección física → Main City
Dirección física → Direct Local Coverage Areas
Madrid → GeoHub /madrid/
Almagro y Chamberí → señales GEO sin URL propia
```

---

## 4. Datos de búsqueda

Se usa solo si existe keyword research, GSC, volumen, intención, PAA o datos reales.

Actualmente no se asigna a decisiones concretas del ejemplo porque no hay keyword research real.

---

## 5. Competidores

Se usa solo si existe análisis real de SERP, páginas competidoras, gaps o geo-grid competitivo.

Actualmente no se asigna a decisiones concretas del ejemplo porque no hay análisis competitivo real.

---

## 6. IA sin respaldo

Se usa cuando el valor concreto fue propuesto para el ejemplo sin validación.

Ejemplos:

```text
teléfono placeholder
email de ejemplo
servicios core no confirmados
trust signals no demostrados
horarios no confirmados
Priority Score numérico sin datos
```

---

## 7. GMB Crush + IA sin respaldo

Se usa cuando GMB Crush valida el patrón, pero el valor concreto no está validado.

Ejemplos:

```text
crear una Service Overview Page por servicio = GMB Crush
elegir “Cambio de bombines” como servicio = IA sin respaldo

crear 3 GeoArticles por servicio = GMB Crush
elegir los 15 temas concretos = IA sin respaldo

usar Local Coverage Areas como señales GEO = GMB Crush
elegir Candidate LCAs concretas no confirmadas = IA sin respaldo
```

---

## 8. Input humano + IA sin respaldo

Se usa cuando el dato base viene del input humano, pero algún detalle concreto es placeholder.

Ejemplo:

```text
NAP final para GBP:
nombre y dirección vienen del input
teléfono es placeholder
```

---

# Regla especial para Local Coverage Areas

## Direct Local Coverage Areas

Fuente:

```text
Input humano + GMB Crush
```

Motivo:

```text
El cliente aporta la dirección física.
GMB Crush define cómo usar zonas derivadas del NAP como señales GEO sin crear URLs por defecto.
```

Ejemplo:

```text
Almagro
Chamberí
```

## Candidate Local Coverage Areas

Fuente:

```text
GMB Crush + IA sin respaldo
```

Motivo:

```text
GMB Crush permite usar zonas, barrios y landmarks como señales GEO.
Pero la zona concreta fue propuesta en el ejemplo y debe validarse con input humano, datos de búsqueda o competidores.
```

Ejemplo:

```text
Salamanca
Retiro
Centro
Tetuán
Chamartín
Arganzuela
Moncloa
Prosperidad
```

---

# Hallazgos principales

```text
La arquitectura está respaldada por GMB Crush.
Los datos base del negocio vienen de Input humano.
Las zonas directas vienen de Input humano + GMB Crush.
Las zonas candidatas quedan como GMB Crush + IA sin respaldo.
Los servicios, topics, scores, horarios, Q&A, posts y trust signals requieren validación.
No hay todavía decisiones respaldadas por Datos de búsqueda.
No hay todavía decisiones respaldadas por Competidores.
```
