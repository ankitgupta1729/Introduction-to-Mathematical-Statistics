

## PMF FOR PART(B):

df<- data.frame(x=c(-1,0,1),p=c(1/3,1/3,1/3))
#plot(df,type='l')
plot(df)
points(df)



## CDF FOR PART(B):

df<- data.frame(x=c(-1,0,1),p=c(1/3,1/3,1/3))
#plot(df,type='l')
plot(cf_df<-transform(df,p=cumsum(p)),type='l')
points(cf_df)


------------------------------

## Using step function for cdf for PART(B):
  
cdf<-function(x){
  ifelse(x < -1,
         0,
         ifelse(x < 0,
                1/3,
         ifelse( x < 1,
                 2/3,1)
         )
  )
}
curve(cdf,-2,2,n=1024,col='blue')  

#---------------------------

cdf <- function(x) {
  ifelse(
    x < -4,
    0,
    ifelse(
      x < -1,
      0.1,
      ifelse(
        x < 1,
        0.3,
        ifelse(
          x < 2,
          0.9,
          1
        )
      )
    )
  )
}
curve(cdf, -5, 5, n = 1237,col='blue')

f1 <- function(x) {
  sin(x) # Calculating Sine Value for the Plot.
}

curve(f1, -4, 4, col ="red") # Specifing the range between -4, 4. 













#-----------------------------------


p<-function(x){if ( x==-4) {
  0.1
} else if (x==-1 ) {
  0.2
} else if ( x==1) {
  0.6
} else if (x==2 ) {
  0.1
} else {
  0
}
}
### support
x = seq(-4,2,1)
### PDF
plot(x,sapply(x,p),ylab="PDF")
### CDF
plot(x,cumsum(sapply(x,p)),ylab="CDF")
