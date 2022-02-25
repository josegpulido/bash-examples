#!/bin/bash

# Uso:
#
# Este script abrirá los puertos 9000, 9001 y 9002 de la máquina
# anfitriona que lo ejecute. No ejecutar en WSL2 (leer comentarios).
# 
# Adicionalmente, está escrito para adjuntarse a una rutina de
# crontab para que se ejecute recurrentemente como un proceso
# en background del sistema.

# bugfix: Proporcionando al usuario de crontab, el cual ejecutará el
# script, la variable de entorno $PATH ya que para dicho usuario
# la variable $PATH no existirá.
# 
# El comando $ basename extraerá únicamente el nombre del script desde
# el símbolo de bash $0, el cual incluye la ruta "./" al inicio del nombre.
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Comprobando si el binario del cliente miniupnpc (Mini Universal 
# Plug & Play Client) está instalado en la máquina.
if [ -z "$(which upnpc)" ]; then
    echo -e "\nEs necesario instalar el cliente miniupnpc para continuar.\n"
    echo -e "$ sudo apt install miniupnpc\n"
    exit 1;
fi

# Obteniendo la IPv4 de la máquina anfitriona. En entornos como WSL2, siendo
# WSL1 una excepción, se tiene un adaptador de red virtualizado que tiene
# su propia dirección IP, es decir, una dirección distinta a la de la máquina
# física, por lo que la siguiente línea daría un valor engañoso.
# 
# Más información:
# + https://docs.microsoft.com/en-us/windows/wsl/networking
LOCAL_IPV4=$(ip addr | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

# Abriendo los puertos 9000, 9001 y 9002 con miniupnpc, redireccionandolos
# a los puertos 80, 443 y 22, respectivamente.
upnpc -e 'Puerto HTTP' -a $LOCAL_IPV4 80 9000 TCP
upnpc -e 'Puerto HTTPS' -a $LOCAL_IPV4 443 9001 TCP
upnpc -e 'Puerto SSH' -a $LOCAL_IPV4 22 9002 TCP

# Por último, para programar el crontab, una configuración útil sería
# la siguiente:
# 
# */20 * * * * /path/to/port-forwarding.sh
# 
# No olvidar dar permisos de ejecución.