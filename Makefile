# vim: expandtab ts=8

all:  \
	c3270.sh  \
	dot.c3270pro  \
	dot.x3270pro  \
	README.html \
	dot.c3270pro.html  \
	dot.x3270pro.html  

%.html: %.md
	marked --output $@ $^

dot%: ${HOME}/%
	cp -p $^ $@

%.sh: ${HOME}/bin/%.sh
	cp -p $^ $@

clean:
	- rm README.html
