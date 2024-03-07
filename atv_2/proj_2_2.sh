#!/bin/bash

nome_arquivo=$1

./proj_2_1.sh $nome_arquivo

tipo_arquivo=$?

case $tipo_arquivo in
	0)
		echo "Arquivo padrão"
		;;
	1)
		echo "Diretório"
		;;
	2)
		echo "Executável"
		;;
	*)
		echo "Arquivo não encontrado"
		;;
esac
