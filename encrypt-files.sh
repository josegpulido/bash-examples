#!/bin/bash

# El siguiente script tomará todos los archivos del directorio, los
# empaquetará, comprimirá y encriptará con una contraseña y el algoritmo
# PKZIP Stream Cipher. Es recomendable comprimir el archivo y en su
# lugar encriptarlo con tecnologías como GPG y bcrypt.

# Leyendo el nombre del archivo comprimido
FILENAME=""
read -p "Nombre del archivo resultante: " FILENAME

zip -re $FILENAME.zip .