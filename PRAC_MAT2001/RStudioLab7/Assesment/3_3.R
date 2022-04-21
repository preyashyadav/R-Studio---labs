x=seq(-100,100,length=100)
y=dnorm(x,mean=70,sd=5)
plot(x,y,type="l")
x=seq(72,100,length=50)
y=dnorm(x,mean=70,sd=5)
polygon(c(72,x,100),c(0,y,0),col="red")
a=pnorm(100,mean=70,sd=5)-pnorm(72,mean=70,sd=5)
a*2000
