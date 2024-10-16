#! /bin/bash

if pgrep snapd &> /dev/null
then
	echo "Serviço snapd está operando $( date +"%d-%m-%Y_%H:%M:%S")"
else
	echo "Serviço snapd fora de operação $( date +"%d-%m-%Y_%H:%M:%S")"
fi
