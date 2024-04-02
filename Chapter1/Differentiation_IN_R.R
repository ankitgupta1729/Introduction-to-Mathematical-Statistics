# Expression or formula 
f = expression(x^2 + 5*x + 1) 

# Derivative 
cat("Using deriv() function:\n") 
print(deriv(f, "x")) 

cat("\nUsing D() function:\n") 
print(D(f, 'x')) 


#===================================


# Expression or formula 
f = expression((1+((2/3)*(exp(-x))))^(-5/2)) 

# Derivative 
cat("Using deriv() function:\n") 
print(deriv(f, "x")) 

cat("\nUsing D() function:\n") 
print(D(f, 'x')) 