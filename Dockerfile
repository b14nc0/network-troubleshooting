FROM busybox:latest

# Instala herramientas de red usando una imagen base compatible con BusyBox
RUN mkdir /tools && \
    wget -O /tools/busybox https://busybox.net/downloads/binaries/1.36.1-i686-uclibc/busybox && \
    chmod +x /tools/busybox

# Instala utilidades de red adicionales
RUN apt update && \
    apt install -y iproute2 iputils-ping net-tools dnsutils curl wget tcpdump && \
    rm -rf /var/lib/apt/lists/*

ENV PATH="/tools:$PATH"

CMD ["/bin/sh"]
