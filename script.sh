#!/usr/bin/env bash

if tput setaf 1 &> /dev/null; then
	tput sgr0; # reset colors
	reset=$(tput sgr0);
	green=$(tput setaf 64);
	red=$(tput setaf 124);
	bold=$(tput bold);
	yellow=$(tput setaf 136);
	purple=$(tput setaf 125);
else
	reset="\e[0m";
	green="\e[1;32m";
	red="\e[1;31m";
	bold='';
	yellow="\e[1;33m";
	purple="\e[1;35m";
fi;

while read line
do
	color="${reset}"
	if [[ $line == diff\ \-\-git* ]] || [[ $line == index\ * ]] || [[ $line == \-\-\-\ * ]] || [[ $line == \+\+\+\ * ]] ; then
		color=${yellow}${bold}
	elif [[ $line == \@\@\ * ]] ; then
		color=${purple}${bold}
	elif [[ $line == \+* ]] ; then
		color=${green}
	elif [[ $line == \-* ]] ; then
		color=${red}
	fi
	echo -e "${color}${line}"
done < "${1:-/dev/stdin}"