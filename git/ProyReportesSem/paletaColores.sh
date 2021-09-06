# !/bin/bash
# Programa para imprimir paleta de colores.
# Autor: Andres

echo -e "\n"
for COLOR in {1..255}; do
	echo -en "   \e[38;5;${COLOR}m"
	echo -n "${COLOR}"
done
echo -e "\n"
