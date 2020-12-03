#!/bin/bash


function guess(){
    true_ans=$(ls -l | grep "^_" | wc -l)
    while true;
    do
	echo "Please enter your guess:"
	read number
	if [ $number -lt $true_ans ]
	then
	    echo "Your guess is less than the true number"
	elif [ $number -gt $true_ans ]
	then
	    echo "Your number is greater than the true number"
	else
	    echo "Congratulations, you are right!"
	break;
	fi
    done
}
echo "Please guess the number of files in the current directory"
guess
