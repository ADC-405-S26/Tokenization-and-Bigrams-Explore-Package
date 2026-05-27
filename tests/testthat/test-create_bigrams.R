test_that("create_bigrams creates bigram column", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  result <- create_bigrams(test_input, "text")

  expect_true("bigram" %in% names(result))
})

test_that("create_bigrams returns correct number of bigrams", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  result <- create_bigrams(test_input, "text")

  expect_equal(nrow(result), 3)
})

test_that("create_bigrams fails with bad input", {
  expect_error(create_bigrams("not data", "text"))
})
