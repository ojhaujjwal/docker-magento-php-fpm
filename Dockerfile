#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

FROM php:7.0-fpm

#
#--------------------------------------------------------------------------
# Mandatory Software's Installation
#--------------------------------------------------------------------------
# Installing tools and PHP extentions using "apt", "docker-php", "pecl",
#

# Install "curl", "libmemcached-dev", "libpq-dev", "libjpeg-dev",
#         "libpng12-dev", "libfreetype6-dev", "libssl-dev", "libmcrypt-dev",
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        libmemcached-dev \
        libz-dev \
        libpq-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
        libfreetype6-dev \
        libssl-dev \
        cron \
        libicu-dev \
        libmcrypt-dev \
        libxslt1-dev

RUN docker-php-ext-install \
  intl \
  mbstring \
  mcrypt \
  pdo_mysql \
  soap \
  xsl \
  zip

#####################################
# gd:
#####################################

# Install the PHP gd library
RUN docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd


#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

RUN rm -rf /var/lib/apt/lists/*

CMD ["php-fpm"]

EXPOSE 9000
