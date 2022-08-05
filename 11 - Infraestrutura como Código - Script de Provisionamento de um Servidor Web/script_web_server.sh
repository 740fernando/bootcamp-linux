#!/bin/bash

echo -e "Atualizando server\n"

apt update
apt upgrade -y

echo -e "Fim da atualização\n" 

echo -e "Iniciando instalação do apache\n"

apt install apache2 -y

echo -e "Fim da instalação do apache\n"

echo -e "Iniciando liberação de acesso no apache"

ufw allow "Apache Full"

echo -e "Fim da liberação de acesso\n"

echo -e "Iniciando instalação do unzip\n"

apt install unzip

echo -e "Fim da instalação do unzip\n"


echo -e "Iniciando download da aplicação web\n"

cd /tmp

wget https://github.com/740fernando/intranet/archive/refs/heads/master.zip

echo -e "Fim do download da aplicação web"

echo -e "Inicio de unzip\n"

unzip master.zip

echo -e "Fim do unzip\n"

echo -e "Inicio da copia de arquivos da aplicação no diretorio padrao apache\n"

cp intranet-master/index.html  /var/www/html/index.html

echo -e "Fim da copia de arquivos da aplicação no diretorio padrao apache\n"


