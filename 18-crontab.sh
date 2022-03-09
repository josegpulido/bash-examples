#!/bin/bash

# La siguiente redefinición de la variable de entorno $PATH es una
# de muchas formas de resolver un comportamiento en específico: el
# estado de la variable $PATH desde el crontab.
# 
# Lo anterior se debe al tipo de sesión de shell que establece una
# crontab definida por el usuario ($ crontab -e), tratando entonces de
# asemejar su estado lo más posible a como se encontraría en la sesión
# actual @miusuario, la cual utiliza una sesión Login-Shell. Cada una
# de estas dos sesiones accede a archivos de arranque de configuración
# de shell distintos. Un crontab definida por el sistema (/etc/crontab)
# tendrá un estado más completo de $PATH como ya se explicó en los
# enunciados anteriores, y del tipo de crontab configurado dependerá la
# utilidad de la siguiente línea:
PATH=/usr/local/sbin:/usr/local/bin:/sbin/:/bin:/usr/sbin:/usr/bin

# Activa el modo de configuración de shell que abortará la ejecución
# del programa si detecta un código de salida tipo 0.
set -e

# La palabra reservada readonly se comporta igual que el comando $ declare -r;
# definirá una variable con un valor inmutable, es decir, una constante.
readonly SCRIPT_DIR="$(pwd)"
# El comando $ basename recortará solo el nombre de archivo o directorio de
# una ruta relativa o absoluta dada.
readonly SCRIPT_NAME="$(basename "$0")"

echo "SCRIPT_DIR=$SCRIPT_DIR"
echo "SCRIPT_NAME=$SCRIPT_NAME"