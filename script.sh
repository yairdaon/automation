#!/bin/bash
if [[ $1 == p9 ]]
then
    echo "Sending job to server. First, sync files with server."
    sshpass -pPASSWORD rsync -av -e ssh --exclude-from 'exclude_list.txt' . USERNAME@SERVER:DIRNAME
    sshpass -pPASSWORD ssh -t USERNAME@SERVER "rm server.sh.*"

fi


if [[ $1 == p9 ]]
then
    COMMAND='qsub -q QUEUENAME -lnodes=1:ppn=36 ./DIRNAME/server.sh'
    sshpass -pPASSWORD ssh -t USERNAME@SERVER $COMMAND
    sshpass -pPASSWORD ssh -t USERNAME@SERVER $COMMAND	
    sshpass -pPASSWORD ssh -t USERNAME@SERVER $COMMAND
    sshpass -pPASSWORD ssh -t USERNAME@SERVER $COMMAND	
else
    python3 main.py LOCAL_OPTIONS
fi

if [[ $1 == p9 ]]
then
    sleep 3 && ./status.sh
fi
