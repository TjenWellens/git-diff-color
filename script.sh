#!/usr/bin/env bash

if tput setaf 1 &> /dev/null; then
	tput sgr0; # reset colors
	reset=$(tput sgr0);
	green=$(tput setaf 64);
	red=$(tput setaf 124);
else
	reset="\e[0m";
	green="\e[1;32m";
	red="\e[1;31m";
fi;

while read line
do
	color="${reset}"
	if [[ $line == \+* ]] ; then
		color=${green}
	elif [[ $line == \-* ]] ; then
		color=${red}
	fi
	echo -e "${color}${line}"
done < "${1:-/dev/stdin}"