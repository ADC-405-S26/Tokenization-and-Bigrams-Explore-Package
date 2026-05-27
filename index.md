# tobitext

The goal of `tobitext` is to provide simple functions for beginner NLP
and text analysis workflows using tidytext.

## Installation

You can install the development version of `tobitext` from GitHub with:

``` r

# install.packages("devtools")
devtools::install_github("YOUR_GITHUB_USERNAME/tobitext")
```

## Examples

This is a basic example showing a simple text analysis workflow:

``` r

library(tobitext)
```

#### sample_text dataset

``` r

sample_text
#>   id
#> 1  1
#> 2  2
#>                                                                                                                                                                                                                                                                                                                          text
#> Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
```

#### tokenize_words example

``` r

tokens <- tokenize_words(sample_text, "text")

tokens
#>     id
#> 1    1
#> 2    1
#> 3    1
#> 4    1
#> 5    1
#> 6    1
#> 7    1
#> 8    1
#> 9    1
#> 10   1
#> 11   1
#> 12   1
#> 13   1
#> 14   1
#> 15   1
#> 16   1
#> 17   1
#> 18   1
#> 19   1
#> 20   1
#> 21   1
#> 22   1
#> 23   1
#> 24   1
#> 25   1
#> 26   1
#> 27   1
#> 28   1
#> 29   1
#> 30   1
#> 31   1
#> 32   1
#> 33   1
#> 34   1
#> 35   1
#> 36   1
#> 37   1
#> 38   1
#> 39   1
#> 40   1
#> 41   1
#> 42   1
#> 43   1
#> 44   1
#> 45   1
#> 46   1
#> 47   1
#> 48   2
#> 49   2
#> 50   2
#> 51   2
#> 52   2
#> 53   2
#> 54   2
#> 55   2
#> 56   2
#> 57   2
#> 58   2
#> 59   2
#> 60   2
#> 61   2
#> 62   2
#> 63   2
#> 64   2
#> 65   2
#> 66   2
#> 67   2
#> 68   2
#> 69   2
#> 70   2
#> 71   2
#> 72   2
#> 73   2
#> 74   2
#> 75   2
#> 76   2
#> 77   2
#> 78   2
#> 79   2
#> 80   2
#> 81   2
#> 82   2
#> 83   2
#> 84   2
#> 85   2
#> 86   2
#> 87   2
#> 88   2
#> 89   2
#> 90   2
#> 91   2
#> 92   2
#> 93   2
#> 94   2
#> 95   2
#> 96   2
#> 97   2
#> 98   2
#> 99   2
#> 100  2
#> 101  2
#> 102  2
#>                                                                                                                                                                                                                                                                                                                            text
#> 1                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 2                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 3                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 4                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 5                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 6                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 7                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 8                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 9                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 10                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 11                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 12                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 13                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 14                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 15                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 16                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 17                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 18                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 19                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 20                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 21                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 22                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 23                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 24                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 25                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 26                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 27                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 28                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 29                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 30                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 31                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 32                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 33                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 34                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 35                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 36                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 37                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 38                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 39                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 40                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 41                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 42                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 43                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 44                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 45                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 46                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 47                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 48  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 49  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 50  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 51  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 52  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 53  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 54  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 55  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 56  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 57  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 58  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 59  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 60  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 61  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 62  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 63  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 64  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 65  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 66  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 67  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 68  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 69  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 70  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 71  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 72  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 73  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 74  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 75  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 76  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 77  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 78  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 79  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 80  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 81  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 82  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 83  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 84  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 85  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 86  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 87  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 88  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 89  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 90  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 91  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 92  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 93  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 94  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 95  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 96  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 97  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 98  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 99  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 100 Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 101 Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 102 Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#>            word
#> 1        lionel
#> 2         messi
#> 3            is
#> 4        widely
#> 5    considered
#> 6           one
#> 7            of
#> 8           the
#> 9      greatest
#> 10     football
#> 11      players
#> 12           of
#> 13          all
#> 14         time
#> 15        messi
#> 16       helped
#> 17    argentina
#> 18          win
#> 19          the
#> 20         fifa
#> 21        world
#> 22          cup
#> 23           in
#> 24         2022
#> 25          and
#> 26          won
#> 27     multiple
#> 28       ballon
#> 29          dor
#> 30       awards
#> 31       during
#> 32          his
#> 33       career
#> 34         many
#> 35     football
#> 36         fans
#> 37       admire
#> 38        messi
#> 39          for
#> 40          his
#> 41    dribbling
#> 42   creativity
#> 43          and
#> 44  consistency
#> 45           in
#> 46    important
#> 47      matches
#> 48        lisan
#> 49           al
#> 50         gaib
#> 51           is
#> 52            a
#> 53    prophetic
#> 54       figure
#> 55           in
#> 56          the
#> 57         dune
#> 58     universe
#> 59      created
#> 60           by
#> 61        frank
#> 62      herbert
#> 63          the
#> 64       fremen
#> 65      believe
#> 66        lisan
#> 67           al
#> 68         gaib
#> 69         will
#> 70         lead
#> 71         them
#> 72           to
#> 73      freedom
#> 74          and
#> 75    transform
#> 76          the
#> 77       future
#> 78           of
#> 79      arrakis
#> 80           in
#> 81          the
#> 82        story
#> 83         paul
#> 84     atreides
#> 85    gradually
#> 86      becomes
#> 87   associated
#> 88         with
#> 89          the
#> 90       legend
#> 91           of
#> 92        lisan
#> 93           al
#> 94         gaib
#> 95           as
#> 96           he
#> 97        gains
#> 98    influence
#> 99        among
#> 100         the
#> 101      fremen
#> 102      people
```

