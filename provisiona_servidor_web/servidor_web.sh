#!/bin/bash

#### ATUALIZA SISTEMA DO SERVIDOR ####

echo "Atuaizando sistemas do servidor ..."
apt update

apt upgrade -y

#### PARA SERVIDOOR NGINX E EXCLUIR ARQUIVO INDEX.HTML ####

echo "Interrompendo serviço do NGINX ..."
systemctl stop nginx
rm /var/www/html/index.html

#### INSTALA PACOTES APACHE E UNZIP ####

echo "Instalando Apache e Unzip ..."
apt install apache2 -y
apt install unzip -y
rm /var/www/html/index*

#### BAIXA E COPIA ARQUIVOS PARA PASTA HTML ####

echo  "Copiando projeto do site para pasta HTML ...."
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip

cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Processo finalizado com sucesso, já pode usar o site!!"

