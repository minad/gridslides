# Package:     slide
# Description: This LaTeX package allows to create free form slides with boxes.
# File:        Makefile
# Author:      Daniel Mendler <mail@daniel-mendler.de>
# Version:     0.1
# Date:        2017/11/11
# License:     GPL2 or LPPL1.3 at your option

example.pdf: example.tex
	./compile.pl --once example.tex

clean:
	rm -rf output example.pdf slide.zip slide

dist: clean example.pdf *.cls *.sty README.md
	mkdir -p slide/figures
	cp `git ls-files | grep -v figures | grep -v .gitignore` slide
	cp `git ls-files | grep figures` slide/figures
	zip -r slide.zip slide
	rm -rf slide
