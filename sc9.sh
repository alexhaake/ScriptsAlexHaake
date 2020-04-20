#!/bin/bash
# 9 realizar un script que reciba varios parametros y nos diga cuantos de esos parametros son de directorios y cuantos son archivos. $# contador que indica cuantos parametros se pasan.
clear
countD=0
countF=0
for i in $@; do
	if [[ -d $i ]]; then
	countD=$(($countD+1))
	elif [[ -f $i ]]; then
	countF=$(($countF+1))
	fi
done
echo "Directorios son: $countD"
echo "Ficheros son: $countF"
