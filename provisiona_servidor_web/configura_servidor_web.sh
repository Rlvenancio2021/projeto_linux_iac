#!/bin/bash

echo "Atualizando sistema ..."
apt-get update && apt-get upgrade -y


echo "Instalando pacotes e ferramentas ..."
apt-get install gcc make perl curl -y
apt-get install ufw -y
apt-get install openssh-server -y
apt-get install apache2 -y
apt-get install python3-pip python3-venv libapache2-mod-wsgi.py3 -y
apt-get install wget -y
apt-get install unzip

echo "Configurando framework ..."
ufw enable
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 80
ufw allow 443

echo "Configuração realizda com sucesso !!"
