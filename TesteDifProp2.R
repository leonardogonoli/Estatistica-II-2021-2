n1 <- 846
n2 <- 956
x1 <- 525
x2 <- 679
p1 <- x1/n1
p2 <- x2/n2
pc <- (x1 + x2)/(n1 + n2)
d <- -0.05

zobs <- (p1 - p2 - d)/sqrt((p1*(1-p1)/n1) + (p2*(1-p2)/n2))

a <- 0.05
zc <- qnorm(1 - a)
zc

pval <- (1-pnorm(abs(zobs)))
pval

b <- 0.01
inf <- p1 - p2 - qnorm(1 - (b/2))*sqrt((p1*(1-p1)/n1) + (p2*(1-p2)/n2))
sup <- p1 - p2 + qnorm(1 - (b/2))*sqrt((p1*(1-p1)/n1) + (p2*(1-p2)/n2))