#' Generates a random name from the list of Docker adjectives and surnames.
#'
#' This function generates `n` random names, each combining a single adjective
#' from [docker_adjectives] and a surname from [docker_names].
#'
#' @param n The number of random names to be generated.
#' @param retry If `TRUE`, a random integer between 1 and 10 is appended to each
#' generated name.
#'
#' @return A random name formatted as "adjective_surname" (for example,
#' "focused_turing").
#'
#' @examples
#' make_docker_names(1)
#' make_docker_names(2, retry = TRUE)
#'
#' @export
make_docker_names <- function(n, retry = FALSE) {
  name <- paste0(
    sample(proceduralnames::docker_adjectives, n),
    "_",
    sample(proceduralnames::docker_names, n)
  )
  if (any(name == "boring_wozniak")) { # Steve Wozniak is not boring
    name[name == "boring_wozniak"] <- make_docker_names(1, retry) # nocov
  }

  if (retry) name <- paste0(name, sample.int(10, n, replace = TRUE))

  name

}
