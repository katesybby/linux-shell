#!/bin/bash

# Script will run in loop presenting a menu for user to interact with.

FILE=$1
user_selection=-1

display_menu () {
    echo -e "1. Display the disk usage\n2. Display the memory usage\n3. Print the content of /etc/hosts $FILE file\n4. Exit"
}

user_input () {
    read -p "Choose your option [1-4]: " user_selection
}

while [[ "$user_selection" != "4" ]]; do
    display_menu
    user_input
    if [[ "$user_selection" == "1" ]]; then
        df -h
    elif [[ "$user_selection" == "2" ]]; then
        free -h
    elif [[ "$user_selection" == "3" ]]; then
        while read line; do
            echo -e "$line\n"
        done < $FILE
    fi
    done

echo "Bye!"

read