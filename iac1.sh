#!/bin/bash


echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários..."


echo "Grupo ADM..."

useradd carlos -c "Carlos Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

echo "Grupo VEN..."

useradd debora -c "Debóra Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN


echo "Grupo SEC..."

useradd josefina -c "Josefina Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd Amanda -c "Amanda Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd Rogerio -c "Rogerio Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC


echo "Criando as Permissões dos diretórios ..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/


chmod 777 /publico/ 
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/




echo "Finalizado!!"
