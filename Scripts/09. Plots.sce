x=linspace(1,10,5)

y=linspace(1,20,5);

plot(x,y)

xset('window',1)

plot2d(x,y,style=3)

plot2d(x,y,style=3,rect=[1,1,10,20])

tiltle("My title")
xlabel("X");
ylabel("Y");

xtitle("My title", "X axis", "Y axis");

x = linspace(1,10,50);
y1=x^2;
plot(x,y1,"o-")
y2=2*x^2;
plot(x,y2,"+-")
xtitle("My title","X axis", "Y axis");

legend("x^2","2*x^2");

plot2d

subplot(2,2,1)
plot2d()
subplot(2,2,2)
plot2d2()
subplot(2,2,3)
plot2d3()
subplot(2,2,4)
plot2d4()










