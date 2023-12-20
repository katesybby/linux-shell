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

# changed from "if" to "case" statements
while [[ "$user_selection" != "4" ]]; do
    display_menu
    user_input
    case $user_selection in
        "1")
        df -h
        ;;
        "2")
        free -h
        ;;
        "3")
        while read line; do
            echo -e "$line\n"
        done < $FILE
        ;;
    esac
    done

echo "Bye!"