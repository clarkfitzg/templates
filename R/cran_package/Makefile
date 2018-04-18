RFILES = $(wildcard R/*.R)
TESTFILES = $(wildcard tests/testthat/test*.R)
VIGNETTES = $(wildcard vignettes/*.Rmd)

PKG=template_0.0.1.tar.gz

# User local install
install: $(RFILES)
	R -e "roxygen2::roxygenize()"
	R CMD INSTALL .

test: $(TESTFILES)
	make install
	cd tests && Rscript testthat.R && cd ..

$(PKG): $(RFILES) $(TESTFILES) $(VIGNETTES) DESCRIPTION
	R CMD build .

check: $(PKG)
	R CMD check $(PKG)


# #vignettes: $(VIGNETTES)
# 
# #docs:
# #	R -e "tools::buildVignettes(dir = '.')"
# 

# 
# clean:
# 	rm vignettes/*.html
# 	rm $(PKG)
# 	rm -r autoparallel.Rcheck
