#!/bin/bash

# Para capturar cualquier entrada de texto en un prompt en
# terminal se utiliza el comando $ read, el cual puede
# implementarse de dos maneras distintas:
#   (a). Utilizando la variable $REPLY.
#   (b). Utilizando directamente el comando $ read.

FIRST_NAME=""
SECOND_NAME=""

echo -n "Primer nombre: "
read
# La variable $REPLY se asigna en tiempo de ejecución y contiene
# el valor del último comando $ read ejecutado.
FIRST_NAME=$REPLY

# Así mismo, es posible prescindir del uso de la variable $REPLY
# usando una sintaxis in-line únicamente con el comando $ read
read -p "Segundo nombre: " SECOND_NAME

echo "Hola, mi nombre es $FIRST_NAME $SECOND_NAME"

# Argumentos útiles del comando $ read
# .-----------------------------------------------------.
# | Argumento  | Descripción                            |
# |------------|----------------------------------------|
# | -p         | Permite colocar una frase antes de la  |
# |            | requerir un dato.                      |
# |------------|----------------------------------------|
# | -s         | Oculta todos los caracteres escritos,  |
# |            | útil para información sensible.        |
# |------------|----------------------------------------|
# | -n [num]   | Indica leer como máximo n caracteres.  |
# |------------|----------------------------------------|
# | -r         | Toma la tecla de borrar (retroceso)    |
# |            | como un caracter más, deshabilitando   |
# |            | la capacidad de borrar lo ingresado.   |
# .____________|________________________________________.