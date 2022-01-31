#!/bin/bash

# La shell agrupa ciertos identificadores que representan valores de
# interés dentro de un script:
# .-------------------------------------------------------.
# | Identificador  | Descripción                          |
# |----------------|--------------------------------------|
# | $0             | El nombre del script.                |
# |----------------|--------------------------------------|
# | $1 al ${n}     | El número del argumento. Si son más  |
# |                | de un dígito, se utilizan llaves.    |
# |----------------|--------------------------------------|
# | $#             | Contador de argumentos.              |
# |----------------|--------------------------------------|
# | $*             | Refiere a todos los argumentos.      |
# .________________|______________________________________.
# 
# Entonces, el siguiente script se ejecutaría de la sig. manera:
# $ ./arguments.sh "Lorem" "ipsum"

ARG_1=$1
ARG_2=$2

echo -e "Script \"$0\""
echo "Número de argumentos pasados: $#"
echo "Valor de argumento 1: $ARG_1"
echo "Valor de argumento 2: $ARG_2"