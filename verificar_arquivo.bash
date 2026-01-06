#!/bin/bash

#Solicitando nome do arquivo
echo "Digite o nome do arquivo que deseja verificar: "
read nome_arquivo

#Verificando se o arquivo existe
if [ -e $nome_arquivo ]; then
	echo "O arquivo existe."
else
	echo "O arquivo não existe."
fi
