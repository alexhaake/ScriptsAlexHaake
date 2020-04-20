#!/bin/bash
#4 En un fichero tengo una palabra clave. Haz un script que muestre si dicha palabra es el parámetro pasado o no.
clear
#creo fichero si no existe
if [[ ! -e clave.txt ]]; then
$(echo "" > clave.txt)
fi
clave=$(cat clave.txt)
if [[ $clave == $1 ]]; then
	echo "correcto:la palabra era $1"
else
	echo "incorrecto :vuelve a intentarlo"
fi
