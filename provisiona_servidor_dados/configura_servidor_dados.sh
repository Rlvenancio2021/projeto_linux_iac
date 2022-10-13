#!/bin/bash

# Configurando servidor de dados

echo "Atualizando sistema ..."
apt-get update && apt-get upgrade -y

echo "Instalando pacotes e ferramentas ..."
apt-get install gcc make perl curl -y
apt-get install ufw  -y
apt-get install python3-pip python3-venv -y
apt-get install wget -y
apt-get install openssh_d -y

echo "Configurando framework ..."
ufw enable
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh

echo "Configuração realizada com sucesso!!"
