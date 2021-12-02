#Assumimos variâncias distintas
#Dados
x <- 490
y <- 500
s <- 32
r <- 48
n <- 210
m <- 180

#Estatística do teste
tobs <- (x-y)/sqrt(A+B)
tobs

#p-valor
df <- ((A+B)^2)/(((A^2)/(n-1)) + ((B^2)/(m-1)))
df
pval <- 2*(1-pt(abs(tobs), df))
pval

#Intervalo de confiança
b <- 0.05
inf <- x-y-(qt(1 - (b/2), df)*sqrt(A+B))
sup <- x-y+(qt(1 - (b/2), df)*sqrt(A+B))
inf
sup