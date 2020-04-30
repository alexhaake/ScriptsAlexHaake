#!/bin/bash
#6 Nos pide la edad y nos dice si es mayor de edad o menor.
echo "escribe tu edad "
read edad

if [ $edad -gt 18 ] || [ $edad -eq 18 ]
then
 echo "mayor"
else
 echo "menor"
fi
