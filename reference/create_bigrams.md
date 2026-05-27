# Create bigrams from text

Convert a text column into 2 word combinations

## Usage

``` r
create_bigrams(input, text_col)
```

## Arguments

- input:

  A data frame containing text data

- text_col:

  Name of the text column

## Value

A tibble containing bigrams

## Examples

``` r
test_input <- data.frame(
  text = c(
    "Lisan Al Gaib leads the way",
    "Messi is the Goat"
  )
)

create_bigrams(test_input, "text")
#>                          text     bigram
#> 1 Lisan Al Gaib leads the way   lisan al
#> 2 Lisan Al Gaib leads the way    al gaib
#> 3 Lisan Al Gaib leads the way gaib leads
#> 4 Lisan Al Gaib leads the way  leads the
#> 5 Lisan Al Gaib leads the way    the way
#> 6           Messi is the Goat   messi is
#> 7           Messi is the Goat     is the
#> 8           Messi is the Goat   the goat
```
