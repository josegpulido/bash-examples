#!/bin/bash

# Bucle de iteración for
# 
# Esta estructura permite iterar una lista de valores como números,
# cadenas, nombres de archivos, argumentos de línea de comandos, entre
# otros.

VALUES=(7 83 9 4 57 26)

# Sintaxis
# 
# Iterando valores numéricos
echo "Iterando valores numéricos:"
for item in ${VALUES[*]}
do # <-- Keyword que inicia el bloque de ejecución de la iteración
    echo "Valor: $item"
done

echo -e "\n..."

# Iterando cadenas de texto
echo "Iterando cadenas de texto:"
for item in "Marco" "Susana" "Luis"
do
    echo "Valor: $item"
done

echo -e "\n..."

# Iterando los archivos del directorio donde se ubica este script
DIR_NAME=$(pwd)
echo "Iterando directorio $DIR_NAME:"
for item in * # <-- El wildcard (*) apunta al directorio actual
do
    echo "$item"
done

echo -e "\n..."

# Iterando resultados de un comando
echo "Iterando directorio $DIR_NAME pero ejecutando sub-shell:"
for item in $(ls [[:upper:]]*) # <-- Ver apuntes de wildcards para más información
do
    echo "$item"
done

echo -e "\n..."

# Iteración con estructura de bucle convencional compuesta por bloque
# de inicialización, bloque de condición y bloque de iteración.
echo "Iterando mediante estructura convencional"
for ((i=0; i<10; i++)) {
    echo "i: $i"
}
# De la sintaxis anterior, también es posible sustituir las llaves "{}"
# por las keywords do/done de la misma forma que los ejemplos anteriores.