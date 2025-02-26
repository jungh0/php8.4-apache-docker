# PHP 8.4 + Apache 기반 이미지
FROM php:8.4-apache

# 필수 패키지 및 PHP 확장 설치
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libzip-dev \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install pdo pdo_mysql mysqli zip intl

# Apache mod_rewrite 활성화
RUN a2enmod rewrite

# 작업 디렉토리 설정
WORKDIR /var/www/html

# 포트 개방
EXPOSE 80

# 컨테이너 실행 시 Apache 실행
CMD ["apache2-foreground"]
