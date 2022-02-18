# Prácticas en bash scripting

Ordenadas de menor a mayor dificultad.

Un script de bash se puede ejecutar de las siguientes maneras:
```console
$ ./script.sh
```
```console
$  script.sh
```
```console
$ bash script.sh
```
```console
$ source script.sh
```

### Indice
- **/hello-world**. Hola mundo en bash y declaración de variables. Además:
    - Exportación de variables (export).
- **/operators**. Operadores aritméticos, relacionales y de asignación.
- **/substitution**. Debugging y ejecución de comando dentro de un script.
- **/read-prompt**. Captura de datos por consola mediante el comando $ read.
- **/if-else**. Estructura condicional if-else. Sintaxis (()) y [.
- **/case**. Estructura condicional case.
- **/arrays**. Introducción a los arreglos.
- **/for-loop**. Ciclo for.
- **/while-loop**. Ciclo while. Uso de break y continue.
- **/catch-operands**. Paso de operandos a un script. Implementación de:
    - Recorre el conjunto de operandos una posición a la izquierda (shift).
- **/catch-arguments**. Paso de argumentos a un script.
- **/options-menu**. Ejercicio con menú de opciones. Implementación de:
    - ASCII Art con cowsay y asciiart.eu.
    - Pausa la ejecución del script por n segundos (sleep).
    - Detiene la ejecución del script (exit).
- **/fd-generator**. Ejercicio de script que crea archivos o directorios. Implementación de:
    - Sintaxis de un Here Document (heredoc) para escribir en un archivo dentro de un script.
- **/encrypt-files**. Script para empaquetar un conjunto de archivos, comprimirlos y encriptar el archivo resultante con una clave.
- **/functions**. Funciones.
- **/star-wars-iv**. Reproduce la pelicula de Star Wars Episodio IV A New Hope en terminal.