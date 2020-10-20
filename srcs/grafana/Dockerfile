FROM alpine

MAINTAINER focudert <fcoudert@student.42.fr>


RUN wget https://dl.grafana.com/oss/release/grafana-7.2.1.linux-amd64.tar.gz ; \
        tar xzvf grafana-7.2.1.linux-amd64.tar.gz ; \
        mv grafana-7.2.1 grafana ; \
	rm grafana-7.2.1.linux-amd64.tar.gz

RUN apk add --no-cache libc6-compat

EXPOSE 3000

CMD cd /grafana/bin ; \
        ./grafana-server

