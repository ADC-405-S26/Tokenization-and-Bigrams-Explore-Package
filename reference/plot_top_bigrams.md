# Plot the most common bigrams

Create a bar chart of the most frequent bigrams

## Usage

``` r
plot_top_bigrams(bigram_input, n = 10)
```

## Arguments

- bigram_input:

  A data frame containing bigrams

- n:

  Number of top bigrams to plot

## Value

A ggplot bar chart.

## Examples

``` r
test_input <- data.frame(
  text = c(
    "Lisan Al Gaib leads the way",
    "Messi is the Goat"
  )
)

bigrams <- create_bigrams(test_input, "text")

plot_top_bigrams(bigrams)

```
