#!/bin/bash

# Tipos de estructuras if-else
# 
# La estructura y sintaxis de la estructura condicional dependerá
# del caso de uso. A continuación, los dos casos más relevantes:
# 
# Más información:
# + https://unix.stackexchange.com/a/306141

# Primer caso =============================================================
QUOTE=0
read -n 1 -p "Ingresa una calificación (0-9): " QUOTE

# Este tipo de sintaxis "(())" es en realidad un sub-shell y se utiliza
# cuando los valores a comparar son exclusivamente  numéricos, o cuando
# la comparación implica operaciones aritméticas in-line.
# 
# Es importante dejar un espacio entre los paréntesis y la condición,
# además de finalizar la condición con punto y coma (;).
echo -e "\n"
if (( QUOTE >= (5 + 2) )); then # <-- Operación aritmética in-line que da como resultado 7
    echo "Aprobado :)"
else
    echo "Reprobado :("
fi # <-- La sentencia fi es importante para cerrar cualquier estructura condicional
echo -e "\n..."

# Segundo caso ============================================================
AGE=0
read -n 2 -p "Ingresa una edad (0-99): " AGE

# Este tipo de sintaxis "[]" es en realidad una utilidad built-in de cualquier
# (o al menos la mayoría) distribución de Linux. Lo anterior puede comprobarse
# ejecutando el comando $ which [. El nombre de esta utilidad es [, y su último
# operando recibido es ]. Lo que existe en medio no son más que operandos y
# argumentos compatibles con dicha utilidad.
# 
# Puede emplearse tanto para comparar números como cadenas de texto.
# 
# Los argumentos más útiles son:
# .-----------------------------------------.
# | Operador  | Descripción                 |
# |-----------|-----------------------------|
# | -eq       | Es igual a.                 |
# |-----------|-----------------------------|
# | -ne       | No es igual a.              |
# |-----------|-----------------------------|
# | -gt       | Es mayor a.                 |
# |-----------|-----------------------------|
# | -ge       | Es mayor a o igual a.       |
# |-----------|-----------------------------|
# | -lt       | Es menor a.                 |
# |-----------|-----------------------------|
# | -le       | Es menor o igual a.         |
# |-----------|-----------------------------|
# | -d        | La ruta de un directorio    |
# |           | existe.                     |
# .___________|_____________________________.
# 
# Es importante dejar un espacio entre los paréntesis y la condición,
# además de finalizar la condición con punto y coma (;).
echo -e "\n"
if [ $AGE -le 18 ]; then
    echo "Eres un menor de edad."
elif [ $AGE -ge 60 ]; then
    echo "Eres un adulto de la tercera edad."
elif [ $AGE -ge 20 ] && [ $AGE -le 30 ]; then # <-- Es posible utilizar la sintaxis && y ||
    echo "Eres un adulto en la edad con más energía."
    # A continuación, comparando dos cadenas de texto.
    # 
    # Forma 1
    if [ "$AGE" -eq "25" ]; then
        echo "Entra a comparación de texto (-eq)."
    fi
    # Forma 2
    if [ "$AGE" == "26" ]; then
        echo "Entra a comparación de texto (==)."
    fi
else
    echo "Eres un adulto."
fi

# Validación de existencia de directorio
DIR_PATH=""
echo -e "\n..."
read  -p "Ingresa la ruta de un directorio: " DIR_PATH
if [ -d $DIR_PATH ]; then
    echo -e "\nEl directorio $DIR_PATH SÍ existe."
else 
    echo -e "\nEl directorio $DIR_PATH NO existe."
fi

# Tercer caso ============================================================

# Este tipo de sintaxis "[[]]" es una versión mejorada de la utilidad [
# y que fue concebida por la shell Korn (ksh). Contiene funcionalidades
# extra de entre las cuales la más destacable son las expresiones regulares,
# o RegExp. Esta sintaxis es una keyword del sistema, en lugar de un
# comando como su predecesor $ [.
# 
# Este caso se expondrá en ejercicios prácticos posteriores.