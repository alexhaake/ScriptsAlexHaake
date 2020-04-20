#!/bin/bash
#12 Realiza un script que introduzca número por parámetro y muestre tabla de multiplicar.
clear
echo "La tabla de multiplicar del $1 es:"
for (( i = 1; i <= 10; i++ )); do
 resultado=$(($1 * $i))
 echo "$1 * $i = $resultado"
done
