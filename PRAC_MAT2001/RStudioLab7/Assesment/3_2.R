x=seq(-100,100,length=100)
y=dnorm(x,mean=70,sd=5)
plot(x,y,type="l")
x=seq(69,73,length=50)
y=dnorm(x,mean=70,sd=5)
polygon(c(69,x,73),c(0,y,0),col="red")
a=pnorm(73,mean=70,sd=5)-pnorm(69,mean=70,sd=5)
a*2000
