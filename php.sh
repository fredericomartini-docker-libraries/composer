#!/usr/bin/env bash
PHP_DIR='/etc/php5/apache2'

apt-get update
apt-get install php5 -y 
INSTALL_SUCCESS=$?

#verifica se foi instalado com sucesso
if [ ! $INSTALL_SUCCESS -eq 0 ]; then
    echo "Erro na instalação do PHP"
fi
