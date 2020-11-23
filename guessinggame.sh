#!/bin/bash
#  execution game
flag="Y"
while [ $flag = "Y" ]
do
     Echo "======* Welcome players to log in to this game *======"
  ranNum=$(($RANDOM%50+1))
  gNum=5
     Echo "The range of random numbers is between 1-50"
     Echo "Please enter the number to guess:"
  read gusNum
  flag3="Y"
     # Enter the number of guesses
  while [ $flag3 = "Y" ]
  do
         # Determine the size of the number
    if [ $gusNum -gt $ranNum ] 
    then
	   Echo "Your guess is larger"
	   Echo "Please re-enter the number to guess:"
	  read gusNum
    elif [ $gusNum -lt $ranNum ] 
    then
	   Echo "Your guess is smaller"
	   Echo "Please re-enter the number to guess:"
	  read gusNum
    else
	   Echo "Congratulations are correct!"
	   Echo "The game is over!"
	  let "flag3=N"
    fi
  done
     Echo "======* Whether to start a new game Y or N *======"
  read flag2
  if [ $flag2 = 'N' ] 
  then
    let "flag=N"
	 Echo "======* Exit the game successfully, waiting for the player to log in to the game next time *======"
  fi
done
