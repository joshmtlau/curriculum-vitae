.PHONY: all clean

all:
	docker run --rm -v $(PWD):/workdir danteev/texlive latexmk -xelatex cv.tex

clean:
	docker run --rm -v $(PWD):/workdir danteev/texlive latexmk -xelatex -c cv.tex
