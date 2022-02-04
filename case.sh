#!/bin/bash

# Estructura condicional case.
# 
# Este tipo de estructura puede evaluar un valor en específico así
# como también un rango de valores.

OPTION=0
read -n 1 -p "Ingresa una opción (A-Z): " OPTION
echo -e "\n"

case $OPTION in
    "A") echo "Guardar archivo.";; # El bloque del caso tiene que finalizar siempre en (;;).
    "B") echo "Eliminar archivo.";;
    [W-Z]) echo "Se ingresó una W, Z, Y o Z.";;
    *) echo "Opción incorrecta." # <-- *) refiere al caso default
esac # <-- La estructura case cierra con la sentencia esac