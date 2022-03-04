#!/bin/bash

# La siguiente sintaxis "$(())" se irá explicando brevemente en
# ejercicios posteriores, especialmente en la sección if-else.
NUM_A=10
NUM_B=4
echo "Número A: $NUM_A"
echo "Número B: $NUM_B"

echo "" # <-- Salto de línea

# Operadores aritméticos
echo "Operadores aritméticos:"
echo "Suma: $((NUM_A + NUM_B))"
echo "Resta: $((NUM_A - NUM_B))"
echo "Multiplicación: $((NUM_A * NUM_B))"
echo "División: $((NUM_A / NUM_B))"
echo "Residuo: $((NUM_A % NUM_B))"
echo "Potencia ^2: $((NUM_A ** 2))" # <-- Potencia al cuadrado


echo "" # <-- Salto de línea

# Operadores de asignación
echo "Operadores de asignación:"
echo "Existen los siguientes operadores:"
echo "+="
echo "-="
echo "*="
echo "/="
echo "%="
