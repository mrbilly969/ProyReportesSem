# !/bin/bash
# Programa para alimentar base de Datos.

dato1=""
dato2=0

echo "Programa para alimentar base de Datos"

read -p "Ingresa dato 1: " dato1
read -p "Ingresa dato 2: " dato2

echo "$dato1 | $dato2" >> ./BD/pruebaBD1.xml


