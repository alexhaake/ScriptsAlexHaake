#!/bin/bash

#1 Escriba un script que elimine un archivo o directorio pasado como parámetro, y le pregunte si está seguro de llevar a cabo la acción.

if [[ -e $1 ]]; then
 if [[ -d $1 ]]; then
  read -p "¿Quiere borrar el directorio $1? (S/N): " opcion
 if [[ $opcion == "s" || $opcion == "S" ]]; then
	rm -r $1
 fi		
  else
 read -p "¿Quiere borrar el fichero $1? (S/N): " opcion
 if [[ $opcion == "s" || $opcion == "S" ]]; then
  rm $1
 fi
 fi	
else
 echo "No existe ."
fi
