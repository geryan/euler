# <p>The sum of the primes below $10$ is $2 + 3 + 5 + 7 = 17$.</p>
#   <p>Find the sum of all the primes below two million.</p>

library(primes)


generate_primes(max = 2e6) %>%
  sum
