all: readme.md

#lines=$(shell wc -l guessinggame.sh | egrep '^[0-9]+' -o)
readme.md: guessinggame.sh makefile
	echo "#Exercise of The Unix Workbench: Guessinggame"> readme.md
	echo "Produced on `date`" >> readme.md
	$(eval lines=$(shell wc -l guessinggame.sh | egrep '^[0-9]+' -o))
	#lines=$(shell wc -l guessinggame.sh | egrep '^[0-9]+' -o)
	echo "guessinggame.sh contains $(lines) lines" >> readme.md

