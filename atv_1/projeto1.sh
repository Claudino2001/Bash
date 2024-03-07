# Projeto de 05/03
# Gabriel de Araujo Claudino
# Arthur Sant'Anna de Carvalho Santos
# Luca Torres Villela

#!/bin/bash	
#Shebang diz ao shell para executar via shell bash.

for arq in *	#Trata-se de um laço de repeição. Arq é uma variável que receberá nesse caso, todos os arquivos presentes no diretório, um de cada vez.  
do	#Uma exigência da sintaxe sinalizando o inicio do loop.
	if [ -x "$arq" ]	#Confere se o arquivo é um executável.
	then
		echo $arq é do tipo 1	#Se for verdade mostra-se no terminal a frase "-nome do arquivo- é do tipo 1"
	else
		echo $arq é do tipo 2	##Se for mentira mostra-se no terminal a frase "-nome do arquivo- é do tipo 2"
	fi	#Uma exigência da sintaxe sinalizando o término do if.
done	#Uma exigência da sintaxe sinalizando o término do loop.

