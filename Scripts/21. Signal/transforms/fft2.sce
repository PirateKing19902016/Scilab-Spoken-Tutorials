//make a signal
t=0:0.1:1000;
x=3*sin(t)+8*sin(3*t)+0.5*sin(5*t)+3*rand(t);
//compute the fft
y=fft(x,-1);

//display 
clf();
subplot(2,1,1);plot2d(abs(y))
subplot(2,1,2);plot2d(fftshift(abs(y)))

//make a 2D image
t=0:0.1:30;
x=3*sin(t')*cos(2*t)+8*sin(3*t')*sin(5*t)+..
  0.5*sin(5*t')*sin(5*t)+3*rand(t')*rand(t);
//compute the fft
y=fft(x,-1);

//display 
clf();
xset('colormap',hotcolormap(256))
subplot(2,1,1);Matplot(abs(y))
subplot(2,1,2);Matplot(fftshift(abs(y)))