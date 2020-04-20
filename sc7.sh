#!/bin/bash
#7 Script que reciba un nombre de fichero, verifique que existe y que es un fichero de lectura-escritura, lo convierta en ejecutable para el usuario y el grupo y muestre el estado final de los permisos.
clear
if [[ ! -f $1 ]]; then
	read -p "El fichero no existe o es un directorio.
¿Desea crear el fichero $1? S/N: " opcion
	if [[ $opcion == "S" || $opcion == "s" ]]; then
	 echo > $1
	fi
elif [[ -r $1 && -w $1 ]]; then
	echo "Tiene permisos de lectura y escritura."
	 chmod ug+x $1
	 ls -l $1
	else
	 echo "El fichero no tiene permisos de lectura-escritura."
fi
