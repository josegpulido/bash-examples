#!/bin/bash

# Este script consulta a través del servicio llamado ipinfo la IPv4 WAN del
# ISP al que la máquina anfitriona está conectado. Luego, actualizará
# en GoDaddy el registro A deseado con la nueva IPv4 del ISP en caso de aplicar,
# sin importar si el gateway del ISP ha cambiado o no de IPv4.

# Variables de script
DOMAIN_NAME="pssatech.com"
SUBDOMAIN_NAME="api" # <-- Puede corresponder a uno o más niveles, p. ej., api, service.api, etc.
GODADDY_ACCESS_KEY=""
GODADDY_SECRET_KEY=""
IPINFO_ACCESS_TOKEN=""

# Obteniendo la IPv4 actual del subdominio de GoDaddy
CURL_RESULT_1=$(curl -s -X GET -H "Authorization: sso-key $GODADDY_ACCESS_KEY:$GODADDY_SECRET_KEY" \                         "https://api.godaddy.com/v1/domains/$DOMAIN_NAME/records/A/$SUBDOMAIN_NAME")
CURRENT_RECORD_A_IPV4=$(echo $CURL_RESULT_1 | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

# Obteniendo la IP actual del gateway del ISP al que la máquina está conectada
CURL_RESULT_2=$(curl -s GET "http://ipinfo.io/json?token=$IPINFO_ACCESS_TOKEN")
CURRENT_GATEWAY_IPV4=$(echo $CURL_RESULT_2 | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")

echo "====================
$SUBDOMAIN_NAME.$DOMAIN_NAME
===================="
echo "IPv4 actual del registro A: " $CURRENT_RECORD_A_IPV4
echo "IPv4 del gateway del ISP: " $CURRENT_GATEWAY_IPV4

# Actualizando IPv4 en caso de aplicar
if [ $CURRENT_RECORD_A_IPV4 != $CURRENT_GATEWAY_IPV4 ];
then
    echo "\n Actualizando IPv4 de registro A de GoDaddy..."
    TEMP_REQ_DATA='[{"data":"'$CURRENT_GATEWAY_IPV4'","ttl":3600}]'
    TEMP_REQ=$(curl -X PUT "https://api.godaddy.com/v1/domains/$DOMAIN_NAME/records/A/$SUBDOMAIN_NAME" \
        -H "accept: application/json" \
        -H "Content-Type: application/json" \
        -H "Authorization: sso-key $GODADDY_ACCESS_KEY:$GODADDY_SECRET_KEY" \
        --data $TEMP_REQ_DATA )
    echo "Registro A actualizado."
    # echo "\n$TEMP_REQ"
fi
