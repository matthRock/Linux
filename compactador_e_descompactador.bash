#!/bin/bash

#Solicitando opção que o usuário deseja efetuar
read -p "Insira a opção que deseja efetuar(compactar ou descompactar): " operacao

case "$operacao" in
	"compactar")
		#Solicitando ao usuário qual o nome do arquivo que ele deseja criar
		read -p "Informe o nome do arquivo que deseja criar com a extensão .tar.gz: " nome_arquivo
		
		#solicitando ao usuário os arquivos que ele deseja compactar
		read -p "Informe os arquivos que deseja compactar, separados por um espaço: " arquivos

		#Compactando arquivo
		tar -czf "$nome_arquivo" $arquivos

		#Mensagem de finalização
		echo "Arquivos compactados com sucesso em $nome_arquivo"
	;;
	"descompactar")
		#Solicitando ao usuário qual o nome do arquivo que ele deseja descompactar
                read -p "Informe o nome do arquivo que deseja descompactar com a extensão .tar.gz: " arquivo

                #Solicitando diretório de destino dos arquivos
                read -p "Informe o diretório de destiono: " diretorio_destino

                #Descompactando arquivo
                tar -xzf "$arquivo" -C "$diretorio_destino"

                #Mensagem de finalização
                echo "Arquivos descompactador com sucesso em $diretorio_destino"
	;;
	*)
		echo "Operação inválida"
		echo "Selecione compactar ou descompactar"
		exit 1
esac
