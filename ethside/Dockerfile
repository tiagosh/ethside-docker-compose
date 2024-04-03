FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN mkdir /data
RUN apt update && apt install -y ca-certificates unzip wget
ADD genesis.json /opt
RUN cd /opt/ && wget https://releases.drivechain.info/ethSide-latest-linux.zip && \
  unzip ethSide-latest-linux.zip && rm ethSide-latest-linux.zip && \
  chmod +x /opt/ethSide-latest-linux/sidegeth && \
  /opt/ethSide-latest-linux/sidegeth --datadir /data init /opt/genesis.json
ADD entrypoint.sh /data
ENTRYPOINT /data/entrypoint.sh