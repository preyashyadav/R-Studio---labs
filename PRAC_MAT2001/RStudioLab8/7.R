x=seq(20,80,length=200)
y=dnorm(x,mean=50,sd=10)
plot(x,y,type="l")
x=seq(30,70,length=100)
y=dnorm(x,mean=50,sd=10)
polygon(c(30,x,70), c(0,y,0), col="red")
pnorm(70,mean=50,sd=10)-pnorm(30,mean=50,sd=10)

