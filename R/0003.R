library(dplyr)

n <- 600851475143
max <- sqrt(n)

fctn<- tibble(x = 1:floor(max)) |>
  mutate(
    mod = n %% x
  ) %>%
  filter(
    mod == 0
  ) |>
  pull(x)


# install.packages("primes")
# library(primes)
# z <- generate_primes(1, n)
#
#
# install.packages("primefactr")
# library(primefactr)
# AllPrimesUpTo(n)

library(primes)
pfn <- fctn[is_prime(fctn)]
max(pfn)
