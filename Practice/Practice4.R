########### Integration in one variable######

integrand <- function(x) {1/((x+1)*sqrt(x))}
integrate(integrand, lower = 0, upper = Inf)

########### Integration in three variable######
##f(x,y,z)=4x^2y-z^3

library(cubature) # load the package "cubature"

f <- function(x) {(x[1]*x[2]^2)* x[3] } # "x" is vector
print(adaptIntegrate(f, lowerLimit = c(0, 0, 0), upperLimit = c(1, 2, 3))$integral)


library(cubature)
f <- function(x) { 4 * (x[1]^2*x[2]) - x[3]^3 } # "x" is vector
print(adaptIntegrate(f, lowerLimit = c(-3, -2, -1), upperLimit = c(3, 2, 1))$integral)

f <- function(x) { 4*(2*x[1]^8)+x[2] } # "x" is vector
print(adaptIntegrate(f, lowerLimit = c(-3, -2, -1), upperLimit = c(3, 2, 1))$integral)


f <- function(x) { 4*(x[1]^8)+x[2] } # "x" is vector
print(adaptIntegrate(f, lowerLimit = c(-3, -2, -1), upperLimit = c(3, 2, 1))$integral)


