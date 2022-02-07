#!/bin/bash

# El siguiente script tomará todos los archivos del directorio, los
# empaquetará, comprimirá y encriptará con una contraseña y el algoritmo
# SHA-256.

# Leyendo el nombre del archivo comprimido
FILENAME=""
read -p "Nombre del archivo resultante: " FILENAME

zip -re $FILENAME.zip .