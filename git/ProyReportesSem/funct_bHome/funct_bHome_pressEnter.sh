# !/bin/bash/
# Programa para terminar y vover a home o con tecla + Enter.
# Autor: Andres

volver=""

homeB() {

	echo -e "\n\e[33m==========================================================\e[39m"
	echo -e "Ya te quieres ir? \e[35m[Presiona cualquier tecla + 'Enter']\n\e[39m"
	read -p " -> " -e volver

}

homeB
