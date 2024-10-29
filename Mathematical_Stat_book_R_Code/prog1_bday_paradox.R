bday=function(n){bday=1
for (j in 1:(n-1)) {
  bday=bday*((365-j)/365)
}
bday=1-bday;
return(bday)
}
#> source("prog1.R")
#> bday(10)