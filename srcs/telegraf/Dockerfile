FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.14.0-static_linux_amd64.tar.gz ; \
        tar xf telegraf-1.14.0-static_linux_amd64.tar.gz ; \
        chmod +x telegraf/* ; \
        mkdir /etc/telegraf ; \
        cp telegraf/telegraf /usr/bin/ ; \
	rm telegraf-1.14.0-static_linux_amd64.tar.gz

RUN apk add libc6-compat


COPY /telegraf.conf /etc/telegraf/telegraf.conf

COPY /telegraf.conf /telegraf/telegraf.conf

#CMD /bin/sh
CMD /usr/bin/telegraf 
