#install.packages("rootSolve")

library(rootSolve)

f1<-function (x){
  abs(x)-4
}

x=-50:50
plot(x,f1(x),type='l')

# adding a horizontal line at y = 0
abline(h = 0, col = 'blue')

roots = uniroot.all(f1, c(-50, 50))
# print(roots) outputs: -4  4
# graphing the roots of f1
points(x = roots, y = rep(0, length(roots)), col = "red", pch = 16, cex = 1.5)
print(roots)

# Inverse Function Calculation

inverse = function (f, lower = -100, upper = 100) {
  function (y) uniroot((function (x) f(x) - y), lower = lower, upper = upper)[1]
}

square_inverse = inverse(function (x) 1-(exp(-x)*(1+x)), 0.1, 100)

square_inverse(0.5)