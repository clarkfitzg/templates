# Name of the report
REPORT = report

# $< references the first prerequisite
$(REPORT).pdf : $(REPORT).mdown
	pandoc $< -s -o $@ -V geometry:margin=1in -V fontsize=12pt

view :
	open $(REPORT).pdf
