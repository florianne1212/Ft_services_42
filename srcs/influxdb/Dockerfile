FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>

RUN apk update && apk add influxdb

EXPOSE 8086

CMD influxd run -config /etc/influxdb.conf