# Paso 5 — Page Type Rules

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

## Bloque 1 — Homepage

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.01 · Paso-05 §7 Homepage | Se decide que la Homepage sea Root Entity Anchor | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La Homepage es el ancla raíz de la entidad. | / |
| 5.02 · Paso-05 §7 Homepage | Se decide que la Homepage ancle marca, servicio principal y ciudad | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El H1 sigue el patrón Brand + Primary Service + Main City. | Cerrajeros Madrid 24h + Cerrajero + Madrid |
| 5.03 · Paso-05 §7 Homepage | Se decide que la Homepage incluya servicios core | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. La Homepage muestra los servicios principales del negocio. | 5 servicios principales |
| 5.04 · Paso-05 §7 Homepage | Se decide que la Homepage incluya NAP y CTA | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. NAP visible y CTA claro son obligatorios en Homepage. | NAP + Llamar ahora |

## Bloque 2 — Service Overview Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.05 · Paso-05 §8 Service Overview | Se decide que las Service Overview Pages sean no geolocalizadas | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. SO son pillars temáticos sin ciudad. | /cerrajero/[service]/ |
| 5.06 · Paso-05 §8 Service Overview | Se decide que Cerrajero urgente tenga Service Overview Page | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 SO por servicio" es GMB Crush. | /cerrajero/cerrajero-urgente/ |
| 5.07 · Paso-05 §8 Service Overview | Se decide que Apertura de puertas tenga Service Overview Page | IA heredada (paso 1.35) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 SO por servicio" es GMB Crush. | /cerrajero/apertura-puertas/ |
| 5.08 · Paso-05 §8 Service Overview | Se decide que Cambio de cerraduras tenga Service Overview Page | IA heredada (paso 1.36) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 SO por servicio" es GMB Crush. | /cerrajero/cambio-cerraduras/ |
| 5.09 · Paso-05 §8 Service Overview | Se decide que Cambio de bombines tenga Service Overview Page | IA heredada (paso 1.37) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 SO por servicio" es GMB Crush. | /cerrajero/cambio-bombines/ |
| 5.10 · Paso-05 §8 Service Overview | Se decide que Instalación de cerraduras de seguridad tenga Service Overview Page | IA heredada (paso 1.38) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "1 SO por servicio" es GMB Crush. | /cerrajero/instalacion-cerraduras-seguridad/ |

## Bloque 3 — Location-Based Service Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.11 · Paso-05 §9 LBS | Se decide que las LBS sean convertidores locales | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. LBS = Main City Converter para conversión local. | /cerrajero/madrid/[service]/ |
| 5.12 · Paso-05 §9 LBS | Se decide que Cerrajero urgente en Madrid sea LBS canónica | IA heredada (paso 1.34) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La estructura LBS canónica es GMB Crush. | /cerrajero/madrid/cerrajero-urgente/ |
| 5.13 · Paso-05 §9 LBS | Se decide que las LBS incluyan servicio + ciudad en H1 y metadata | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El H1 LBS sigue el patrón [Service] + Madrid. | [Service] + Madrid |

## Bloque 4 — Additional Category, GeoHub y GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.14 · Paso-05 §10 Additional Category | Se decide que Duplicado de llaves sea Additional Category Page | IA heredada (paso 1.18) | El valor se hereda de una decisión IA sin respaldo en el paso indicado. La regla "AC para categoría adicional efectiva" es GMB Crush. | /cerrajero/madrid/duplicado-llaves/ |
| 5.15 · Paso-05 §11 GeoHub | Se decide que `/madrid/` sea GeoHub | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. GeoHub = Main City Silo Container. | GeoHub de Madrid |
| 5.16 · Paso-05 §12 GeoArticle | Se decide que GeoArticles sean boosters semánticos, no landings | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. GeoArticle = Semantic Booster, no convierte. | 15 GeoArticles |
| 5.17 · Paso-05 §12 GeoArticle | Se decide que GeoArticles enlacen a su LBS y GeoHub | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. Cada GeoArticle apoya un LBS específico. | GeoArticle → LBS + /madrid/ |

## Bloque 5 — Schema

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|
| 5.18 · Paso-05 §19 Schema | Se decide asignar schema por tipo de página | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. El mapa schema por page type es canónico. | Organization, WebSite, Service, LocalBusiness, CollectionPage, Article |
| 5.19 · Paso-05 §19 Schema | Se decide no usar `sameAs` de GBP hasta que exista el GBP | GMB Crush | El framework define esta regla. Se aplica igual en todos los proyectos. No inventar GBP URL ni sameAs antes del Paso 14. | N/A hasta Paso 14 |
