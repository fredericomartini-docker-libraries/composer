FROM fredericomartini/debian:8.4
MAINTAINER Frederico Martini <fredmalmeida@gmail.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

ADD php.sh /usr/sbin/
ADD https://getcomposer.org/download/1.0.1/composer.phar /bin/composer

RUN chmod +x /bin/composer
RUN chmod +x /usr/sbin/php.sh
RUN sh /usr/sbin/php.sh

RUN adduser --disabled-password --gecos '' composer 
RUN chown composer:composer /bin/composer

#clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR "/var/www/"
USER composer

