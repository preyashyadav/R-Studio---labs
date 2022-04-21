n=35
x=15.4
# calculate the z-statistic
z_stat = (mean(x) - 14.6) / (2.5 / sqrt(n))
z_stat

zhalfalpha=qnorm(1-(0.05)/2)
zhalfalpha

if(abs(z_stat)<abs(zalpha)){
  print("accept")
}else{
  print("reject")
}
  