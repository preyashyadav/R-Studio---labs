n1=1000
n2=2000
x1=67.5
x2=68
sd=2.5
a=1/1000
b=1/2000
se= sd*sqrt(a+b)
alpha= 0.0027
z=(x1-x2)/se
zhalfalpha=qnorm(1-(alpha/2))
abs(z)
abs(zhalfalpha)
if(abs(z)< abs(zhalfalpha))
{print("accepted!")
}else
{print("rejected!")}


