#!/bin/bash

# El siguiente script crea un archivo o directorio dependiendo
# del argumento seleccionado y utilizando el nombre indicado en
# el operando:
# -f     Crea un archivo.
# -d     Crea un directorio.

# Validando la cantidad de operandos
if [ $# -ne 2 ]; then
    echo "Operandos insuficientes. Script inejecutable."
    exit 0
fi

# Leyendo nombre del archivo o directorio a crear
NAME=$1
shift

# Creando archivo o directorio según argumento
if [ $1 == "-d" ]; then
    mkdir -m 755 $NAME
    echo "Directorio $NAME creado."
    ls -ld $NAME
elif [ $1 == "-f" ]; then

    # Un Here Document, o heredoc, es una técnica para ejecutar un
    # programa interactivo (como vim, nano, etc.) dentro de un script
    # sin la interacción del usuario, pasando hacia el programa una
    # entrada de datos mediante redirecciones (<<, >>, etc.) y un par
    # de delimitadores que bash entenderá.
    # 
    # Los delimitadores pueden ser cualquier texto deseado siempre y
    # cuando sean iguales, aunque el estándar adoptado sea utilizar
    # tanto EOM (End Of Message) como EOF (End Of File).
cat << EOF >> $NAME
Hola, mundo.
EOF
    # Una consideración importante de los heredocs es que son sensibles
    # a la identación del código, y hacerlo le impedirá a bash ejecutar
    # el script.

    # También es posible utilizar la redirección >> para crear el archivo
    # echo "Hola, mundo." >> $NAME

    chmod 755 ./$NAME
    echo "Archivo $NAME creado."
    ls -lah $NAME
else
    echo "Argumento $1 inválido."
fi