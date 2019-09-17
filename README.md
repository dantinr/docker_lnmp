## WEBROOT
- mkdir /wwwroot

## Clone code
- cd /wwwroot
- git clone git@gitlab.com:dantinr/fah_www.git (提前配置公钥)
- cd fah_www
- composer install -vvv
- chmod -R 777 storage
- cp .env.example .env
- php artisan key:generate


## Nginx + PHP-FPM + MYSQL
- docker pull nginx
- docker pull php:7.3.9-fpm
- docker pull mysql:5.7.27

### Build from Dockerfile

启动PHP-FPM
- docker run --name freeaihub-php -d -v /wwwroot:/wwwroot php:7.3.9-fpm


启动Nginx容器
- docker build -t freeaihub-nginx .
- docker run --name nginx -d -p 80:80 -v /wwwroot:/wwwroot --link freeaihub-php freeaihub-nginx

