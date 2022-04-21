x=seq(-3,3,length=100)
y=dnorm(x)
plot(x,y,type="l",lwd=2,col="red")
x=seq(0,1.25,length=100)
y=dnorm(x,mean=0,sd=1)
abline(v = 1.25)
polygon(c(0,x,1.25),c(0,y,0),col="blue")

##
x=seq(-3,3,length=100)
y=dnorm(x)
plot(x,y,type="l",lwd=2,col="red")
x=seq(-1.25,0,length=100)
y=dnorm(x,mean=0,sd=1)
abline(v = -1.25)
polygon(c(-1.25,x,0),c(0,y,0),col="blue")


#Question (i)
#1
pnorm(1.25,mean=0,sd=1)-pnorm(0,mean=0,sd=1)
#2
pnorm(0,mean=0,sd=1)-pnorm(-1.25,mean=0,sd=1)
#3
pnorm(1.25)-pnorm(0.6)
#4
1-pnorm(2.5)
#5
pnorm(2.5)
#6
1-pnorm(-2.5)
#7
pnorm(-2.5)