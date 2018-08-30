function taylorsin
t=-4*pi:0.01:4*pi;
y=sin(t)./t;
for n=0:1:10    
    z=0;
    contador=0;
    for j=-4*pi:0.01:4*pi
        contador=contador+1;
        suma=0;
        for i=0:1:n
            suma=suma+(((-1)^i)*(j)^(2*i))/factorial(2*i+1);
        end     
        z(1,contador)=suma;
    end
    hold on
    
    h1=plot(t,y,'r');
    h2=plot(t,z);
    axis([-4*pi,4*pi,-2,2])
    Y=getframe;
    
    delete(h1);
    delete(h2);
end
movie(Y)
end
