n1=16
n2=12
x=c(6.21 ,5.70 ,6.04 ,4.47 ,5.22 ,4.45 ,4.84 ,5.84 ,5.88,6.06, 5.59 ,6.74 ,5.55 ,5.82 ,6.09, 5.59)
y=c(4.28,7.71,6.48,7.71,7.37,7.20,7.06,6.40,8.93,5.91,5.51,6.36)
xbar1=mean(x)
xbar2=mean(y)
xbar1
xbar2
s1barsquare=var(x)
s2barsquare=var(y)
s1barsquare
s2barsquare
t=abs((xbar1-xbar2)/(sqrt((s1barsquare/n1)+(s2barsquare/n2))))
t
alpha=0.05
tv=qt(1-alpha/2,df=n-1)
tv
if(t<tv)
{
  print("null hypothesis is accepted")
}else
{
  print("null hypothesis is rejected")
}
