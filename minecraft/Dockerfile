FROM openjdk:13-alpine as install

VOLUME "/worlds"
EXPOSE 25565

# install the overlay fs tools
# RUN git clone https://github.com/kmxz/overlayfs-tools.git
# RUN make ./overlayfs-tools


# install paper mc + pre patch it.
ADD https://papermc.io/api/v1/paper/1.15.2/latest/download paper.jar
RUN java -jar paper.jar --help

FROM install as run
ADD config ./
# RUN xargs -a urls.txt -n 1 curl -O

ENTRYPOINT java ${JAVA_ARGS} -Dcom.mojang.eula.agree=true -jar paper.jar --nojline --nogui -W /worlds -p 25565 