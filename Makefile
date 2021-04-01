SRCS 	= main.tex
LATEX	= /Library/TeX/texbin/platex
#BIBTEX	= /Library/TeX/texbin/bibtex
#

.PHONY: all clean

all: ResearchTopics.pdf

ResearchTopics.pdf: $(SRCS)
	$(LATEX) main
	$(LATEX) main
	dvipdfmx main && mv main.pdf main_semi.pdf

kurdyla:
	$(LATEX) kurdyla
	$(BIBTEX) kurdyla
	$(LATEX) kurdyla
	$(LATEX) kurdyla

clean:
	rm -f *~ *.aux *.bbl *.blg *.dvi *.log *.out *.pdf fig/*.xbb

