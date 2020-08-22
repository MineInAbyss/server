FROM openjdk:13-alpine as install
ARG SERVER_TYPE
VOLUME "/cloud"


ENV UWU=${SERVER_TYPE}
ENV JAVA_ARGS="-XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.g"
EXPOSE 25565

# install the overlay fs tools
# RUN git clone https://github.com/kmxz/overlayfs-tools.git
# RUN make ./overlayfs-tools

RUN apk add curl
# install paper mc + pre patch it.
RUN curl -s -o paper.jar https://papermc.io/api/v1/paper/1.16.1/latest/download && java -jar paper.jar --help

#FROM install as run
ADD config ./
ADD overides/${SERVER_TYPE} ./

ADD start.sh start.sh

RUN cd plugins && xargs -a urls.txt -n 1 curl -Os && cd ..

ENTRYPOINT ./start.sh