#!/bin/bash
#Autor: p4ntr1st3
#Crea carpetas y subcarpetas

input_type=""
input_namecarpeta=""
input_namesubcarpeta=""
input_typesub=""
ciclo="yes"

read -p "Bienvenido al gestor de carpetas y subcarpetas"
read -p "Deseas crear una carpeta(1) o una carpeta con sub-carpetas(2)?" input_type
        if (( $input_type == 1 )); then
                read -p "Ingrese el nombre de la carpeta: " input_namecarpeta
                mkdir -m 744 $input_namecarpeta
                read -p "Carpeta $input_namecarpeta creada, adios!"
        elif (( $input_type == 2 )); then
                read -p "Ingrese el nombre de la carpeta: " input_namecarpeta
                mkdir -m 744 $input_namecarpeta
                cd $input_namecarpeta
                read -p "Carpeta $input_namecarpeta creada!"
                while [ $ciclo == "yes" ];
                do                                                                                                                                                                                                                                                                                                           
                        read -p "Desea crear una sub-carpeta? (1)PARA CREAR: " input_typesub                                                                                                                                                                                                                                 
                        if (( $input_typesub == 1 )); then                                                                                                                                                                                                                                                                   
                                read -p "Ingrese el nombre de la subcarpeta: " input_namesubcarpeta                                                                                                                                                                                                                          
                                mkdir -m 744 $input_namesubcarpeta                                                                                                                                                                                                                                                           
                                read -p "Carpeta $input_namesubcarpeta creada!"                                                                                                                                                                                                                                              
                        else                                                                                                                                                                                                                                                                                                 
                                read -p "El programa se cerrara"                                                                                                                                                                                                                                                             
                                lista=no                                                                                                                                                                                                                                                                                     
                        fi                                                                                                                                                                                                                                                                                                   
                done                                                                                                                                                                                                                                                                                                         
        else                                                                                                                                                                                                                                                                                                                 
                read -p "Al no escoger una de las dos opciones el programa se cerrara"                                                                                                                                                                                                                                       
        fi
