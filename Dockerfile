FROM php:apache
WORKDIR /var/www/html
COPY ./public-html/ /var/www/html
VOLUME /var/www/html

ENV VIRTUAL_HOST abc.yongbuzhixi.com,abc.aws3.yongbuzhixi.com
ENV LETSENCRYPT_HOST abc.yongbuzhixi.com,abc.aws3.yongbuzhixi.com
ENV LETSENCRYPT_EMAIL=dale.tel@139.com

EXPOSE 80
CMD ["apache2-foreground"]
