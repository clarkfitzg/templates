# Name of the report
# Required
TEXFILE = report

# Figures to be included in report
# Optional
FIGURES = histogram.pdf

# Report depends on this data
# Optional
DATAFILE = normaldata.csv

# Summary tables
# Optional
TABLES = quantiles.tex

# Citations (.bib file)
# Optional, need to add as dependency
CITATIONS = citations.bib

all: $(TEXFILE).pdf

# Run pdflatex several times for correct references
# $< references the first prerequisite
$(TEXFILE).pdf: $(TEXFILE).tex $(FIGURES) $(TABLES) 
	pdflatex $<
	#bibtex $(REPORT).aux 
	#pdflatex $<
	#pdflatex $<

$(DATAFILE): gendata.R
	Rscript $<

$(FIGURES) $(TABLES): analysis.R $(DATAFILE)
	Rscript $<

view:
	open $(TEXFILE).pdf

clean :
	rm {*.pdf,*.csv,*.aux,*.bbl,*.blg,*.log,*.out}
