# Paso 3 — Matriz Base

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`03a-ejecucion-matriz-base.md`).

---

## Bloque 1 — Estructura de la matriz

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.01 | Se decide crear una matriz operativa para controlar las URLs | URL Matrix | GMB Crush | Sin matriz central, URLs y schema divergen entre páginas | no | §7 |
| 3.02 | Se decide que cada página tenga un ID único | HP, SO, GH, LBS, AC, GA | GMB Crush | Permite cruzar matrices sin ambigüedad operativa | no | §7 |
| 3.03 | Se decide incluir columnas de producción | URL, H1, Meta Title, Schema, Priority, Phase, Status | GMB Crush | 20 campos cubren producción, QA, schema y publicación | no | §7 |

## Bloque 2 — Homepage y páginas auxiliares

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.04 | Se decide incluir la Homepage en la matriz | HP-001 | GMB Crush | Homepage concentra señales de marca y entidad | no | §7 |
| 3.05 | Se decide que la Homepage use la raíz | / | GMB Crush | Raíz da jerarquía SEO máxima al ancla del cluster | no | §7 |
| 3.06 | Se decide incluir página de contacto como auxiliar | /contacto/ | GMB Crush | Contacto recibe link sitewide para conversión final | no | §7 |

## Bloque 3 — Service Overview Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.07 | Se decide crear Service Overview para Cerrajero urgente | /cerrajero/cerrajero-urgente/ | GMB Crush | URL `/categoria/servicio/` aísla pillar temático sin ciudad | ← 1.34 | §7 |
| 3.08 | Se decide crear Service Overview para Apertura de puertas | /cerrajero/apertura-puertas/ | GMB Crush | URL `/categoria/servicio/` aísla pillar temático sin ciudad | ← 1.35 | §7 |
| 3.09 | Se decide crear Service Overview para Cambio de cerraduras | /cerrajero/cambio-cerraduras/ | GMB Crush | URL `/categoria/servicio/` aísla pillar temático sin ciudad | ← 1.36 | §7 |
| 3.10 | Se decide crear Service Overview para Cambio de bombines | /cerrajero/cambio-bombines/ | GMB Crush | URL `/categoria/servicio/` aísla pillar temático sin ciudad | ← 1.37 | §7 |
| 3.11 | Se decide crear Service Overview para Instalación de cerraduras de seguridad | /cerrajero/instalacion-cerraduras-seguridad/ | GMB Crush | URL `/categoria/servicio/` aísla pillar temático sin ciudad | ← 1.38 | §7 |

## Bloque 4 — GeoHub y Location-Based Service Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.12 | Se decide crear el GeoHub principal de Madrid | /madrid/ | GMB Crush | URL `/ciudad/` agrupa toda la cobertura local del cluster | ← 1.20 | §7 |
| 3.13 | Se decide crear LBS de Cerrajero urgente en Madrid | /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | URL `/cat/ciudad/servicio/` es ancla local de conversión | ← 1.34 | §7 |
| 3.14 | Se decide crear LBS de Apertura de puertas en Madrid | /cerrajero/madrid/apertura-puertas/ | GMB Crush | URL `/cat/ciudad/servicio/` es ancla local de conversión | ← 1.35 | §7 |
| 3.15 | Se decide crear LBS de Cambio de cerraduras en Madrid | /cerrajero/madrid/cambio-cerraduras/ | GMB Crush | URL `/cat/ciudad/servicio/` es ancla local de conversión | ← 1.36 | §7 |
| 3.16 | Se decide crear LBS de Cambio de bombines en Madrid | /cerrajero/madrid/cambio-bombines/ | GMB Crush | URL `/cat/ciudad/servicio/` es ancla local de conversión | ← 1.37 | §7 |
| 3.17 | Se decide crear LBS de Instalación de cerraduras de seguridad en Madrid | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | GMB Crush | URL `/cat/ciudad/servicio/` es ancla local de conversión | ← 1.38 | §7 |

## Bloque 5 — Additional Category Page

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.18 | Se decide crear página de duplicado de llaves en Madrid | /cerrajero/madrid/duplicado-llaves/ | GMB Crush | AC da soporte web a categoría GBP sin servicio core | ← 1.18 | §7 |

## Bloque 6 — GeoArticles

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.19 | Se decide crear GeoArticle de coste de cerrajero urgente | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.20 | Se decide crear GeoArticle sobre no poder entrar en casa | /madrid/que-hacer-si-no-puedes-entrar-casa/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.21 | Se decide crear GeoArticle sobre tiempo de llegada | /madrid/cuanto-tarda-un-cerrajero/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.22 | Se decide crear GeoArticle sobre coste de apertura de puertas | /madrid/cuanto-cuesta-abrir-una-puerta/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.23 | Se decide crear GeoArticle sobre llaves dentro | /madrid/que-hacer-si-te-dejas-las-llaves-dentro/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.24 | Se decide crear GeoArticle sobre apertura sin romper cerradura | /madrid/apertura-de-puertas-sin-romper-cerradura/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.25 | Se decide crear GeoArticle sobre cuándo cambiar cerradura | /madrid/cuando-cambiar-la-cerradura-de-casa/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.26 | Se decide crear GeoArticle sobre cambio tras perder llaves | /madrid/cambio-de-cerradura-tras-perder-llaves/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.27 | Se decide crear GeoArticle sobre cerradura nueva o reparación | /madrid/cerradura-nueva-o-reparacion/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.28 | Se decide crear GeoArticle sobre cuándo cambiar bombín | /madrid/cuando-cambiar-el-bombin/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.29 | Se decide crear GeoArticle sobre bombín antibumping | /madrid/bombin-antibumping-madrid/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.30 | Se decide crear GeoArticle sobre cambio de bombín sin cambiar cerradura | /madrid/cambio-de-bombin-sin-cambiar-cerradura/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.31 | Se decide crear GeoArticle sobre cerraduras de seguridad para viviendas | /madrid/mejores-cerraduras-de-seguridad-para-viviendas/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.32 | Se decide crear GeoArticle sobre cerraduras de seguridad para comunidades | /madrid/cerraduras-de-seguridad-para-comunidades/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |
| 3.33 | Se decide crear GeoArticle sobre cerradura de seguridad en puerta blindada | /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/ | GMB Crush + Datos de búsqueda | Topic con volumen real captado por keyword research | no | §7 |

## Bloque 7 — Tratamiento de Local Coverage Areas

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 3.34 | Se decide que las Local Coverage Areas aparezcan como notas o campos de contenido | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | GMB Crush | LCA refuerza relevancia local sin diluir autoridad | ← 1.22–1.31 | §7 |
| 3.35 | Se decide que no haya filas URL para Local Coverage Areas | No /almagro/, no /chamberi/, no /salamanca/ | GMB Crush | URL por LCA dispersa autoridad y canibaliza la LBS | no | §7 |
