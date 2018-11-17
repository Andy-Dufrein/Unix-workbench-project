#!/usr/bin/env bash
# File: guessinggame.sh

function congrats {
	echo "My congratulations! Your guess is correct. Hope you enjoyed this game. Now, check out a README.md, please, and refresh it on github, after that the project page will change."
	rm README.md
	make > out.log 2> /dev/null
	rm out.log
}

echo "Hello, dear user. Let's play a little game. Try to guess, how many files are in directory. Please, write your estimated number: "
read num
while [[ $num -ne 3 ]]
do
	if [[ ! $num =~ [0-9] ]]
	then
		echo "Please, write a NUMBER"
	else
		if [[ $num -gt 3 ]]
		then
			echo "I'm sorry, your number $num is bigger than my. Try again."
		else
			echo "I'm sorry, your number $num is smaller than my. Try again."
		fi
	fi
	read num
done
congrats
