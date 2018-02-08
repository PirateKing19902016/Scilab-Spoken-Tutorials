//******************************************************
//           Composite Trapezoid Rule               ****
//******************************************************

function [I1]  = Trap_composite(f, a, b, n)
    h = (b-a)/n
    x = linspace(a, b, n+1)
    I1 = (h/2)*(2*sum(f(x)) - f(x(1)) - f(x(n+1)))
endfunction