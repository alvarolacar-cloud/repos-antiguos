# Paso 15 — Redacción de Contenido

Fase 2 de trazabilidad del sistema GMB Crush — modelo final con `Qué dicta la fuente`.

---

## Convención de columnas

- **ID** — identificador único de la fila.
- **Decisión** — qué se decide.
- **Ejemplo** — valor concreto en el ejemplo Cerrajeros Madrid 24h.
- **Fuente** — quién dicta la decisión. Combinaciones con `+` cuando la doctrina dirige a otra fuente.
- **Qué dicta la fuente** — POR QUÉ / CÓMO / PRINCIPIO. 6-12 palabras. NO repetir Decisión + Ejemplo.
- **Dato en cascada** — `no` o `← X.YY`.
- **Funcionamiento** — referencia canónica `§X` del documento de ejecución (`15a-ejecucion-redaccion-contenido.md`).

---

## Bloque 1 — Reglas de calidad universal

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.01 | Se decide aplicar Regla 1: Hero y CTA con servicio + ciudad + resultado + diferenciador | Hero LBS: H1 "Cerrajero urgente en Madrid" · H2 "Apertura sin rotura en 30 minutos. Garantía 2 años" · CTA "Solicitar presupuesto" | GMB Crush | Hero sin servicio + ciudad pierde la query SERP local | no | §7.1 |
| 15.02 | Se decide aplicar Regla 2: Problema y Realidad del Servicio | LBS Cerrajero urgente: problema = "te quedas fuera a las 3 AM con la cerradura partida"; proceso = 5 fases reales; fricción = "puede romperse el bombín si la cerradura está oxidada" | GMB Crush | Copy idealizado pierde credibilidad y conversión local | no | §7.2 |
| 15.03 | Se decide aplicar Regla 3: Datos, Precio y Opinión Experta | "Apertura de puerta sin rotura: 60–120€ + IVA en horario diurno, +30% noche/festivos. Si la cerradura está bloqueada por óxido, el rango sube a 150–250€." | GMB Crush | Sin datos concretos, el copy parece IA y no convence | no | §7.3 |
| 15.04 | Se decide aplicar Regla 4: Contexto Local y Realismo | "En Almagro y Chamberí intervenimos con frecuencia en fincas de los años 30 con cerraduras de tubo originales. En Salamanca y Retiro predominan los bombines europeos en bloques de los 60–70." | GMB Crush | Sin contexto local, el copy es intercambiable con cualquier ciudad | no | §7.4 |

## Bloque 2 — Homepage

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.05 | Se decide la estructura de la Homepage en 6 secciones | Hero, Servicios Core, Autoridad, Zonas, Prueba social, CTA | GMB Crush | 6 bloques cubren marca, oferta, autoridad, cobertura y conversión | no | §9.1 |
| 15.06 | Se decide redactar el copy de cada sección de la Homepage | Hero H1 "Cerrajeros Madrid 24h · Cerrajero en Madrid"; H2 "Servicio urgente 24h en Almagro y Chamberí"; CTA "Llamar ahora" | GMB Crush + IA sin respaldo | Copy generado debe validarse antes de publicar para no idealizar | no | §9.1 |
| 15.07 | Se decide aplicar Main City y Direct LCAs a la Homepage | Hero menciona Madrid; sección Zonas menciona Almagro, Chamberí, Salamanca, Retiro | GMB Crush | Homepage sin ciudad ni barrios pierde señal local agregada | ← 1.20, 1.22, 1.23 | §9.2 |
| 15.08 | Se decide el argumento principal de cada sección de la Homepage | Hero: "respuesta en 30 min en zona Almagro/Chamberí"; Autoridad: "10+ años + técnicos cualificados"; Zonas: "proximidad real, no expansión vacía" | GMB Crush + IA sin respaldo | Sección sin argumento se vuelve descriptiva y no persuade | no | §9.3 |
| 15.09 | Se decide documentar las entidades reales de la Homepage | Servicios: 5 core del paso 1; trust signals: paso 1.43–1.47; barrios: Almagro, Chamberí, Salamanca, Retiro | GMB Crush | Entidades reales construyen E-E-A-T verificable | ← 1.34–1.38, 1.43–1.47, 1.22, 1.23 | §9.4 |

## Bloque 3 — Service Overview Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.10 | Se decide la estructura de las Service Overview Pages en 7 secciones | Hero, Problema/Solución, Proceso, Materiales, Dónde operamos, FAQs, CTA | GMB Crush | 7 bloques cubren intención temática completa sin diluir conversión | no | §10.1 |
| 15.11 | Se decide redactar el copy de cada Service Overview | SO Cerrajero urgente: H1 "Cerrajero urgente"; H2 "Apertura, urgencias y reparaciones en cualquier hora"; CTA "Ver cobertura en Madrid" | GMB Crush + IA sin respaldo | Copy generado debe validarse antes de publicar para no idealizar | ← 1.34–1.38 | §10.1 |
| 15.12 | Se decide que la Service Overview no use Local Coverage Areas | SO sin LCAs; sección "Dónde operamos" enlaza a /cerrajero/madrid/cerrajero-urgente/ | GMB Crush | LCA en SO contamina su intención temática nacional | no | §10.2 |
| 15.13 | Se decide el argumento principal de cada sección de la Service Overview | Hero: "por qué este servicio importa"; Proceso: "por qué se hace en 5 fases y no en 3" | GMB Crush + IA sin respaldo | Sección sin argumento se vuelve descriptiva y no persuade | no | §10.3 |
| 15.14 | Se decide documentar las entidades reales de la Service Overview | Servicio (paso 1.34); marcas de cerraduras (TESA, Lince, MCM); normativa CTE-DB-SUA | GMB Crush + IA sin respaldo | Marcas y normativa concretas activan E-E-A-T técnico | ← 1.34 | §10.4 |

