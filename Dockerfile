FROM busybox:latest

# Instala utilidades de red adicionales
RUN apt update && \
    apt install -y iproute2 iputils-ping net-tools dnsutils curl wget tcpdump && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="/tools:$PATH"

CMD ["/bin/sh"]
