abgame <- function(){
   rngA <- c(0,1);  rngB <- 1:6; pA <- rep(1/2,2); pB <- rep(1/6,6)
   ic <- 0; Awin <- 0; Bwin <- 0
   while(ic == 0){
       x <- sample(rngA,1,pr=pA) 
       if(x==1){
           ic <- 1; Awin <- 1
       } else {
           y <- sample(rngB,1,pr=pB)
           if(y <= 4){ic <- 1; Bwin <- 1}
       }
   }
return(c(Awin,Bwin))
}

# Finding the estimation for the winning probability of A:

ind <- 0; nsims <- 10000
for(i in 1:nsims){
  seeA <- abgame ()
  if(seeA[1] == 1){ind <- ind + 1}
}
estpA <- ind/nsims
err <- 1.96*sqrt(estpA*(1-estpA)/nsims)
estpA; err
