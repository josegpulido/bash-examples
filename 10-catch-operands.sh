#!/bin/bash

# La shell agrupa ciertos identificadores que representan valores de
# interés dentro de un script:
# .-------------------------------------------------------.
# | Identificador  | Descripción                          |
# |----------------|--------------------------------------|
# | $0             | El nombre del script.                |
# |----------------|--------------------------------------|
# | $1 al ${n}     | El número del operando. Si son más   |
# |                | de un dígito, se utilizan llaves.    |
# |----------------|--------------------------------------|
# | $?             | Contiene el file descriptor del      |
# |                | último comando ejecutado. Útil para  |
# |                | comprobar si un comando se ha        |
# |                | ejecutado correctamente evaluando su |
# |                | file descriptor mediante un if [].   |
# |----------------|--------------------------------------|
# | $_             | El último operando pasado al último  |
# |                | comando ejecutado en la shell.       |
# |----------------|--------------------------------------|
# | $_             | El último operando pasado al último  |
# |                | comando ejecutado en la shell.       |
# |----------------|--------------------------------------|
# | $-             | La lista de argumentos posibles de   |
# |                | shell actual.                        |
# |----------------|--------------------------------------|
# | $$             | Es el PID de la shell. Comprobable   |
# |                | ejecutando $ ps.                     |
# |----------------|--------------------------------------|
# | $!             | El PID del último comando ejecutado  |
# |                | en background (segundo plano).       |
# |----------------|--------------------------------------|
# | $#             | Contador de operandos.               |
# |----------------|--------------------------------------|
# | $*             | Refiere a todos los operandos juntos |
# |                | como un solor valor de texto.        |
# |----------------|--------------------------------------|
# | $@             | Refiere a todos los operandos juntos |
# |                | como un arreglo de valores. La       |
# |                | desventaja es que aún utilizando ""  |
# |                | al utilizar espacios entre palabras  |
# |                | se tomará como item extra del array. |
# .________________|______________________________________.
# 
# Entonces, el siguiente script se ejecutaría de la sig. manera:
# $ ./catch-operands.sh lorem "ipsum 2" 3

ARG_1=$1
ARG_2=$2

# Validando la existencia de operandos
if [ $# -lt 1 ]; then
    echo "Se necesita al menos 1 operando."
else
    echo "Nombre de script: $0"
    echo "Número de operandos pasados: $#"
    echo "Valor del operando 1: $ARG_1"
    echo "Valor del operando 2: $ARG_2"

    echo -e "\n..."

    # Iterando los valores de todos los operandos
    echo "Iterando arreglo de operandos:"
    for item in $@
    do
        echo "Valor: $item"
    done

    echo -e "\n..."

    # El comando "shift" recorre los elementos del arreglo de
    # operandos de derecha a izquierda, como p. ej:
    # [ j, k, l, m ]
    # ... shift
    # [ k, l, m ]
    # ... shift
    # [ l, m ]
    # ...
    # El valor de $0 siempre se mantendrá intacto, siendo solo
    # los indicadores $n los afectados.
    # 
    # El modificador -n comprueba contra cadenas de texto, siendo true
    # cuando $n = 0 numérico (non-zero), por lo que para abolir este
    # comportamiento se forza el "parseo" a cadena.
    echo "Iterando arreglo de operandos con shift:"
    while [ -n "$1" ];
    do
        echo "Valor: $1"
        shift
    done

fi
