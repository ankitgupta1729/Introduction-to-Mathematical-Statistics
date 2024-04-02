1-pnorm(72,70,4)
qnorm(.90,70,4)
dnorm(72,70,4)
rnorm(6,70,4)
x = rnorm(100,70,4); x=sort(x)
hist(x,pr=T,main="Histogram of Sample")
#hist(x,pr=F,main="Histogram of Sample")
y = dnorm(x,70,4)
lines(y~x)


pbinom(55,100,.6)
dbinom(55,100,.6)
mu=30; sig=sqrt(2*mu); 1-pchisq(mu+2*sig,30)
1-pgamma(mu+2*sig,15,1/2)
vec = 1:20
sample(vec,12,replace=T)
sample(vec,12,replace=F)


mnupdate <- function(n,xbarn,xnp1){
  # Input: n is sample size; xbarn is mean of sample of size n;
  # xnp1 is (n+1) (new) observation
  # Output: mean of sample of size (n+1)
  mnupdate <- (n/(n+1))*xbarn + xnp1/(n+1)
  return(mnupdate)
}

# > source("Practice2.R")
# > x = c(3,5,12,4); n=4; xbarn = mean(x);
# > x; xbarn
# [1]  3  5 12  4
# [1] 6
# > xp1 = 30
# > c(x,xp1); mnupdate(n,xbarn,xp1)