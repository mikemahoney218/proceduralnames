#' Generates a random name from a list of common English words.
#'
#' This function generates `n` random names, each a combination of `n_words`
#' words selected from [common_words].
#'
#' @param n The number of random names to be generated.
#' @param n_words The number of words to combine into a name.
#' @param retry If `TRUE`, a random integer between 1 and 10 is appended to each
#' generated name.
#' @param sep A character string to separate the terms. Not `NA_character_`.
#' @param case One of either "lower", "upper", or "title". The capitalization to
#' use for each word.
#'
#' @return A character vector of length `n` of random names, each composed of
#' `n_word` terms capitalized according to `case` separated by `sep`. Note that
#' names are not guaranteed to be unique.
#'
#' @examples
#' make_english_names(1, n_words = 2)
#' make_english_names(2, retry = TRUE)
#' @export
make_english_names <- function(n,
                               n_words = 3,
                               retry = FALSE,
                               sep = "_",
                               case = c("lower", "upper", "title")) {

  make_names(proceduralnames::common_words, n, n_words, retry, sep, case)

}

#' Generates a random name from the list of Docker adjectives and surnames.
#'
#' This function generates `n` random names, each combining a single adjective
#' from [docker_adjectives] and a surname from [docker_names].
#'
#' @inheritParams make_english_names
#'
#' @return A random name formatted as "adjective_surname" (for example,
#' "focused_turing").
#'
#' @examples
#' make_docker_names(1)
#' make_docker_names(2, retry = TRUE)
#' @export
make_docker_names <- function(n, retry = FALSE, sep = "_") {
  name <- paste0(
    sample(proceduralnames::docker_adjectives,
           n,
           replace = length(proceduralnames::docker_adjectives) < n),
    sep,
    sample(proceduralnames::docker_names,
           n,
           replace = length(proceduralnames::docker_names) < n)
  )
  if (any(name == "boring_wozniak")) { # Steve Wozniak is not boring
    name[name == "boring_wozniak"] <- make_docker_names(1, retry) # nocov
  }

  if (retry) name <- paste0(name, sample.int(10, n, replace = TRUE))

  name
}

#' Generates a random name from a list of common Spanish words.
#'
#' This function generates `n` random names, each a combination of `n_words`
#' words selected from [spanish_words].
#'
#' @inheritParams make_english_names
#'
#' @return A character vector of length `n` of random names, each composed of
#' `n_word` terms capitalized according to `case` separated by `sep`. Note that
#' names are not guaranteed to be unique.
#'
#' @examples
#' make_spanish_names(1, n_words = 2)
#' make_spanish_names(2, retry = TRUE)
#' @export
make_spanish_names <- function(n,
                               n_words = 3,
                               retry = FALSE,
                               sep = "_",
                               case = c("lower", "upper", "title")) {

  make_names(proceduralnames::spanish_words, n, n_words, retry, sep, case)

}

#' Create procedural names.
#'
#' @param corpus A vector of strings to build names from.
#' @inheritParams make_english_names
#'
#' @return A character vector of length `n` of random names, each composed of
#' `n_word` terms capitalized according to `case` separated by `sep`. Note that
#' names are not guaranteed to be unique.
make_names <- function(corpus, n, n_words, retry, sep = "_", case) {

  corpus <- if (case[[1]] == "upper") {
    tools::toTitleCase(corpus)
  } else if (case[[1]] == "title") {
    toupper(corpus)
  } else {
    corpus
  }

  name <- vapply(
    seq_len(n),
    function(x) {
      paste0(
        sample(corpus,
               n_words,
               replace = length(corpus) < n * n_words),
        collapse = sep
      )
    },
    character(1)
  )

  if (retry) name <- paste0(name, sample.int(10, n, replace = TRUE))

  name

}
