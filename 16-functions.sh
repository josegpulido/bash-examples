#!/bin/bash

# Las funciones son bloques de código reutilizables que ejecutan
# una tarea en específico, y ayudan a organizar y encapsular el
# código escrito.

# Sintaxis: 
# 
# Es opcional el uso de function y return, pero son buena práctica
# escribirlas para añadir mejor legibilidad.
function saludar() {
    echo "Saludando..."
    return
}

# Para enviar parámetros, el ámbito (scope) de $1 ... $n cambia a representar
# a los parámetros pasados durante la llamada a la función.
dormir() {
    # Como es común en otros lenguajes de programación, la shell podrá deshacerse
    # de las variables que fueron declaradas e inicializadas dentro del bloque.
    $ESTADO="¡Suficiente!"
    echo "Dormir $1 horas... $ESTADO"
}

echo "Llamando a función saludar():"
saludar
echo "Llamando a función sormir() con paso de parámetro 7:"
dormir 7

# Invocando a la variable $ESTADO para demostrar que no existe fuera del scope
# en que fue declarado:
echo "Variable ESTADO: $ESTADO"