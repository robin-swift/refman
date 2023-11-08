#!/bin/bash

function latex_build () {

    pdflatex $1.tex
    bibtex $1.aux
    makeindex $1.ind
    pdflatex $1.tex
    pdflatex $1.tex
    pdflatex $1.tex

}

latex_build refman_a4
latex_build refman_us_letter
