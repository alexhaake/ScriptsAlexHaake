#!/bin/bash
#3 Realiza un script que compruebe si el usuario actual del sistema es blas, si es así visualiza su nombre 5 veces, sino te despides de él amigablemente.
clear
usu=$(whoami)
if [[ $usu == blas ]]; then
echo $usu
echo $usu
echo $usu
echo $usu
echo $usu
else
echo "Hasta luego, $usu."
fi
