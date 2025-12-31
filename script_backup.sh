#! /bin/bash

#Diretório que será compactado
diretorio_backup="/devops"

#Nome do arquivo criado informando a data e hora exata do sistema
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

#Criando arquivo em formato tar para manter o backup
tar -czf "$nome_arquivo" "$diretorio_backup"

#Informando uma saída (verbose) para o usuário com o nome do arquivo criado
echo "Backup concluído em $nome_arquivo"
