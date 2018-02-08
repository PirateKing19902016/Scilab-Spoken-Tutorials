//********************************************************************
//          Newton Divided Difference Method for the given data   ****
//          (x1, f1), (x2, f2), (x3, f3), ..........,(xn, fn)     ****
//          NPDE-TCA  UG-Level Workshop at IMA Bhubaneshwar       ****
//          By Manas,FOSSEE,IITB                                  ****
//********************************************************************
funcprot(0)

function IP = Newton_Divided(x,f,x0)

n = length(x);
a(1) = f(1);
for k = 1 : n - 1
   D(k, 1) = (f(k+1) - f(k))/(x(k+1) - x(k));
end
for j = 2:n-1
   for k = 1:n-j
      D(k, j) = (D(k+1, j-1) - D(k, j-1))/(x(k+j) - x(k))
   end
end
disp(D, 'The Divided Difference Table')

for j = 2 : n
   a(j) = D(1, j-1);
end

Df(1) = 1;
c(1) = a(1);

for j = 2 : n
   Df(j)=(x0 - x(j-1)).*Df(j-1);
   c(j) = a(j).*Df(j);
end

IP = sum(c);
endfunction




