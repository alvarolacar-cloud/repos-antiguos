# Paso 3 — Matriz Base

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

## Bloque 1 — Estructura de la matriz

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.01 | Se decide crear una matriz operativa para controlar las URLs | URL Matrix | Sin matriz central, URLs y schema divergen entre páginas | GMB Crush | Sí | no |  Paso-03 §7; Paso-03 §15 |
| 3.02 | Se decide que cada página tenga un ID único | HP, SO, GH, LBS, AC, GA | Permite cruzar matrices sin ambigüedad operativa | GMB Crush | Sí | no |  Paso-03 §9; Paso-03 §7 |
| 3.03 | Se decide incluir columnas de producción | URL, H1, Meta Title, Schema, Priority, Phase, Status | 20 campos cubren producción, QA, schema y publicación | GMB Crush | Sí | no |  Paso-03 §15; Paso-03 §7 |

## Bloque 2 — Homepage y páginas auxiliares

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.04 | Se decide incluir la Homepage en la matriz | HP-001 | Homepage concentra señales de marca y entidad | GMB Crush | Sí | no |  Paso-03 §16; Paso-05 §7 |
| 3.05 | Se decide que la Homepage use la raíz | / | Raíz da jerarquía SEO máxima al ancla del cluster | GMB Crush | Sí | no |  Paso-03 §16; Paso-04 §9 |
| 3.06 | Se decide incluir página de contacto como auxiliar | /contacto/ | Contacto recibe link sitewide para conversión final | GMB Crush | Sí | no |  Paso-03 §16; Paso-02 §16 |

## Bloque 3 — Service Overview Pages

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.07 | Se decide crear Service Overview para Cerrajero urgente | /cerrajero/cerrajero-urgente/ | URL `/categoria/servicio/` aísla pillar temático sin ciudad | GMB Crush | Sí | ← 1.34 |  Paso-03 §16; Paso-05 §8; Paso-04 §10 |
| 3.08 | Se decide crear Service Overview para Apertura de puertas | /cerrajero/apertura-puertas/ | URL `/categoria/servicio/` aísla pillar temático sin ciudad | GMB Crush | Sí | ← 1.35 |  Paso-03 §16; Paso-05 §8; Paso-04 §10 |
| 3.09 | Se decide crear Service Overview para Cambio de cerraduras | /cerrajero/cambio-cerraduras/ | URL `/categoria/servicio/` aísla pillar temático sin ciudad | GMB Crush | Sí | ← 1.36 |  Paso-03 §16; Paso-05 §8; Paso-04 §10 |
| 3.10 | Se decide crear Service Overview para Cambio de bombines | /cerrajero/cambio-bombines/ | URL `/categoria/servicio/` aísla pillar temático sin ciudad | GMB Crush | Sí | ← 1.37 |  Paso-03 §16; Paso-05 §8; Paso-04 §10 |
| 3.11 | Se decide crear Service Overview para Instalación de cerraduras de seguridad | /cerrajero/instalacion-cerraduras-seguridad/ | URL `/categoria/servicio/` aísla pillar temático sin ciudad | GMB Crush | Sí | ← 1.38 |  Paso-03 §16; Paso-05 §8; Paso-04 §10 |

## Bloque 4 — GeoHub y Location-Based Service Pages

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.12 | Se decide crear el GeoHub principal de Madrid | /madrid/ | URL `/ciudad/` agrupa toda la cobertura local del cluster | GMB Crush | Sí | ← 1.20 |  Paso-03 §16; Paso-05 §11; Paso-04 §11 |
| 3.13 | Se decide crear LBS de Cerrajero urgente en Madrid | /cerrajero/madrid/cerrajero-urgente/ | URL `/cat/ciudad/servicio/` es ancla local de conversión | GMB Crush | Sí | ← 1.34 |  Paso-03 §16; Paso-05 §9; Paso-04 §12 |
| 3.14 | Se decide crear LBS de Apertura de puertas en Madrid | /cerrajero/madrid/apertura-puertas/ | URL `/cat/ciudad/servicio/` es ancla local de conversión | GMB Crush | Sí | ← 1.35 |  Paso-03 §16; Paso-05 §9; Paso-04 §12 |
| 3.15 | Se decide crear LBS de Cambio de cerraduras en Madrid | /cerrajero/madrid/cambio-cerraduras/ | URL `/cat/ciudad/servicio/` es ancla local de conversión | GMB Crush | Sí | ← 1.36 |  Paso-03 §16; Paso-05 §9; Paso-04 §12 |
| 3.16 | Se decide crear LBS de Cambio de bombines en Madrid | /cerrajero/madrid/cambio-bombines/ | URL `/cat/ciudad/servicio/` es ancla local de conversión | GMB Crush | Sí | ← 1.37 |  Paso-03 §16; Paso-05 §9; Paso-04 §12 |
| 3.17 | Se decide crear LBS de Instalación de cerraduras de seguridad en Madrid | /cerrajero/madrid/instalacion-cerraduras-seguridad/ | URL `/cat/ciudad/servicio/` es ancla local de conversión | GMB Crush | Sí | ← 1.38 |  Paso-03 §16; Paso-05 §9; Paso-04 §12 |

