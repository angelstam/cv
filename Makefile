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

report:	
	$(foreach var,$(NUMBERS),$(TEXER) $(FLAGS) cv-johan-angelstam.tex;)

reportsv:	
	$(foreach var,$(NUMBERS),$(TEXER) $(FLAGS) cv-johan-angelstam.sv.tex;)
