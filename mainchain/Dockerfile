FROM ubuntu:22.04
RUN apt update && apt install -y wget unzip
RUN cd /opt && \
  wget https://www.drivechain.info/releases/bin/drivechain-0.44.00-x86_64-linux-gnu.tar.gz && \
  tar xvzf drivechain-0.44.00-x86_64-linux-gnu.tar.gz && \
  mv drivechain-0.44.00/lib/* /usr/local/lib && \
  mv drivechain-0.44.00/bin/* /usr/local/bin && \
  rm drivechain-0.44.00-x86_64-linux-gnu.tar.gz
RUN mkdir /data
ADD drivechain.conf /data
ADD entrypoint.sh /data
ENTRYPOINT /data/entrypoint.sh