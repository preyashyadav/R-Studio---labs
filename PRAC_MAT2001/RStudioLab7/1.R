probs=dbinom(x=c(0:10),size=10,prob=1/6)
probs=round(probs,4);
data.frame(0:10,probs)

plot(0:10,probs)