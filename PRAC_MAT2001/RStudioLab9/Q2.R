A=c(42,39,38,60,41)
B=c(38, 42, 56, 64, 68, 69, 62)
n1=5
n2=7
varA=var(A)
varA
varB=var(B)
varB
FV=qf(1-alpha/2,n1-1,n2-1)
FV
if(varA>varB)
{
  f=varA/varB
  f
}else
{
  f=varB/varA
  f
}
if(f<FV)
{
  print("null hypothesis is accepted")
}else
{
  print("null hypothesis is rejected")
}
