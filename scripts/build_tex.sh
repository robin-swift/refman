#!/bin/bash

python3 scripts/thread_tables.py || exit 1

for stub in index about todo
do
    pandoc docs/$stub.md -o  sections/$stub.tex
done

pdflatex emrm.tex || exit 1
makeindex emrm || exit 1
bibtex emrm.aux || exit 1
pdflatex emrm.tex || exit 1
pdflatex emrm.tex || exit 1
pdflatex emrm.tex || exit 1
