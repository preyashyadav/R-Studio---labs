p= 30/400
n= 400
P= 0.05
Q= 0.95
alpha=0.05
z=(p-P)/sqrt(P*Q/n)
zalpha=qnorm(1-alpha)
abs(z)
abs(zalpha)
if(abs(z)< abs(zalpha)){
  print("Tenable claim!")
}else{print("Not tenable claim!")}






