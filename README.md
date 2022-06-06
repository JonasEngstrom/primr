# PrimR

PrimR provides a way of storing several categorical values in the same variable in cases where other methods like one-hot encoding, nested lists, or tidy data are impossible due to database design or are impractical.

PrimR assigns every category in the dataset a unique prime number and then stores products of the prime numbers to represent combinations of the categories as single numbers. To get the original data back, the numbers are factorized and checked against the encoding key.

## Installing the `primr` Package Using the R Terminal

1. Install *devtools*
```r
install.packages('devtools')
```
2. Load *devtools*
```r
library(devtools)
```
3. Install `primr`
```r
install_github('JonasEngstrom/primr', build_vignettes = TRUE)
```
4. Load `primr`
```r
library(primr)
```

## Get Started Using `primr`

For a quick walk through on how to use `primr`, see the vignette *Introduction to PrimR*. It can be loaded using the command:

```r
utils::browseVignettes('primr')
```
