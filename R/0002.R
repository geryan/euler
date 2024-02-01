library(dplyr)

x <- c(1,2)

y <- max(x)

while(y < 4000000){
  lx <- length(x)
  y <- x[lx] + x[lx-1]

  x <- c(x, y)

}

y

a <- x[1:length(x-1)]

b <- a %% 2 == 0

sum(a[b])
