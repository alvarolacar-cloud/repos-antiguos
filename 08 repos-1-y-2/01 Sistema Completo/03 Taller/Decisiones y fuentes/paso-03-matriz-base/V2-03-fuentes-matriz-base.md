# Paso 3 — Matriz Base

Fase 2 de trazabilidad del sistema GMB Crush.

Fuentes permitidas:

```text
GMB Crush
Input humano
Input humano + GMB Crush
Datos de búsqueda
Competidores
IA sin respaldo
GMB Crush + IA sin respaldo
Input humano + IA sin respaldo
IA heredada (paso X.YY)
Decisión de diseño
```

---

## Bloque 1 — Estructura de la matriz

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.01 · Paso-03 §7 URL Matrix | Se decide crear una matriz operativa para controlar las URLs | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La URL Matrix es la fuente de verdad de la arquitectura. | URL Matrix |
| 3.02 · Paso-03 §7 URL Matrix | Se decide que cada página tenga un ID único | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Los IDs canónicos son HP, SO, GH, LBS, AC, GA. | HP, SO, GH, LBS, AC, GA |
| 3.03 · Paso-03 §7 URL Matrix | Se decide incluir columnas de producción | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las 20 columnas canónicas incluyen URL, H1, Meta Title, Schema, Priority, Phase, Status. | URL, H1, Meta Title, Schema, Priority, Phase, Status |

## Bloque 2 — Homepage y páginas auxiliares

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.04 · Paso-03 §7 URL Matrix | Se decide incluir la Homepage en la matriz | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | HP-001 |
| 3.05 · Paso-03 §7 URL Matrix | Se decide que la Homepage use la raíz | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. | / |
| 3.06 · Paso-03 §7 URL Matrix | Se decide incluir página de contacto como auxiliar | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La página de contacto es auxiliar, fuera del inventario SEO base. | /contacto/ |

## Bloque 3 — Service Overview Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.07 · Paso-03 §7 URL Matrix | Se decide crear Service Overview para Cerrajero urgente | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/cerrajero-urgente/ |
| 3.08 · Paso-03 §7 URL Matrix | Se decide crear Service Overview para Apertura de puertas | IA heredada (paso 1.35) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/apertura-puertas/ |
| 3.09 · Paso-03 §7 URL Matrix | Se decide crear Service Overview para Cambio de cerraduras | IA heredada (paso 1.36) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/cambio-cerraduras/ |
| 3.10 · Paso-03 §7 URL Matrix | Se decide crear Service Overview para Cambio de bombines | IA heredada (paso 1.37) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/cambio-bombines/ |
| 3.11 · Paso-03 §7 URL Matrix | Se decide crear Service Overview para Instalación de cerraduras de seguridad | IA heredada (paso 1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/instalacion-cerraduras-seguridad/ |

## Bloque 4 — GeoHub y Location-Based Service Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.12 · Paso-03 §7 URL Matrix | Se decide crear el GeoHub principal de Madrid | Input humano + GMB Crush | El cliente aporta la Main City (heredada del paso 1.20) y GMB Crush define el patrón /[city]/ para el GeoHub. | /madrid/ |
| 3.13 · Paso-03 §7 URL Matrix | Se decide crear LBS de Cerrajero urgente en Madrid | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/cerrajero-urgente/ |
| 3.14 · Paso-03 §7 URL Matrix | Se decide crear LBS de Apertura de puertas en Madrid | IA heredada (paso 1.35) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/apertura-puertas/ |
| 3.15 · Paso-03 §7 URL Matrix | Se decide crear LBS de Cambio de cerraduras en Madrid | IA heredada (paso 1.36) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/cambio-cerraduras/ |
| 3.16 · Paso-03 §7 URL Matrix | Se decide crear LBS de Cambio de bombines en Madrid | IA heredada (paso 1.37) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/cambio-bombines/ |
| 3.17 · Paso-03 §7 URL Matrix | Se decide crear LBS de Instalación de cerraduras de seguridad en Madrid | IA heredada (paso 1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/instalacion-cerraduras-seguridad/ |

## Bloque 5 — Additional Category Page

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.18 · Paso-03 §7 URL Matrix | Se decide crear página de duplicado de llaves en Madrid | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. El patrón URL es GMB Crush. | /cerrajero/madrid/duplicado-llaves/ |

## Bloque 6 — GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.19 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle de coste de cerrajero urgente | GMB Crush + IA sin respaldo | GMB Crush valida la estructura (15 GeoArticles para Madrid). El topic concreto se generó como IA en este paso y requiere keyword research antes de producción. | /madrid/cuanto-cuesta-un-cerrajero-urgente/ |
| 3.20 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre no poder entrar en casa | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/que-hacer-si-no-puedes-entrar-casa/ |
| 3.21 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre tiempo de llegada | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cuanto-tarda-un-cerrajero/ |
| 3.22 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre coste de apertura de puertas | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cuanto-cuesta-abrir-una-puerta/ |
| 3.23 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre llaves dentro | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/que-hacer-si-te-dejas-las-llaves-dentro/ |
| 3.24 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre apertura sin romper cerradura | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/apertura-de-puertas-sin-romper-cerradura/ |
| 3.25 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cuándo cambiar cerradura | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cuando-cambiar-la-cerradura-de-casa/ |
| 3.26 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cambio tras perder llaves | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cambio-de-cerradura-tras-perder-llaves/ |
| 3.27 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cerradura nueva o reparación | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cerradura-nueva-o-reparacion/ |
| 3.28 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cuándo cambiar bombín | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cuando-cambiar-el-bombin/ |
| 3.29 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre bombín antibumping | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/bombin-antibumping-madrid/ |
| 3.30 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cambio de bombín sin cambiar cerradura | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cambio-de-bombin-sin-cambiar-cerradura/ |
| 3.31 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cerraduras de seguridad para viviendas | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/mejores-cerraduras-de-seguridad-para-viviendas/ |
| 3.32 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cerraduras de seguridad para comunidades | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/cerraduras-de-seguridad-para-comunidades/ |
| 3.33 · Paso-03 §7 URL Matrix | Se decide crear GeoArticle sobre cerradura de seguridad en puerta blindada | GMB Crush + IA sin respaldo | GMB Crush valida la estructura. El topic concreto se generó como IA en este paso y requiere keyword research. | /madrid/instalar-cerradura-de-seguridad-en-puerta-blindada/ |

## Bloque 7 — Tratamiento de Local Coverage Areas

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 3.34 · Paso-03 §7 URL Matrix | Se decide que las Local Coverage Areas aparezcan como notas o campos de contenido | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las LCA se usan como señales GEO en contenido. | Almagro, Chamberí, Salamanca, Retiro, Centro, Tetuán, Chamartín, Arganzuela, Moncloa, Prosperidad |
| 3.35 · Paso-03 §7 URL Matrix | Se decide que no haya filas URL para Local Coverage Areas | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Las LCA no generan URLs por defecto. | No /almagro/, no /chamberi/, no /salamanca/ |
