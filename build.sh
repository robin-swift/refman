#!/bin/bash

MODE="-interaction=nonstopmode"

function latex_build () {

    pdflatex $MODE $1.tex
    bibtex $1.aux
    makeindex $1.ind
    pdflatex $MODE $1.tex
    pdflatex $MODE $1.tex
    pdflatex $MODE $1.tex

}

latex_build emrm_alpha_a4
latex_build emrm_alpha_us_letter
