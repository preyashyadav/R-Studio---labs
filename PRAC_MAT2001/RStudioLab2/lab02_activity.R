plot(onlineLearning$age,type="l",main="age",xlab="response number",ylab="age in years",col="blue")
tableFresher=table(onlineLearning$fresher)
pie(tableFresher,col=c("blue","red"))

tableReopen=table(onlineLearning$collegeReopen)
barplot(tableReopen,beside=T,xlim=c(0,8),ylim=c(0,80),col=c("cyan","yellow"))

tableMSteams=table(onlineLearning$semestersOnTeams)
pie(tableMSteams,col=c("red","blue","yellow","green"))


tableMiss=table(onlineLearning$missOffline)
barplot(tableMiss,beside=T,xlim=c(0,8),ylim=c(0,80),col=c("red","blue"))

tableBreaks=table(onlineLearning$moreBreaks)
pie(tableBreaks,col=c("blue","red","yellow","green","pink"))


tableAffectingMentally=table(onlineLearning$affectingMentalHealth)
barplot(tableAffectingMentally,beside=T,xlim=c(0,5),ylim=c(0,50),col=c("red","blue","cyan","yellow","green"),ylab="No. of Responses")
legend("topright",legend=rownames(tableBreaks),fill=c('red','blue','cyan','yellow','green'),bty="n")

tableOppo=table(onlineLearning$missingOpportunities)
pie(tableOppo,col=c("red","blue","cyan","yellow","green"),xlab="Are you missing opportunities?")

tableExp=table(onlineLearning$examsCodetantra)
pie(tableExp,col=c("red","blue","cyan","yellow","green"))


boxplot(onlineLearning$age~onlineLearning$X2HoursEnough,col=c("red","blue","cyan","yellow","green"),xlab="Are 2 hours enough for FAT questions.",ylab="age")
