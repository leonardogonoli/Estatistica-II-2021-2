#Assumimos variâncias iguais
#Dados
x <- 57.2
y <- 47.6
s <- 7.51
r <- 7.85
n <- 30
m <- 35

#Região crítica
df <- n+m-2
df
a <- 0.05
tc <- qt(1-(a/2), df)
tc

#Estatística do teste
sp2 <- ((n-1)*(s^2) + (m-1)*(r^2))/(n+m-2)
sp <- sqrt(sp2)
tobs <- (x-y)/sqrt(sp2*((1/n)+(1/m)))
tobs

#Intervalo de confiança
b <- 0.05
inf <- x-y-(qt(1 - (b/2), df)*sp*sqrt((1/n)+(1/m)))
sup <- x-y+(qt(1 - (b/2), df)*sp*sqrt((1/n)+(1/m)))
inf
sup