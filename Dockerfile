FROM ubuntu:22.04

VOLUME ["/var/lib/anon", "/var/log/anon"]

RUN apt-get update && apt-get install -y \
    wget \
    debconf \
    net-tools \
    vim \
    nyx \
    nano \
    ca-certificates
RUN rm -rf /var/lib/apt/lists/*

RUN echo "anon anon/terms boolean true" | debconf-set-selections

RUN . /etc/os-release && \
    wget -qO- https://deb.en.anyone.tech/anon.asc | tee /etc/apt/trusted.gpg.d/anon.asc && \
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/anon.asc] https://deb.en.anyone.tech anon-live-$VERSION_CODENAME main" | tee /etc/apt/sources.list.d/anon.list

RUN apt-get update && \
    apt-get install -y anon && \
    apt-get autoremove

CMD ["/usr/bin/anon", "-f", "/etc/anon/anonrc"]
