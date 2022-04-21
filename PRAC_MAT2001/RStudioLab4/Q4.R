data1=c(5,3,4,10,15)
data2=c(25,20,21,35,38)
count=5
cor.test(data1,data2)
plot(data1,data2,type="o",data1lab ="data1",data2lab = "data2", main = "Correlation",col="purple")