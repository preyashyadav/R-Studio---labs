empid=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15) 
age=c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60)
sex=c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
empinfo=data.frame(empid,age,sex,status)
empinfo$sex=factor(empinfo$sex,labels=c("male","female"))
empinfo$status=factor(empinfo$status,labels=c("staff","faculty"))
sexm=subset(empinfo,empinfo$sex=="male")
sexm
plot(empinfo$age,type="l",)


#plotting line graph
plot(empinfo$age,type="b",main="age of subjects",xlab="empid",ylab="age in years",col="blue")

#plotting pie chart
table4<-table(empinfo$sex)
pie(table4)

#plotting barplot
table5=table(empinfo$sex,empinfo$status)
barplot(table5,beside=T,xlim=c(1,15),ylim=c(0,5),col=c("red","blue"))
legend("topright",legend=rownames(table5),fill=c('blue','red'),bty="n")
boxplot(empinfo$age~empinfo$status,col=c("red","blue")








summary(empinfo)

table1=table(empinfo$sex)
table1

table2=table(empinfo$sex,empinfo$status)
table2



