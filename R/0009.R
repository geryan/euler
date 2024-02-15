# <p>A Pythagorean triplet is a set of three natural numbers, $a \lt b \lt c$,
# for which, $$a^2 + b^2 = c^2.$$</p> <p>For example, $3^2 + 4^2 = 9 + 16 = 25 =
# 5^2$.</p> <p>There exists exactly one Pythagorean triplet for which $a + b + c
# = 1000$.<br>Find the product $abc$.</p>
#


a^2 + b^2 = c^2

c = (a^2 + b^2)^(1/2)

a + b + (a^2 + b^2)^(1/2) = 1000


library(dplyr)

z <- expand.grid(a = 1:500, b = 1:500, c = 1:500) |>
  as_tibble() |>
  mutate(
    pyth = a^2 + b^2 == c^2,
    abc = a + b + c == 1000
  ) |>
  filter(
    pyth, abc
  ) %>%
  mutate(
    prod = a*b*c
  )

z$prod[[1]]
