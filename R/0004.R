# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is.
# 9009 = 91 * 99
# Find the largest palindrome made from the product of two 3-digit numbers.

library(dplyr)

rev.num <- function(x){
  # expanding on code from https://stackoverflow.com/a/46773548/2706826

  x |>
    as.character() |>
    strsplit(split = "") |>
    unlist() |>
    rev() |>
    paste0(collapse = "") |>
    as.integer()
}

d <- expand.grid(x = 999:100, y =999:100) |>
  as_tibble() |>
  mutate(
    z = x*y
  ) |>
  rowwise() |>
  mutate(
    revz = rev.num(z)
  ) |>
  ungroup()|>
  mutate(
    palindrome = z == revz
  )

max(d$z[d$palindrome])
