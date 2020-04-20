#!/bin/bash
#15 Tendrá 3 parámetros: red(ip), entrada-salida, aceptar-denegar. Dará estos permisos a iptables.
clear
if [[ $2 == "entrada" ]]; then
	if [[ $3 == "aceptar" ]]; then
		iptables -A INPUT -s $1 -j ACCEPT
		echo "entrada aceptar"
	elif [[ $3 == "denegar" ]]; then
		iptables -A INPUT -s $1 -j DROP
		echo "entrada denegar"
	fi

elif [[ $2 == "salida" ]]; then
	if [[ $3 == "aceptar" ]]; then
		iptables -A INPUT -s $1 -j ACCEPT
		echo "salida aceptar"
	elif [[ $3 == "denegar" ]]; then
		iptables -A INPUT -s $1 -j DROP
		echo "salida denegar"
	fi
fi
