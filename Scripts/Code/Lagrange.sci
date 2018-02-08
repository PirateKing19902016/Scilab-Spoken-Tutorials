
// *******************************************************************
//            Lagrange Interpolation for the given data:          ****
//           (x1, f1), (x2, f2), (x3, f3), ......(xn, fn)         ****
//         NPDE-TCA  UG-Level workshop at IMA Bhubaneshwar        ****
//         By Manas,FOSSEE,IITB                                   ****
//********************************************************************

function y = Lagrange(x0, x,f, n)
    
    m = n + 1;
    N = ones(1,m);
    
    D = N;
    
    C = N;
    
    y = 0.0;
    
    for j = 1:m
        for k = 1:m
            if (k<>j) then
                N(j) = N(j)*(x0 - x(k))
                D(j) = D(j)*(x(j) - x(k))
            end
        end
        L(j) = N(j)/D(j);
        
        y = y + L(j)*f(j);
    end
   disp(L','L')
   disp(f,'f(x)')
    
endfunction
