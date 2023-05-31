FROM ubuntu:jammy

RUN /usr/bin/apt -y update && apt-get -y install skopeo jq ca-certificates

ADD --chmod=755 https://github.com/opencontainers/umoci/releases/download/v0.4.7/umoci.amd64 /usr/local/bin/
RUN mv /usr/local/bin/umoci.amd64 /usr/local/bin/umoci
COPY bin/* /opt/resource/