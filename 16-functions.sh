#!/bin/bash

# Las funciones son bloques de código reutilizables que ejecutan
# una tarea en específico, y ayudan a organizar y encapsular el
# código escrito.

# Sintaxis: 
saludar() {
    echo "Saludando..."
}

# Para enviar parámetros, el scope de $1 ... $n cambia a representar
# los parámetros pasados durante la llamada a la función.
dormir() {
    echo "Dormir $1 horas..."
}

echo "Llamando a función saludar():"
saludar
echo "Llamando a función sormir() con paso de parámetro 7:"
dormir 7