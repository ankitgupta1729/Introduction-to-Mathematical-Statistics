Pr_Win=function(){
  rngA=1:20;
  x<-sample(rngA,1);
  rngB=x:25;
  x<-sample(rngB,1);
  if (x>21){
    return (1);
  }
  else{
    return (0);
  }
}

ind <- 0; nsims <- 10000000
for(i in 1:nsims){
  seeA <- Pr_Win()
  if(seeA == 1){ind <- ind + 1}
}
estpA <- ind/nsims
estpA