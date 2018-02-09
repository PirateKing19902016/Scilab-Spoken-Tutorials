t =  0:0.5:1;x=sin(10*t);

//scf(0)
subplot(221)
plot(x)
y = intdec(x,3);

//scf(1)
subplot(222)
plot(y)
