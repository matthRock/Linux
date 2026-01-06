#!/bin/bash
#Limpando regras pré existentes do firewall
iptables -F
iptables -t nat -F
iptables -t mangle -F
# A linha baixo ativa o módulo do netfilter que evita ataques de DoS
echo 1 > /proc/sys/net/ipv4/tcp_syncookies
# Liberar portas dos serviços necessários
iptables -A INPUT -p TCP --dport 22 -j ACCEPT
iptables -A INPUT -p TCP --dport 80 -j DROP
iptables -A INPUT -p TCP --dport 443 -j DROP
iptables -A INPUT -p TCP --dport 3306 -j DROP
# A linha abaixo faz o bloqueio de conexõs nas demais portas
iptables -A INPUT -p TCP --syn -j DROP
# A linha abaixo desabilita o ping externo
iptables -I INPUT -p ICMP -j DROP
