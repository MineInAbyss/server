#FROM amazon/aws-cli
FROM ubuntu
ADD *.sh ./

#RUN apt-get update && apt-get install -y make git linux-headers-generic kmod build-essential
#RUN git clone https://github.com/abbbi/nullfsvfs.git && cd nullfsvfs && make && insmod nullfs.ko
ENTRYPOINT ./entrypoint.sh
