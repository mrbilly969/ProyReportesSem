# !/bin/bash/
# Programa para terminar y vover a home o continuar en la misma opcion.
# Autor: Andres

volver=""

homeB() {

	echo -e "\n\e[33m==========================================================\e[39m"
	echo -e "\e[31mYa te quieres ir? Teclea: --Volver\n\e[39m"
	read -p "Respuesta: " -e volver
	case $volver in
		--Volver)
			echo -e "Terminando operacion." 
			sleep 0.5
			echo -e "Volviendo a inicio." 
			sleep  0.5
			exit
			;;
		*) 
			echo -e "\nOk. Tu me indicas...\e[35m[Presiona cualquier tecla + 'Enter']\e[39m"
			sleep 1
			read -p ""
			homeB
			;;		
	esac

}

while [ "$volver"!="--Volver" ];
do
	homeB
done

