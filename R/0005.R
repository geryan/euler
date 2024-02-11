# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1to 20 ?


library(dplyr)
library(tidyr)

# q <- expand.grid(x = seq(from = 20, to = 20e7, by = 20), y = 1:20) |>
#   as_tibble() |>
#   mutate(
#     mod = x %% y
#   ) #|>
#   # pivot_wider(
#   #   names_from = y,
#   #   values_from = mod,
#   #   names_prefix = "y"
#   # ) |>
#   # mutate(
#   #   z =
#   # )
#   group_by(x) |>
#   summarise(
#     z = sum(mod)
#   ) |>
#   filter(z == 0)
#   #arrange(z)
#
# z
# friggin slow


#s20 <- seq(20:factorial(20), by = 20) absurdly long

z <- 0
y <- 1
while(y != 0){

  z <- z+20

  y <- sapply(
    X = 1:20,
    FUN = function(x,y){y %% x},
    y = z
  ) %>%
    sum

}

y
z

# z = 232792560

# friggin slow but will get there eventually

# q <- expand.grid(
#   x = seq(
#     from = 20,
#     to = 20e7,
#     by = 20
#   ),
#   y = 1:20
# ) |>
#   as_tibble() |>
#   mutate(
#     mod = x %% y
#   ) |>
# pivot_wider(
#   names_from = y,
#   values_from = mod,
#   names_prefix = "y"
# )
#
# n <- q[1]
#
# z <- rowSums(q[,2:21])
# friggin slow


# consider the maths here
# https://en.wikipedia.org/wiki/Greatest_common_divisor#Using_Euclid.27s_algorithm
# and here
# https://en.wikipedia.org/wiki/Integer_factorization

#
# Compute the prime factorization of each number from 1 to 20, and multiply the greatest power of each prime together:
#
#   20 = 2^2 * 5
# 19 = 19
# 18 = 2 * 3^2
# 17 = 17
# 16 = 2^4
# 15 = 3 * 5
# 14 = 2 * 7
# 13 = 13
# 11 = 11
#
# All others are included in the previous numbers.
#
# ANSWER: 2^4 * 3^2 * 5 * 7 * 11 * 13 * 17 * 19 = 232 792 560
