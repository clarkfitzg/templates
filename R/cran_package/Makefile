# Package and version specific.

# CHANGE ME:
PKG=template_0.0.1.tar.gz

# The remainder of the Makefile is generic.
#############################################################

RFILES = $(wildcard R/*.R)
TESTFILES = $(wildcard tests/testthat/test*.R)
VIGNETTES = $(wildcard vignettes/*.Rmd)

# User local install
install: $(RFILES) DESCRIPTION
	R -e "roxygen2::roxygenize()"
	R CMD INSTALL .

test: $(TESTFILES)
	make install
	cd tests && Rscript testthat.R && cd ..

$(PKG): $(RFILES) $(TESTFILES) $(VIGNETTES) DESCRIPTION
	rm -f $(PKG)  # Otherwise it's included in build
	R CMD build .

check: $(PKG)
	R CMD check $(PKG) --as-cran

vignettes: $(VIGNETTES)
	make install
	R -e "tools::buildVignettes(dir = '.')"

clean:
	rm -rf vignettes/*.html $(PKG) *.Rcheck
