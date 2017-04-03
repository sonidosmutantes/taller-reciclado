# Taller de reciclado sonidos de la web mediante técnicas MIR

* Aplicación de técnicas de Music Information Retrieval (MIR) para extraer sonidos de bases de datos online (internet)
* Efectos en tiempo real para modelar estos sonidos con criterios musicales
* Exploración de nuevas interfaces controladoras y diseño de nuevos instrumentos que aprovechen los puntos anteriores
* Implementación de prototipos utilizando Software Libre y protocolos estándar


![](workflow.png)


# Resumen Día 1
 * Contexto
   * Cloud
   * Cantidad de datos disponibles online (musicales, speech, audio en general, etc)
   * Licencias libres. Creative Commons (CC)
   * BigData. Analytics. Machine Learning
 * Introducción a MIR
   * Descriptores o features (LFC, BPM, SpectralCentroid, ..., más de 100)
     * Extracción de metadata (conocimiento)
     * [Una lista de descriptores posibles](http://essentia.upf.edu/documentation/algorithms_overview.html)
     * Opción de programar nuestro propio descritpor
     * Clusters
   * Almacenamientoo en bases de datos
 * Posibles usos artísticos de MIR + Engine Synthesis + Cloud
   * Automatizar todo o no
   * Dónde puede estar la decisión compositiva
   * Máquina de estados "MIR"
 * Arquitecturas distribuidas
   * Ventajas y desventajas
   * Redes locales. IP + puerto (ej: 10.0.1.10:57120)
 * Diferencias entre programas de síntesis. Paradigmas
   * SuperCollider, PureData (pd), Max/Msp, Python + Pyo
   * Multiplataforma. Linux, Mac, Windows. Raspberry Pi
   * Software Libre 
   * Livecoding
 * Protocolos estándar. MIDI y OSC
   * [Configurar OSC](controllers_ui/SetUp.md)
   * Usar UI de OpenStageControl para enviar mensajes a Supercollider u otro.
 * API estándar (como forma de acceso unificado)
 * App complemento: [APICultor](https://sonidosmutantes.github.io/apicultor/)
   * "Extraer miel de redpanal" (aproximación de BigData a las colecciones musicales)
   * Multiplataforma
   * Opciones: Máquina virtual o vía [Docker](https://sonidosmutantes.github.io/apicultor/docker.html).


# Resumen Día 2
 * Intro a SuperCollider
 * Empezar a desarrollar una idea propia (mini-proyecto)
 * Extraer descriptores de sonidos propios

# Resumen Día 3
 * ...
 * ...
 * ...

# Resumen Día 4
 * ...
 * ...
 * ...
 
 # Complementos
 * [UI para enviar OSC](controllers_ui/SetUp.md)
 * [APICultor](https://sonidosmutantes.github.io/apicultor/)
