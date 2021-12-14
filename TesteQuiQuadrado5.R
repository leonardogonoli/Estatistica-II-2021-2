O <- matrix(c(110, 77, 293, 331, 158, 218, 49, 77), nrow = 4, ncol = 2, byrow = TRUE)
t <- sum(O)
E <- matrix(c(610*187/t, 703*187/t, 610*624/t, 703*624/t, 610*376/t, 703*376/t, 610*126/t, 703*126/t), nrow = 4, ncol = 2, byrow = TRUE)
E

((O-E)^2)/E
Cobs <- sum(((O-E)^2)/E)
Cobs

a <- 0.01
Ccrit <- qchisq(1-a, 3)
Ccrit

1 - pchisq(Cobs, 3)

#Resíduos padronizados
(O-E)/sqrt(E)