## Bloque 5 — Additional Category Page

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.18 | Se decide crear página de duplicado de llaves en Madrid | /cerrajero/madrid/duplicado-llaves/ | AC da soporte web a categoría GBP sin servicio core | GMB Crush | Sí | ← 1.18 |  Paso-03 §16; Paso-05 §10; Paso-04 §13 |

## Bloque 6 — GeoArticles

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.19 | Se decide crear GeoArticle de coste de cerrajero urgente | /madrid/cuanto-cuesta-un-cerrajero-urgente/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.20 | Se decide crear GeoArticle sobre no poder entrar en casa | /madrid/que-hacer-si-no-puedes-entrar-casa/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.21 | Se decide crear GeoArticle sobre tiempo de llegada | /madrid/cuanto-tarda-un-cerrajero/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.22 | Se decide crear GeoArticle sobre coste de apertura de puertas | /madrid/cuanto-cuesta-abrir-una-puerta/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.23 | Se decide crear GeoArticle sobre llaves dentro | /madrid/que-hacer-si-te-dejas-las-llaves-dentro/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.24 | Se decide crear GeoArticle sobre apertura sin romper cerradura | /madrid/apertura-de-puertas-sin-romper-cerradura/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.25 | Se decide crear GeoArticle sobre cuándo cambiar cerradura | /madrid/cuando-cambiar-la-cerradura-de-casa/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.26 | Se decide crear GeoArticle sobre cambio tras perder llaves | /madrid/cambio-de-cerradura-tras-perder-llaves/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.27 | Se decide crear GeoArticle sobre cerradura nueva o reparación | /madrid/cerradura-nueva-o-reparacion/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.28 | Se decide crear GeoArticle sobre cuándo cambiar bombín | /madrid/cuando-cambiar-el-bombin/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.29 | Se decide crear GeoArticle sobre bombín antibumping | /madrid/bombin-antibumping-madrid/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.30 | Se decide crear GeoArticle sobre cambio de bombín sin cambiar cerradura | /madrid/cambio-de-bombin-sin-cambiar-cerradura/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.31 | Se decide crear GeoArticle sobre cerraduras de seguridad para viviendas | /madrid/mejores-cerraduras-de-seguridad-para-viviendas/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.32 | Se decide crear GeoArticle sobre cerraduras de seguridad para comunidades | /madrid/cerraduras-de-seguridad-para-comunidades/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |
| 3.33 | Se decide crear GeoArticle sobre cerradura de seguridad en puerta blindada | /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/ | Topic con volumen real captado por keyword research | GMB Crush + Datos de búsqueda | No | no |  Paso-03 §31; Paso-02 §11 |

## Bloque 7 — Tratamiento de Local Coverage Areas

| ID | Decisión | Ejemplo | Por qué esta decisión | Fuente de la decisión | Manual resuelve | Viene de una decisión anterior | Referencia exacta en el manual |
|---|---|---|---|---|---|---|---|
| 3.34 | Se decide que las Local Coverage Areas aparezcan como notas o campos de contenido | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad | LCA refuerza relevancia local sin diluir autoridad | GMB Crush | Sí | ← 1.22–1.31 |  Paso-03 §21; Paso-03 §8; Paso-06 §10 |
| 3.35 | Se decide que no haya filas URL para Local Coverage Areas | No /almagro/, no /chamberi/, no /salamanca/ | URL por LCA dispersa autoridad y canibaliza la LBS | GMB Crush | Sí | no |  Paso-03 §8; Paso-04 §15; Paso-06 §31 |
