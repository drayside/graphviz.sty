PDF = $(shell find . -maxdepth 1 -type f -name 'pdf*.tex' | sort)
PS = $(shell find . -maxdepth 1 -type f -name 'ps*.tex' | sort)


all: $(PS:.tex=.ps) $(PDF:.tex=.pdf)

%.pdf: %.tex clean
	pdflatex -shell-escape $<
	pdflatex -shell-escape $<

%.dvi: %.tex clean
	latex -shell-escape $<
	latex -shell-escape $<

%.ps: %.dvi
	dvips $<

clean:
	rm -rf ./tmp
	rm -f *~
	rm -f *.dot
	rm -f *.ps
	rm -f *.pdf
	rm -f *.aux 
	rm -f *.glo 
	rm -f *.gls 
	rm -f *.idx 
	rm -f *.ilg 
	rm -f *.log 
	rm -f *.dvi 

clobber: clean
	rm -f $(P).pdf
	rm -f $(P).ps
