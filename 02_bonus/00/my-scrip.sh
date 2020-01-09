#!/bin/sh
docker build -t my-server .
docker run -d --name my-serv -p 25565:25565 my-server 
docker exec  -it my-serv sh -c "sleep 20 ; sed -i 's/online-mode=true/online-mode=false/g' server.properties"
sleep 25 | docker restart my-serv
exit 0
