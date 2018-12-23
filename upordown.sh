#!/bin/bash
if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ "$1" == "help" ] || [ $# -eq 0 ] ;then
	echo -e "
	\e[1;31m$0\e[1;37m example.com"
	echo "
	made with <3 By PsychoPovt"
	exit 0
fi
if [[ $(wget -S --spider $1 2>&1 | grep 'HTTP/1.1 200 OK') ]] || [ -z $1 ]; \
	then
	echo -e "\e[1;32m[~] \e[1;37mDomain $1 is up"
	exit 0
else
	echo -e "\e[1;31m[-] \e[1;37mdomain \e[1;31m$1 \e[1;37mis down"
	exit 0
fi 