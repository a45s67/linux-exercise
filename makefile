all: journals.txt journal_count 

journals.txt:
	touch journals.txt

journal_count: journals.txt
	wc -l journals.txt| egrep -o "[0-9]+" >journal_count 



clean:
	rm journals.txt


