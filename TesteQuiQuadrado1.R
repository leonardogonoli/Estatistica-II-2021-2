O <- c(110, 55, 35)
E <- c(0.6*200, 0.3*200, 0.1*200)
((O-E)^2)/E
Cobs <- sum(((O-E)^2)/E)
Cobs

k <- length(O)
a <- 0.05
Ccrit <- qchisq(1-a, k-1)
Ccrit

1 - pchisq(Cobs, k-1)

#Resíduos padronizados
(O-E)/sqrt(E)