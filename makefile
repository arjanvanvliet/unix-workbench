
README.md:
	echo "# Guessing Game" > README.md
	
	echo "Title of the project is Guessing Game."
	
	echo "This README file was created at:" >> README.md
	date >> README.md
	
	echo "The guessing game contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	

clean:
	rm README.md

