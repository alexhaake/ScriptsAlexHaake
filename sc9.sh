#!/bin/bash
# 9 realizar un script que reciba varios parametros y nos diga cuantos de esos parametros son de directorios y cuantos son archivos. $# contador que indica cuantos parametros se pasan.
clear
countD=0
countF=0
ficheros=$(find -type d);
for i in $ficheros;do
	countD=$(($countD+1))
done;
ficheros=$(find -type f);
for i in $ficheros;do
	countF=$(($countF+1))
done;
echo "Directorios son: $countD"
echo "Ficheros son: $countF"
