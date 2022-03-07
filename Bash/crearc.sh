#! /bin/bash
#inicio del bash
#inicio de etiqueta
: << 'Header'
Autor:          Jorge Chinchilla
Fecha:          06-03-2022
Tipo archivo:   Script de bash
Ejecución:      ./crearc.sh
Resumen:        Creación de un archivo de C.
Header
#fin de etiqueta
#se definen variables
nombre=""
autor=$(whoami)
fecha=$(date)
comp=$(gcc --version)
#se inicia el programa preguntando el nombre del archivo
echo "Ingrese el nombre del archivo a crear y pulse enter:"
#se espera el ingreso del nombre
read nombre
#se inicia el condicional para saber si se ingresó un nombre
if [ -z "$nombre" ]; then
    #si no se ingresa el nombre no se crea el archivo y finaliza el script
    echo "No se ingresó el nombre, no se crea el archivo."
elif [ -n "$nombre" ]; then
    #si se ingresa un nombre se crea el archivo con extensión
    #.c y se ingresan los datos necesarios al archivo
    touch ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "/*" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Autor: $autor" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Compilador: $comp" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Compilado: gcc "$nombre".c -o "$nombre"" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Fecha: $fecha" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Librerías: Stdio" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Resumen:" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Entrada:" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Salida:" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "//librerías" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "#include <stdio.h>" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "//numerar los pasos del pseudocódigo" >> ~/ejercicio_docker/Ejercicio2/"$nombre".c
    echo "Se ha creado el archivo."
fi
#se finaliza el script con éxito