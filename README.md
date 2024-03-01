# IEBS

# Proyecto de Interacción con Contratos Inteligentes en Ethereum

Este proyecto consiste en interactuar con contratos inteligentes desplegados en la red Ethereum (Rinkeby) utilizando Python y Remix.

## Objetivos y Motivación del Proyecto

El objetivo de este proyecto es demostrar cómo interactuar con contratos inteligentes en la red Ethereum utilizando Python y Remix. Se utilizarán herramientas como Web3.py para la interacción con la red Ethereum y Remix para la compilación y despliegue de los contratos inteligentes.

## Configuración del Proyecto

### Configuración de Remix

1. Abre Remix en tu navegador utilizando el siguiente enlace: [Remix IDE](https://remix.ethereum.org/#lang=es&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.24+commit.e11b9ed9.js)
2. Selecciona el compilador adecuado y asegúrate de que estás conectado a la red Ethereum (Rinkeby) utilizando la opción "Injected Web3".

### Configuración de Web3.py

1. Instala Web3.py utilizando pip:

2. Configura tu proveedor de Ethereum (Rinkeby) en el código Python donde se interactuará con los contratos inteligentes.

## Descripción de los Smart Contracts

En este proyecto, interactuaremos con un contrato inteligente llamado `DataRegistry`, que permite añadir y consultar datos de diferente tipo, como números, texto y booleanos.

## Guía para la Interacción con los Smart Contracts

1. Compila y despliega el contrato `DataRegistry` en Remix utilizando la opción "Injected Web3".
2. Obtén la dirección del contrato y el ABI después de desplegarlo.
3. Configura tu proveedor de Ethereum (Rinkeby) y tu dirección de Ethereum en el código Python.
4. Interactúa con el contrato utilizando el código Python proporcionado en este repositorio. Asegúrate de reemplazar la dirección del contrato, el ABI y otros parámetros con los tuyos.

## Enlaces de Explorador de Bloques

- Contrato `DataRegistry` en Etherscan: [Dirección del Contrato](https://etherscan.io/address/0x123456789ABCDEF...)
- Transacciones del Contrato `DataRegistry` en Etherscan: [Transacciones](https://etherscan.io/address/0x123456789ABCDEF...)

