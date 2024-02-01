library(dplyr)

tibble(x = 1:999) |>
  mutate(
    y3 = x %% 3,
    y5 = x %% 5,
    y = ifelse(y3 == 0 | y5 == 0, 1, 0)
  ) |>
  filter(y == 1) |>
  pull(x) |>
  sum()
