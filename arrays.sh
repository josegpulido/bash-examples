#!/bin/bash

# Un arreglo es una variable con varios elementos que pueden
# ser de tipo numérico y de texto. Al igual que en otros
# lenguajes de programación, el índice de un arreglo comienza
# en cero.
# 
# El tamaño en memoria de un arreglo es autogestionado por bash,
# por lo que incrementar o disminuir los elementos del arreglo no
# causará ningún inconveniente.
# 
# Sintaxis de declaración

# Numeros o caracteres
# 
# Las comas (,) entre cada elemento son opcionales, pero pueden
# colarse durante la impresión de todos los valores de un arreglo
# y también verse afectadas con la keyword "unset". Usar a discreción.
NUMBERS=("0" 1 2 "3")

# La sintaxis {MY_ARRAY[ ]} accede al valor del elemento en la posición
# marcada entre corchetes "[]". El asterisco (*) apunta a todos los
# elementos del arreglo.
echo "Numeros o caracteres:"
echo "Index 0 => ${NUMBERS[0]}"
echo "Todos los valores => ${NUMBERS[*]}"
echo "Tamaño de arreglo => ${#NUMBERS[*]}"

echo -e "\n..."

# Cadenas de texto
STRINGS=(Guillermo Carmen Antonio Susana)

echo "Cadenas de texto:"
echo "Todos los valores => ${STRINGS[*]}"
echo "Tamaño de index 2 (${STRINGS[2]}) => ${#STRINGS[2]}"
echo "Tamaño de arreglo => ${#STRINGS[*]}"

echo -e "\n..."

# Rango de valores
RANK_1=({A..Z}) # <-- Contendrá las letras de la A a la Z
RANK_2=({F..R} {0..13}) # <-- Contendrá las letras de la F a la R, además de los números 0 al 13

echo "Rangos de valores:"
echo "Todos los valores => ${RANK_1[*]}"
echo "Tamaño de arreglo => ${#RANK_1[*]}"

echo -e "\n..."

# Reasignación de valor en elemento de arreglo
echo -e "Reasignación de valor en arreglo \$NUMBERS:"
echo "Valor en (1) antes de asignación: ${NUMBERS[1]}"
NUMBERS[1]=9
echo "Valor en (1) después de asignación: ${NUMBERS[1]}"

echo -e "\n..."

# Remoción de elemento de arreglo
echo -e "Remoción de elemento de arreglo \$NUMBERS:"
echo "Arreglo antes de remoción: ${NUMBERS[*]}"
unset NUMBERS[1]
echo "Arreglo después de remoción: ${NUMBERS[*]}"