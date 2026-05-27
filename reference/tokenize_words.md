# Tokenize text into words

Convert a text column into individual word tokens

## Usage

``` r
tokenize_words(input, text_col)
```

## Arguments

- input:

  A data frame containing text data

- text_col:

  Name of the text column

## Value

A tibble with one word per row

## Examples

``` r
test_input <- data.frame(
  text = c(
    "Lisan Al Gaib leads the way",
    "Messi is the Goat"
  )
)

tokenize_words(test_input, "text")
#>                           text  word
#> 1  Lisan Al Gaib leads the way lisan
#> 2  Lisan Al Gaib leads the way    al
#> 3  Lisan Al Gaib leads the way  gaib
#> 4  Lisan Al Gaib leads the way leads
#> 5  Lisan Al Gaib leads the way   the
#> 6  Lisan Al Gaib leads the way   way
#> 7            Messi is the Goat messi
#> 8            Messi is the Goat    is
#> 9            Messi is the Goat   the
#> 10           Messi is the Goat  goat
```
