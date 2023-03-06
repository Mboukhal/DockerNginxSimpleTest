$CONATINER = docker ps -aq
docker rm -f $CONATINER 2> $null