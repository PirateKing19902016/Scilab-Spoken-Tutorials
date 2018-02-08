//**************************************************************
//******      Composite Simpson's Rule                       ***
//            By Manas,FOSSEE,IITB                           ***
//**************************************************************
 
function I = Simp_composite(f, a, b, n)
    
    
    h = (b-a)/n
    
    x = linspace(a, b, n)
    for i = 1:(n/2)-1
        x1(i) = x(2*i)
    end
    for j = 2:n/2
        x2(i) = x(2*i-1)
    end
   
  I = (h/3)*(f(x(1)) + 2*sum(f(x1)) + 4*sum(f(x2)) + f(x(n)))
  disp(I)
 
  
