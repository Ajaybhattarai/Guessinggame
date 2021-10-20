#!/usr/bin/env bash
# File: guessinggame.sh
echo "Please Provide Initial guess of  Number of Files" 
read no_of_files_guessed

function guessnum 
{
	echo "Please  Guess the Number of files again"
	read no_of_files_guessed
}
echo 'You have  guessed', $no_of_files_guessed
actual=$(ls -l | wc -l) 
while [[ $no_of_files_guessed -ne $actual ]]
do

	if [[ $no_of_files_guessed -gt $actual ]]
	then
		echo "The Guessesd Number of files is greater than actual"

	else [[ $no_of_files_guessed -lt $actual ]]
	
		echo "The Guessed Number of files is less than actual"
	fi
guessnum
done
echo "Congratulatiions for rightly guessing  the number of files"
