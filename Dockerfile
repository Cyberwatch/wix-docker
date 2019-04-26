FROM cyberwatch/wix:latest

USER root

RUN apt-get update \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/xclient/msi/ \
  && chown -R root:root /home/xclient

WORKDIR /home/xclient/msi/