#### create_bigrams example

``` r

bigrams <- create_bigrams(sample_text, "text")

bigrams
#>     id
#> 1    1
#> 2    1
#> 3    1
#> 4    1
#> 5    1
#> 6    1
#> 7    1
#> 8    1
#> 9    1
#> 10   1
#> 11   1
#> 12   1
#> 13   1
#> 14   1
#> 15   1
#> 16   1
#> 17   1
#> 18   1
#> 19   1
#> 20   1
#> 21   1
#> 22   1
#> 23   1
#> 24   1
#> 25   1
#> 26   1
#> 27   1
#> 28   1
#> 29   1
#> 30   1
#> 31   1
#> 32   1
#> 33   1
#> 34   1
#> 35   1
#> 36   1
#> 37   1
#> 38   1
#> 39   1
#> 40   1
#> 41   1
#> 42   1
#> 43   1
#> 44   1
#> 45   1
#> 46   1
#> 47   2
#> 48   2
#> 49   2
#> 50   2
#> 51   2
#> 52   2
#> 53   2
#> 54   2
#> 55   2
#> 56   2
#> 57   2
#> 58   2
#> 59   2
#> 60   2
#> 61   2
#> 62   2
#> 63   2
#> 64   2
#> 65   2
#> 66   2
#> 67   2
#> 68   2
#> 69   2
#> 70   2
#> 71   2
#> 72   2
#> 73   2
#> 74   2
#> 75   2
#> 76   2
#> 77   2
#> 78   2
#> 79   2
#> 80   2
#> 81   2
#> 82   2
#> 83   2
#> 84   2
#> 85   2
#> 86   2
#> 87   2
#> 88   2
#> 89   2
#> 90   2
#> 91   2
#> 92   2
#> 93   2
#> 94   2
#> 95   2
#> 96   2
#> 97   2
#> 98   2
#> 99   2
#> 100  2
#>                                                                                                                                                                                                                                                                                                                            text
#> 1                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 2                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 3                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 4                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 5                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 6                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 7                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 8                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 9                          Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 10                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 11                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 12                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 13                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 14                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 15                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 16                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 17                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 18                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 19                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 20                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 21                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 22                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 23                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 24                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 25                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 26                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 27                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 28                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 29                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 30                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 31                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 32                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 33                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 34                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 35                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 36                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 37                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 38                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 39                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 40                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 41                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 42                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 43                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 44                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 45                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 46                         Lionel Messi is widely considered one of the greatest football players of all time. Messi helped Argentina win the FIFA World Cup in 2022 and won multiple Ballon dOr awards during his career. Many football fans admire Messi for his dribbling, creativity, and consistency in important matches.
#> 47  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 48  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 49  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 50  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 51  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 52  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 53  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 54  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 55  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 56  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 57  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 58  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 59  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 60  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 61  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 62  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 63  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 64  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 65  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 66  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 67  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 68  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 69  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 70  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 71  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 72  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 73  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 74  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 75  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 76  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 77  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 78  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 79  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 80  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 81  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 82  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 83  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 84  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 85  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 86  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 87  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 88  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 89  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 90  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 91  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 92  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 93  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 94  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 95  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 96  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 97  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 98  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 99  Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#> 100 Lisan al Gaib is a prophetic figure in the Dune universe created by Frank Herbert. The Fremen believe Lisan al Gaib will lead them to freedom and transform the future of Arrakis. In the story, Paul Atreides gradually becomes associated with the legend of Lisan al Gaib as he gains influence among the Fremen people.
#>                   bigram
#> 1           lionel messi
#> 2               messi is
#> 3              is widely
#> 4      widely considered
#> 5         considered one
#> 6                 one of
#> 7                 of the
#> 8           the greatest
#> 9      greatest football
#> 10      football players
#> 11            players of
#> 12                of all
#> 13              all time
#> 14            time messi
#> 15          messi helped
#> 16      helped argentina
#> 17         argentina win
#> 18               win the
#> 19              the fifa
#> 20            fifa world
#> 21             world cup
#> 22                cup in
#> 23               in 2022
#> 24              2022 and
#> 25               and won
#> 26          won multiple
#> 27       multiple ballon
#> 28            ballon dor
#> 29            dor awards
#> 30         awards during
#> 31            during his
#> 32            his career
#> 33           career many
#> 34         many football
#> 35         football fans
#> 36           fans admire
#> 37          admire messi
#> 38             messi for
#> 39               for his
#> 40         his dribbling
#> 41  dribbling creativity
#> 42        creativity and
#> 43       and consistency
#> 44        consistency in
#> 45          in important
#> 46     important matches
#> 47              lisan al
#> 48               al gaib
#> 49               gaib is
#> 50                  is a
#> 51           a prophetic
#> 52      prophetic figure
#> 53             figure in
#> 54                in the
#> 55              the dune
#> 56         dune universe
#> 57      universe created
#> 58            created by
#> 59              by frank
#> 60         frank herbert
#> 61           herbert the
#> 62            the fremen
#> 63        fremen believe
#> 64         believe lisan
#> 65              lisan al
#> 66               al gaib
#> 67             gaib will
#> 68             will lead
#> 69             lead them
#> 70               them to
#> 71            to freedom
#> 72           freedom and
#> 73         and transform
#> 74         transform the
#> 75            the future
#> 76             future of
#> 77            of arrakis
#> 78            arrakis in
#> 79                in the
#> 80             the story
#> 81            story paul
#> 82         paul atreides
#> 83    atreides gradually
#> 84     gradually becomes
#> 85    becomes associated
#> 86       associated with
#> 87              with the
#> 88            the legend
#> 89             legend of
#> 90              of lisan
#> 91              lisan al
#> 92               al gaib
#> 93               gaib as
#> 94                 as he
#> 95              he gains
#> 96       gains influence
#> 97       influence among
#> 98             among the
#> 99            the fremen
#> 100        fremen people
```

#### plot_top_bigrams example

``` r

plot_top_bigrams(bigrams)
```

![](reference/figures/README-unnamed-chunk-5-1.png)
