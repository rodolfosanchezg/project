echo "Start program"
nfiles=$(ls -p | grep -v / | wc -l)
echo -n "Try to guess hoy many files are in current directory: "
read number

if [[ $number -ne $nfiles ]]; then 
	win=0
	while [[ win -eq 0 ]]
	do
		if [[ $number -eq $nfiles ]]; then
			win=1
			echo "Congratulations! You won!"
		elif [[ $number -gt $nfiles ]]; then
			win=0
			echo -n "Incorrect! Too high! Try again: "
			read number
		else
			win=0
			echo -n "Incorrect! Too low! Try again: "
			read number
		fi
	done
else
	echo "Congratulations! You won at your first try"
fi
