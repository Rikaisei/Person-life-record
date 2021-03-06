#!/bin/sh

IMAGE_URL=127.0.0.1:5000

NAME=$1
port=$2
ENTRY_DIR=`pwd`
TS=`date '+%Y%m%d%H%M%S'`
IMAGE_PATH=$IMAGE_URL/life-record-$NAME

echo ENTRY DIR: $ENTRY_DIR
echo IMAGE PATH: $IMAGE_PATH

cd ../../life-record-$NAME/
echo ENTRY DIR: `pwd`

docker stop life-record-$NAME
docker rm life-record-$NAME
docker rmi $IMAGE_PATH
docker build -t $IMAGE_PATH .
docker push $IMAGE_PATH
docker run -p $port:$port --name life-record-$NAME -d $IMAGE_PATH

cd $ENTRY_DIR
echo ENTRY DIR: `pwd`
echo DOCKER BUILD COMPLETED

