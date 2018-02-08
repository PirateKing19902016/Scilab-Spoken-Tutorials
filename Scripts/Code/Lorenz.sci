//*************************************************
//       Lorenz System of Equations           *****
//       By Manas,FOSSEE,IITB                 *****
//*************************************************

x0=[-10 10 25]';
t0=0;
t=0:1:25;
function dx = Lorenz(t,x)
    sigma = 10;
    r = 28;
    b = 8/3;
    dx(1) = sigma*(x(2) - x(1) );
    dx(2) = ((1 + r) - x(3))*x(1) - x(2);
    dx(3) = x(1)*x(2) - b*x(3);
endfunction
x=ode(x0,t0,t,Lorenz)
plot(t,x(1,:),'**',t,x(2,:),'--', t,x(3,:),'..')