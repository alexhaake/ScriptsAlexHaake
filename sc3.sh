#!/bin/bash
#3 Realiza un script que compruebe si el usuario actual del sistema es blas, si es así visualiza su nombre 5 veces, sino te despides de él amigablemente.

v1='blas'
v2=$(id -un)
if [ $v2 == $v1 ]
then
	for i in 1 2 3 4 5; do
	echo $v2;
	done
	 
else
echo "Hasta luego."
fi
