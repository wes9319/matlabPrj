function circle2
n=100
x=linspace(0,360,n+1)
x1=cosd(x);
y1=sind(x);
plot(x1,y1),
axis('image')
end
