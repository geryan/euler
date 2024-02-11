# The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385,

# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 55 ^2 = 3025,

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

z <- 1:100

z2 <- z^2

s_z2 <- sum(z2)

sz <- sum(z)

sz_2 <- sz^2

sz_2 - s_z2

# 25164150

