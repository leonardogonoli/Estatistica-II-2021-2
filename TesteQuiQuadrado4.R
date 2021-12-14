O <- c(552, 42, 3347, 2843, 8399, 8612)
E <- c(306.9978, 287.0022, 3199.186, 2990.814, 4450.951, 4161.049)
((O-E)^2)/E
Cobs <- sum(((O-E)^2)/E)
Cobs

a <- 0.05
Ccrit <- qchisq(1-a, 2)
Ccrit

1 - pchisq(Cobs, 2)

#Resíduos padronizados
(O-E)/sqrt(E)