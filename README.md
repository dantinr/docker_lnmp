
## Nginx + PHP-FPM 
- docker pull nginx
- docker pull php:7.3.9-fpm

### Build from Dockerfile

启动PHP-FPM
- docker run --name freeaihub-php -d -v /wwwroot:/wwwroot php:7.3.9-fpm


启动Nginx容器
- docker build -t freeaihub-nginx .
- docker run --name nginx -d -p 80:80 -v /wwwroot:/wwwroot --link freeaihub-php freeaihub-nginx
