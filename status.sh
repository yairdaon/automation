#!/bin/bash
echo "---------------------Status----------------------------"
sshpass -pPASSWORD ssh USERNAME@SERVER "qstat -u USERNAME" 
echo
echo 


echo "---------------------Output----------------------------"
sshpass -pPASSWORD ssh -t USERNAME@SERVER 'cat server_power9.sh.o*'
echo
echo 

echo "---------------------Error Message---------------------"
sshpass -pPASSWORD ssh -t USERNAME@SERVER 'cat server_power9.sh.e*'
echo 
echo 



