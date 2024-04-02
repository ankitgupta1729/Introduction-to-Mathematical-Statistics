# writing f(x) in compact form
f = function(x) {
  (x < -1) * (-x) + (x >= -1) * (x^2)
}
x = -5:5
print(f(x))

# plot piecewise function
x = seq(-5, 5, by = 0.1) # so, x = {-5, -4.9, -4.8, ..., 4.8, 4.9, 5}
plot(x, f(x), type = 's', ylim = c(0,10), col = 'blue')
abline(v = 0, h = 0) # plotting the x and y axes
abline(v = -1, col = 'red') # plotting the line x = -1
# plot annotation
text(x = -1, y = 8,
     labels = "x = -1", pos = 2, col = 'red')
text(x = 3, y = f(3),
     labels = "f(x)", pos = 4, col = 'blue')

#=========================================================
### support
x <- seq(-4, 2, 1)
### PDF
plot(x, sapply(x, p), ylab = "PDF")
### CDF
plot(x, cumsum(sapply(x, p)),type = "S", ylab = "CDF")