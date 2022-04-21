x=seq(-100,100,length=100)
y=dnorm(x,mean=70,sd=5)
plot(x,y,type="l")
x=seq(70,71,length=50)
y=dnorm(x,mean=70,sd=5)
polygon(c(70,x,71),c(0,y,0),col="red")
a=pnorm(71,mean=70,sd=5)-pnorm(70,mean=70,sd=5)
a*2000