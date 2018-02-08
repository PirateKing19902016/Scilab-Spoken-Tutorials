//*************************************************
//       Motion of Simple Pendulum            *****
//       By Manas,FOSSEE,IITB                 *****
//*************************************************

y0=[%pi/4 0]';
t0=0;
t=0:1:5
function dy = Pendulum(t,y)
    dy(1) = y(2);
    dy(2) = (9.8/0.5)*sin(y(1));
endfunction
y=ode(y0,t0,t,Pendulum)
plot(t,y(1,:),'-*',t,y(2,:),'-')