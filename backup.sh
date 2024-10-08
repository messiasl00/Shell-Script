#! /bin/bash

read -p "Informe o caminho do arquivo/diretório:" backup

if [ -e $backup ]; then
	nome="backup_$(date +%d%m%Y_%H%M%S).tar.gz"
	tar -czf "$nome" "$backup"
	echo "$backup foi concluído com sucesso em $nome!"
else
	echo "O $backup não existe." 
fi
