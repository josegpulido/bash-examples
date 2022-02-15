#!/bin/bash

# Ejemplo de script con menú de opciones
# 
# Arte ASCII prediseñada:
# + https://www.asciiart.eu/
# 
# Convertir cualquier imagen en arte ASCII:
WELCOME_MESSAGE=$(cowsay "Welcome!")
OPTION=0

echo "$WELCOME_MESSAGE"
echo -e "\nCargando interface..."
sleep 3 # <-- Detiene la ejecución del programa por 3s
# Bucle infinito que despliega el menú de opciones
while :
do
    clear
    echo "--------------------------------------------------"
    echo "               Selecciona una opción              "
    echo "--------------------------------------------------"
    echo "1. Ver Mr. Robot."
    echo "2. Comer un Kinder Delice."
    echo "3. Programar algo."
    echo "4. Salir."

    read -n 1 -p "Ingresa una opción: " OPTION
    echo -e "\n"

    case $OPTION in
        1)
            echo "I don't know... I wanted to save the world..."
            ;;
        2)
            echo "Ñom ñom ñom..."
            ;;
        3)
            echo "¡Tick, tick, clac! ¿Otro bug?"
            ;;
        4)
            # El comando $ exit detiene el proceso actual ejecutandose. Más
            # información en $ man exit.
            exit 0
            ;;
        *)
            echo "Opción $OPTION desconocida."
            ;;
    esac

    sleep 2

done