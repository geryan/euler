# By listing the first six prime numbers: 2, 3, 5, 7, 11 and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?

library(primes)

z <- generate_n_primes(10001)
z[10001]

# this feels like cheating....
