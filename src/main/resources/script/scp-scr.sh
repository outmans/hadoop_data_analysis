#!/bin/bash

sh ./start-key.sh $1


HOSTS_COUNT=`echo $1 | jq -r '.|length'`

for ((i=0; i<$HOSTS_COUNT; i++))
do
row=`echo $1 | jq .[$i]`
HOST=`echo $row | jq -r '.host'`
PORT=`echo $row | jq -r '.port'`
USER=`echo $row | jq -r '.user'`
PWD=`echo $row | jq -r '.pwd'`
scp -r -P $PORT ./start-key.sh $USER@$HOST:~/start-key.sh
echo 'scp -P '$PORT' ./start-key.sh '$USER'@'$HOST':~/script/'
ssh -p $PORT $USER@$HOST "cd ~; sh start-key.sh $1"
done

