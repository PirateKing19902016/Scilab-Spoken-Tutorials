for i = 1:2:7
    disp(i)
end


for i = 1:5
    disp(i)
end


for i = 1:5
    disp(i)
    if (i == 2)
        break
    end
end


for i = 1:5
    if ( i < 3) then
        continue
    else
        disp(i)
    end
end

help <=


help less


v = [1 5 3];
for x = v
    disp(x)
end

v = [1 5 3];
for x = v
    disp(x^2)
end


i = 0;
while (i<=5)
    i = i+1;
    disp(i)
    if (i == 3) then
        break
    end
end
