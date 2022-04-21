x=seq(-3,3,length=100)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",col="red")
x=seq(0.6,1.25,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(0.6,x,1.25),c(0,y,0),col="blue")
pnorm(1.25,mean=0,sd=1)-pnorm(0.6,0,1)

