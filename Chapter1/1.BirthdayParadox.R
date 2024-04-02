bday=function(n){
temp=1;days=365;
for(i in (1:n)){
  temp=temp*(days);
  days<-days-1;
}
complement_prob=temp/(365^n);
return(1-complement_prob)
}
