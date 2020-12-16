#' Adjectives used in the procedural naming of Docker containers.
#'
#' A data set containing the 108 adjectives used in the naming of Docker
#' containers as of 2020-12-16.
#'
#' @format A character vector with 108 elements, each representing a single
#' adjective used to name Docker containers.
#'
#' @source \url{https://github.com/moby/moby/blob/master/pkg/namesgenerator/names-generator.go}
"docker_adjectives"

#' Surnames used in the procedural naming of Docker containers.
#'
#' A data set containing the 237 surnames used in the naming of Docker
#' containers as of 2020-12-16. Each name corresponds to a famous scientist,
#' technologist, or mathematician; see the original source for more information
#' on each name.
#'
#' @format A character vector with 237 elements, each representing a single
#' surname used to name Docker containers.
#'
#' @source \url{https://github.com/moby/moby/blob/master/pkg/namesgenerator/names-generator.go}
"docker_names"

#' 999 of the most common words in the English language
#'
#' A data set containing 999 of the most common words in the English language.
#' Note that the source does not mention provenance of the list and has been
#' critiqued for diverging from typical lists of the most common words in the
#' English language; as such, this data set is referred to as "common words"
#' rather than "the most common words". The word "slave" has been omitted from
#' the list to avoid insensitive procedural name generation.
#'
#' @format A character vector with 999 elements, each representing a single word
#' commonly used in the English language.
#'
#' @source \url{https://gist.github.com/deekayen/4148741}
"common_words"

#' 820 of the most common words in the Spanish language
#'
#' A data set containing 820 of the most common words in the Spanish language,
#' as determined by the RAE. Only words which can be represented in UTF-8 are
#' included for compatibility across platforms and collations.
#'
#' @format A character vector with 820 elements, each representing a single word
#' commonly used in the Spanish language.
#'
#' @source \url{http://corpus.rae.es/lfrecuencias.html}
"spanish_words"
