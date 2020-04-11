FROM openjdk:13-alpine

ADD config .
ADD https://papermc.io/api/v1/waterfall/1.15/latest/download waterfall.jar

ENTRYPOINT java ${JAVA_ARGS} -jar waterfall.jar --nojline nogui
