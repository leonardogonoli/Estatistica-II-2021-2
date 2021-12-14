O <- matrix(c(211, 178, 385, 234, 346, 276), nrow = 3, ncol = 2, byrow = TRUE)
T <- sum(O)
C1 <- sum(O[,1])
C2 <- sum(O[,2])
L1 <- sum(O[1,])
L2 <- sum(O[2,])
L3 <- sum(O[3,])
E <- matrix(c(L1*C1/T, L1*C2/T, L2*C1/T, L2*C2/T, L3*C1/T, L3*C2/T), nrow = 3, ncol = 2, byrow = TRUE)
E

((O-E)^2)/E
Cobs <- sum(((O-E)^2)/E)
Cobs

a <- 0.05
Ccrit <- qchisq(1-a, 2)
Ccrit

1 - pchisq(Cobs, 2)

#Resíduos padronizados
(O-E)/sqrt(E)