## Bloque 4 — Location-Based Service Pages

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.15 | Se decide la estructura de las LBS en 8 secciones | Hero Local, Contexto, Bloque de Zonas, Servicio en la ciudad, Argumentos/Confianza, Prueba local, FAQs Locales, CTA | GMB Crush | 8 bloques aterrizan servicio + ciudad y maximizan conversión | no | §11.1 |
| 15.16 | Se decide redactar el copy de cada Location-Based Service Page | LBS Cerrajero urgente Madrid: H1 "Cerrajero urgente en Madrid"; H2 "Apertura sin rotura en 30 min · Garantía 2 años"; CTA "Solicitar presupuesto" | GMB Crush + IA sin respaldo | Copy generado debe validarse antes de publicar para no idealizar | ← 1.34–1.38, 1.20 | §11.1 |
| 15.17 | Se decide aplicar Main City + Direct LCAs + Candidate LCAs validadas a las LBS | LBS LBS-001: Madrid en Hero; Almagro/Chamberí en Bloque de Zonas con barrios; Salamanca/Retiro como contexto si pasan test GEO | GMB Crush | LBS es el lugar natural donde el barrio refuerza relevancia | ← 1.20, 1.22–1.31 | §11.2 |
| 15.18 | Se decide el argumento principal de cada sección de la LBS | Contexto Local: "por qué Madrid tiene cerraduras antiguas en barrios históricos"; Servicio en la ciudad: "por qué la normativa CTE afecta el servicio en Madrid" | GMB Crush + IA sin respaldo | Sin argumento local, la LBS se vuelve genérica para cualquier ciudad | no | §11.3 |
| 15.19 | Se decide documentar las entidades reales de la LBS | Servicio: Cerrajero urgente; barrios: Almagro/Chamberí; normativa: CTE-DB-SUA; marcas: TESA, Lince, MCM; caso: "instalación bombín antibumping en Chamberí" | GMB Crush + IA sin respaldo | Entidades locales reales activan E-E-A-T verificable | ← 1.34, 1.20, 1.22–1.31 | §11.4 |

## Bloque 5 — Additional Category Page

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.20 | Se decide la estructura de la Additional Category Page en 6 secciones | Hero, Sobre la categoría, Cobertura, Argumentos/Confianza, FAQs, CTA | GMB Crush | 6 bloques bastan para soportar una categoría sin servicio core | no | §12.1 |
| 15.21 | Se decide redactar el copy de la Additional Category Page | AC Duplicado de llaves Madrid: H1 "Duplicado de llaves en Madrid"; H2 "Llaves de seguridad, antibumping y de coche · Mismo día"; CTA "Solicitar presupuesto" | GMB Crush + IA sin respaldo | Copy generado debe validarse antes de publicar para no idealizar | ← 1.18, 1.20 | §12.1 |
| 15.22 | Se decide aplicar Main City + Direct LCAs a la AC | AC menciona Madrid + Almagro/Chamberí como cobertura. Sin Candidate LCAs sin validar. | GMB Crush | LCA da contexto local sin convertir AC en cluster geográfico | ← 1.20, 1.22, 1.23 | §12.2 |
| 15.23 | Se decide el argumento principal de cada sección de la AC | Sobre la categoría: "por qué hay distintos tipos de llave"; Argumentos: "por qué confiar para una llave de coche con chip" | GMB Crush + IA sin respaldo | Sección sin argumento se vuelve descriptiva y no persuade | no | §12.3 |
| 15.24 | Se decide documentar las entidades reales de la AC | Tipos: punto, gorja, bombín, transponder; marcas: Silca, JMA; garantía de copia 30 días | GMB Crush + IA sin respaldo | Entidades concretas activan E-E-A-T técnico de la categoría | ← 1.18 | §12.4 |

