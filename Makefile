%.html: %.md
	marked --output $@ $^

all: README.html dot.x3270pro

clean:
	- rm README.html

dot.x3270pro: ${HOME}/.x3270pro
	cp -p $^ $@

