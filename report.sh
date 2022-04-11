#!/bin/bash

echo                                                    
echo " @@@@@@@@@@   @@@  @@@@@@@  @@@   @@@@@@@   @@@@@@   "
echo " @@@@@@@@@@@  @@@  @@@@@@@  @@@  @@@@@@@@  @@@@@@@@  "
echo " @@! @@! @@!  @@!    @@!    @@!  !@@       @@!  @@@  "
echo " !@! !@! !@!  !@!    !@!    !@!  !@!       !@!  @!@  "
echo " @!! !!@ @!@  !!@    @!!    !!@  !@!       @!@  !@!  "
echo " !@!   ! !@!  !!!    !!!    !!!  !!!       !@!  !!!  "
echo " !!:     !!:  !!:    !!:    !!:  :!!       !!:  !!!  "
echo " :!:     :!:  :!:    :!:    :!:  :!:       :!:  !:!  "
echo " :::     ::    ::     ::     ::   ::: :::  ::::: ::  "
echo "  :      :    :       :     :     :: :: :   : :  :   "
echo
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
echo
echo
echo
# Verificar la existencia de la llave para endeavor.org.co.
if [ -e ~/Documents/AWS/campus-2021/campus-2021.pem ];
then
    echo "############"
    echo "## CAMPUS ##"
    echo "############"
    ssh -i ~/Documents/AWS/campus-2021/campus-2021.pem bitnami@52.7.82.253 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
else
echo "ERROR: No se encuentra el llave privada para endeavorcampus.com en el directorio ~/Documents/AWS/campus-2021/".
fi
echo
echo
echo
# Verificar la existencia de la llave para endeavor.org.co.
if [ -e ~/Documents/AWS/mapa-capital/mapa-de-capital.pem ];
then
    echo "############"
    echo "## MAPA ##"
    echo "############"
    ssh -i ~/Documents/AWS/mapa-capital/mapa-de-capital.pem bitnami@3.130.120.185 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
else
echo "ERROR: No se encuentra el llave privada para endeavorcampus.com en el directorio ~/Documents/AWS/mapa-capital/".
fi
echo



