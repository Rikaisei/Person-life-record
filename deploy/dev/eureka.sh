NAME=$0
FILENAME=${NAME##*/}
FILENAME_1=${FILENAME%.*}
port=9021

./docker-cmd.sh $FILENAME_1 $port
