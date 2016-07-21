# $Id$
# Makefile for Lions Book
# This file is an afterthought.  It effectively repeats in the correct
# format the instructions in the file Readme

SRC	=	${TEX}


#TEX	= resume.de.tex resume.en.tex resume.zh.tex
TEX	= resume.en.tex resume.zh.tex

all: 	resume.pdf

pdf resume.pdf: resume.ps
	ps2pdf resume.en.ps
	#ps2pdf resume.de.ps
	ps2pdf resume.zh.ps

resume.ps: resume.dvi
	dvips resume.en.dvi -o resume.en.ps
	#dvips resume.de.dvi -o resume.de.ps
	dvips resume.zh.dvi -o resume.zh.ps

resume.dvi: ${SRC}
	latex resume.en.tex
	#latex resume.de.tex
	latex resume.zh.tex

clean:
	-rm -f *.dvi *.ps *.pdf *.toc *.log *.aux *.out

.PHONY: clean
