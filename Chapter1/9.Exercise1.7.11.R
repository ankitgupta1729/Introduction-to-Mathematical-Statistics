#Part(a):

x<- seq(-5,5,0.01);
y1<- 0.5+atan(x)/pi;
y2<- 1/(pi*(1+x^2));
y3<- function(x){-(cospi(x)/sinpi(x))};
par(mfrow=c(1,3));plot(y1~x);plot(y2~x);
print(paste("The Value of first quartile is: ",y3(0.25)))
print(paste("The Value of 0.60  quantile is: ",y3(0.60)))


#Part(b):

x<- seq(-5,5,0.01);
y1<- exp(-exp(-x));
y2<- exp(-(x+exp(-x)));
y3<- function(x){-(log(-log(x)))};
par(mfrow=c(1,3));plot(y1~x);plot(y2~x);
print(paste("The Value of first quartile is: ",y3(0.25)))
print(paste("The Value of 0.60  quantile is: ",y3(0.60)))

#Part(c):

x<- seq(-5,5,0.01);
y1<- (1+exp(-x))^(-1);
y2<- (1+exp(-x))^(-2)*exp(-x);
y3<- function(x){-(log(x^(-1)-1))};
par(mfrow=c(1,3));plot(y1~x);plot(y2~x);
print(paste("The Value of first quartile is: ",y3(0.25)))
print(paste("The Value of 0.60  quantile is: ",y3(0.60)))

#Part(d):
p <- function(x) {
  (1/2)^x
}
x<- seq(1,10,1)
### PDF
plot(x, sapply(x, p), ylab = "PDF")
### CDF
plot(x, cumsum(sapply(x, p)),type = 's', ylab = "CDF")