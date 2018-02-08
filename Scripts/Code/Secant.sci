//**********************************************************************
//      Secant method for finding a root of nonlinear equation      ****
//                         f(x) = 0;                                ****
//      NPDE-TCA UG-Level workshop at IMA Bhubaneshwar              ****
//      By Manas,FOSSEE,IITB                                        ****
//**********************************************************************

funcprot(0)

function [p] = Secant(a, b, f)
    
    N = 100;
    Tol = 1.e-6;
    p0 = a;
    p1 = b;
    
 mprintf("Iterations    p_{n-1}            p_n          p_{n+1}        f(p_{n+1})\n")
 mprintf("---------------------------------------------------------------------\n")
            
    while (N > 0)
        dn =(p1-p0)/(f(p1)- f(p0));
        pn = p1 - f(p1)*dn;            // Iteration formula
        if (abs(f(pn))< Tol) then     // Stopping Criteria
            p = pn;
            disp(100-N)
            return
        end
        N = N-1
        
mprintf("%d             %f         %f      %f      %f\n",100-N, p0, p1, pn, f(pn))
        p0 = p1;
        p1 = pn;
        
    end
endfunction
