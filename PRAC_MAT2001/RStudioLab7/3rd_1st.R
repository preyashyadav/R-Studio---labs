workers = 2000

#part(a)
x = seq(60,80,length = 200)
y = dnorm(x,mean = 70, sd = 5)
plot(x,y,type = "l")
x = seq(70,71,length = 200)
y = dnorm(x,mean = 70, sd = 5)
polygon(c(70,x,71),c(0,y,0), col = "red")
round((pnorm(71,70,5) - pnorm(70,70,5)) * workers, 4)

#part (b)
x = seq(60,80,length = 200)
y = dnorm(x,mean = 70, sd = 5)
plot(x,y,type = "l")
x = seq(69,73,length = 200)
y = dnorm(x,mean = 70, sd = 5)
polygon(c(69,x,73),c(0,y,0), col = "red")
round((pnorm(73,70,5) - pnorm(69,70,5)) * workers, 4)

#part (c)


