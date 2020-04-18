FROM openjdk:13-alpine

ADD config .

RUN apk add curl
RUN curl -s -o waterfall.jar https://papermc.io/api/v1/waterfall/1.15/latest/download

ENTRYPOINT java ${JAVA_ARGS} -jar waterfall.jar --nojline nogui
