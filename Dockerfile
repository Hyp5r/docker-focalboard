FROM debian:stable-slim

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        wget unzip file \
    && wget --no-check-certificate https://releases.mattermost.com/focalboard/0.5.0/focalboard-server-linux-amd64.tar.gz \
    && gzip -dc focalboard-server-linux-amd64.tar.gz | tar -xvzf - \
    && mv focalboard /opt \
    && rm -f focalboard-server-linux-amd64.tar.gz \
    && apt-get purge -y \
        wget unzip file \
    && apt-get clean autoclean autoremove -y \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 8000

WORKDIR /opt/focalboard

CMD /opt/focalboard/bin/focalboard-server