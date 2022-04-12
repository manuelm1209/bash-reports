#!/bin/bash

echo
function banner(){
    echo " @@@@@@@@@@     @@@  @@@@@@@    @@@   @@@@@@@   @@@@@@@@   
 @@@@@@@@@@@   @@@@  @@@@@@@   @@@@  @@@@@@@@  @@@@@@@@@@  
 @@! @@! @@!  @@@!!    @@!    @@@!!  !@@       @@!   @@@@  
 !@! !@! !@!    !@!    !@!      !@!  !@!       !@!  @!@!@  
 @!! !!@ @!@    @!@    @!!      @!@  !@!       @!@ @! !@!  
 !@!   ! !@!    !@!    !!!      !@!  !!!       !@!!!  !!!  
 !!:     !!:    !!:    !!:      !!:  :!!       !!:!   !!!  
 :!:     :!:    :!:    :!:      :!:  :!:       :!:    !:!  
 :::     ::     :::     ::      :::   ::: :::  ::::::: ::  
  :      :       ::     :        ::   :: :: :   : : :  :   "
}                                                  
banner                                                
function endeavor(){
    echo
    echo "#####################"
    echo "## ENDEAVOR.ORG.CO ##"
    echo "#####################"
    echo
    # Verificar la existencia de la llave para endeavor.org.co.
    if [ -e ~/Documents/AWS/endeavor/endeavor-org-key-2.pem ];
    then
        ssh -i ~/Documents/AWS/endeavor/endeavor-org-key-2.pem bitnami@52.5.196.229 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
    else
    echo "ERROR: No se encuentra el llave privada para endeavor.org.co en el directorio ~/Documents/AWS/endeavor/".
    fi
}
function campus(){
    echo
    # Verificar la existencia de la llave para endeavor.org.co.
    if [ -e ~/Documents/AWS/campus-2021/campus-2021.pem ];
    then
        echo
        echo
        echo "############"
        echo "## CAMPUS ##"
        echo "############"
        ssh -i ~/Documents/AWS/campus-2021/campus-2021.pem bitnami@52.7.82.253 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
    else
    echo "ERROR: No se encuentra el llave privada para endeavorcampus.com en el directorio ~/Documents/AWS/campus-2021/".
    fi
}
function mapa(){
    echo
    # Verificar la existencia de la llave para endeavor.org.co.
    if [ -e ~/Documents/AWS/mapa-capital/mapa-de-capital.pem ];
    then
        echo
        echo
        echo "############"
        echo "## MAPA ##"
        echo "############"
        ssh -i ~/Documents/AWS/mapa-capital/mapa-de-capital.pem bitnami@3.130.120.185 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
    else
    echo "ERROR: No se encuentra el llave privada para endeavorcampus.com en el directorio ~/Documents/AWS/mapa-capital/".
    fi
}
EXIT=1
OPCION="1"
while [ $OPCION -ne "5" ]; do
    echo
    echo "#########################################################"
    echo "#########################################################"
    echo
    echo "Selecciona el reporte que quieres generar."
    echo "1- Todo."
    echo "2- endeavor.org.co"
    echo "3- endeavorcampus.com"
    echo "4- mapadecapital.endeavorcampus.com"
    echo "5- SALIR"
    echo
    read -p "Tu selección: " OPCION
    clear
    banner
    if [ $OPCION == 1 ]; then
        endeavor
        campus
        mapa
    elif [ $OPCION == 2 ]; then
        endeavor
    elif [ $OPCION == 3 ]; then
        campus
    elif [ $OPCION == 4 ]; then
        mapa
    fi
done
echo


