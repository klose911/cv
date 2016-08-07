# $Id$
# Makefile for Lions Book
# This file is an afterthought.  It effectively repeats in the correct
# format the instructions in the file Readme

SRC	=	${TEX}

TEX	= axis.tex 

all: 	axis.pdf

pdf axis.pdf: axis.ps
	ps2pdf axis.ps

axis.ps: axis.dvi
	dvips axis.dvi -o axis.ps

axis.dvi: ${SRC}
	latex axis.tex
	bibtex axis.aux
	latex axis.tex
	latex axis.tex

clean:
	-rm -f *.dvi *.ps *.pdf *.toc *.log *.aux *.out *.nav *.snm *.vrb *.blg *.bbl

.PHONY: clean
