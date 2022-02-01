y <- c(4, 6, 7, 9, 10)
x <- c(1, 4, 8, 10, 12)
n <- length(x)

sx <- sd(x)
sx

tobs <- 0.525/sb
yp <- 3.525 + 0.525*x
e <- y - yp
e
se <- sqrt(sum(e^2)/(n-2))
se

sb <- se/(sx*sqrt(n-1))
sb

lm(y ~ x)
summary(lm(y~x))