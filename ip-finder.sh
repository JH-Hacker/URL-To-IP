#!/bin/bash

# created by Unknown Person
# Wevsite IP Finder Tool

banner(){
banner "#############################################"
banner "##                                         ##"
banner "##                IP Lookup	           ##"
banner "##                                         ##"
banner "##        Created by Unknown Person        ##"
banner "##                                         ##"
banner "#############################################"
}

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

banner
main
