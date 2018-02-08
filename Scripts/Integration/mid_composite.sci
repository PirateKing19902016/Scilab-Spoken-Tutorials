// *************************************************************
//*****  Composite Mid-point Rule                            ****
//       By Manas,FOSSEE,IITB                               ****
//**************************************************************
function I = mid_composite(f, a, b, n)
    h = (b-a)/n
    x = linspace(a + h/2, b - h/2, n)
    I = h*sum(f(x))
endfunction
