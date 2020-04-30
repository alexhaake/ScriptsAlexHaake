#!/bin/bash
#1 Escriba un script que elimine un archivo o directorio pasado como parámetro, y le pregunte si está seguro de llevar a cabo la acción.
echo "introduce el fichero o directorio que desea eliminar"

read f
	if [ -d $f ]
	then
		echo "es un directorio"
		echo "Desea eliminarlo(s/n)"
		read opcion
		case $opcion in
			s) rm -r $f;
		           echo "Fue Eliminado";;		
			n) echo "No fue eliminado";;
		esac
	
	if [ -e $f ]
	then
		echo "Es un archivo"
		echo "Desea eliminarlo(s/n)"
		read opcion
		case $opcion in
			s) rm -r $f;
		           echo "Fue Eliminado";;		
			n) echo "No fue eliminado";;
		esac

	fi
	
 
