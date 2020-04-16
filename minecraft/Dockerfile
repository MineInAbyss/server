FROM openjdk:13-alpine as install

VOLUME "/cloud"
EXPOSE 25565

# install the overlay fs tools
# RUN git clone https://github.com/kmxz/overlayfs-tools.git
# RUN make ./overlayfs-tools

RUN apk add curl
# install paper mc + pre patch it.
RUN curl -s -o paper.jar https://papermc.io/api/v1/paper/1.15.2/latest/download && java -jar paper.jar --help

#FROM install as run
ADD config ./
ADD start.sh start.sh

RUN cd plugins && xargs -a urls.txt -n 1 curl -Os && cd ..

ENTRYPOINT ./start.sh