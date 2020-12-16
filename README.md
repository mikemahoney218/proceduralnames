
<!-- README.md is generated from README.Rmd. Please edit that file -->

\# proceduralnames
<a href='https://mikemahoney218.github.io/proceduralnames'><img src='man/figures/logo.png' align="right" height="138" /></a>

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![License:
Apache 2.0](https://img.shields.io/badge/license-Apache-yellowgreen.svg)](https://choosealicense.com/licenses/apache-2.0/)
[![CRAN
status](https://www.r-pkg.org/badges/version/proceduralnames)](https://CRAN.R-project.org/package=proceduralnames)
[![codecov](https://codecov.io/gh/mikemahoney218/proceduralnames/branch/master/graph/badge.svg)](https://codecov.io/gh/mikemahoney218/proceduralnames)
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R build
status](https://github.com/mikemahoney218/proceduralnames/workflows/R-CMD-check/badge.svg)](https://github.com/mikemahoney218/proceduralnames/actions)

<!-- badges: end -->

The goal of proceduralnames is to make it easy to quickly generate
random names for easy differentiation of objects or observations.

## Installation

If the CRAN badge above is green, you can install the released version
of proceduralnames from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("proceduralnames")
```

You can always install the development version of proceduralnames from
GitHub via:

``` r
remotes::install.github("mikemahoney218/proceduralnames")
```

## Usage

At the moment, proceduralnames provides three user-facing functions:
`make_docker_names`, `make_english_names`, and `make_spanish_names`.
`make_docker_names` makes names in the same way Docker generates names
for its containers:

``` r
library(proceduralnames)
make_docker_names(1)
#> [1] "romantic_carson"
```

`make_english_names` and `make_spanish_names` both generate names using
a subset of the 1,000 most common words in English or Spanish,
respectively:

``` r
make_english_names(1)
#> [1] "start_who_ground"
make_spanish_names(1)
#> [1] "precisamente_personal_finalmente"
```

All three functions can be used to generate multiple names by providing
a different number to the `n` argument. `make_english_names` and
`make_spanish_names` both have an argument, `n_words`, which can be used
to alter the number of words combined for each name. All three functions
also have an argument, `retry` (named after the argument used in
generating Docker container names) which will append a random integer
between 1 and 10 to the end of each name:

``` r
make_docker_names(1, retry = TRUE)
#> [1] "exciting_borg8"
```

In addition to these functions, proceduralnames provides the data sets
each function draws from (namely, `docker_adjectives`, `docker_names`,
`common_words`, and `spanish_words`). These data may evolve with each
release of the package, so try not to depend on the length and contents
of each vector remaining constant, but the fundamental shape of each
object will remain stable.
