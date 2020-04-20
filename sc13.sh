#! /bin/bash
#13 Script que limpie todas las reglas, y de permiso a todas las conexiones.
clear
#limpia las reglas
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
iptables -Z

#permite conexiones
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -I INPUT -j ACCEPT
