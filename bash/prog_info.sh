#!/bin/bash
# read-menu: программа вывода системной информации,
# управляемая с помощью меню
clear
echo "
Please select:
1. Display System information
2. Display Disk Space
3. Display Home Space utilization
0. Quit
"
read -p "Enter selection [0-3] >"
if [[ $REPLY =~ ^[0-3]$ ]]; then
	if [[ $REPLY == 0 ]]; then
		echo "Programm terminated"
		exit 
	fi
	if [[ $REPLY == 1 ]]; then
		echo "Hostname: $HOSTNAME"
		uptime
		exit
	fi
	if [[ $REPLY == 2 ]]; then
		df -h 
		exit
	fi
	if [[ $REPLY == 3 ]]; then
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home spase utilization"
			du -sh /home/*
		else
			echo "Home Utilization ($USER)"
			du -sh $HOME
		fi
		exit
	fi
else
	echo "Invalid entry" >&2
	exit 1
fi

