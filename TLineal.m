function Y=TLineal(G,A) %Permite realizar la T. Lineal A a la matriz de V?rtices G
tamano=size(G); % Almacena el tamano de la matriz G en un vector horizontal [n m]
MaxGx=max(abs(G(1,:)))+1; % El m?ximo valor de X para ajuste de pantalla
MaxGy=max(abs(G(2,:)))+1; % El m?ximo valor de Y para ajuste de pantalla

for i=1:1:tamano(2)
    Y(:,i)=A*G(:,i); %Multiplica cada vertice por la matriz A y almacena el resultado en una columna de Y
end

MaxYx=max(abs(Y(1,:)))+1;
MaxYy=max(abs(Y(2,:)))+1;

% Escogiendo un solo factor de correci?n para la pantalla
FX=max(MaxGx,MaxYx);
FY=max(MaxGy,MaxYy);

subplot(1,2,1) %permite dividir la pantalla de gr?ficos en 2
plot(G(1,:),G(2,:))
axis equal
axis([-FX,FX,-FY,FY])

subplot(1,2,2)
plot(Y(1,:),Y(2,:))
axis equal
axis([-FX,FX,-FY,FY])

end 