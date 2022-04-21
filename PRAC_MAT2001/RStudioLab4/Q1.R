library(moments)
dataset=c(4,8,12,20,6,7,3)
datasetLen=length(dataset)
mean=sum(dataset)/datasetLen
mom1=sum(dataset-mean)/datasetLen
mom2=sum((dataset-mean)^2)/datasetLen
mom3=sum((dataset-mean)^3)/datasetLen
mom4=sum((dataset-mean)^4)/datasetLen
momr1=sum(dataset)/datasetLen
momr2=sum((dataset)^2)/datasetLen
momr3=sum((dataset)^3)/datasetLen
momr4=sum((dataset)^4)/datasetLen
print("raw")
print("package")
all.moments(dataset,order.max=4,absolute = TRUE)
print("manual")
momr1
momr2
momr3
momr4
print("central")
print("package")
all.moments(dataset,order.max=4,central = TRUE, absolute = FALSE)
print("manual")
mom1
mom2
mom3
mom4