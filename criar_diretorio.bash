#!/bin/bash

#Exibindo mensagem de boas vindas
echo "Bem vindo!"

#Perguntando o nome do diretório que deseja criar
echo "Digite o nome do diretório que deseja criar:"
read nome_diretorio

#Criando diretório informado
mkdir $nome_diretorio

#Listando arquivos para o usuário antes de encerrar o script
date;ls -lha
