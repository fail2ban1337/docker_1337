FROM debian:latest

RUN apt-get update -y && \
	apt-get upgrade -y && \
	apt-get install wget -y && \
	apt-get install -y bzip2

WORKDIR tmp

RUN	wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
	tar -xf teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
	mkdir /opt/teamspeak-server && \
	mv teamspeak3-server_linux_amd64/* /opt/teamspeak-server && \
	cd /opt/teamspeak-server && \
	touch .ts3server_license_accepted

	
ENTRYPOINT [ "/opt/teamspeak-server/ts3server_minimal_runscript.sh"]

EXPOSE 9987/udp 10011 30033
