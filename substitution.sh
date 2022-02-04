#!/bin/bash

# Es posible ejecutar un comando on-demand dentro del script
# a través de dos formatos de sustitución:
#   (a). `pwd`
#   (b). $(pwd)
# Ambos funcionan de igual manera, aunque la segunda opción
# tiene otros casos de uso como en estructuras condicionales,
# ya que dicha sintaxis está generando una sub-shell.

CURRENT_DIR=`pwd`
CURRENT_USER=$(whoami)

echo "Usuario @$CURRENT_USER en el directorio $CURRENT_DIR"

# El comando $ bash proporciona un par de herramientas útiles
# para debuggear errores o comportamiento indeseado de los scripts.
# .----------------------------------------------------------------.
# | Herramienta  | Descripción                                     |
# |--------------|-------------------------------------------------|
# | $ bash -v    | Muestra los detalles de cada línea del script.  |
# |--------------|-------------------------------------------------|
# | $ bash -x    | Muestra las líneas ejecutadas, los stdin,       |
# |              | stdout, y los detalles del resto del script.    |
# .______________|_________________________________________________.
#
# El script anterior puede ejecutarse de las siguientes manera en modo
# de debugging:
#   (a) $ bash -v ./substitution.sh
#   (b) $ bash -x ./substitution.sh
