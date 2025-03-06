FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    g++ \
    dpkg-dev \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

COPY word_counter.deb /tmp/

RUN dpkg -i /tmp/word_counter.deb || apt-get install -f

CMD ["/usr/bin/word_counter", "--success"]
