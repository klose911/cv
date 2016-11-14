# $Id$
# Makefile for Lions Book
# This file is an afterthought.  It effectively repeats in the correct
# format the instructions in the file Readme

SRC	=	${TEX}

TEX	= lambda.tex 

all: 	lambda.pdf

lambda.pdf: lambda.ps
	ps2pdf lambda.ps

lambda.ps: lambda.dvi
	dvips lambda.dvi -o lambda.ps

lambda.dvi: ${SRC}
	latex lambda.tex
	bibtex lambda.aux
	latex lambda.tex
	latex lambda.tex

clean:
	-rm -f *.dvi *.ps *.pdf *.toc *.log *.aux *.out *.nav *.snm *.vrb *.blg *.bbl

.PHONY: clean
