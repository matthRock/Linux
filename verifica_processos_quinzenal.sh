#!/bin/bash

#Comando abaixo mostra os 15 processos que mais utilizam memória no servidor, exibindo o id, uso da memória, uso da cpu, o executável, o usuário que está usando o processo e os estados do processo, ordenando de forma desc pelo uso de memória.


saida_dados="/devops/dados/$saida_dados_$(date +\%Y\%m\%d_\%H\%M).txt"

ps axo pid,%mem,%cpu,comm,euser,stat --sort=-%mem | head -n 16 > "$saida_dados"
