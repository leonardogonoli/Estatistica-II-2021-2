x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
y <- c(12, 41, 15, 48, 25, 55, 23, 69, 51, 80, 54, 87, 64, 94, 62, 108)
plot(x,-1/y)
modelo <- lm(-1/y~x)
residuals(modelo)
plot(x, residuals(modelo))

library(lmtest)
dwtest(modelo, alternative = "greater")