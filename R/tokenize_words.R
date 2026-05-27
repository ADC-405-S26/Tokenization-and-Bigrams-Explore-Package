#' Tokenize text into words
#'
#' Convert a text column into individual word tokens
#'
#' @param input A data frame containing text data
#' @param text_col Name of the text column
#'
#' @return A tibble with one word per row
#'
#' @examples
#' test_input <- data.frame(
#'   text = c(
#'     "Lisan Al Gaib leads the way",
#'     "Messi is the Goat"
#'   )
#' )
#'
#' tokenize_words(test_input, "text")
#'
#' @export
tokenize_words <- function(input, text_col)
{
  checkmate::assert_data_frame(input)
  checkmate::assert_string(text_col)
  checkmate::assert_names(names(input), must.include = text_col)

  input |>
    tidytext::unnest_tokens(
      output = "word",
      input = tidyselect::all_of(text_col),
      token = "words"
    )
}
