x=seq(-5,5,length=100)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",col="red")
x=seq(2.5,5,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(2.5,x,5),c(0,y,0),col="blue")
1-pnorm(2.5,mean=0,sd=1)

