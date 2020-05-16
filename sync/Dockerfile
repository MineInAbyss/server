#FROM amazon/aws-cli

FROM ubuntu:18.04

VOLUME "/cloud"

RUN apt-get update && apt-get install -y python-pip
RUN pip install aws-shell 

ADD entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
#RUN apt-get update && apt-get install -y make git linux-headers-generic kmod build-essential
#RUN git clone https://github.com/abbbi/nullfsvfs.git && cd nullfsvfs && make && insmod nullfs.ko
ENTRYPOINT ["./entrypoint.sh"]
