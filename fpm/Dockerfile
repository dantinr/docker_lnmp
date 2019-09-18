FROM php:7.3.9-fpm
MAINTAINER Dante "dante@freeaihub.com"
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN docker-php-ext-install pdo_mysql

RUN curl -fsSL 'http://pecl.php.net/get/redis-5.0.2.tgz' -o redis-5.0.2.tgz --progress \
    && mkdir -p redis \
    && tar -xf redis-5.0.2.tgz -C redis --strip-components=1 \
    && rm redis-5.0.2.tgz \
    && ( \
        cd redis \
        && phpize \
        && ./configure \
        && make -j "$(nproc)" \
        && make install \
    ) \
    && rm -r redis \
    && docker-php-ext-enable redis
