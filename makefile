all: README.md

README.md: guessinggame.sh
	echo "# The title of the project:" > README.md
	echo "Unix_workbench_project" >> README.md
	echo "# The date and time at which **make** was run:" >> README.md
	date "+%x, %X" >> README.md
	echo "# The number of lines of code contained in **guessinggame.sh**:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
