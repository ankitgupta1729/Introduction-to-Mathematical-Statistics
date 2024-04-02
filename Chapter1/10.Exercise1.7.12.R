#Part(a):
p <- function(x) {
  3*(1-x)^2
}
x<- seq(0,1,0.001)
par(mfrow=c(1,2));
### PDF
plot(x, sapply(x, p), ylab = "PDF")
### CDF
plot(x, cumsum(sapply(x, p)), ylab = "CDF")

#Part(b):
p <- function(x) {
  (1/(x^2))
}
x<- seq(1,10,0.001)
par(mfrow=c(1,2));
### PDF
plot(x, sapply(x, p), ylab = "PDF")
### CDF
plot(x, cumsum(sapply(x, p)), ylab = "CDF")

#Part(c):
p <- function(x) {
  ((x>0) & (x<1)) * (1/3) + ((x>2) & (x<4)) * (1/3)
}
x<- seq(0,10,0.001)
par(mfrow=c(1,2));
### PDF
plot(x, sapply(x, p), ylab = "PDF")
### CDF
plot(x, cumsum(sapply(x, p)), ylab = "CDF")