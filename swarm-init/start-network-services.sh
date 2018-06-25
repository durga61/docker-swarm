#!/bin/sh

#Create the overlay network

sudo docker network create -d overlay comnet  

#Create the helloapp service 

sudo docker service create --name helloapp --replicas 3 -p 8080:8080 --network comnet durga61/company:1.0

#Create the NGINX service 

sudo docker service create --name nginx-company --replicas 1 -p 80:80 --network comnet durga61/nginx-compapp:2.0