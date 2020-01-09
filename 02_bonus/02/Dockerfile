FROM ubuntu:18.04

WORKDIR /tmp

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install vim -y && \
	apt-get install git-core -y && \
	apt-get install gcc -y 

COPY test.c .

CMD gcc test.c && (./a.out)
