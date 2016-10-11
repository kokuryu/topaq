#!/bin/bash
# 2paq- Explorador de paquetes
#VARIABLES
correcto="1"
#PANTALLA PRINCIPAL-ASIGNAR NOMBRE DE ARCHIVO
	echo "Leyendo paquetes"
	echo "Asigna un nombre al archivo donde guardar la lista de paquetes"
#NOMBRE DE ARCHIVO
	read nombre
#CREAR ARCHIVO	
dpkg -l > $nombre.txt
#SEGUNDA PANTALLA-LEER ARCHIVO
	echo "Archivo de texto $nombre creado"
	
	echo "Quieres leerlo?"
	echo "1.Si"
	echo "2.No"
#RESPUESTA A LEER ARCHIVO
	read leer
#ABRIR ARCHIVO
if leer=$correcto
then gedit $nombre.txt;
else
exit
fi
