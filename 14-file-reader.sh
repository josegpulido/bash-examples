#!/bin/bash

# El siguiente script muestra diferentes formas de leer el
# archivo indicado en el operando.

# Validando la cantidad de operandos
if [ $# -ne 1 ]; then
    echo "Operandos insuficientes. Script inejecutable."
    exit 0
fi

# Obteniendo nombre del archivo a leer
FILENAME=$1

# Primer caso ============================================================
# Utilizando el comando $ cat dentro de una sub-shell.
# 
# La desventaja de este caso de uso en particular es que
# se recortan los espacios y tabulaciones del documento.
MY_FILE=$(cat $FILENAME)
echo $MY_FILE

echo -e "\n..."

# Segundo caso ============================================================
# Utilizando un bucle while y el identificador $IFS (Internal Field Separator).
# 
# Este caso de uso es conveniente cuando se desea preservar el formato
# del archivo, como por ejemplo espacios, tabulaciones, identación, etc.
# 
# Más información de $IFS
# + https://bash.cyberciti.biz/guide/$IFS

# Al ser while un comando que ejecuta su bloque "do" cuando una condición es
# exitosa, entonces se tomará como false cuando el comando $ read falle al leer
# una línea de texto vacía. Esta entrada de datos está dada por el operador de
# redirección "<", que redirige el stdin de un archivo hacia un comando.
# 
# El identificador $IFS se establece entonces con un valor vacío ($IFS= ) indicando
# un valor simil a NULL para evitar separar la entrada de datos dada (línea de texto)
# en tokens en específico.
while IFS= read MY_LINE
do
    echo "$MY_LINE"
done < $FILENAME