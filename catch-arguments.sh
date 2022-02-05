#!/bin/bash

# Bash no ofrece soporte para encauzar a los argumentos por un canal
# distinto a los operandos recibidos. Para bash todo es un operando.
# 
# El siguiente script intenta tomar operandos y argumentos
# según la forma en que se escriben en la terminal, precediendo un
# guión medio (-) al operando para considerarlo un argumento.
# 
# Otra forma de ejecutar el análisis de los valores ingresados con
# mayor precisión es a través de una RegExp.

# Validando la existencia de operandos
if [ $# -lt 1 ]; then
    echo "Se necesita al menos 1 operando."
else
    # Iterando operandos
    while [ -n "$1" ];
    do
        case "$1" in
            # Definición de argumentos para cada caso estándar
            "-a")
                echo "Se utilizó el argumento -a";;
            "-b")
                echo "Se utilizó el argumento -b";;
            "-c")
                echo "Se utilizó el argumento -c";;
            "-x")
                echo "Se utilizó el argumento -x";;
            # Caso por defecto equivaldrá a un operando común y corriente
            *)
                echo "Operando estándar con valor $1";;
        esac
        # Recorriendo el conjunto de operandos
        shift
    done
fi

# A continuación, el estándar de Linux para nombrar argumentos según su
# comportamiento en el script:
# 
# -a         Listar todos los elementos.
# 
# -c         Obtener la cantidad de elementos.
# 
# -d         Directorio de salida.
# 
# -e         Expandir elementos.
# 
# -f         Especificar un archivo.
# 
# -h         Mostrar la página de ayuda.
# 
# -i         Ignorar mayúsculas.
# 
# -l         Listar un texto.
# 
# -n         Decir que no a una pregunta.
# 
# -o         Para enviar la salida a un archivo o más.
# 
# -q         No preguntar al usuario.
# 
# -r         Procesar algo recursivamente.
# 
# -s         Modo sigiloso.
# 
# -v         Modo detallado.
# 
# -x         Especificar el ejecutable.
# 
# -y         Decir sí sin preguntar al usuario.