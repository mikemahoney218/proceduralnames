# proceduralnames 0.1.2

* Remove codemetar from Suggests (#1)

# proceduralnames 0.1.1

* `common_words` no longer contains ' marks
* All functions now resample words if the number of words required are greater
  than the source data.

# proceduralnames 0.1.0

* Initial release.
* New features:
  * `make_docker_names`, `make_english_names`, and `make_spanish_names` let you 
    easily generate procedural names.
  * `docker_names`, `docker_adjectives`, `common_words`, and `spanish_words` are 
    provided as data to let users produce their own names as desired.
* Internal changes:
  * Added a `NEWS.md` file to track changes to the package.
  * Added a pkgdown site
  * Added testing via GitHub Actions and testthat

