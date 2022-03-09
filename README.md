# Prácticas en bash scripting

Ordenadas de menor a mayor dificultad o en su defecto, por orden en que las aprendí.

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
    - Inmutabilidad de variables (declare).
- **/02-operators**. Operadores aritméticos, relacionales y de asignación.
- **/03-substitution**. Debugging y ejecución de comando dentro de un script.
    - Formas de realizar debugging (bash, set).
- **/04-read-prompt**. Captura de datos por consola mediante el comando $ read.
- **/05-if-else**. Estructura condicional if-else.
    - Sintaxis de comando numérico compuesto "$(())" vs sub-shell "$()".
    - Comando test "[" y variante "[[".
    - Operadores lógicos AND, OR y NOT.
- **/06-case**. Estructura condicional case.
- **/07-arrays**. Introducción a los arreglos.
- **/08-for-loop**. Ciclo for.
- **/09-while-loop**. Ciclo while. Uso de break y continue.
- **/10-catch-operands**. Paso de operandos a un script.
    - Identificadores exclusivos de shell ($0, $_, $!, $@, etc).
    - Recorrido del conjunto de operandos una posición hacia la izquierda (shift).
- **/11-catch-arguments**. Paso de argumentos a un script.
- **/12-options-menu**. Práctica con menú de opciones.
    - ASCII Art con cowsay y asciiart.eu.
    - Pausa la ejecución del script por n segundos (sleep).
    - Detiene la ejecución del script (exit).
- **/13-fd-generator**. Práctica de script que crea archivos o directorios.
    - Sintaxis de un Here Document (heredoc) para escribir escribir en formato multilínea.
- **/14-file-reader**. Lectura y contención de un archivo de texto desde un script.
- **/15-encrypt-files**. Script para empaquetar un conjunto de archivos, comprimirlos y encriptar el archivo resultante con una clave.
- **/16-functions**. Funciones.
    - Ámbito de variables; globales y locales.
- **/17-star-wars-iv**. Reproduce la pelicula de Star Wars Episodio IV A New Hope en terminal.
- **/18-crontab**. Automatización de un script mediante crontab.
    - Redefinición del entorno $PATH debido a los tipos de shell (Non-Login-Shell vs Login-Shell) según el tipo de crontab configurado.
    - Interrupción de script por modificación de comportamiento de shell (set -e).
    - Inmutabilidad de variables (readonly).
- **/19-port-forwarding**. Script que abre los puertos de cualquier Internet Gateway Device mediante el cliente miniupnpc.
    - Recorte de nombre de script con $ basename.
    - Obtener IPv4 de la máquina anfitriona.
    - Compatibilidad con ejecución por crontab.
- **/20-dynamic-dns**. Script que mantiene un crontab de DNS dinámico con ipinfo y GoDaddy.
    - Resolución de la IPv4 pública del Gateway del ISP conectado.
    - Interacción con API endpoint de GoDaddy para la resolución de registros A de un dominnio.
    - Compatibilidad con ejecución por crontab.