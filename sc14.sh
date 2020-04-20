#!/bin/bash
#14 Script que limpie todas las reglas, y prohíba cualquier conexión.
clear
#limpia las reglas
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
iptables -Z
#permite conexiones
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
iptables -I INPUT -j DROP
