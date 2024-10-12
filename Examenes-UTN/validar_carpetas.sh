#!/bin/bash

carpetas=("alumno_1" "alumno_2" "alumno_3" "profesores")

for carpeta in "${carpetas[@]}"; do
	sudo cd "/home/parcial1/Examenes-UTN/${carpeta}"
	sudo touch validar.txt
	sudo whoami > validar.txt
	sudo cd ..
done

