#!/bin/bash
exec &> /var/log/pi_reseteth0.log
echo "Running cron at $(date)!"

ip=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
echo "The IP is"
echo ${ip}

if [[ $ip == "169.254"* ]]
	then
	echo "IP seems to be wrong. Waiting for 15 seconds..."
	sleep 15
	if [[ $ip == "169.254"* ]]
		then
		echo "Resetting eth0!"
		ip link set eth0 down
		ip link set eth0 up
	fi
else
	echo "Working properly!"
fi
exit
