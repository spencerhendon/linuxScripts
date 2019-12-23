#!/bin/bash
# SCRIPT FOR TRANSFERRING PIHOLE LISTS BETWEEN MACHINES

# VARIABLES
IP=""
USERNAME=""
PASSWORD=""
FILES=("adlists.list" "black.list" "blacklist.txt" "gravity.list" "regex.list" "whitelist.txt")
#FILES+=("lan.list")

# GET SCP CREDENTIALS
read -p "Enter ip address for the machine your wish to get lists from: " IP

read -p "Enter username: " USERNAME
read -s -p "Enter password: " PASSWORD

# LOOP THROUGH FILES ARRAY AND TRANSFER THEM
for x in ${FILES[@]};
do
        sshpass -p $PASSWORD scp external@$IP:/etc/pihole/$x ~/pihole/
done
