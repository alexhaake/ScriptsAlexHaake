#!/bin/bash
clear
while :
do
echo " Escoja una opcion "
echo "v1:1  Crear documento de bloqueo"
echo "v1:2  v2: Añadir IP al documento  ( 0.0.0.0 )"
echo "v1:3  Bloquear IPs del documento"
echo "v1:4  Listar IP bloqueadas"
echo "v1:5  Borrar IP bloquedas"
echo "v1:6 v2:1 entrante v2: 2 saliente  Bloquear Puerto tcp/udp "
echo "v1:7 v2:1 entrante v2: 2 saliente  Abrir Puerto tcp/udp"
echo -n "v1: Seleccione una opcion [1 - 7]"

case $1 in
1)echo "Lista de Bloqueo" > ips.txt 
exit 1
;;
2)
	$2
	if expr "$2" : '[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$'; then
		echo "IP Añadida";	
		  	echo $2 >> ips.txt;	
	else
		  echo "ERROR Formato 2 variable";
	fi
exit 1
;;
3) 
iptables -F
for IP in `cat ips.txt`
        do
         echo $IP
                iptables -I INPUT -s $IP -j DROP
        done
exit 1
;;
4)
iptables -L
exit 1
;;
5)
iptables -F
exit 1
;;
6)		
	
	
case $2 in
	1)
	iptables -A INPUT -p tcp --dport $3 -j DROP
	iptables -A INPUT -p udp --dport $3 -j DROP
	exit 1 ;;
	2) 	
	iptables -A OUTPUT -p tcp --dport $3 -j DROP
	iptables -A OUTPUT -p udp --dport $3 -j DROP
	exit 1;;
	
	*) echo "$2 es una opcion invalida. ";
	esac
exit 1
;;
7)	
	
case $2 in
	1)
	$3;
	iptables -A INPUT -p tcp --dport $3 -j ACCEPT
	iptables -A INPUT -p udp --dport $3 -j ACCEPT
	exit 1 ;;
	2)
	$3;	
	iptables -A OUTPUT -p tcp --dport $3-j ACCEPT
	iptables -A OUTPUT -p udp --dport $3 -j ACCEPT
	exit 1 ;;

	*)echo "";
	 echo " $2 es una opcion invalida. " exit 1;
	esac
exit 1
;;
*) echo "$1 es una opcion invalida. "
exit 1
;;
esac
done
