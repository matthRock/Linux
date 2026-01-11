#!/bin/bash

#Atualizando pacotes disponíveis
apt-get update -y && apt-get upgrade -y

#Sinalizando para o usuário que foi finalizada a atualização
echo "Pacotes atualizados com sucesso"
