manuscript = thesis
references = $(wildcard *.bib)
latexopt   = -shell-escape -halt-on-error -file-line-error 

all: all-via-pdf

all-via-pdf: $(manuscript).tex $(references)
	pdflatex -shell-escape $(manuscript).tex
	biber $(manuscript)
	pdflatex $(latexopt) $<
	pdflatex $(latexopt) $<

all-via-dvi:
	latex $(latexopt) $(manuscript)
	biber $(manuscript)
	latex $(latexopt) $(manuscript)
	latex $(latexopt) $(manuscript)
	dvipdf $(manuscript)

epub: 
	latex $(latexopt) $(manuscript)
	biber $(manuscript)
	mk4ht htlatex $(manuscript).tex 'xhtml,charset=utf-8,pmathml' ' -cunihtf -utf8 -cvalidate'
	ebook-convert $(manuscript).html $(manuscript).epub

clean:
	rm -f *.bcf *.run.xml *.dvi *.toc *.aux *.gz *.out *.log *.bbl *.blg *.log *.spl *~ *.spl *.zip *.acn *.glo *.ist *.epub *.glsdefs *.lot *.fls *.lof *.fdb_latexmk

realclean: clean
	rm -rf $(manuscript).dvi
	rm -f $(manuscript).pdf

clean-aux:
	rm -f *.aux
	rm -f $(manuscript).bbl
	rm -f $(manuscript).bcf
	rm -f $(manuscript).blg
	rm -f $(manuscript).log
	rm -f $(manuscript).out
	rm -f $(manuscript).run.xml
	rm -f $(manuscript).toc
	rm -f $(manuscript).xwm

%.ps :%.eps
	convert $< $@

%.png :%.eps
	convert $< $@

zip:
	zip paper.zip *.tex *.eps *.bib

.PHONY: all clean
