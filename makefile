all: guessinggame.sh readme.txt

guessinggame.sh:
	touch guessinggame.sh

readme.txt:
	echo 'This is Peer-graded Assignment: Bash, Make, Git, and GitHub' > readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.txt
clean:
	rm guessinggame.sh
	rm readme.txt
