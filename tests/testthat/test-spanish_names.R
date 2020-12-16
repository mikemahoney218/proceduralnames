test_that("make_spanish_names works", {
  expect_equal(
    length(make_spanish_names(2)),
    2
  )
  expect_true(all(grepl(
    "\\d$",
    make_spanish_names(100, retry = TRUE)
  )))
})
