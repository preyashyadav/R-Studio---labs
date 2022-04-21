x=c(49 ,53, 51 ,52 ,47 ,50 ,52 ,53)
y=c(52 ,55 ,52 ,53 ,50 ,54 ,54 ,53 )
d=x-y
dbar=mean(d)
sumd=sum(d)
sumd
dsquare=d^2
dsquare
sigmadsquare=sum(dsquare)
s=sqrt((sigmadsquare-sumd/n)/n-1)
s
dbar
n=8
t1=abs(dbar/s)
t1
t=t1/sqrt(n)
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
