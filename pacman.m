function pacman (G)
n=size(G);
filu=ones(1,n(1,2));
G=[G;filu];

for t=1:0.1:15
    A=[t/2,0,t;0,t/2,exp(-(t-10).^2);0,0,1];
    for i=1:1:n(1,2)
        R(:,i)= A*G(:,i);
    end
    plot(R(1,:),R(2,:))
    axis([-5,15,-5,15])
    y=getframe;
end
