## Release summary

I apologize for the rapid re-submission! The CRAN release of version 0.1.0 
brought two design flaws to light -- the original `common_words` data set 
included with this package included apostrophes, breaking some uses of the 
identifiers, and the original generation functions did not sample with 
replacement, limiting how many identifiers could be generated per call.

## Test environments
* local R installation, R 4.0.3
* ubuntu 20.04 (on GitHub Actions), R 4.0.3, 3.6.3, devel
* macOS (on GitHub Actions), R 4.0.3
* windows (on GitHub Actions), R 4.0.3
* win-builder, R devel, 4.03, 3.6.3

## R CMD check results

0 errors | 0 warnings | 0 notes

## Downstream dependencies

There are currently no downstream dependencies for this package.
