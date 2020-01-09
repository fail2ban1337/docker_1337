FROM ubuntu:18.04

WORKDIR  /tmp

RUN apt-get update -y && \
	apt-get upgrade -y  && \
	apt-get install vim -y && \
	apt-get install wget -y && \
	apt-get	install bash -y && \ 
	apt-get	install default-jdk -y && \
	apt-get install git-core -y

RUN	wget https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar && \
	java -Xms2048M -Xmx3472M -jar minecraft_server.1.12.2.jar nogui && \
	sed -i.orig 's/eula=false/eula=true/g' eula.txt
ENTRYPOINT	java -Xms2048M -Xmx3472M -jar minecraft_server.1.12.2.jar nogui

EXPOSE 25565

