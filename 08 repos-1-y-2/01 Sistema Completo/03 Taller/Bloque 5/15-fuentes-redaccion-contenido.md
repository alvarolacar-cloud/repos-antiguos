# Paso 15 — Redacción de Contenido

Fase 2 de trazabilidad del sistema GMB Crush.

Fuentes permitidas:

```text
GMB Crush
Input humano
Decisión de diseño
IA sin respaldo
IA heredada (paso X.YY)
```

Orígenes del dato permitidos:

```text
Doctrina GMB Crush
Input humano
Competidores
Datos de búsqueda
Decisión de diseño
Heredado del paso X.YY
IA sin respaldo
```

---

## Bloque 1 — Reglas de calidad universal

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.01 · Paso-15 §7.1 Regla 1 | Se decide aplicar Regla 1: Hero y CTA con servicio + ciudad + resultado + diferenciador | GMB Crush | Doctrina GMB Crush | El framework define esta regla. Toda página debe abrir con servicio + ciudad en H1, beneficio + diferenciador en H2 y CTA claro de baja fricción. | Hero LBS: H1 "Cerrajero urgente en Madrid" · H2 "Apertura sin rotura en 30 minutos. Garantía 2 años" · CTA "Solicitar presupuesto" |
| 15.02 · Paso-15 §7.2 Regla 2 | Se decide aplicar Regla 2: Problema y Realidad del Servicio | GMB Crush | Doctrina GMB Crush | El framework define esta regla. El copy describe problemas reales, contexto real, proceso real y fricciones reales. No idealiza el servicio. | LBS Cerrajero urgente: problema = "te quedas fuera a las 3 AM con la cerradura partida"; proceso = 5 fases reales; fricción = "puede romperse el bombín si la cerradura está oxidada" |
| 15.03 · Paso-15 §7.3 Regla 3 | Se decide aplicar Regla 3: Datos, Precio y Opinión Experta | GMB Crush | Doctrina GMB Crush | El framework define esta regla. El copy incluye rangos de precio, factores que afectan, opinión profesional y comparativas con criterio. | "Apertura de puerta sin rotura: 60–120€ + IVA en horario diurno, +30% noche/festivos. Si la cerradura está bloqueada por óxido, el rango sube a 150–250€." |
| 15.04 · Paso-15 §7.4 Regla 4 | Se decide aplicar Regla 4: Contexto Local y Realismo | GMB Crush | Doctrina GMB Crush | El framework define esta regla. El copy cita ciudad, barrios, tipos de vivienda, casos reales. Nada abstracto ni genérico. | "En Almagro y Chamberí intervenimos con frecuencia en fincas de los años 30 con cerraduras de tubo originales. En Salamanca y Retiro predominan los bombines europeos en bloques de los 60–70." |

