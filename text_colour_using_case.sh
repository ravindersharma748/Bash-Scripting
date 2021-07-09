#!/usr/bin/env bash



color=$1

Usage() {

	echo "Usage: $0 <colour>"
	exit 1
}

if [ -z $color ]; then
    echo "Please enter the colour "
    Usage
fi

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


          case $color in
                    red) echo "${red}this is red${reset}";;
                    green) echo "${green}this is green${reset}";;
                    *) echo "red and green are the only choices"
            esac
