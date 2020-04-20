#!/bin/bash

# 10 Mostramos menu, con productos para vender, luego nos pide que introduzcamos la opcion. luego mensaje que indica que introduzca moneda. Si ponemos precio exacto nos da mensaje, "Gracias buen provecho", si ponemos menos, nos diga falta. Si poner mas valor, nos indique el cambio con mensaje.
clear
read -p "Productos a vender
1) Pizza: 9€ -- 2) Kebat: 3€ -- 3) Patatas: 1€ --4) Salir
Introduzca el producto que desea comprar: " opcion
case $opcion in
1) read -p "Introduce los 9 euros: " moneda
	if [[ $moneda = 9 ]]; then
		echo "Gracias buen provecho."
	elif [[ $moneda -gt 9 ]]; then
		echo "El cambio: "$((moneda - 9))
	elif [[ $moneda -lt 9 ]]; then
		echo "Falta dinero."
	fi
	;;
2) read -p "Introduce los 3 euros: " moneda
	if [[ $moneda = 3 ]]; then
		echo "Gracias buen provecho."
	elif [[ $moneda -gt 3 ]]; then
		echo "El cambio: "$((moneda - 3))
	elif [[ $moneda -lt 3 ]]; then
		echo "Falta dinero."
	fi
	;;
3) read -p "Introduce los 1 euro: " moneda
	if [[ $moneda = 1 ]]; then
		echo "Gracias buen provecho."
	elif [[ $moneda -gt 1 ]]; then
		echo "El cambio: "$((moneda - 1))
	elif [[ $moneda -lt 1 ]]; then
		echo "Falta dinero."
	fi
	;;		
*) exit 0
	;;		
esac
