#!/bin/bash

# Es posible ejecutar un comando on-demand dentro del script
# a través de dos formatos de sustitución:
#   (a). `pwd`
#   (b). $(pwd)
# Ambos funcionan de igual manera.

CURRENT_DIR=`pwd`
CURRENT_USER=$(whoami)

echo "Usuario @$CURRENT_USER en el directorio $CURRENT_DIR"