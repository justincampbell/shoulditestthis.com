all: test

test:
	cat index.html | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' | grep -i yes

.PHONY: all test
