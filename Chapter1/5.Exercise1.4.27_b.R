Pr_Win=function(){
  rngA=1:20;
  x<-sample(rngA,length(rngA),replace = F);
  sum<-0;
  for (i in 1:length(x)){
    sum=sum+1/(25-x[i]+1)
  }
  sum=sum*4;
  sum=sum*(1/20);
  sum;
}
Pr_Win()