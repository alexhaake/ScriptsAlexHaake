#!/bin/bash
#4 En un fichero tengo una palabra clave. Haz un script que muestre si dicha palabra es el parámetro pasado o no.
clear

echo "Escribe la palabra que busca"
read palabra

grep -n $palabra "clave.txt"





