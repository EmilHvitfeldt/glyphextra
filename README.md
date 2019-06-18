
<!-- README.md is generated from README.Rmd. Please edit that file -->

# glyphextra

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/glyphextra)](https://cran.r-project.org/package=glyphextra)
<!-- badges: end -->

The goal of glyphextra is to …

## Installation

You can install the released version of glyphextra from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("glyphextra")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("EmilHvitfeldt/glyphextra")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggplot2)
library(glyphextra)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(key_glyph = draw_key_usa)
```

<img src="man/figures/README-example-1.png" width="100%" />

Please note that the ‘glyphextra’ project is released with a
[Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md). By
contributing to this project, you agree to abide by its terms.
