#!/bin/bash

docker network create registry-cluster \
    --subnet 10.1.1.0/24 

docker run -dt \
    --name registry1 \
    --network registry-cluster \
    --ip 10.1.1.2 \
    -v `pwd`/instance/1/conf:/root/conf \
    -v `pwd`/instance/1/logs:/root/logs \
    sofa-registry:5.2.1

docker run -dt \
    --name registry2 \
    --network registry-cluster \
    --ip 10.1.1.3 \
    -v `pwd`/instance/2/conf:/root/conf \
    -v `pwd`/instance/2/logs:/root/logs \
    sofa-registry:5.2.1

docker run -dt \
    --name registry3 \
    --network registry-cluster \
    --ip 10.1.1.4 \
    -v `pwd`/instance/3/conf:/root/conf \
    -v `pwd`/instance/3/logs:/root/logs \
    sofa-registry:5.2.1

