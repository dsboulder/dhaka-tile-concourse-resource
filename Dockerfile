FROM ubuntu:jammy

RUN /usr/bin/apt -y update && apt-get -y install skopeo jq ca-certificates

COPY bin/* /opt/resource/