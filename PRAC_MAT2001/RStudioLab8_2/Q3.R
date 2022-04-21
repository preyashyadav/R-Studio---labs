N=900
ms=3.4
sds=2.61
pm=3.25
psd=2.61
alpha=0.95
t=(ms-pm)/(sds/(sqrt(N)))
x=qnorm(1-0.95)
a= (-x*sds)/sqrt(N*(ms-pm))
b= (x*sds)/sqrt(N*(ms-pm))
leftlimit= ms-a
rightlimit= ms-b
abs(x)
leftlimit
rightlimit

