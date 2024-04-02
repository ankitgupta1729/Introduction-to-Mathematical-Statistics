head_prob<-function()
{
  rng=c(0,1)
  return (sample(rng,1))
}

# Finding the estimation for the head probability

nsims<-1000000
count<-0
for(i in 1:nsims){
  temp<-head_prob()
  if(temp==0){count<-count+1}
}
estimated_prob=count/nsims
estimated_prob