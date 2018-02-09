function y=dd(n)
    y=0;
    if n==0 then
        y=1
    end
endfunction
n=-2:2;
for i = 1 : length(n)
    f(i) = dd(n(i));
end
plot2d3(n, f)
xlabel('n')
ylabel('Impulse Function') 