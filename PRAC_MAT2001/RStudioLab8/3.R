x=seq(-3,3,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l")
x=seq(-1.25,0,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-1.25,x,0), c(0,y,0), col="blue")
pnorm(-1.25,mean=0,sd=1)
