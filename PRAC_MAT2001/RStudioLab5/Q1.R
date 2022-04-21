x<-c(1,2,3,4,5,6,7)
y<-c(9,8,10,12,11,13,14)
model<-lm(x~y)
summary(model)
plot(y, x, col = "blue", main = "X & Y Regression", abline(lm(x~y)), cex = 1.3, pch = 16, xlab =
       "X", ylab = "Y")
model=lm(y~x)
summary(model)
plot(x, y, col = "red", main = "X & Y Regression", abline(lm(y~x)), cex = 1.3, pch = 16, xlab =
       "X", ylab = "Y")