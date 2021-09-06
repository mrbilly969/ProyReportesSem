# !/bin/bash/
# Programa para terminar y vover a home o continuar en la misma opcion.
# Autor: Andres

volver=""

homeB() {
	echo -e "\nYa te quieres ir? Teclea: --Volver\n"
	read -p "Respuesta: " -e volver
	case $volver in
		--Volver)
			echo -e "Terminando operacion." 
			sleep 0.1
			echo -e "....................."
			sleep 0.1
			echo -e "...................."
			sleep 0.1
			echo -e "..................."
			sleep 0.1
			echo -e ".................."
			sleep 0.1
			echo -e "................."
			sleep 0.1
			echo -e "................"
			sleep 0.1
			echo -e "..............."
			sleep 0.1
			echo -e ".............."
			sleep 0.1
			echo -e "............."
			sleep 0.1
			echo -e "............"
			sleep 0.1
			echo -e "..........."
			sleep 0.1
			echo -e ".........."
			sleep 0.1
			echo -e "........."
			sleep 0.1
			echo -e "........"
			sleep 0.1
			echo -e "......."
			sleep 0.1
			echo -e "......"
			sleep 0.1
			echo -e "....."
			sleep 0.1
			echo -e "...."
			sleep 0.1
			echo -e "..."
			sleep 0.1
			echo -e ".."
			sleep 0.1
			echo -e "."
			sleep 0.1
			echo -e ""
			sleep 0.1
			exit
			;;
		*) 
			echo -e "\nOk. Tu me indicas..."
			sleep 1
			;;		
	esac

}

while [ "$volver"!="--Volver" ];
do
	homeB
done

