#!/bin/bash

name=$1
lastname=$2
show=$3

if [ "$show" = "true" ]; then
	echo "Hola $name $lastname"
else
	echo "Si quieres ver los datos, selecciona mostrar"
fi












