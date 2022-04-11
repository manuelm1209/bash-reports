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
ssh -i ~/Documents/AWS/endeavor/endeavor-org-key-2.pem bitnami@52.5.196.229 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
echo
echo
echo
echo "############"
echo "## CAMPUS ##"
echo "############"
ssh -i ~/Documents/AWS/campus-2021/campus-2021.pem bitnami@52.7.82.253 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
echo
echo
echo
echo "############"
echo "## MAPA ##"
echo "############"
ssh -i ~/Documents/AWS/mapa-capital/mapa-de-capital.pem bitnami@3.130.120.185 'echo "## MEMERY INFO ##";free -h | grep "total"; free -h | grep "Mem:";echo;echo "## DISK INFO ##";df -h | grep "Filesystem" ;df -h | grep "/dev/xvda1 "'
echo



