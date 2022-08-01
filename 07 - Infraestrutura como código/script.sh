#!/bin/bash

echo "init process"
echo
echo "Criando diretórios..."

mkdir /adm
mkdir /guest
mkdir /viewer

echo "...Fim da criação de diretórios"

echo "Criando grupos de usuários.."

groupadd GRP_ADM
groupadd GRP_GUEST
groupadd GRP_VIEWER

echo "...FIm da criação de grupos de usuários"

echo

echo "Criando users..."

useradd admin -c "Admin" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd guest -c "Guest" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_GUEST
useradd viewer -c "Viewer" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VIEWER

echo "... Fim da criação do user"

echo

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_GUEST /guest
chown root:GRP_VIEWER /viewer

chown 770 /adm
chmod 760 /guest
chmod 740 /viewer

echo "... Fim da especificação permissões do diretório"




