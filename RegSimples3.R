x <- c(2, 3, 7, 9, 10, 10, 12, 15, 16, 20, 100)
y <- c(10, 11, 13, 14, 18, 20, 20, 22, 22, 26, 42)

lm(y~x)
summary(lm(y~x))

#plot(lm(y~x))
residuals(lm(y~x))
hist(residuals(lm(y~x)))