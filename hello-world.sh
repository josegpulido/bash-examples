#!/bin/bash

# Lo anterior es una directiva que le indica a cualquier sistema basado
# en Unix que ejecute un interprete en específico, que para el caso de
# scripts en bash, es /bin/bash. Dicha directiva es conocida en el mundo
# de la informática como Shebang.
#
# Más información en:
# + https://en.wikipedia.org/wiki/Shebang_(Unix)

# En el caso de bash, no se escribe ; al final de una sentencia
echo "Hola, mundo"

# La declaración de variables en bash se hace de modo implícito, es decir,
# no es necesario especificar de qué tipo de variable se trata. La convención
# es utilizar nombres en mayúsculas.
#
# El scope de las variables creadas se limita solo a la ejecución del
# programa. En caso de que se desee exportar explicitamente una variable
# con la palabra reservada export, dicha variable estará disponible en cualquier
# otro script que se ejecute desde este script, como si fuese una cadena de
# ejecución.
export NOMBRE="Jose Guillermo"
ESTATURA=1.76

echo "Soy $NOMBRE y mido $ESTATURA"
echo "La variable NOMBRE está siendo exportada"
