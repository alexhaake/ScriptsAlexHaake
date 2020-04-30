#!/bin/bash
#7 Script que reciba un nombre de fichero, verifique que existe y que es un fichero de lectura-escritura, lo convierta en ejecutable para el usuario y el grupo y muestre el estado final de los permisos.
clear
echo "escriba el nombre del fichero"
read f
selecion=$f
ficheros=$(find -type f);
case $ficheros in
	*)
	permisos=$(ls -l $selecion | cut -d" " -f1);
	echo "nombre del fichero : $selecion";
	echo "contine $permisos permisos";
	echo " ";
	permisos=$(chmod 777 $selecion | cut -d" " -f1);
	echo "nombre del fichero con nuevos permisos : $selecion";
	echo " ";
	permisos=$(ls -l $selecion | cut -d" " -f1);
	echo "contine $permisos permisos";

esac

