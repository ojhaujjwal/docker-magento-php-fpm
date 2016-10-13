docker-magento-php-fpm
=============================

[![Docker Stars](https://img.shields.io/docker/stars/ojhaujjwal/docker-magento-php-fpm.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/ojhaujjwal/docker-magento-php-fpm.svg)][hub]

Docker image for magento php fpm. It contains php7 and all the required php extensions for running magento on php-fpm.

## Installed components
* php-fpm(php7)
* php extensions
  * curl
  * json
  * iconv
  * xml
  * simplexml
  * mbstring
  * mcrypt
  * mysql
  * zip
  * gd
  * intl
  * soap
  * xsl

Base Image: [php:7.0-fpm](https://hub.docker.com/_/php/)

## Docker Pull Command
```
docker pull ojhaujjwal/magento-php-fpm
```

## Related Projects
* [docker-magento-php-cli](https://github.com/ojhaujjwal/docker-magento-php-cli)
