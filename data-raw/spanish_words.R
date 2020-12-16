# Retrieve top 1,000 words from RAE
spanish_words <- read.table("http://corpus.rae.es/frec/1000_formas.TXT",
                            header = TRUE,
                            sep = "\t")[["Orden"]]
# Only retain words that can be displayed in UTF-8
spanish_words <- lapply(spanish_words, utf8ToInt)
spanish_words <- vapply(spanish_words, intToUtf8, character(1))
spanish_words <- spanish_words[!is.na(spanish_words)]
# Remove whitespace
spanish_words <- gsub("\\s", "", spanish_words)
usethis::use_data(spanish_words, overwrite = TRUE)
