#' Generates a random name from a list of common Spanish words.
#'
#' This function generates `n` random names, each a combination of `n_words`
#' words selected from [spanish_words].
#'
#' @param n The number of random names to be generated.
#' @param n_words The number of words to combine into a name.
#' @param retry If `TRUE`, a random integer between 1 and 10 is appended to each
#' generated name.
#'
#' @return A random name formatted as "word_word" (for example,
#' "movimiento_veces_objetivo").
#'
#' @examples
#' make_spanish_names(1, n_words = 2)
#' make_spanish_names(2, retry = TRUE)
#' @export
make_spanish_names <- function(n, n_words = 3, retry = FALSE) {
  name <- vapply(
    seq_len(n),
    function(x) {
      paste0(
        sample(proceduralnames::spanish_words,
               n_words,
               replace = length(proceduralnames::spanish_words) < n * n_words),
        collapse = "_"
      )
    },
    character(1)
  )

  if (retry) name <- paste0(name, sample.int(10, n, replace = TRUE))

  name
}
