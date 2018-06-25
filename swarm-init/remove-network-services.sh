#!/bin/sh

#remove company and nginx services from swarm

sudo docker service rm helloapp nginx-company

#remove overlay network

sudo docker network rm comnet


