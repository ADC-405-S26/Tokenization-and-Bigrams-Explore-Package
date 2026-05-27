test_that("tokenize_words creates word column", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  result <- tokenize_words(test_input, "text")

  expect_true("word" %in% names(result))
})

test_that("tokenize_words returns correct number of words", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  result <- tokenize_words(test_input, "text")

  expect_equal(nrow(result), 4)
})

test_that("tokenize_words fails with bad input", {
  expect_error(tokenize_words("not data", "text"))
})
