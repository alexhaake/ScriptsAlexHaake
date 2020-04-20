#!/bin/bash
#6 Nos pide la edad y nos dice si es mayor de edad o menor.

read -p "Introduce tu edad: " edad
if [[ $edad -ge 18 ]]; then
echo "Mayor de edad."
else
echo "Menor de edad."
fi
