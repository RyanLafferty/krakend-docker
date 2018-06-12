FROM ubuntu:18.04
RUN apt-get update && apt-get install -y golang-go

ENV KRAKEND_VERSION 0.5.0
ADD http://repo.krakend.io/bin/krakend_${KRAKEND_VERSION}_amd64.tar.gz krakend_${KRAKEND_VERSION}_amd64.tar.gz
RUN tar xvfz krakend_${KRAKEND_VERSION}_amd64.tar.gz

VOLUME [ "/etc/krakend" ]

ENTRYPOINT [ "/usr/bin/krakend" ]
CMD [ "run" ]

EXPOSE 8080

