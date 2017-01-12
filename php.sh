#!/usr/bin/env bash
PHP_DIR='/etc/php5/apache2'

apt-get update
apt-get install php5 php5-curl php5-gd php5-mcrypt php5-intl php-apc php5-sqlite php5-mysql php5-pgsql php-pear php5-dev php5-gmp -y

INSTALL_SUCCESS=$?

#verifica se foi instalado com sucesso
if [ ! $INSTALL_SUCCESS -eq 0 ]; then
    echo "Erro na instalação do PHP"
fi
