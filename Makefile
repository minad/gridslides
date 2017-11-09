example.pdf: example.tex
	./compile.pl --once example.tex

clean:
	rm -rf output example.pdf slide.zip slide

dist: clean example.pdf *.cls *.sty README.md
	mkdir -p slide/figures
	cp `git ls-files` slide
	zip -r slide.zip slide
	rm -rf slide
