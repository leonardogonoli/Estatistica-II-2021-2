#Dados
x <- c(6, 5, 3, 5, 7, 15, 7)
y <- c(3, 1, 1, 8, 3, 5, 8)
d <- x - y
n <- length(d)

#Região crítica
a <- 0.05
tc <- qt(1-a, n-1)
tc

#Estatística do teste
md <- mean(d)
sd <- sd(d)
tobs <- md/(sd/sqrt(n))
tobs

#p-valor 
pval <- 1 - pt(tobs, n-1)
pval

#Intervalo de confiança
b <- 0.1
inf <- md - qt(1-(b/2), n-1)*sd/sqrt(n)
inf
sup <- md + qt(1-(b/2), n-1)*sd/sqrt(n)
sup