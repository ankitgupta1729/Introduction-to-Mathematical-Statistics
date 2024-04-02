8+6-7*2
simplegame(5)
(150/3)+7^2-1;sqrt(50)-(50)^(0.5)
(4/3)*pi*(5)^3
r<-5
vol<-(4/3)*pi*(r)^3
vol
r <- c(5,6,7,8,9)
r
vol<-(4/3)*pi*(r)^3;vol
r <- 5:9 ; Vol <- (4/3)*pi*r^3 ; Vol
vol[2]
r[2]
#matrices
v1=c(1,3);r <- 5:9 ; Vol <- (4/3)*pi*r^3 ; Vol
v1=c(1,3);v2=c(4,2);Mat_A=cbind(v1,v2)
Mat_A
v1=c(1,3,5,7);v2=c(2,4,6,8);Mat_B=rbind(v1,v2);Mat_B
Mat_A%*%Mat_B;solve(Mat_A);t(Mat_B)%*%Mat_A
Mat_A[2,2]
Mat_A[2,1]
#Mat_B[2:3,3:4]
Mat_B[1:2,3:4]
x = c(-2,0,3,4,-7,-8,11,0)
x
xn = x[x<0]; xn
xp = x[x>0]; xp
xz = x[x=0]; xz
xz = x[x==0]; xz
par(mfrow=c(2,2))
r <- seq(0,8,.1)
r
Vol <- (4/3)*pi*r^3
Vol
plot(Vol ~ r)
plot(Vol ~ r,xlab="Radius",ylab="Volume")
title("Volume of Sphere versus its radius")
plot(Vol ~ r,pch=" ",xlab="Radius",ylab="Volume")
lines(Vol ~ r)
circum <- 2*pi*r
circum
plot(circum ~ r,pch=" ",xlab="Radius",ylab="Circumference")
lines(circum ~ r); title("Circumference vs Radius")
