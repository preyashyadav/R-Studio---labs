n=200
xw=60
sw=20
w1=3
w2=67
c1=13
c2=17
#finding the correct sum
correctsum=(xw*n)-(w1+w2)+(c1+c2)
#finding correct mean
correctmean=correctsum/n
incorect_xi_sq=n*((sw*sw)+(xw*xw))
correct_xi_sq=incorect_xi_sq-((w1*w1)+(w2*w2))+((c1*c1)+(c2*c2))
#correct sd
correct_sd=sqrt((correct_xi_sq/n)-(correctmean*correctmean))
#correct coeff of variance
cv=correct_sd/correctmean*100
print(correctmean)
print(correct_sd)
print(cv)
