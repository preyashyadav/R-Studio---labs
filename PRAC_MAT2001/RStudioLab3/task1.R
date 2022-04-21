productA=c(20,22,19,23,16)
productB=c(10,20,18,12,15)
n1=length(productA)
n2=length(productB)
mA=mean(productA)
mB=mean(productB)
sdA=sqrt(sum((productA-mA)^2)/n1)
sdB=sqrt(sum((productB-mB)^2)/n2)
cA=(sdA/mA)*100
cB=(sdB/mB)*100
print(cA)
print(cB)
if(cA<cB){
  print("Product A is more stable")
}else{
  print("Product B is more stable")
}

