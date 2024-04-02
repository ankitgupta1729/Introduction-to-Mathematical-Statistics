res<-function(n){
  temp=(choose(48,n-1)*choose(2,1)+choose(48,n-2)*choose(2,2))/(choose(50,n))
  res<-temp-0.5
  return (res)
}