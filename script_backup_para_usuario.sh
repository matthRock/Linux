#! /bin/bash

#Condicional que retorna erro para o usuário caso ele insira menos do que 2 argumentos (nome do arquivo criado + arquivos para compactar
if [ "$#" -lt 2 ]; then
	echo "O programa $0 requer o nome do arquivo  a ser criado e os arquivos a serem compactados"
	exit 1
fi

#Declarando variável do nome do arquivo a ser criado e array de arquivos para serem compactados
arquivo_saida="$1"
arquivos=("${@:2}")

#Comando para compactar os arquivos
tar -czf "$arquivo_saida" "${arquivos[@]}"

#Saída para o usuário após a compactação
echo "Compactado com sucesso em $arquivo_saida"
