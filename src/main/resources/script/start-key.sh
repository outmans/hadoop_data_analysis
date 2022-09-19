#!/bin/bash


if type jq >/dev/null 2>&1; then 
  echo 'exists jq' 
else 
  yum install jq -y
fi

if [ -f ~/.ssh/id_rsa.pub ]; then
	echo "file found..."
else
	echo "no such file!"
	ssh-keygen -t rsa -N '' -f id_rsa -q
fi


HOSTS_COUNT=`echo $1 | jq -r '.|length'`

for ((i=0; i<$HOSTS_COUNT; i++))
do
row=`echo $1 | jq .[$i]`
HOST=`echo $row | jq -r '.host'`
PORT=`echo $row | jq -r '.port'`
USER=`echo $row | jq -r '.user'`
PWD=`echo $row | jq -r '.pwd'`

machine_ips=$(ifconfig | grep 'inet' | grep -v 'inet6\|127.0.0.1' | grep -v grep | awk -F '/' '{print $1}' | awk '{print $2}')

ip_check=false
for machine_ip in ${machine_ips}; do
  if [[ "X${machine_ip}" == "X${HOST}" ]]; then
    ip_check=true
  fi
done

if [[ ${ip_check} == true ]]; then
  echo "ignore your input ip: ${HOST}!"
else
expect <<EOF
set timeout 15
spawn ssh-copy-id -p $PORT $USER@$HOST
expect {
	"Are you sure you want to continue connecting" { send "yes\n" ;exp_continue }
	"password:" { send "$PWD\n" }
	eof {send_tty "eof, will exit.\n";exit}
}
expect eof
EOF
fi
done
