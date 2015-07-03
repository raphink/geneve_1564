BOOK_NAME=geneve_1564
TEXINPUTS=microtype:
FONTSDIR=fonts
TODAY=$(shell date --iso)
TARGETS=$(BOOK_NAME)
LATEX_INTERACTION=batchmode

all: pdf

pdf: $(addsuffix .pdf,$(TARGETS))

%.pdf: %.tex $(MONTHS)
	OSFONTDIR=$(FONTSDIR) TEXINPUTS=$(TEXINPUTS) lualatex -shell-escape -interaction=$(LATEX_INTERACTION) $<
	OSFONTDIR=$(FONTSDIR) TEXINPUTS=$(TEXINPUTS) lualatex -shell-escape -interaction=$(LATEX_INTERACTION) $<

clean:
	rm -f *.pdf *.ps *.aux *.log *.out *.lol
	rm -f *.idx *.ind *.ilg *.toc *.dvi

