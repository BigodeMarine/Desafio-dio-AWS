#!/bin/bash

# Remove usuários existentes
for user in carlos maria joao debora sebastiana roberto josefina amanda rogerio; do
    userdel -r "$user" 2>/dev/null
done

# Remove grupos existentes
for group in GRP_ADM GRP_VEN GRP_SEC; do
    groupdel "$group" 2>/dev/null
done

# Remove diretórios existentes
rm -rf /publico /adm /ven /sec

# Cria os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Cria os usuários e adiciona aos respectivos grupos
useradd -m -G GRP_ADM carlos
useradd -m -G GRP_ADM maria
useradd -m -G GRP_ADM joao

useradd -m -G GRP_VEN debora
useradd -m -G GRP_VEN sebastiana
useradd -m -G GRP_VEN roberto

useradd -m -G GRP_SEC josefina
useradd -m -G GRP_SEC amanda
useradd -m -G GRP_SEC rogerio

# Cria os diretórios
mkdir /publico /adm /ven /sec

# Define root como proprietário
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

# Define permissões
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
