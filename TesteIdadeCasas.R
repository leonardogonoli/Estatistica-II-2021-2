#Assumimos variâncias distintas
#Dados
x <- 57.2
y <- 47.6
s <- 7.51
r <- 7.85
n <- 30
m <- 35

#Região crítica
A <- (s^2)/n
B <- (r^2)/m
df <- ((A+B)^2)/(((A^2)/(n-1)) + ((B^2)/(m-1)))
df
tc <- qt(0.975, df)
tc

#Estatística do teste
tobs <- (x-y)/sqrt(A+B)
tobs

#Intervalo de confiança
a <- 0.05
inf <- x-y-(qt(1 - (a/2), df)*sqrt(A+B))
sup <- x-y+(qt(1 - (a/2), df)*sqrt(A+B))
inf
sup