## Bloque 2 — Homepage

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.05 · Paso-15 §9.1 Estructura Homepage | Se decide la estructura de la Homepage en 6 secciones | GMB Crush | Doctrina GMB Crush | El framework define esta regla. Homepage = Hero + Servicios Core + Autoridad + Zonas + Prueba social + CTA. | 6 secciones: Hero, Servicios Core, Autoridad, Zonas, Prueba social, CTA |
| 15.06 · Paso-15 §9.1 Capa 1 Estructura Homepage | Se decide redactar el copy de cada sección de la Homepage | GMB Crush | IA sin respaldo | GMB Crush valida la estructura y las reglas de calidad. El copy concreto se genera en este paso y requiere validación con el cliente antes de producción. | Hero H1 "Cerrajeros Madrid 24h · Cerrajero en Madrid"; H2 "Servicio urgente 24h en Almagro y Chamberí"; CTA "Llamar ahora" |
| 15.07 · Paso-15 §9.2 Capa 2 Zonas Homepage | Se decide aplicar Main City y Direct LCAs a la Homepage | GMB Crush | Heredado del paso 1.20, 1.22–1.23 | El framework dicta usar Main City + Direct LCAs en Homepage. Valores heredados del Paso 1 (Madrid Input humano; Almagro/Chamberí IA). | Hero menciona Madrid; sección Zonas menciona Almagro, Chamberí, Salamanca, Retiro |
| 15.08 · Paso-15 §9.3 Capa 3 Argumentos Homepage | Se decide el argumento principal de cada sección de la Homepage | GMB Crush | IA sin respaldo | GMB Crush exige argumento por sección. El argumento concreto se genera en este paso y requiere validación con el cliente o competidores. | Hero: "respuesta en 30 min en zona Almagro/Chamberí"; Autoridad: "10+ años + técnicos cualificados"; Zonas: "proximidad real, no expansión vacía" |
| 15.09 · Paso-15 §9.4 Capa 4 Entidades Homepage | Se decide documentar las entidades reales de la Homepage | GMB Crush | IA sin respaldo | GMB Crush exige entidades reales por sección. Las entidades concretas (servicios, certificaciones, barrios, marcas) se listan en este paso. Servicios y Main City heredados del Paso 1. | Servicios: 5 core del paso 1; trust signals: paso 1.43–1.47; barrios: Almagro, Chamberí, Salamanca, Retiro |

## Bloque 3 — Service Overview Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.10 · Paso-15 §10.1 Estructura SO | Se decide la estructura de las Service Overview Pages en 7 secciones | GMB Crush | Doctrina GMB Crush | El framework define esta regla. SO = Hero + Problema/Solución + Proceso + Materiales + Dónde operamos + FAQs + CTA. | 7 secciones aplicadas a las 5 SO del cluster |
| 15.11 · Paso-15 §10.1 Capa 1 Estructura SO | Se decide redactar el copy de cada Service Overview | GMB Crush | IA sin respaldo | GMB Crush valida la estructura y las reglas de calidad. El copy concreto de cada SO se genera en este paso y requiere validación. Servicios heredados del paso 1.34–1.38. | SO Cerrajero urgente: H1 "Cerrajero urgente"; H2 "Apertura, urgencias y reparaciones en cualquier hora"; CTA "Ver cobertura en Madrid" |
| 15.12 · Paso-15 §10.2 Capa 2 Zonas SO | Se decide que la Service Overview no use Local Coverage Areas | GMB Crush | Doctrina GMB Crush | El framework define esta regla. La SO es no geolocalizada (Paso 6 §13). Solo menciona Main City como enlace a la LBS. | SO sin LCAs; sección "Dónde operamos" enlaza a /cerrajero/madrid/cerrajero-urgente/ |
| 15.13 · Paso-15 §10.3 Capa 3 Argumentos SO | Se decide el argumento principal de cada sección de la Service Overview | GMB Crush | IA sin respaldo | GMB Crush exige argumento por sección. El argumento concreto se genera en este paso y requiere validación con el cliente o competidores. | Hero: "por qué este servicio importa"; Proceso: "por qué se hace en 5 fases y no en 3" |
| 15.14 · Paso-15 §10.4 Capa 4 Entidades SO | Se decide documentar las entidades reales de la Service Overview | GMB Crush | IA sin respaldo | GMB Crush exige entidades reales. Marcas, normativa, certificaciones se listan en este paso. Servicio heredado del paso 1. | Servicio (paso 1.34); marcas de cerraduras (TESA, Lince, MCM); normativa CTE-DB-SUA |

