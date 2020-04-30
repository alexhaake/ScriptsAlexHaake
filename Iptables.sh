#!/bin/bash
clear
while :
do
echo " Escoja una opcion "
echo "1. Crear documento de bloqueo"
echo "2. Añadir IP al documento"
echo "3. Bloquear IPs del documento"
echo "4. Listar IP bloqueadas"
echo "5. Borrar IP bloquedas"
echo "6. Bloquear Puerto tcp/udp"
echo "7. Abrir Puerto tcp/udp"
echo "0. salir"
echo -n "Seleccione una opcion [1 - 9]"
read opcion
case $opcion in
1)echo "Lista de Bloqueo" > ips.txt ;;
2)echo "Introduzca la ip ( 0.0.0.0 )";
	read aip;
	if expr "$aip" : '[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$'; then
		echo "IP Añadida";	
		  	echo $aip >> ips.txt;	
	else
		  echo "ERROR Formato";
	fi
;;
3) 
iptables -F
for IP in `cat ips.txt`
        do
         echo $IP
                iptables -I INPUT -s $IP -j DROP
        done

;;
4)
iptables -L
;;
5)
iptables -F
;;
6)		
	echo "1. Entrante"
	echo "2. Saliente"
	read opcion
case $opcion in
	1)echo "Inserte el puerto que desea bloquear";
	read puerto;
	iptables -A INPUT -p tcp --dport $puerto -j DROP
	iptables -A INPUT -p udp --dport $puerto -j DROP
	;;
	2)echo "Inserte el puerto que desea bloquear";
	read puerto;	
	iptables -A OUTPUT -p tcp --dport $puerto -j DROP
	iptables -A OUTPUT -p udp --dport $puerto -j DROP
	;;
	0) echo "Saliste: adios";
	exit 1;;
	*) echo "$opcion es una opcion invalida. ";
	;;
	esac
;;
7)	echo "1. Entrante"
	echo "2. Saliente"
	read opcion
case $opcion in
	1)echo "Inserte el puerto que desea bloquear";
	read puerto;
	iptables -A INPUT -p tcp --dport $puerto -j ACCEPT
	iptables -A INPUT -p udp --dport $puerto -j ACCEPT
	;;
	2)echo "Inserte el puerto que desea bloquear";
	read puerto;	
	iptables -A OUTPUT -p tcp --dport $puerto -j ACCEPT
	iptables -A OUTPUT -p udp --dport $puerto -j ACCEPT
	;;
	0) echo "Saliste: adios";
	exit 1;;
	*) echo "$opcion es una opcion invalida. ";
	;;
	esac
;;

0) echo "Saliste: adios";
exit 1;;
*) echo "$opcion es una opcion invalida. ";
echo "Presiona una tecla para continuar...";
read foo;;
esac
done
