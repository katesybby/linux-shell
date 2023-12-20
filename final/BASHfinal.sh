#!/bin/bash
# ROCK PAPER SCISSORS GAME


computer_choice=-1
user_choice=-1


display_menu () {
    echo -e "1. Rock\n2. Paper\n3. Scissors\n4. Done"
}

user_input () {
	read -p "Your choice [1-4]? " user_choice
}


compute_computer_choice () {
	computer_choice=$(( ( RANDOM % 3 ) + 1 ))
        if [[ "$computer_choice" == "1" ]]; then
			echo "Computer chose 1. ROCK"
		elif [[ "$computer_choice" == "2" ]]; then
			echo "Computer chose 2. PAPER"
		elif [[ "$computer_choice" == "3" ]]; then
			echo "Computer chose 3. SCISSORS"
		fi
}


print_user_choice () {
    user_choice=$user_input
        if [[ "$user_choice" == "1" ]]; then
			echo "You chose 1. ROCK"
		elif [[ "$user_choice" == "2" ]]; then
			echo "You chose 2. PAPER"
		elif [[ "$user_choice" == "3" ]]; then
			echo "You chose 3. SCISSORS"
		fi
}


compute_winner () {
    if (( "$user_choice" == "$computer_choice" )); then
               echo "You tied.  Try again"
        elif (( "$user_choice" == 1 && "$computer_choice" == 3 )); then
               echo "You win!"
		elif (( "$user_choice" == 1 && "$computer_choice" == 2 )); then
               echo "You lose!"
		elif (( "$user_choice" == 2 && "$computer_choice" == 1 )); then
               echo "You lose!"
		elif (( "$user_choice" == 2 && "$computer_choice" ==  3 )); then
               echo "You win!"
		elif (( "$user_choice" == 3 && "$computer_choice" == 1 )); then
               echo "You lose!"
		elif (( "$user_choice" == 3 && "$computer_choice" == 2 )); then
               echo "You win!"
        fi
}


while [ true ]; do 
	display_menu
    if [[ "$user_choice" == "4" ]]; then
        break
	print_user_choice
	compute_computer_choice
	compute_winner
fi
done


echo "Thanks for playing, goodbye."