## Bloque 4 — Location-Based Service Pages

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.15 · Paso-15 §11.1 Estructura LBS | Se decide la estructura de las LBS en 8 secciones | GMB Crush | Doctrina GMB Crush | El framework define esta regla. LBS = Hero Local + Contexto + Bloque de Zonas + Servicio en la ciudad + Argumentos/Confianza + Prueba local + FAQs Locales + CTA. | 8 secciones aplicadas a las 5 LBS del cluster |
| 15.16 · Paso-15 §11.1 Capa 1 Estructura LBS | Se decide redactar el copy de cada Location-Based Service Page | GMB Crush | IA sin respaldo | GMB Crush valida la estructura y las reglas de calidad. El copy concreto de cada LBS se genera en este paso y requiere validación. Servicios heredados del paso 1.34–1.38, Main City heredada del paso 1.20. | LBS Cerrajero urgente Madrid: H1 "Cerrajero urgente en Madrid"; H2 "Apertura sin rotura en 30 min · Garantía 2 años"; CTA "Solicitar presupuesto" |
| 15.17 · Paso-15 §11.2 Capa 2 Zonas LBS | Se decide aplicar Main City + Direct LCAs + Candidate LCAs validadas a las LBS | GMB Crush | Heredado del paso 1.20, 1.22–1.31 | El framework dicta usar Main City + Direct LCAs + Candidates validadas en LBS. Valores heredados del Paso 1. | LBS LBS-001: Madrid en Hero; Almagro/Chamberí en Bloque de Zonas con barrios; Salamanca/Retiro como contexto si pasan test GEO |
| 15.18 · Paso-15 §11.3 Capa 3 Argumentos LBS | Se decide el argumento principal de cada sección de la LBS | GMB Crush | IA sin respaldo | GMB Crush exige argumento por sección. El argumento concreto se genera en este paso y requiere validación con el cliente o competidores. | Contexto Local: "por qué Madrid tiene cerraduras antiguas en barrios históricos"; Servicio en la ciudad: "por qué la normativa CTE afecta el servicio en Madrid" |
| 15.19 · Paso-15 §11.4 Capa 4 Entidades LBS | Se decide documentar las entidades reales de la LBS | GMB Crush | IA sin respaldo | GMB Crush exige entidades reales. Servicios, barrios, normativa, marcas, casos se listan en este paso. Servicio heredado del paso 1.34, Main City del paso 1.20, LCAs del paso 1.22–1.31. | Servicio: Cerrajero urgente; barrios: Almagro/Chamberí; normativa: CTE-DB-SUA; marcas: TESA, Lince, MCM; caso: "instalación bombín antibumping en Chamberí" |

## Bloque 5 — Additional Category Page

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.20 · Paso-15 §12.1 Estructura AC | Se decide la estructura de la Additional Category Page en 6 secciones | GMB Crush | Doctrina GMB Crush | El framework define esta regla. AC = Hero + Sobre la categoría + Cobertura + Argumentos/Confianza + FAQs + CTA. | 6 secciones aplicadas a la AC de Duplicado de llaves |
| 15.21 · Paso-15 §12.1 Capa 1 Estructura AC | Se decide redactar el copy de la Additional Category Page | GMB Crush | IA sin respaldo | GMB Crush valida la estructura y las reglas de calidad. El copy concreto se genera en este paso y requiere validación. Categoría heredada del paso 1.18, Main City del paso 1.20. | AC Duplicado de llaves Madrid: H1 "Duplicado de llaves en Madrid"; H2 "Llaves de seguridad, antibumping y de coche · Mismo día"; CTA "Solicitar presupuesto" |
| 15.22 · Paso-15 §12.2 Capa 2 Zonas AC | Se decide aplicar Main City + Direct LCAs a la AC | GMB Crush | Heredado del paso 1.20, 1.22–1.23 | El framework dicta usar Main City + Direct LCAs en AC (cobertura ligera). Valores heredados del Paso 1. | AC menciona Madrid + Almagro/Chamberí como cobertura. Sin Candidate LCAs sin validar. |
| 15.23 · Paso-15 §12.3 Capa 3 Argumentos AC | Se decide el argumento principal de cada sección de la AC | GMB Crush | IA sin respaldo | GMB Crush exige argumento por sección. El argumento concreto se genera en este paso y requiere validación con el cliente o competidores. | Sobre la categoría: "por qué hay distintos tipos de llave"; Argumentos: "por qué confiar para una llave de coche con chip" |
| 15.24 · Paso-15 §12.4 Capa 4 Entidades AC | Se decide documentar las entidades reales de la AC | GMB Crush | IA sin respaldo | GMB Crush exige entidades reales. Tipos de llave, marcas, garantías se listan en este paso. Categoría heredada del paso 1.18. | Tipos: punto, gorja, bombín, transponder; marcas: Silca, JMA; garantía de copia 30 días |

