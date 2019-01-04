# Name of the report
REPORT = report

# $< references the first prerequisite
$(REPORT).pdf : $(REPORT).md
	pandoc -s $< --bibliography biblio.bib --filter pandoc-citeproc CITATIONS -o $@ -V geometry:margin=1in -V fontsize=12pt

view :
	open $(REPORT).pdf
