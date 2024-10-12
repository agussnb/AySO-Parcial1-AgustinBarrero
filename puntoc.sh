"Paso a paso del punto c"

"Creamos los usuarios"
sudo useradd developer1
sudo useradd teste1
sido useradd devops1
sudo useradd devops2
"Creamos los grupos y asignamos usuarios a dichos grupos"

sudo groupadd grupodevelopers ("Creamos el grupo grupodevelopers")
sudo groupadd grupodevops ("Creamos el grupo grupodevops")
sudo groupadd grupotesters ("Creamos el grupo grupotesters")
sudo usermod -aG grupodevops developer1 ("Le ponemos el grupo grupodevops a developer1")
sudo usermod -aG grupodevelopers developer1 ("Le ponemos el grupo grupodevelopers a developer1")
sudo usermod -aG grupotesters tester1 ("Le ponemos el grupo grupotesters a tester1")
sudo usermod -aG grupodevops devops1 ("Le ponemos el grupo grupodevops a devops1")
sudo usermod -aG grupodevelopers devops1 ("Le ponemos el grupo grupodevelopers a devops1")
sudo usermod -aG grupodevops devops2 ("Le ponemos el grupo grupodevops a devops2")
"Ahora vamos a ajustar los permisos para las carpetas creadas anteriormente"

"En la carpeta /Examenes-UTN/alumno_1 vamos a hacer que el dueño sea el developer1 y el grupo sera grupodevelopers"
sudo chmod 755 /home/parcial1/Examenes-UTN/alumno_1 ("Observacion: uso la ruta entera, porque si quiero usar solo /Examenes-UTN/alumno_1 no deja realizar el comando")
"En la carpeta /Examenes-UTN/alumno_2 el dueño sera tester1, el grupo sera grupotesters"
chmod 754 /home/parcial1/Examenes-UTN/alumno_2
"En la carpeta /Examenes-UTN/alumno_3 el dueño sera devops1, el grupo sera grupodevops"
chmod 700 /home/parcial1/Examenes-UTN/alumno_3
"En la carpeta /Examenes-UTN/profesores el dueño sera devops2, el grupo sera grupodevops"
chmod 775 /home/parcial1/Examenes-UTN/alumno_4

"Por ultimo creamos un script que guardara la salida del comando whoami en un archivo validar.txt"
./validar_carpetas.sh
