RUB:=rubber
RUBARGS:=-I ./images -df

default: canola.pdf

.PHONY: canola.pdf

canola.pdf: canola.tex *.tex *.bib ./images/* 
	$(RUB) $(RUBARGS) $<

clean:
	rm -f canola.pdf canola.out canola.log canola.aux canola.bbl canola.blg canola.toc
