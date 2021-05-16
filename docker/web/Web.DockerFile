FROM nginx:1.19

COPY app.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/symfony-playground