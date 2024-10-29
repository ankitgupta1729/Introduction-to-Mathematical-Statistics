# Problem (Page 47): Person A tosses a coin and then person B rolls a die. This is repeated
#independently until a head or one of the numbers 1, 2, 3,4 appears, at
#which time the game is stopped. Person A wins with the head and B
#wins with one of the numbers 1, 2, 3, 4. Compute the probability P(A)
#that person A wins the game.

# sample_space=p(game_completed)= p(head or (tail and then {1,2,3,4})) = 1/2 + (1/2)*(4/6)
# so p(A_win)= (1/2)/[1/2 + (1/2)*(4/6)]= 3/5

#In the R programming language, A very useful function for creating a vector by repeating a given numbervector with the specified number of times is the rep().

#The general structure of rep() : rep(v1,n1).

#Here, v1 is repeated n1 times.

#The following R function, abgame, simulates the problem. This function can be
#downloaded and sourced at the site discussed in the Preface. The first line of the
#program sets up the draws for persons A and B, respectively. The second line sets
#up a flag for the while loop and the returning values, Awin and Bwin are initialized
#at 0. The command sample(rngA,1,pr=pA) draws a sample of size 1 from rngA
#with pmf pA. Each execution of the while loop returns one complete game. Further,
#the executions are independent of one another.


abgame <- function(){
  rngA <- c(0,1); pA <- rep(1/2,2); rngB <- 1:6; pB <- rep(1/6,6)
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
ind <- 0; nsims <- 10000
for(i in 1:nsims){
  seeA <- abgame ()
  if(seeA[1] == 1){ind <- ind + 1}
}
estpA <- ind/nsims
err <- 1.96*sqrt(estpA*(1-estpA)/nsims)
estpA; err
