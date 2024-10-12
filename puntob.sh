sudo fdisk /dev/sda
m "Para ver las opciones"
n "Para hacer particiones"
"p para particion primara, 1 o enter para elegir numero de particion, enter, +2G"
n "Otra vez"
"p para partcion primaria, 2 o enter para elegir numero de particion, enter, +2G"
n "Otra vez"
"p para particion primaria, esta es la ultima, 3 o enter para elegir numero de particion, enter, +2G"
"Una vez hechas las 3 particiones primarias, n de vuelta y le damos a e para particion extendida, se pondra por defecto el numero de particion 4, enter y +G1"
"Luego w para guardar"
"Formateo de las particiones"
sudo mkfs.ext4 /dev/sda1
sudo mkfs.ext4 /dev/sda2
sudo mkfs.ext4 /dev/sda3
sudo mkfs.ext3 /dev/sda4
"Una vez formateadas las particiones, las montamos"
sudo mkdir /mnt/sda1/
sudo mkdir /mnt/sda2/
sudo mkdir /mnt/sda3/
sudo mkdir /mnt/sda4/
sudo mount /dev/sda1 /mnt/sda1
sudo mount /dev/sda2 /mnt/sda2
sudo mount /dev/sda3 /mnt/sda3
sudo mount /dev/sda4 /mnt/sda4
"FInalmente para ver lo que hicimos"
sudo lsblk

