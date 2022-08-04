#! /bin/bash

 mkdir /admin /vendas /publico /seguranca

# CRIAMDO GRUPOS

 groupadd grupo_admin
 groupadd grupo_vendas
 groupadd grupo_publico
 groupadd grupo_seguranca


# CRIANDO USUARIOS

 useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_vendas
 useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_vendas
 useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_vendas

 useradd henrique -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_admin
 useradd karina -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_admin
 useradd janaina -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_admin
 useradd mariana -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_admin

 useradd marcos -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_seguranca
 useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_seguranca
 useradd kamily -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G grupo_seguranca

chown root:grupo_admin /admin
chown root:grupo_vendas /vendas
chown root:grupo_publico /publico
chown root:grupo_seguranca /seguranca

chmod 770 /admin
chmod 770 /vendas
chmod 777 /publico
chmod 770 /seguranca
