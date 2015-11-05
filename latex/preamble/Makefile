# Name of the report
# Required
TEXFILE = report

all: $(TEXFILE).pdf

# $< references the first prerequisite
$(TEXFILE).pdf: $(TEXFILE).tex
	pdflatex $<

view:
	open $(TEXFILE).pdf

clean :
	rm {*.aux,*.bbl,*.blg,*.log,*.out}
