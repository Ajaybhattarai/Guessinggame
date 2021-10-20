#all: README.md


README.md: guessinggame.sh
	touch README.md
	
	echo "#The UNIX Workbench Coursera Course Assignment.#" > README.md
	echo "##by Ajay Bhattarai##" >> README.md
	echo "**Date and Time of Assignment**" >> README.md
	date >> README.md
	echo "No of line  in *guessinggame.sh* is" >> README.md
	(cat guessinggame.sh |wc -l) >> README.md
      



clean:
	rm README.md
