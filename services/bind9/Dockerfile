FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y bind9 bind9utils bind9-doc

# Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/named

CMD ["/usr/sbin/named", "-f"]
