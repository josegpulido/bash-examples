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
- **/01-hello-world**. Hola mundo en bash y declaración de variables. Además:
    - Exportación de variables (export).
- **/02-operators**. Operadores aritméticos, relacionales y de asignación.
- **/03-substitution**. Debugging y ejecución de comando dentro de un script.
- **/04-read-prompt**. Captura de datos por consola mediante el comando $ read.
- **/05-if-else**. Estructura condicional if-else. Sintaxis (()) y [.
- **/06-case**. Estructura condicional case.
- **/07-arrays**. Introducción a los arreglos.
- **/08-for-loop**. Ciclo for.
- **/09-while-loop**. Ciclo while. Uso de break y continue.
- **/10-catch-operands**. Paso de operandos a un script.
    - Recorrido del conjunto de operandos una posición hacia la izquierda (shift).
- **/11-catch-arguments**. Paso de argumentos a un script.
- **/12-options-menu**. Práctica con menú de opciones.
    - ASCII Art con cowsay y asciiart.eu.
    - Pausa la ejecución del script por n segundos (sleep).
    - Detiene la ejecución del script (exit).
- **/13-fd-generator**. Práctica de script que crea archivos o directorios.
    - Sintaxis de un Here Document (heredoc) para escribir en un archivo dentro de un script.
- **/14-file-reader**. Lectura y contención de un archivo de texto desde un script.
- **/15-encrypt-files**. Script para empaquetar un conjunto de archivos, comprimirlos y encriptar el archivo resultante con una clave.
- **/16-functions**. Funciones.
- **/17-star-wars-iv**. Reproduce la pelicula de Star Wars Episodio IV A New Hope en terminal.
- **/18-port-forwarding**. Script que abre los puertos de cualquier Internet Gateway Device mediante el cliente miniupnpc.
    - Recorte de nombre de script con $ basename.
    - Obtener IPv4 de la máquina anfitriona.
    - Compatibilidad con ejecución por crontab.