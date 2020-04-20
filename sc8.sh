#!/bin/bash

# 8 Script que nos diga al pulsar una tecla, si es letra, numero o caracter especial.
clear
while true; do
read -rsn1 e
 if [[ "$e" = [0-9] ]]; then
	echo "Introdujo el numero: $e"
 elif [[ "$e" = [a-z,A-Z] ]]; then
	echo "Introdujo la letra: $e"
 else
	echo "Introdujo el caracter especial: $e"
 fi
done
