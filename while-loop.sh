#!/bin/bash

# Bucle de iteración while
# 
# Se puede ver a while como una estrucutra if-else que se
# repite, ya que acepta la misma sintaxis de sub-shell "()"
# o el comando test "[".
# 
# Comparte muchas similitudes con la sintaxis del bucle for.
INDEX=0

echo "Iterando mediante bucle while 10 veces:"
while [ $INDEX -le 10 ]
do
    INDEX=$((INDEX + 1))
    # Al igual que en otros lenguajes de programación, existe las
    # keywords "continue" y "break", en donde la primera omite
    # el resto del bloque hasta la siguiente iteración, y el segundo
    # interrumple el bucle por completo.
    # 
    # Ambas necesitan escribirse terminando la keyword con punto y coma (;).
    # 
    # La siguiente expresión hará que el bucle omita la ejecución del
    # $ echo en la 3ra iteración:
    if [ $INDEX -eq 3 ]; then
        continue;
    fi
    echo "i => $INDEX"
    # La siguiente expresión interrumpirá el bucle por completo cuando
    # suceda la 7ma iteración.
    if [ $INDEX -eq 7 ]; then
        break;
    fi
done