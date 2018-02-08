//*************************************************
//       Vander Pol's equation                *****
//       By Manas,FOSSEE,IITB                 *****
//*************************************************

y0=[1 0]';
t0=2;
t=2:1:10;
function dy = Vanderpol(t,y)
    dy(1) = y(2);
    dy(2) = -0.897*(y(1).^2 - 1)*y(2) - y(1);
endfunction
y=ode(y0,t0,t,Vanderpol)
plot(t,y(1,:),'-',t,y(2,:),'--')