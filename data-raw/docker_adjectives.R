# Retrieve the most recent list of adjectives
docker_adjectives <- readLines("https://raw.githubusercontent.com/moby/moby/master/pkg/namesgenerator/names-generator.go")
# Drop the frontmatter
docker_adjectives <- tail(
  docker_adjectives,
  -which(
    grepl("left = \\[\\.\\.\\.\\]string\\{", docker_adjectives)
  )
)
# Drop everything from where the names start
docker_adjectives <- head(
  docker_adjectives,
  which(grepl("right = \\[\\.\\.\\.\\]string\\{", docker_adjectives)) - 5
)
# Strip artifacts
docker_adjectives <- gsub("\t|,|\"", "", docker_adjectives)
# Remove adjectives which were just artifacts
docker_adjectives <- unique(docker_adjectives[docker_adjectives != ""])

usethis::use_data(docker_adjectives, overwrite = TRUE)
