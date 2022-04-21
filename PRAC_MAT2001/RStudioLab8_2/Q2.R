p1=200/400
X1=200
n1=400
p2=325/600
X2=325
n2=600
a= (n1*p1)+(n2*p2)
b=n1+n2
P=a/b
Q=1-P
alpha=0.05
z=(p1-p2)/sqrt(P*Q*(1/n1+1/n2))
zhalfalpha=qnorm(1-(alpha/2))
abs(z)
abs(zhalfalpha)
if(abs(z)< abs(zhalfalpha))
{print("Null hypothesis accepted!")
}else
{print("Null hypothesis rejected!")}





