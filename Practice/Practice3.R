tab <- c()
n=10
for(i in 1:n){
  tab <- rbind(tab,c(i,i^2,i^3,i^(1/2),i^(1/3)))
}
tab

svar2 <- function(x){
  n <- length(x)
  svar2 <- 0
  for(i in 1:(n-1)){
    for(j in (i+1):n){
      svar2 <- svar2 + (x[i]-x[j])^2
    }
  }
  svar2 <- (1/(n*(n-1)))*svar2
  return(svar2)
}
svar2(c(6,3,4,6))


v1=c(1,3,5,7);v2=c(2,4,6,8);Mat_B=rbind(v1,v2);Mat_B
write(t(Mat_B),ncol=5,file="writing_matrix_to_file.dat")

info <- "This file contains the matrix ....."
save(Mat_B,info,file="try.rda")

load("try.rda")

x <- scan()

a <- read.table(header = TRUE, text = "
c1 c2
1 4
3 2
")
a
a <- matrix(scan("writing_matrix_to_file.dat"),ncol=2,byrow=T)
a

#################################
integrand <- function(x) {1/((x+1)*sqrt(x))}
integrate(integrand, lower = 0, upper = Inf)


