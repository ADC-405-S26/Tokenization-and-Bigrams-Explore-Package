#' Create bigrams from text
#'
#' Convert a text column into 2 word combinations
#'
#' @param input A data frame containing text data
#' @param text_col Name of the text column
#'
#' @return A tibble containing bigrams
#'
#' @examples
#' test_input <- data.frame(
#'   text = c(
#'     "Lisan Al Gaib leads the way",
#'     "Messi is the Goat"
#'   )
#' )
#'
#' create_bigrams(test_input, "text")
#'
#' @export
create_bigrams <- function(input, text_col)
{
  checkmate::assert_data_frame(input)
  checkmate::assert_string(text_col)
  checkmate::assert_names(names(input), must.include = text_col)

  input |>
    tidytext::unnest_tokens(
      output = "bigram",
      input = tidyselect::all_of(text_col),
      token = "ngrams",
      n = 2
    )
}
