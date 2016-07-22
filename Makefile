# $Id$
# Makefile for Lions Book
# This file is an afterthought.  It effectively repeats in the correct
# format the instructions in the file Readme

SRC	=	${TEX}


#TEX	= resume.de.tex resume.en.tex resume.zh.tex
TEX	= resume.en.tex resume.zh.tex

all: 	resume.pdf

resume.pdf: resume.dvi
	dvipdf resume.en.dvi resume.en.pdf
	#dvipdf resume.de.dvi resume.de.pdf
	pdflatex resume.zh.tex

resume.dvi: ${SRC}
	latex resume.en.tex
	#latex resume.de.tex
	#latex resume.zh.tex

clean:
	-rm -f *.dvi *.pdf *.ps *.toc *.log *.aux *.out

.PHONY: clean
