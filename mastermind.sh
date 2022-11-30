#!/bin/bash

echo "
  __  __           _____ _______ ______ _____  __  __ _____ _   _ _____  
 |  \/  |   /\    / ____|__   __|  ____|  __ \|  \/  |_   _| \ | |  __ \ 
 | \  / |  /  \  | (___    | |  | |__  | |__) | \  / | | | |  \| | |  | |
 | |\/| | / /\ \  \___ \   | |  |  __| |  _  /| |\/| | | | |     | |  | |
 | |  | |/ ____ \ ____) |  | |  | |____| | \ \| |  | |_| |_| |\  | |__| |
 |_|  |_/_/    \_\_____/   |_|  |______|_|  \_\_|  |_|_____|_| \_|_____/ 
 "
                                                                         
                                                               
echo "Bienvenido a MasterMind. El juego consiste en lo siguiente: "
echo "- Se generará una combinación de 4 números al azar entre el 0 y el 9 en las posiciones de 1 a 4."
echo "- El usuario debe intentar adivinar la combinación exacta de números en el menor número de intentos posibles."
echo "Buena suerte !"

#Generación aleatoria de los 4 números del bot. No variarán en todo el programa
nbot1=$(shuf -i 0-9 -n1)
nbot2=$(shuf -i 0-9 -n1)
nbot3=$(shuf -i 0-9 -n1)
nbot4=$(shuf -i 0-9 -n1)

#Inicialización de las variables que serán usadas posteriormente por el usuario. Variarán posteriormente
nuser1=0
nuser2=0
nuser3=0
nuser4=0

#Variable intentos utilizada para contar las veces que se ha intentado acertar los números
intentos=0

#Función que sirve para contrastar los números introducidos por el usuario contra los números del bot generados aleatoriamente
function checknuser() {

if [ $1 -eq $2 ]
then 
	echo "O"
elif [ $1 -eq $nbot1 -o $1 -eq $nbot2 -o $1 -eq $nbot3 -o $1 -eq $nbot4 ]
then
	echo "X"
else
	echo "-"
fi

}

#Función cuya finalidad es recoger los números introducidos por el usuario y almacenarlos en las variables explicadas anteriormente
function number_request {

read -p "Introduzca el número 1 --> " nuser1
read -p "Introduzca el número 2 --> " nuser2
read -p "Introduzca el número 3 --> " nuser3
read -p "Introduzca el número 4 --> " nuser4

}

#Parte principal del programa. Aquí es donde se cohexionan todas las funciones anteriores.
#Consta de un while que compara si los números introducidos por el usuario coinciden con los generados por el bot. 
#En caso negativo, el usuario estará bloqueado hasta que acierte los 4 números.  
while [ $nuser1$nuser2$nuser3$nuser4 -ne $nbot1$nbot2$nbot3$nbot4 ]
do

	number_request
	
	checknuser $nuser1 $nbot1
	
	checknuser $nuser2 $nbot2
	
	checknuser $nuser3 $nbot3
	
	checknuser $nuser4 $nbot4
	
	echo " "
	
	let intentos++
	
done
echo "Has ganado en $intentos intentos!
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣠⣤⣤⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠖⠊⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠲⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡤⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢢⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⡀⠈⠀⡀⠀⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⡰⠁⠀⠀⠀⠀⠀⠀⠀⠘⡆⡜⠁⠀⠀⠀⠀⢧⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⣀⣤⡂⠀⠇⠱⠀⡀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⠈⢄⡀⢠⣟⢭⣥⣤⠽⡆⠀⡶⣊⣉⣲⣤⢀⡞⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⡀⠀⠐⠂⠘⠄⣈⣙⡡⡴⠀⠀⠙⣄⠙⣛⠜⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⢦⡀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠄⠊⠀⠀⠀⠀⡸⠛⠀⠀⠀⢸⠆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⠦⢄⣘⣄⠀⠀⠀⠀⠀⠀⠀⡠⠀⠀⠀⠀⣇⡀⠀⠀⣠⠎⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠁⠈⡟⠒⠲⣄⠀⠀⡰⠇⠖⢄⠀⠀⡹⡇⢀⠎⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⠀⡇⠀⠀⠹⠀⡞⠀⠀⢀⠤⣍⠭⡀⢱⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣀⣀⣠⠞⠀⠀⢠⡇⠀⠀⠀⠀⠁⠀⢴⠥⠤⠦⠦⡼⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣀⣤⣴⣶⣿⣿⡟⠁⠀⠋⠀⠀⠀⢸⠁⠀⠀⠀⠀⠀⠀⠀⠑⣠⢤⠐⠁⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠬⠥⣄⠀⠀⠈⠲⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⠀⠀⢀⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠦⠤⢤⣄⣀⣠⠤⢿⣶⣶⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣤⣀⣀⣀⣀⣀⣀⣀⣤⣤⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿"

