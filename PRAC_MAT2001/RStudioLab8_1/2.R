n=148
p=85/148
P=60/100
Q=1-P
z_stat=(p-P)/sqrt((P*Q / n))
z_stat
zalpha=qnorm(1-0.05)
zalpha
if(abs(z_stat)<abs(zalpha))
  {
  print("accept")
  } else{
  print("reject")
    }