# IEBS

Sports Event Smart Contracts
Objetivos y Motivación del Proyecto
El objetivo de este proyecto es desarrollar una serie de Smart Contracts en Solidity para la gestión de eventos deportivos. La motivación radica en proporcionar una solución transparente y segura para la organización y seguimiento de eventos deportivos, incluyendo la gestión de equipos, jugadores, partidos y resultados.

Análisis Funcional y Técnico
Los Smart Contracts se diseñarán para permitir el registro de información sobre equipos y jugadores participantes en eventos deportivos, así como para programar y registrar partidos junto con sus resultados. Se utilizarán contratos inteligentes para garantizar la transparencia y la confiabilidad en la gestión de los eventos deportivos.

Documentación Explicativa de los Smart Contracts y sus Funciones
TeamRegistry.sol
Este contrato registra la información de los equipos participantes en el evento deportivo.

Funciones:
addTeam: Agrega un nuevo equipo al registro.
getTeam: Obtiene la información de un equipo dado su ID.
updateTeam: Actualiza la información de un equipo existente.
PlayerRegistry.sol
Este contrato registra la información de los jugadores pertenecientes a los equipos participantes.

Funciones:
addPlayer: Agrega un nuevo jugador al registro.
getPlayer: Obtiene la información de un jugador dado su ID.
updatePlayer: Actualiza la información de un jugador existente.
MatchRegistry.sol
Este contrato permite registrar los partidos y sus resultados.

Funciones:
scheduleMatch: Programa un nuevo partido con los equipos y la fecha especificados.
recordResult: Registra el resultado de un partido, incluyendo el marcador y los jugadores destacados.
getMatchResult: Obtiene el resultado de un partido dado su ID.
Guía para la Compilación, Despliegue y Verificación de los Smart Contracts del Proyecto
Para compilar, desplegar y verificar los Smart Contracts, sigue estos pasos:

Instalación de Dependencias:

Instala Node.js si no lo tienes instalado.
Ejecuta npm install para instalar las dependencias del proyecto.
Compilación de los Contratos:

Ejecuta npx hardhat compile para compilar los contratos.
Despliegue de los Contratos:

Configura tu archivo hardhat.config.js con la red Ethereum deseada.
Ejecuta npx hardhat run scripts/deploy.js --network <nombre_de_la_red> para desplegar los contratos en la red especificada.
Verificación de los Contratos:

Después de desplegar los contratos, ejecuta npx hardhat run scripts/verify.js --network <nombre_de_la_red> para verificar los contratos en el explorador de bloques.
