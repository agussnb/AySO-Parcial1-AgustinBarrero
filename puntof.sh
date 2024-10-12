"Creamos el archivo filtroavanzado.txt"
sudo touch filtroavanzado.txt
"Le damos permisos"
sudo chmod a+rwx filtroavanzado.txt
"Y dentro del filtro avanzado, guardamos, la ip publica, el usuario y el hash del usuario"
echo "Mi IP Publica es : $(curl -s ifconfig.me)" > filtroavanzado.txt
echo "Mi usuario es : $(whoami)" >> filtroavanzado.txt
echo "El hash de mi usuario es : $sudo (grep -w $(whoami) /etc/shadow | cut -d: -f2)" >> filtroavanzado.txt
