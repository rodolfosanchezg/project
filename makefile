README.md: guessinggame.sh
	touch README.md
	echo "# Final Project: Bash, Make, Git and GitHub" >> README.md
	echo "## Date and time that make command was run is: " >> README.md
	date -r README.md >> README.md
	echo "## Number of lines of file *guessinggame.sh* are: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
