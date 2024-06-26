#!/bin/bash

# created by JH Hacker
# Wevsite IP Finder Tool

source ./banner.sh

# Main Function Created

main(){

echo " "

read -p "Enter Website URL: " url

for ip  in $url;
do 
	echo "'$url' IP Address is:" $(ping -c 1 $url | grep "PING" | awk 'NR == 1''{print $3}')
done

}

# Function Called

main
