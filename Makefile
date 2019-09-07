%.html: %.md
	marked --output $@ $^

dot%: ${HOME}/%
	cp -p $^ $@

all: README.html dot.x3270pro dot.c3270pro

clean:
	- rm README.html
