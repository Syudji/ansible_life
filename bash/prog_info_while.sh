#!/bin/bash
# read-menu: программа вывода системной информации,
# управляемая с помощью меню
DELAY=5

while [[ $REPLY != "0" ]]; do
clear
cat <<- _EOF_
Please select:
1. Display System information
2. Display Disk Space
3. Display Home Space utilization
0. Quit
_EOF_
read -p "Enter selection [0-3] >"
if [[ $REPLY =~ ^[0-3]$ ]]; then
	if [[ $REPLY == 0 ]]; then
		echo "Programm terminated"
		sleep $DELAY
	fi
	if [[ $REPLY == 1 ]]; then
		echo "Hostname: $HOSTNAME"
		uptime
		sleep $DELAY
	fi
	if [[ $REPLY == 2 ]]; then
		df -h 
		sleep $DELAY
	fi
	if [[ $REPLY == 3 ]]; then
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home spase utilization"
			du -sh /home/*
		else
			echo "Home Utilization ($USER)"
			du -sh $HOME
		fi
		sleep $DELAY
	fi
else
	echo "Invalid entry" >&2
	exit 1
fi
done
echo "Programm terminated"
