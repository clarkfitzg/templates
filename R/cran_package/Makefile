RFILES!= ls R/*.R
TESTFILES!= ls tests/testthat/test*.R
VIGNETTES!= ls vignettes/*.Rmd

PKG=template_0.0.1.tar.gz

# User local install
install: $(RFILES)
	R -e "roxygen2::roxygenize()"
	R CMD INSTALL .

test: $(TESTFILES)
	make install
	cd tests && Rscript testthat.R && cd ..

$(PKG): $(RFILES) $(TESTFILES)
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
