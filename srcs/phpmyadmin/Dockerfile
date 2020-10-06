FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN apk update && apk upgrade ; \
        apk add php7 php7-fpm php7-opcache ; \
        apk add php7-gd php7-mysqli php7-zlib php7-curl

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-all-languages.tar.gz ; \
		tar xzvf phpMyAdmin-4.9.5-all-languages.tar.gz ; \
		mv phpMyAdmin-4.9.5-all-languages /www

EXPOSE 5000

CMD service php7 start; \
        sleep infinity