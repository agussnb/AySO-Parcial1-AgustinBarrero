"Dentro de home/parcial1 creo un archivo filtrobasico.txt y luego le guardo la siguiente informacion: Ram total, y informacion del fabricante del chasis"
sudo touch filtrobasico.txt
"Le damos permisos"
sudo chmod a+rwx filtrobasico.txt
(sudo cat /proc/meminfo | grep MemTotal; sudo dmidecode -t chassis | grep -A1 "Chassis" | tail -n 2) >> filtrobasico.txt
"Utilizamos parentesis para poder hacer ambos comandos a la vez y >> para enviar lo que devuelven los mismos al txt"
