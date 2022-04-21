expected=c(400,400,400,400)
observed=c(404,420,400,376)
a=observed-expected
n=4
chisquare=sum((a)^2/expected)
chisquare
alpha=0.05
chiv=qchisq(1-alpha,df=n-1)
chiv
if(chisquare<chiv)
{
  print("null hypothesis is accepted")
}else
{
  print("null hypothesis is rejected")
}
