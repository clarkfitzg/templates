# template

When starting a new package it makes sense to start with something that
uses standard development tools and passes the CRAN checks.
To that end this directory contains a minimal R package
template passing `R CMD check --as-cran`.

It uses the following:

- Documentation generated with
  [roxygen2](https://cran.r-project.org/package=roxygen2)
- Tests using [testthat](https://cran.r-project.org/package=testthat)
- Vignette in Rmd created by
  [knitr](https://cran.r-project.org/package=knitr)
- [GNU Make](https://www.gnu.org/software/make/) for automation (optional,
  you can use other tools)
