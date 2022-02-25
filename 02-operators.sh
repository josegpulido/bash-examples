#!/bin/bash

# Es necesario emplear la sintaxis $(()) y prescindir del signo
# de pesos ($) para concatenar el resultado de las operaciones en
# una cadena de texto.
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


echo "" # <-- Salto de línea

# Operadores de asignación
echo "Operadores de asignación:"
echo "Existen los siguientes operadores:"
echo "+="
echo "-="
echo "*="
echo "/="
echo "%="
