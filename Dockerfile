FROM ubuntu:24.04

RUN apt update && \
    apt install -y iproute2 iputils-ping net-tools dnsutils curl wget tcpdump netcat-traditional && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/sh"]
