#!/bin/bash

# Rock Paper Scissors, you against the computer.

#script global variables to hold choices
computer_choice=-1
user_choice=-1


# generates the computer response
compute_computer_choice () {
	computer_choice=$(( ( RANDOM % 3 ) + 1 ))
	#  TODO: Write the logic to print the computer's choice after it is generated.
	#  This will be a series of if and else if statements checking for each possible computer choice.
		if [[ "$computer_choice" == "1" ]]; then
			echo "Computer chose 1. ROCK"
		elif [[ "$computer_choice" == "2" ]]; then
			echo "Computer chose 2. PAPER"
		elif [[ "$computer_choice" == "3" ]]; then
			echo "Computer chose 3. SCISSORS"
		fi
}

display_menu () {
    echo -e "1. Rock\n2. Paper\n3. Scissors\n4. Done"
	read -p " Your choice [1-4]? " user_choice
	echo "Your choice was $user_choice"
}

# prints the users selection
print_user_choice () {
	#  TODO: Write the logic to print the player's response after it is selected by the player.
	#  This will be a series of if and else if statements checking for each possible user choice, like the computer choice.
		# echo "print_user_choice"
		if [[ "$user_choice" == "1" ]]; then
			echo "You chose 1. ROCK" 
		elif [[ "$user_choice" == "2" ]]; then
			echo "You chose 2. PAPER" 
		elif [[ "$user_choice" == "3" ]]; then
			echo "You chose 3. SCISSORS" 
		fi
}

# decide who won the round.
compute_winner () {
	# Easiest to check if it is a tie first.  Then check every other possible combination of choices
	if (( "$user_choice" == "$computer_choice" )); then
               echo "You tied.  Try again"
        elif (( "$user_choice" == 1 && "$computer_choice" == 3 )); then
               echo "You win!"
		elif (( "$user_choice" == 1 && "$computer_choice" == 2 )); then
               echo "You lose!"
	# TODO: Finish the series of elif statements to check the remaining choices of player and computer.  
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

# looping in while loop until 4 is pressed and then if breaks out of loop.
# TODO: write loop logic which then will end with the done statement below.
	# TODO: Prompt player for choices and read in player selection.
	# Check for "Done" selection and handle that input
	# TODO: call each of the three functions you have finished above in the first order.

while [ true ]; do 	
	display_menu
	if [[ "$user_choice" == "4" ]]; then
		break
	fi
	print_user_choice
	compute_computer_choice
	compute_winner

done


echo "Thanks for playing, goodbye."
