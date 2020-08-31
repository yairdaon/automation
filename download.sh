#!/bin/bash
sshpass -pPASSWORD rsync -v -e ssh USERNAME@SERVER:DIRNAME/OUTPUT/*.pickle ./OUTPUT
