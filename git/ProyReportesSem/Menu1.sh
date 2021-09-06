# !/bin/bash/
# Reto 4: Programa para crear menu
# Autor: Andres

seleccion=0
nombreArchivo=""
opciones=( "Lectura de directorio actual." "Crear/editar archivo nuevo. (Ingresa nombre...)" "Lee tu archivo." "Crear directorio nuevo. (Ingresa nombre...) " "Accede a tu directorio." "Prueba de indice: lectura de directorio nuevamente." "Lectura de index y su explicacion." "Mostrar Paleta de colores." "Salir..." )
maxOpciones=${#opciones[*]}
indice=$((maxOpciones - 1))
nombreDirectorio=""

while :
do
        #limpiar
        clear
        #desplegar
        echo -e "\n\e[94m==========================================================\e[39m"
        echo -e "\e[32m\e[1m                   [ -- Programa de utilidades -- ]\e[39m\e[0m"
        echo -e "\n\e[94m==========================================================\e[39m"
        echo -e "\e[32m                         \e[1m[  -- Menu principal --  ]\e[39\e[0m"
        echo -e "\n\e[94m==========================================================\e[39m"
        for ((i=0;i<${#opciones[*]}; i++))
        do
                echo -e "$i. ${opciones[$i]}\e[39m"
        done
        echo -e "\n\e[94m==========================================================\e[39m"

        #Leer seleccion del usuario
        echo -e "\e[35mIngrese una opcion [0-$indice]: \e[39m\n"
        read -n2 -p " -> " -e seleccion
        echo -e "\n\e[94m==========================================================\e[39m"

        #Validar la opcion ingresada
	case $seleccion in
		0)
			#Lectura del directorio actual
			echo -e "Lectura de directorio actual: "
			ls -la
			sleep 1 
			bash ./funct_bHome/funct_bHome_pressEnter.sh
			sleep 1
			;;
		1)
			#Crear o editar un nuevo archivo
			echo -e "Creando/Editando un nuevo archivo.
			\n#Para editar un archivo de la siguiente lista, teclea su nombre en la flecha: "
			ls
			echo -e "\nIngresa nombre del archivo: "
			echo -e "\n\e[33mPara cancelar operacion, teclea: '--Cancelar'\e[39m"
			echo -e "\n\e[94m==========================================================\e[39m"
			read -p " -> " -e nombreArchivo
			if [ $nombreArchivo != '--Cancelar' ] 
			then
				vim $nombreArchivo
			else
				bash ./funct_bHome/funct_bHome_pressEnter.sh
				sleep 1
			fi
			;;
		2)
			#Prueba de indice
			echo -e "\nEsta prueba es la $seleccion. y funciona"
			ls
			bash ./funct_bHome/funct_bHome_pressEnter.sh
			sleep 1
			;;
		3)
			#Crear nuevo directorio
			echo -e "Creando un nuevo directorio.
			\nIngresa nombre del directorio: "
			echo -e "\n\e[33mPara cancelar operacion, teclea: '--Cancelar'\e[39m"
			echo -e "\n\e[94m==========================================================\e[39m"
			read -p " -> " -e nombreNuevoDirectorio
			if [ $nombreNuevoDirectorio != '--Cancelar' ] 
			then
				mkdir ./$nombreNuevoDirectorio

			else
				bash ./funct_bHome/funct_bHome_pressEnter.sh
				sleep 1
			fi
			;;
		4)
			# Opcion pendiente, "Cambiar de directorio"
			echo -e "##Opcion  en construccion\n"
			echo -e  "Cual de estos archivos?:\n"
			ls
			read -p " -> " $nombreDirectorio
			cd ./
			;;
		5)
			#Despedida y salida
			echo -e "\nHasta Luego."
			sleep 1
			clear
			exit 0
			;;
		6)
			bash index.sh
			sleep 1
			bash ./funct_bHome/funct_bHome_pressEnter.sh
			;;
		7)
			#Imprimir paleta de colores
			bash paletaColores.sh
			sleep 1
			bash ./funct_bHome/funct_bHome_pressEnter.sh
			sleep 1
			;;
		8)
			echo -e "\nHasta luego..."
			sleep 1
			exit
			;;
		*)
			#Opcion no reconocida
			echo -e "\nOpcion no reconocida;  \n Intenta de nuevo. :)\n Ok?... \e[35m[Presiona 'Enter' para intentar de nuevo]\e[39m"
			read -p ""
			;;
	esac
done
