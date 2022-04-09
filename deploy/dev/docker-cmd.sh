#!/bin/sh

IMAGE_URL=127.0.0.1:5000

NAME=$1
ENTRY_DIR=`pwd`
TS=`date '+%Y%m%d%H%M%S'`
IMAGE_PATH=$IMAGE_URL/life-record-$NAME

echo ENTRY DIR: $ENTRY_DIR
echo IMAGE PATH: $IMAGE_PATH

cd ../../life-record-$NAME/
echo ENTRY DIR: `pwd`

docker build -t $IMAGE_PATH .
docker push $IMAGE_PATH
#docker rmi $IMAGE_PATH
#docker pull $IMAGE_PATH
docker run -d -p 9021:9021 $IMAGE_PATH



cd $ENTRY_DIR
echo ENTRY DIR: `pwd`
echo DOCKER BUILD COMPLETED

