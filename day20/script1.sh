#!/bin/bash
 
#script tells if the month is odd or even

MONTH=$1
DAY=$2

declare -l MONTH_LOWER
MONTH_LOWER=$MONTH

compute_month (){
	if [[ $MONTH_LOWER =~ ("jan"|"mar"|"may"|"jul"|"sep"|"nov") ]]; then
		echo "$MONTH is odd month"
	elif [[ $MONTH_LOWER =~ ("feb"|"apr"|"jun"|"aug"|"oct"|"dec") ]]; then
		echo "$MONTH is even month"
	else
		echo "Please enter a valid month in the format of Jan or Feb"
	fi
}

compute_day () {
	if (( $DAY % 2 == 0 )); then
		echo "$DAY is even"
	elif (( $DAY % 2 == 1 )); then
		echo "$DAY is odd"
	else
		echo "$DAY is not valid"
	fi
}

compute_month
compute_day
