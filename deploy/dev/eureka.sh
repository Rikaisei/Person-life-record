
NAME=$0
echo NAME: $NAME
FILENAME=${NAME##*/}
echo FILENAME: $FILENAME
FILENAME_1=${FILENAME%.*}
echo FILENAME_1: $FILENAME_1

# ./docker-cmd.sh $FILENAME_1