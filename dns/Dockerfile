FROM ubuntu/bind9
LABEL key="Martin Hayot <m.hayot@students.ephec.be>" 

RUN apt-get update && apt-get install -y bind9

COPY named.conf /etc/bind/
COPY db.* /dns/

RUN mkdir /var/log/named
RUN chmod 777 /var/log/named

EXPOSE 53/tcp
EXPOSE 53/udp

CMD ["named", "-g"]