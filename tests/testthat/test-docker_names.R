test_that("make_docker_names works", {
  expect_equal(length(make_docker_names(2)),
               2)
  expect_true(all(grepl("\\d$",
                        make_docker_names(100, retry = TRUE))))
})
