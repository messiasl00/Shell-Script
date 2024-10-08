#! /bin/bash

read -p "Escolha a opção desejada: 'compactar' ou 'descompactar': " opcao 

case "$opcao" in
	"compactar")
		read -p "Nome do arquivo final (.tar.gz): " arquivo_saida
		read -p "Lista de arquivos separados por espaço: " arquivos
		tar -czf "$arquivo_saida" $arquivos
	        echo "Compactados com sucesso em $arquivo_saida!"
	;;
	"descompactar")
		read -p "Nome do arquivo a descompactar (.tar.gz): " arquivo
		tar -xzf $arquivo
		echo "$arquivo descompactado com sucesso!"
	;;
	*)
		echo "Operação inválida"
		echo "Selecione compactar ou descompactar"
		exit 1
esac	
