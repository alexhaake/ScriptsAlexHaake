#!/bin/bash
#5 Tenemos un menu principal: 1 suma: lee dos numeros y los suma. 2 Resta. 3 Multiplicación. 4 Salir.
read -p "Introduce-> 1Suma  2Resta 3Multiplicación 4Salir: " opcion
case $opcion in
	1)  
	read -p "Primer número: " n1
	read -p "Segundo número: " n2
	suma=$(($n1 + $n2))
	echo "$n1 + $n2 = $suma"
	;;

	2)  
	read -p "Primer número: " n1
	read -p "Segundo número: " n2
	resta=$(($n1 - $n2))
	echo "$n1 - $n2 = $resta"
	;;

	3)  
	read -p "Primer número: " n1
	read -p "Segundo número: " n2
	multi=$(($n1 * $n2))
	echo "$n1 * $n2 = $multi"
	;;

	*) exit 0
esac
