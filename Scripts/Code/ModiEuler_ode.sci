//**********************************************************
//                  Modified Euler Method               ****
//                  By Manas,FOSSEE,IITB                ****
//**********************************************************

function [t, y] = ModiEuler_ode(f, tinit, yinit, h, N)
    t = zeros(N+1,1)
    y = zeros(N+1,1)
    t(1) = tinit
    y(1) = yinit
    for j = 1:N
        t(j+1) = t(j) + h
        y(j+1) = y(j) + h*f(t(j), y(j))
        y(j+1) = y(j) + h*(f(t(j),y(j)) + f(t(j + 1),y(j)+h*f(t(j),y(j))))/2; 
    end
endfunction
