n1 <- 409
n2 <- 504
x1 <- 294
x2 <- 333
p1 <- x1/n1
p2 <- x2/n2
pc <- (x1 + x2)/(n1 + n2)

zobs <- (p1 - p2)/sqrt(pc*(1-pc)*((1/n1) + (1/n2)))
zobs

a <- 0.05
zc <- qnorm((1 - a/2))
zc

pval <- 2*(1-pnorm(abs(zobs)))
pval

b <- 0.1
inf <- p1 - p2 - qnorm(1 - (b/2))*sqrt((p1*(1-p1)/n1) + (p2*(1-p2)/n2))
sup <- p1 - p2 + qnorm(1 - (b/2))*sqrt((p1*(1-p1)/n1) + (p2*(1-p2)/n2))