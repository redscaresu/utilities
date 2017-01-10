#!/usr/local/bin/bash

PS3='Please enter your choice: '
options=("list droplets" "nyc droplet" "destroy droplet" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "list droplets")
            echo "you chose choice 1"
            doctl compute droplet list
            ;;
        "nyc droplet")
            echo "you chose choice 2"
            doctl compute droplet create test --size 1gb --image debian-8-x64 --region nyc1 --ssh-keys  --enable-backups
            ;;
        "destroy droplet")
            echo "you chose choice 3"
	    read -p "enter the droplet id you want to destroy: " dropletid
            doctl compute droplet delete $dropletid
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
