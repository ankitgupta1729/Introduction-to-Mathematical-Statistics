# writing f(x) in compact form
f = function(x) {
  (x < 2 & x > 1) * (3*(1-x)*(x-2)) + (x < 4 & x > 3) * (3*(3-x)*(x-4))+ (x>= 4 & x<= 1) * (0)
}
# x = -6:6
# print(f(x))

curve(f(x),-6,6,n=1024,col='blue')  


#============================



# writing f(x) in compact form
f = function(x) {
  (x < 50 & x > -50) * (exp(x)/((1+5*exp(x))^{1.2}))
}
# x = -6:6
# print(f(x))

curve(f(x),-100,100,n=1024,col='blue')

#-----------PDF,CDF,Quartiles-------------

dlogF<-function(x){exp(x)/((1+5*exp(x))^{1.2})}
plogF<-function(x){1-((1+5*exp(x))^{-0.2})}
qlogF<-function(x){log(0.2*((1-x)^(-5)-1))}

qlogF(.25);qlogF(.50);qlogF(.75)

## plot the pdf

# writing f(x) in compact form
f = function(x) {
  (x < 50 & x > -50) * (exp(x)/((1+5*exp(x))^{1.2}))
}
# x = -6:6
# print(f(x))

curve(f(x),-10,10,n=1024,col='blue')
abline(v = 0, h = 0) # plotting the x and y axes
abline(v = -0.4419242, col = 'red') # plotting the 25th percentile line 
abline(v = 1.824549, col = 'green') # plotting the 25th percentile line 
abline(v = 5.321057, col = 'violet') # plotting the 25th percentile line 

