#!/bin/bash

# Uso:
#
# Este script abrirá los puertos 9000, 9001 y 9002 de la máquina
# anfitriona que lo ejecute. Disponible solo para sistemas de Linux
# corriendo nativamente en el sistema; no soporta WSL1/2.
# 
# Adicionalmente, está escrito para adjuntarse a una rutina de
# crontab para que se ejecute recurrentemente como un proceso
# en background del sistema, y así prevenir reset en el gateway,
# cambio de módem, etc.

# bugfix: En caso de configurar este crontab desde el cron del usuario y no
# desde el crontab global como se sugiere, descomentar la siguiente línea para
# proporcionar al usuario de crontab, la variable de entorno $PATH correcta ya que
# esta solo se lee en sesiones Login-Shell, y no en Non-Login-Shell.
# 
# PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#
# Nota:
# El gateway del ISP tiene que ser un modelo compatible con $ miniupnpc, ya que
# algunos gateway solicitan establecer un rango de IPv4; rango de IPv4 WAN a modo
# de lista blanca; entre otros parámetros.

# Constantes
IPV4_REGEXP="([0-9]*\.){3}[0-9]*"

# Comprobando si el binario del cliente miniupnpc (Mini Universal Plug & Play Client)
# está instalado en la máquina anfitriona.
if [ -z "$(which upnpc)" ]; then
    echo -e "\nEs necesario instalar el cliente miniupnpc para continuar.\n"
    echo -e "$ sudo apt install miniupnpc\n"
    exit 1;
fi

# Obteniendo la IPv4 de la máquina anfitriona. En entornos como WSL2 (siendo
# WSL1 muchas veces una excepción), se tiene un adaptador de red virtualizado que tiene
# su propia dirección IP, es decir, una dirección distinta al NIC de la máquina
# física, y es por eso que este script podría tener comportamientos indeseados.
# 
# Más información:
# + https://docs.microsoft.com/en-us/windows/wsl/networking
LOCAL_IPV4=$(ip addr | grep -Eo 'inet (addr:)?$IPV4_REGEXP' | grep -Eo '$IPV4_REGEXP' | grep -v '127.0.0.1')

echo "Verificando compatibilidad con el gateway del ISP..."
upnpc -s &> /dev/null
UPNP_STATUS_RESULT=$?
if [ $UPNP_STATUS_RESULT -ne 0 ]; then
    echo "El gateway del ISP no es compatible con cliente UPnP."
    exit 0
else
    echo "Gateway del ISP compatible."
fi

# Abriendo los puertos con miniupnpc y redireccionandolos a los puertos deseados
# upnpc -e 'Descripción' -a <ipv4-address> <gateway-port> <local-host-port> TCP
echo "Abriendo puertos en gateway de ISP..."
upnpc -e 'Puerto HTTP'  -a $LOCAL_IPV4 80  9000 TCP
upnpc -e 'Puerto HTTPS' -a $LOCAL_IPV4 443 9001 TCP
upnpc -e 'Puerto SSH'   -a $LOCAL_IPV4 22  9002 TCP

# Por último, programar el crontab cada 20 minutos:
# 
# */20 * * * * /path/to/port-forwarding.sh
# 
# Otorgar los permisos correctos de ejecución como buena práctica de seguridad.
