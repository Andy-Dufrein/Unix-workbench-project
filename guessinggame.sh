#!/usr/bin/env bash
# File: guessinggame.sh

function congrats {
	echo "My congratulations! Your guess is correct. Hope you enjoyed this game."
}
dir=$(ls -l | grep "^-" | wc -l)

echo "Hello, dear user. Let's play a little game: try to guess, how many files are in directory. Please, write your estimated number: "
read num
while [[ $num -ne $dir ]]
do
	if [[ ! $num =~ [0-9] ]]
	then
		echo "Please, write a NUMBER"
	else
		if [[ $num -gt $dir ]]
		then
			echo "I'm sorry, your number $num is bigger than my. Try again."
		else
			echo "I'm sorry, your number $num is smaller than my. Try again."
		fi
	fi
	read num
done
congrats
