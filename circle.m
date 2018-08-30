function circle
r1=1
[X,Y,Z]=sphere();
surf(X*r1,Y*r1,Z*r1)
axis('equal');
hold on
n=100
x=linspace(0,360,n+1)
x1=cosd(x)*2.5;
y1=sind(x)*2.5;
plot(x1,y1),
axis('image')
hold off
hold on
n=100
x=linspace(0,360,n+1)
x1=cosd(x)*4;
y1=sind(x)*4;
plot(x1,y1),
axis('image')
hold off
hold on
r2=0.50
[X,Y,Z]=sphere();
surf(X*r2,Y*r2,Z*r2)
axis('equal');
hold off
hold on
r3=0.25
[[X,Y,Z]=sphere()].*[2.5,0,0,0;0,2.5,0,0;0,0,2.5,0;0,0,0,1];
surf(X*r3,Y*r3,Z*r3)
axis('equal');
hold off
end

