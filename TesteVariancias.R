#Testar a diferença das variâncias
#Dados
x <- 57.2
y <- 47.6
s <- 7.51
r <- 7.85
n <- 30
m <- 35

#Região crítica
a <- 0.05
fc1 <- qf(1-(a/2), n-1, m-1)
fc2 <- qf(a/2, n-1, m-1)
fc1
fc2

#Estatística do teste
fobs <- (s^2)/(r^2)
fobs