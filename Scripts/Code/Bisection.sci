// ******************************************************************
//  Bisection Method for finding a root of nonlinear equation    ****
//                      f(x) = 0                                 ****
//    NPDE-TCA  UG-Level Workshop at IMA Bhubaneshwar            ****
//    By Manas,FOSSEE,IITB                                       ****
//*******************************************************************

funcprot(0)

    function [p] = Bisection(a, b, f,Tol)
    
            N = 100; // Maximum No. Iterations
    
            if (f(a)*f(b) > 0) then
                error('Root does not exist f(a)*f(b) > 0')
                abort;
                end
                mprintf("Iterations      a          b            c         f(c)\n")
                mprintf("----------------------------------------------------------\n")
            while (N > 0)
                c = (a + b)/2;
                if (abs(f(c))< Tol) then      //  Stopping criteria
                p = c
                p
                return;
                end
    
            if (f(a)*f(c)< 0) then
                b = c;
                else
                a = c;
                end
            N = N-1


            mprintf("%f    %f    %f    %f    %f\n",100-N, a, b, c, f(c))
            end


    endfunction