## Bloque 6 — GeoHub

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.25 · Paso-15 §13.1 Estructura GeoHub | Se decide la estructura del GeoHub en 8 secciones | GMB Crush | Doctrina GMB Crush | El framework define esta regla. GeoHub = Hero Ciudad + Introducción + Listado servicios + AC + Cobertura + Contenido informativo + Enlaces GeoArticles + CTA suave. | 8 secciones aplicadas al GeoHub /madrid/ |
| 15.26 · Paso-15 §13.1 Capa 1 Estructura GeoHub | Se decide redactar el copy del GeoHub | GMB Crush | IA sin respaldo | GMB Crush valida la estructura y las reglas de calidad. El copy concreto se genera en este paso y requiere validación. Main City heredada del paso 1.20, servicios del paso 1.34–1.38. | GeoHub /madrid/: H1 "Cerrajeros en Madrid"; H2 "Cobertura en barrios y distritos"; secciones con enlaces a las 5 LBS y AC |
| 15.27 · Paso-15 §13.2 Capa 2 Zonas GeoHub | Se decide aplicar Main City + todas las LCAs (Direct + Candidate validadas) al GeoHub | GMB Crush | Heredado del paso 1.22–1.31 | El framework dicta que el GeoHub concentra el detalle geográfico de todas las LCAs. Valores heredados del Paso 1. | GeoHub menciona Madrid como ancla + Almagro/Chamberí (Direct) + Salamanca/Retiro/Centro/Tetuán/Chamartín/Arganzuela/Moncloa/Prosperidad (Candidates pendientes test GEO) |
| 15.28 · Paso-15 §13.3 Capa 3 Argumentos GeoHub | Se decide el argumento principal de cada sección del GeoHub | GMB Crush | IA sin respaldo | GMB Crush exige argumento por sección. El argumento concreto se genera en este paso y requiere validación con el cliente o competidores. | Introducción: "por qué Madrid tiene un parque de cerraduras tan diverso"; Cobertura: "por qué se cubren estas zonas y no otras (proximidad real)" |
| 15.29 · Paso-15 §13.4 Capa 4 Entidades GeoHub | Se decide documentar las entidades reales del GeoHub | GMB Crush | IA sin respaldo | GMB Crush exige entidades reales. Categoría GBP, Main City, servicios, barrios, normativa local se listan en este paso. Heredados del Paso 1. | Categoría: Cerrajero (paso 1.16); servicios: 5 core (paso 1.34–1.38); barrios: 10 LCAs (paso 1.22–1.31); normativa: CTE-DB-SUA, Ley de Propiedad Horizontal |

