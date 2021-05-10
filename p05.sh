!/bin/bash
clear
#######COMPROVANT SI L'ARXIU DE GUIÓ L'EXECUTA L'USUARI ROOT###################
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 1
fi

echo -n "ingrese el nombre del paquete de software que desee instalar"
read ps
if ["$ps"= $(find /home -type f -name "$ps") ]
then 
echo "el paquete se encuentra en el directorio"
else 
echo "no exite en el directorio"
fi
exit 0

