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

# Citations (.bib file)
# Optional
CITATIONS = citations.bib

all: $(TEXFILE).pdf

# Run pdflatex several times for correct references
# $< references the first prerequisite
$(TEXFILE).pdf: $(TEXFILE).tex $(FIGURES) $(TABLES) $(CITATIONS)
	pdflatex $<
	bibtex $(REPORT).aux 
	pdflatex $<
	pdflatex $<

$(DATAFILE): normal.py
	python $<

$(FIGURES) $(TABLES): analysis.py $(DATAFILE)
	python $<

view:
	open $(TEXFILE).pdf

clean :
	rm {*.aux,*.bbl,*.blg,*.log,*.out}

#$(FIGURES) : normal.R
#R CMD BATCH --vanilla $<
