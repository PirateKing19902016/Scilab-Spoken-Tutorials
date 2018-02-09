t=linspace(0,1,11)
x1=ones(11,1);
subplot(311)
plot(t,x1)
xtitle('step function','x-axis','y-axis');
x3=2*t;
subplot(313);
plot(t,x3)
xtitle('Ramp function','x-axis','y-axis');