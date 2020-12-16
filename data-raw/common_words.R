# Retrieve word list
# Warns about incomplete final line, but that doesn't impact us here
common_words <- suppressWarnings(readLines("https://gist.githubusercontent.com/deekayen/4148741/raw/98d35708fa344717d8eee15d11987de6c8e26d7d/1-1000.txt"))
common_words <- common_words[common_words != "slave"]
usethis::use_data(common_words, overwrite = TRUE)
