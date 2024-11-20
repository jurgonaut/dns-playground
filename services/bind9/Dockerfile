FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y bind9 bind9utils bind9-doc

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/named

COPY conf/named.conf.options /etc/bind/
COPY conf/named.conf.local /etc/bind/
COPY conf/db.dns-local-playground.com /etc/bind/zones/

CMD ["/usr/sbin/named", "-f"]
