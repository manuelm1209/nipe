#!/bin/bash
USUARIO="nombre de usuario"
# DIRECTORIO se debe modificar si la ubicación no es esta.
DIRECTORIO="/home/${USUARIO}/Documents/Tools/nipe/"
#Confirmamos que el archivo nipe.pl se encuentre en el directorio: "~/Documents/Tools/nipe".
test_nipe(){
  if [ -e ${DIRECTORIO}nipe.pl ]
  then
    echo "nipe.pl si existe"
    cd $DIRECTORIO
    sudo perl ${DIRECTORIO}nipe.pl start
    supo perl nipe.pl status
    #añadir el cambio de mac
    # macchanger -r eth0
  else
    echo "nipe.pl no existe"
  fi

}

test_nipe
