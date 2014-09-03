#FLAGS = -interaction=batchmode --shell-escape
FLAGS = --shell-escape
NUMBERS = 1 # 2 3
TEXER = xelatex

main: rapport

clean: cleantemp cleanpdf

cleantemp:
	rm -f *.aux *.log *.synctex.gz *.bib

cleanpdf:
	rm -f cv-*.pdf

rapport:	
	$(foreach var,$(NUMBERS),$(TEXER) $(FLAGS) cv-johan-angelstam.tex;)


