#' Plot the most common bigrams
#'
#' Create a bar chart of the most frequent bigrams
#'
#' @param bigram_input A data frame containing bigrams
#' @param n Number of top bigrams to plot
#'
#' @return A ggplot bar chart.
#'
#' @examples
#' test_input <- data.frame(
#'   text = c(
#'     "Lisan Al Gaib leads the way",
#'     "Messi is the Goat"
#'   )
#' )
#'
#' bigrams <- create_bigrams(test_input, "text")
#'
#' plot_top_bigrams(bigrams)
#'
#' @export
plot_top_bigrams <- function(bigram_input, n = 10)
{
  checkmate::assert_data_frame(bigram_input)
  checkmate::assert_names(names(bigram_input), must.include = "bigram")
  checkmate::assert_count(n, positive = TRUE)

  bigram_counts <- bigram_input |>
    dplyr::count(bigram, sort = TRUE) |>
    dplyr::slice_head(n = n)

  ggplot2::ggplot(
    bigram_counts,
    ggplot2::aes(
      x = stats::reorder(bigram, n),
      y = n
    )
  ) +
    ggplot2::geom_col() +
    ggplot2::coord_flip()
}

utils::globalVariables(c("bigram"))
