# Name of the report
# Required
TEXFILE = report

# Figures to be included in report
# Optional
FIGURES = normal_hist.pdf

# Report depends on this data
# Optional
DATAFILE = normal.csv

# Summary tables
# Optional
TABLES = quantiles.tex


all: $(TEXFILE).pdf

# Run pdflatex twice so that the figure references are correct.
# $< references the first prerequisite
$(TEXFILE).pdf: $(TEXFILE).tex $(FIGURES) $(TABLES)
	pdflatex $<
	pdflatex $<

$(DATAFILE): normal.py
	python $<

$(FIGURES) $(TABLES): analysis.py $(DATAFILE)
	python $<

view:
	open $(TEXFILE).pdf

clean:
	rm *.aux
	rm *.log
	rm *.out
	rm *.Rout

#$(FIGURES) : normal.R
#R CMD BATCH --vanilla $<
