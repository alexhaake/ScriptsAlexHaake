#!/bin/bash
clear

echo "Introduzca (f/d) f:Ficheros d:Directorios "
read opcion;
case $opcion in
	d) x="-d"
	d="directorio"
	;;
	f) x="-f"
	f="fichero"
	;;
*) echo "$opcion es una opcion invalida. ";
esac

while :
do
echo " Escoja una opcion "
echo "1. Crea-> $d $f"
echo "2. Eliminar-> $d $f"
echo "3. Copìar-> $d $f "
echo "4. Dar permisoso-> $d $f"
echo "5. Cambiar tipo(f/d)"
echo "0. salir"
echo -n "Seleccione una opcion [1 - 4]"
read opcion
case $opcion in
1)
echo "Nombre del $d $f: "
read di
        if [ ! $x $di ];then
	 echo "El $d $f no existe"
         mkdir $di
        else
          echo "El $d $f ya existe"
        fi
;;
2)
echo "Nombre del $d $f: "
read di
 if [ ! $x $di ];then
         
         echo "El $d $f no existe"
        else
	  rm -r $di
          echo "El $d $f se elimino"
        fi
;;
3)
echo "Nombre del $d $f: "
read di
 if [ ! $x $di ];then         
        echo "El $d $f no existe"
        else
          echo "inserte nombre del directorio donde guardar la copia"
	  read save
		if [ ! -d $save ];then
		echo "no existe $save se creo"
		echo "archivo copiado en $save"
		   cp -r $di $save
		else
		 echo "existe el directorio"
		 echo "desea copiarlo en este directorio (s/n)?"
		 		read opcion;
				case $opcion in
					s) cp -r $di $save
					   echo "se copio $di en $save" 
					;;
					n) echo "nose copio"
					;;
				*) echo "$opcion es una opcion invalida. ";
				esac 
		fi 	 
        fi
;;
4)echo "Nombre del $d $f: "
read di
 if [ ! $x $di ];then         
         echo "El $d $f no existe"
        else
	  chmod 777 $di
	  echo "PERMISOS CONCEDIDOS"
          ls $x $di -l 
        fi
;;

5)clear
echo "Introduzca (f/d) f:Ficheros d:Directorios "
read opcion;
case $opcion in
	d) x="-d"
	d="directorio"
	;;
	f) x="-f"
	f="fichero"
	;;
*) echo "$opcion es una opcion invalida. ";
esac
;;
0) echo "Saliste: adios";
exit 1;;
*) echo "$opcion es una opcion invalida. ";
echo "Presiona una tecla para continuar...";
read foo;;
esac
done
