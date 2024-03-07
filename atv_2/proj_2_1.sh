#!/bin/bash

nome_arquivo="$1"

if [ -f "$nome_arquivo" ]; then
	#echo "Arquivo padrão"
	exit 0
        
    elif [ -d "$nome_arquivo" ]; then
    	#echo "Diretório"
        exit 1
        
    elif [ -x "$nome_arquivo" ]; then
        #echo "Executável"
        exit 2
        
    else
        #echo "Tipo de arquivo desconhecido"
        exit 3  # Tipo de arquivo desconhecido
fi
