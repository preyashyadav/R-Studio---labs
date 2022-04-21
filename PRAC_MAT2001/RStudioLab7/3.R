n=100
x=0:n
lambda=4
prob= dpois(x,lambda)
mean=sum(x*prob)
var=sum(x^2*prob)-(mean^2)
print(mean)
print(var)

