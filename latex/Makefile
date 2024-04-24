MODE=

all:
	pdflatex $MODE emrm.tex
	bibtex emrm.aux
	makeindex emrm
	pdflatex $MODE emrm.tex
	pdflatex $MODE emrm.tex
	pdflatex $MODE emrm.tex
