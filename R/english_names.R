#' Generates a random name from a list of common English words.
#'
#' This function generates `n` random names, each a combination of `n_words`
#' words selected from [common_words].
#'
#' @param n The number of random names to be generated.
#' @param n_words The number of words to combine into a name.
#' @param retry If `TRUE`, a random integer between 1 and 10 is appended to each
#' generated name.
#'
#' @return A random name formatted as "word_word" (for example,
#' "every_complete_company").
#'
#' @examples
#' make_english_names(1, n_words = 2)
#' make_english_names(2, retry = TRUE)
#'
#' @export
make_english_names <- function(n, n_words = 3, retry = FALSE) {

  name <- vapply(
    seq_len(n),
    function(x) paste0(
      sample(proceduralnames::common_words, n_words),
      collapse = "_"
      ),
    character(1)
  )

  if (retry) name <- paste0(name, sample.int(10, n, replace = TRUE))

  name

}