## Bloque 7 — GeoArticles

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.30 · Paso-15 §14.1 Estructura GeoArticle | Se decide la estructura de los GeoArticles en 6 secciones | GMB Crush | Doctrina GMB Crush | El framework define esta regla. GeoArticle = Hero Artículo + Introducción + Desarrollo principal + Bloques de apoyo + Transición final + CTA suave. | 6 secciones aplicadas a los 15 GeoArticles del cluster |
| 15.31 · Paso-15 §14.1 Capa 1 Estructura GeoArticle | Se decide redactar el copy de cada GeoArticle | GMB Crush | IA sin respaldo | GMB Crush valida la estructura y las reglas de calidad. El copy concreto de cada GeoArticle se genera en este paso y requiere validación con keyword research. Topics heredados del paso 3.19–3.33 (Datos de búsqueda). | GeoArticle GA-001 "/madrid/cuanto-cuesta-un-cerrajero-urgente/": H1 "¿Cuánto cuesta un cerrajero urgente en Madrid?"; desarrollo con rangos de precio reales del mercado local |
| 15.32 · Paso-15 §14.2 Capa 2 Zonas GeoArticle | Se decide aplicar Main City + LCAs como ejemplos locales en GeoArticles | GMB Crush | Heredado del paso 1.20, 1.22–1.31 | El framework dicta usar Main City en H1 y LCAs como ejemplos contextuales en el desarrollo. Valores heredados del Paso 1. | GA-001 cita Madrid en H1; en desarrollo cita "en Almagro la apertura tarda 20 min, en zonas como Tetuán o Moncloa puede subir a 40 min por tráfico" |
| 15.33 · Paso-15 §14.3 Capa 3 Argumentos GeoArticle | Se decide el argumento principal de cada sección del GeoArticle | GMB Crush | IA sin respaldo | GMB Crush exige argumento por sección. El argumento concreto se genera en este paso y requiere validación con keyword research. | Hero: "por qué esta pregunta es relevante"; Desarrollo: "por qué la respuesta es 60–250€ y no un precio fijo"; Transición: "por qué la LBS resuelve el problema completo" |
| 15.34 · Paso-15 §14.4 Capa 4 Entidades GeoArticle | Se decide documentar las entidades reales del GeoArticle | GMB Crush | IA sin respaldo | GMB Crush exige entidades reales. Datos numéricos, normativa, materiales, marcas, ciudades se listan en este paso. | GA-001: rangos 60–250€, IVA 21%, normativa CTE-DB-SUA, marcas TESA/Lince, barrios Almagro/Chamberí |
| 15.35 · Paso-15 §14.5 Reglas de puentes narrativos | Se decide aplicar la regla de los 3 puentes narrativos en cada GeoArticle | GMB Crush | Doctrina GMB Crush | El framework define esta regla. Cada GeoArticle tiene 3 puntos de transición a la LBS padre con anchors variados. | GA-001 enlaza 3 veces a /cerrajero/madrid/cerrajero-urgente/: inline "consulta nuestro servicio de cerrajero urgente en Madrid"; bloque "¿Necesitas un cerrajero urgente ahora?"; CTA "Solicitar presupuesto" |

## Bloque 8 — Clusters por Servicio

| ID · Ref. canónica | Decisión que se toma | Fuente para la decisión | Origen del dato | Funcionamiento de la fuente | Decisión en el ejemplo |
|---|---|---|---|---|---|
| 15.36 · Paso-15 §15.1 Definición de cluster | Se decide la composición del cluster por servicio core (1 SO + 1 LBS + 3 GeoArticles) | GMB Crush | Doctrina GMB Crush | El framework define esta regla. Cada servicio core tiene un cluster funcional de 5 piezas. | 5 clusters × 5 piezas = 25 páginas de cluster + Homepage + GeoHub + AC = 28 SEO base |
| 15.37 · Paso-15 §15.2 Flujo del cluster | Se decide el flujo Captación → Distribución → Conversión | GMB Crush | Doctrina GMB Crush | El framework define esta regla. GeoArticle capta, Service Overview o GeoHub distribuye, LBS convierte. | Cluster Cerrajero urgente: GA-001/002/003 → SO cerrajero-urgente → LBS Madrid cerrajero-urgente |
| 15.38 · Paso-15 §15.3 Validación del cluster | Se decide validar que cada servicio core tenga cluster completo antes de publicar | GMB Crush | Heredado del paso 1.34–1.38 | El framework dicta cluster completo por servicio. Servicios heredados del Paso 1 (Origen: Competidores). | 5 clusters validados: cerrajero urgente, apertura puertas, cambio cerraduras, cambio bombines, instalación cerraduras seguridad |
