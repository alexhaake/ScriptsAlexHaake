#!/bin/bash
#5 Tenemos un menu principal: lee dos numeros y los suma,Resta,Multiplicación. Salir 
read -p "Introduce-> 1Suma  2Resta 3Multiplicación 0Salir: " opcion
case $opcion in
	
	1)  
	echo "numero1"
	read n1
	echo "Numero2"
	read n2
	echo "suma = $n1 + $n2"=$((n1+n2))
	;;

	2)  
	echo "numero1"
	read n1
	echo "Numero2"
	read n2
	echo "resta = $n1 - $n2"=$((n1-n2))
	;;
	
	3)  
	echo "numero1"
	read n1
	echo "Numero2"
	read n2
	echo "Multiplicacions = $n1 * $n2"=$((n1*n2))
	;;

	0)
	echo "bye"
	exit 
	;; 
	
esac

