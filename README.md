## WEBROOT
- mkdir /wwwroot

## Clone code
- cd /wwwroot
- git clone xxxx
- cd xxxx
- composer install -vvv
- chmod -R 777 storage
- cp .env.example .env
- php artisan key:generate


## Nginx + PHP-FPM + MYSQL
- docker pull nginx
- docker pull php:7.3.9-fpm
- docker pull mysql:5.7.27

### Build from Dockerfile

启动MySQL
- cd mysql
- docker build -t fah-mysql .
- docker run --name mysql -p 3306:3306  -e MYSQL_ROOT_PASSWORD=fah_xxoo_2019+- -d fah-mysql
- 测试 mysql -h127.0.0.1 -uroot -pfah_xxoo_2019+-

启动PHP-FPM
- cd fpm
- docker build -t fah-fpm .
- docker run --name php-fpm --link mysql -d -v /wwwroot:/wwwroot fah-fpm

启动Nginx容器
- docker build -t fah-nginx .
- docker run --name nginx --link php-fpm -d -p 80:80 -v /wwwroot:/wwwroot fah-nginx

