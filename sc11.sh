#!/bin/bash
#11 Realizar un script que pida introducir la ruta de un directorio por teclado (Hay que validar que la variable introducida sea un directorio) nos diga cuantos archivos y cuantos directorios hay dentro de ese directorio.
clear
read -p "Introduzca la ruta: " directorio
countD=$(find $directorio/* -type f | wc -l)
conntF=$(find $directorio/* -type d | wc -l)
echo "Dentro del directorio hay $countD Directorios"
echo "Dentro del directorio hay $countF Ficheros."
