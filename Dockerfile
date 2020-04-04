FROM ubuntu:17.10

RUN apt-get update && apt-get -y upgrade

RUN apt-get clean

RUN apt-get -y install texlive-full

COPY fonts/*.ttf /usr/share/fonts/truetype/

COPY entry.sh /
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]

WORKDIR /work
