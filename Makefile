# vim: expandtab ts=8

all:  \
	c3270.sh  \
	x3270.sh  \
	dot.c3270pro  \
	dot.x3270pro  \
	README.html \
	dot.c3270pro.html  \
	dot.x3270pro.html

%.html: %.md
	sed -e 's/\.md/\.html/' $^ | marked --output $@

dot%: ${HOME}/%
	cp -p $^ $@

%.sh: ${HOME}/bin/%.sh
	cp -p $^ $@

clean:
	- rm README.html
