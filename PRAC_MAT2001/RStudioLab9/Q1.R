x=c(14.3,12.6,13.7,10.9,13.7,12.0,11.4,12.0,12.6,13.1)
xbar=mean(x)
xbar
s=sqrt(var(x))
s
n=10
mue=12
den=s/sqrt(n)
den
alpha=0.05
t=abs((xbar-mue)/den)
t
tv=qt(1-alpha/2,df=n-1)
tv
if(t<tv)
{
  print("null hypothesis is accepted")
}else
{
  print("null hypothesis is rejected")
}
