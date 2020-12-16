test_that("make_english_names works", {
  expect_equal(
    length(make_english_names(2)),
    2
  )
  expect_true(all(grepl(
    "\\d$",
    make_english_names(100, retry = TRUE)
  )))
})
