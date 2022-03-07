#! /bin/bash
#inicio del bash
#inicio de etiqueta
: << 'Header'
Autor:          Jorge Chinchilla
Fecha:          06-03-2022
Tipo archivo:   Script de bash
Ejecución:      ./clima.sh
Resumen:        Obtención del clima en Guatemala.
Header
#fin de etiqueta
#se obtiene información del estado del tiempo y
#se agrega dicha información a un archivo de texto
#dentro del directorio del bash
curl wttr.in/Guatemala > ~/ejercicio_docker/Ejercicio1/tiempo.txt
#se leen las primeras 7 lineas del archivo de tecto
head -n7 ~/ejercicio_docker/Ejercicio1/tiempo.txt
#se borra el archivo de texto creado anteriormente
rm ~/ejercicio_docker/Ejercicio1/tiempo.txt
#fin del bash