#!bin/bash

#script to get user input for making folder

DIR=$1
FILE=$2

if ! [ -d $DIR ]; then
        read -p "$DIR does not exist. Do you want to create it (y/n)?" dir_exists
        if [[ $dir_exists =~ (y|Y) ]]; then
                mkdir $DIR
        else
                exit 0
        fi
fi


if [ -e $DIR/$FILE ]; then
        echo "Here is the list of files in $DIR directory"
        ls -l $DIR
else
        read -p "$FILE file does not exist in $DIR directory. Do you want to create it (y/n)?" create_file
        if [[ $create_file =~ (y|Y) ]]; then
                echo "Creating $FILE in $DIR directory"
                touch $DIR/$FILE
                echo "  Here is the list of files in $DIR directory."
                ls -l $DIR
        else
                echo "Here is the list of files in $DIR directory."
                ls -l $DIR
        fi
fi

