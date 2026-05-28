# tobitext

`tobitext` is a small R package for simple text analysis workflows. It
helps users tokenize text, create bigrams, and visualize the most common
bigrams using a tidytext style workflow.

## Installation

You can install the development version of `tobitext` from GitHub with:

``` r

# install.packages("devtools")
devtools::install_github("ADC-405-S26/Tokenization-and-Bigrams-Explore-Package")
```

## Why tobitext?

Text analysis can get complicated quickly, especially for beginner NLP
projects. This package keeps the workflow small and practical by
focusing on three common steps:

- split text into words
- create 2 word phrases (bigrams)
- plot the most common bigrams

## Load the package

``` r

library(tobitext)
```

## Example dataset

The package includes a small dataset called `sample_text`.

``` r

sample_text
#>   id
#> 1  1
#> 2  2
#>                                                                                                                                                                                                                                                                                                                          text
#> 1                        Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 2 Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
```

## Tokenize words

The
[`tokenize_words()`](https://adc-405-s26.github.io/Tokenization-and-Bigrams-Explore-Package/reference/tokenize_words.md)
function turns a text column into one word per row.

``` r

tokens <- tokenize_words(sample_text, "text")

head(tokens, 10)
#>    id
#> 1   1
#> 2   1
#> 3   1
#> 4   1
#> 5   1
#> 6   1
#> 7   1
#> 8   1
#> 9   1
#> 10  1
#>                                                                                                                                                                                                                                                                                                    text
#> 1  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 2  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 3  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 4  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 5  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 6  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 7  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 8  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 9  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 10 Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#>          word
#> 1      lionel
#> 2       messi
#> 3          is
#> 4      widely
#> 5  considered
#> 6         one
#> 7          of
#> 8         the
#> 9    greatest
#> 10   football
```

## Create bigrams

The
[`create_bigrams()`](https://adc-405-s26.github.io/Tokenization-and-Bigrams-Explore-Package/reference/create_bigrams.md)
function creates 2 word combinations from the same text column.

``` r

bigrams <- create_bigrams(sample_text, "text")

head(bigrams, 10)
#>    id
#> 1   1
#> 2   1
#> 3   1
#> 4   1
#> 5   1
#> 6   1
#> 7   1
#> 8   1
#> 9   1
#> 10  1
#>                                                                                                                                                                                                                                                                                                    text
#> 1  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 2  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 3  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 4  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 5  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 6  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 7  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 8  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 9  Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 10 Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#>               bigram
#> 1       lionel messi
#> 2           messi is
#> 3          is widely
#> 4  widely considered
#> 5     considered one
#> 6             one of
#> 7             of the
#> 8       the greatest
#> 9  greatest football
#> 10  football players
```

## Plot top bigrams

The
[`plot_top_bigrams()`](https://adc-405-s26.github.io/Tokenization-and-Bigrams-Explore-Package/reference/plot_top_bigrams.md)
function counts and plots the most common bigrams.

``` r

plot_top_bigrams(bigrams, n = 10)
```

![](reference/figures/README-unnamed-chunk-5-1.png)

## Package functions

`tobitext` currently includes:

- [`tokenize_words()`](https://adc-405-s26.github.io/Tokenization-and-Bigrams-Explore-Package/reference/tokenize_words.md)
- [`create_bigrams()`](https://adc-405-s26.github.io/Tokenization-and-Bigrams-Explore-Package/reference/create_bigrams.md)
- [`plot_top_bigrams()`](https://adc-405-s26.github.io/Tokenization-and-Bigrams-Explore-Package/reference/plot_top_bigrams.md)
