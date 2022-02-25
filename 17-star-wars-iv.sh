#!/bin/bash

# Comprobar si telnet está instalado verificando si el comando
# $ which en una subshell retorna o no un string vacío.
# 
# Recordar que $ which es una utilidad built-in de todos los
# sistemas Unix.
if [ -z "$(which telnet)"  ]; then
    echo -e "\nNecesitas instalar el paquete telnet.\n"
    echo -e "  $ sudo apt install telnet\n"
    exit 0;
fi

echo -e "\n             Estás a punto de ver:"
echo "================================================="
echo -e "         Star Wars Episodio IV A New Hope."
echo "================================================="
echo -e "\nPara salir, presiona Ctrl + ], luego escribe quit y presiona Enter.\n"
echo -e "Disfrútala c:\n\n"
sleep 3
clear

telnet towel.blinkenlights.nl