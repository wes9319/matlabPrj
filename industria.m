function industria(A,xo,t)
y=xo;
for i=1:t
    y(:,i+1)=A*y(:,i);
end
T=0:t;

subplot(2,2,1)
plot(y(1,:),y(2,:))
xlabel({'unidades producidas (millones)'});
ylabel({'unidades vendidas (millones)'});
title({'producci?n vs demanda'});

subplot(2,2,2)
plot(T,y(1,:)-y(2,:))
xlabel({'meses'});
ylabel({'Inventario acumulado (millones)'});
title({'Inventario'});

subplot(2,2,3)
plot(T, y(1,:))
xlabel({'meses'});
ylabel({'unidades producidas (millones)'});
title({'PRODUCCION'});

subplot(2,2,4)
plot(T, y(2,:))
xlabel({'meses'});
ylabel({'unidades vendidas (millones)'});
title({'DEMANDA'});

end