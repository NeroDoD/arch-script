#!/bin/bash

read -n 1 -s -r -p "Formatear el disco duro? (s/n):"
echo
if [[ $REPLY =~ ^[Ss]$ ]]
then
	echo "Formateando el disco duro..."
	pacman -Sy exfat-utils --noconfirm > /dev/null
	mkfs.exfat /dev/sda > /dev/null
	echo "El disco duro ha sido formateado correctamente."
	read -n 1 -s -r -p "Extrae el DVD y pulsa cualquier tecla para apagar el ordenador."
	shutdown "now"
fi