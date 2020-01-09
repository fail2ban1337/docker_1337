FROM ubuntu:18.04

WORKDIR /tmp

RUN apt update -y && \
	apt upgrade -y && \
	apt install curl -y && \
	apt install gnupg -y && \
	curl -sL https://deb.nodesource.com/setup_11.x  | bash - && \
	apt install nodejs -y && \
	npm install -g ionic -y && \
	ionic start myApp blank 

EXPOSE 8100 22

WORKDIR /tmp/myApp

ENTRYPOINT ionic serve

#you can change  anything on the app with docker cp for exemple 
# docker  cp home.page.scss(html,ts) containerid:/tmp/myApp/src/app/home/

#or you can mount your local app into the container