## Bloque 6 — GeoHub

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.25 | Se decide la estructura del GeoHub en 8 secciones | Hero Ciudad, Introducción, Listado servicios, AC, Cobertura, Contenido informativo, Enlaces GeoArticles, CTA suave | GMB Crush | 8 bloques cubren ciudad como entidad y distribuidor del cluster | no | §13.1 |
| 15.26 | Se decide redactar el copy del GeoHub | GeoHub /madrid/: H1 "Cerrajeros en Madrid"; H2 "Cobertura en barrios y distritos"; secciones con enlaces a las 5 LBS y AC | GMB Crush + IA sin respaldo | Copy generado debe validarse antes de publicar para no idealizar | ← 1.20, 1.34–1.38 | §13.1 |
| 15.27 | Se decide aplicar Main City + todas las LCAs (Direct + Candidate validadas) al GeoHub | GeoHub menciona Madrid como ancla + Almagro/Chamberí (Direct) + Salamanca/Retiro/Centro/Tetuán/Chamartín/Arganzuela/Moncloa/Prosperidad (Candidates pendientes test GEO) | GMB Crush | GeoHub es el contenedor canónico del detalle geográfico | ← 1.22–1.31 | §13.2 |
| 15.28 | Se decide el argumento principal de cada sección del GeoHub | Introducción: "por qué Madrid tiene un parque de cerraduras tan diverso"; Cobertura: "por qué se cubren estas zonas y no otras (proximidad real)" | GMB Crush + IA sin respaldo | Sin argumento local, el GeoHub es directorio sin valor añadido | no | §13.3 |
| 15.29 | Se decide documentar las entidades reales del GeoHub | Categoría: Cerrajero (paso 1.16); servicios: 5 core (paso 1.34–1.38); barrios: 10 LCAs (paso 1.22–1.31); normativa: CTE-DB-SUA, Ley de Propiedad Horizontal | GMB Crush + IA sin respaldo | Entidades locales reales activan E-E-A-T verificable | ← 1.16, 1.34–1.38, 1.22–1.31 | §13.4 |

## Bloque 7 — GeoArticles

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.30 | Se decide la estructura de los GeoArticles en 6 secciones | Hero Artículo, Introducción, Desarrollo principal, Bloques de apoyo, Transición final, CTA suave | GMB Crush | 6 bloques cubren intención informativa y dirigen a la LBS | no | §14.1 |
| 15.31 | Se decide redactar el copy de cada GeoArticle | GA-001 "/madrid/cuanto-cuesta-un-cerrajero-urgente/": H1 "¿Cuánto cuesta un cerrajero urgente en Madrid?"; desarrollo con rangos de precio reales del mercado local | GMB Crush + IA sin respaldo | Copy generado debe validarse con keyword research real | ← 3.19–3.33 | §14.1 |
| 15.32 | Se decide aplicar Main City + LCAs como ejemplos locales en GeoArticles | GA-001 cita Madrid en H1; en desarrollo cita "en Almagro la apertura tarda 20 min, en zonas como Tetuán o Moncloa puede subir a 40 min por tráfico" | GMB Crush | Ejemplos locales aterrizan el topic y diferencian del genérico | ← 1.20, 1.22–1.31 | §14.2 |
| 15.33 | Se decide el argumento principal de cada sección del GeoArticle | Hero: "por qué esta pregunta es relevante"; Desarrollo: "por qué la respuesta es 60–250€ y no un precio fijo"; Transición: "por qué la LBS resuelve el problema completo" | GMB Crush + IA sin respaldo | GeoArticle sin argumento es directorio de respuestas plano | no | §14.3 |
| 15.34 | Se decide documentar las entidades reales del GeoArticle | GA-001: rangos 60–250€, IVA 21%, normativa CTE-DB-SUA, marcas TESA/Lince, barrios Almagro/Chamberí | GMB Crush + IA sin respaldo | Datos concretos activan E-E-A-T y diferencian de IA genérica | no | §14.4 |
| 15.35 | Se decide aplicar la regla de los 3 puentes narrativos en cada GeoArticle | GA-001 enlaza 3 veces a /cerrajero/madrid/cerrajero-urgente/: inline "consulta nuestro servicio…"; bloque "¿Necesitas un cerrajero urgente ahora?"; CTA "Solicitar presupuesto" | GMB Crush | Sin puentes el tráfico informativo no llega a la LBS de conversión | no | §14.5 |

## Bloque 8 — Clusters por Servicio

| ID | Decisión | Ejemplo | Fuente | Qué dicta la fuente | Dato en cascada | Funcionamiento |
|---|---|---|---|---|---|---|
| 15.36 | Se decide la composición del cluster por servicio core (1 SO + 1 LBS + 3 GeoArticles) | 5 clusters × 5 piezas = 25 páginas de cluster + Homepage + GeoHub + AC = 28 SEO base | GMB Crush | 5 piezas cubren intención temática + local + informativa por servicio | no | §15.1 |
| 15.37 | Se decide el flujo Captación → Distribución → Conversión | Cluster Cerrajero urgente: GA-001/002/003 → SO cerrajero-urgente → LBS Madrid cerrajero-urgente | GMB Crush | Sin flujo, las páginas captan tráfico que no convierte | no | §15.2 |
| 15.38 | Se decide validar que cada servicio core tenga cluster completo antes de publicar | 5 clusters validados: cerrajero urgente, apertura puertas, cambio cerraduras, cambio bombines, instalación cerraduras seguridad | GMB Crush | Cluster incompleto deja servicios sin captar o sin convertir | ← 1.34–1.38 | §15.3 |
