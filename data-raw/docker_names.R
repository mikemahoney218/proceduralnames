# Retrieve the most recent list of names
docker_names <- readLines("https://raw.githubusercontent.com/moby/moby/master/pkg/namesgenerator/names-generator.go")
# Drop all frontmatter and adjectives
docker_names <- tail(
  docker_names,
  -which(grepl("right = \\[\\.\\.\\.\\]string\\{", docker_names))
)
# Drop all code after the current last name in list
docker_names <- head(
  docker_names,
  which(grepl("zhukovsky", docker_names))
)
# No empty names allowed
docker_names <- unique(docker_names[!grepl(" ", docker_names)])
# strip artifacts
docker_names <- gsub("\t|,|\"", "", docker_names)
# No names which were only artifacts
docker_names <- unique(docker_names[docker_names != ""])

usethis::use_data(docker_names, overwrite = TRUE)
