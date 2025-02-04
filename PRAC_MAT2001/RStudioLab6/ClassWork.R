sample(1:50,5)
sample(1:6,10,replace=TRUE)
dice=as.vector(outer(1:6,1:6,paste))
dice=as.vector(outer(1:6,1:6))
rolldie(3,makespace=TRUE)
sample(c('H','T'),20,replace=TRUE)

sample(c("success", "fail"), 10, replace=T, prob=c(0.9, 0.1))

y=c(0,1,2)
prob=c(0.25,0.5,0.25)
plot(y,prob,type="h",xlab="y",ylab="PMF",ylim=c(0,1))
cdf=c(0,cumsum(prob))
cdf.plot=stepfun(y,cdf)
plot.stepfun(cdf.plot,xlab="y",ylab="CDF",do.points=TRUE)
plot.stepfun(cdf.plot,xlab="y",ylab="CDF",verticals=FALSE,do.points=TRUE)