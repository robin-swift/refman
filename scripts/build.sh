#!/bin/bash

function printed_docs () {
python3 scripts/thread_tables.py || exit 1

pdflatex emrm.tex || exit 1
makeindex emrm || exit 1
bibtex emrm.aux || exit 1
pdflatex emrm.tex || exit 1
pdflatex emrm.tex || exit 1
pdflatex emrm.tex || exit 1
}

python3 -m pip install --upgrade pip

pip install mkdocs
pip install mkdocs-bibtex
pip install mkdocs-with-pdf
pip install mkdocs-material

mkdocs build

mv site _site
