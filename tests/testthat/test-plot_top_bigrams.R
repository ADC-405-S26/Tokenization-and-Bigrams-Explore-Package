test_that("plot_top_bigrams returns a ggplot", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  bigrams <- create_bigrams(test_input, "text")
  result <- plot_top_bigrams(bigrams)

  expect_s3_class(result, "ggplot")
})

test_that("plot_top_bigrams works with n value", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  bigrams <- create_bigrams(test_input, "text")
  result <- plot_top_bigrams(bigrams, n = 1)

  expect_s3_class(result, "ggplot")
})

test_that("plot_top_bigrams fails without bigram column", {
  test_input <- data.frame(
    text = "Messi is the Goat"
  )

  expect_error(plot_top_bigrams(test_input))
})
