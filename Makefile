TEX = $(wildcard *.tex)
PDF = $(TEX:.tex=.pdf)
JUNK = $(wildcard *.log *.aux *.pdf *.blg *.bbl *.nav *.out *.toc *.snm)

all: $(PDF)

%.pdf: %.tex
	pdflatex --shell-escape $<

clean:
	rm $(JUNK)


