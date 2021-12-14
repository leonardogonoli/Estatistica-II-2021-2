O <- c(29, 58, 20, 12, 37)
p <- 0.0773
E <- c(p*791, p*775, p*201, p*227, p*777)
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