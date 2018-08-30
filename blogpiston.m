function [xx,yy,x,t2] = blogpiston(t1,x,t2)
e=0.001;
lm=35;
lb=56;
f1=lm*sin(t1)-lb*sin(t2);
f2=lm*cos(t1)+lb*cos(t2)-x;
while abs(f1)>e | abs(f2)>e
 df1x=0;
 df1t2=-lb*cos(t2);
 df2x=-1;
 df2t2=-lb*sin(t2);
 A=[df1x,df1t2;df2x,df2t2];
 B=[-f1;-f2];
 X=A\B;
 if X==[0;0]
  break
 end
 x=x+X(1);
 t2=t2+X(2);
 f1=lm*sin(t1)-lb*sin(t2);
 f2=lm*cos(t1)+lb*cos(t2)-x;
end
xx=[0,lm*sin(t1),0];
yy=[0,lm*cos(t1),x];
function [X,Y]=cuad(x,y,e,a);
r=e*sqrt(2);
b=pi/4-a;
X=[x-r*sin(b),x+r*cos(b),x+r*sin(b),x-r*cos(b),x-r*sin(b)];
Y=[y-r*cos(b),y-r*sin(b),y+r*cos(b),y+r*sin(b),y-r*cos(b)];
paso=6*pi/180;
nc=100;
t1=pi/4;
x=70;
t2=30*pi/180;
X=[0,0,0];
Y=X;
XP=[0,0,0,0,0];
YP=XP;
for i=1:nc
    [xx,yy,x,t2] = blogpiston(t1,x,t2);
    X(i,:)=xx;
    Y(i,:)=yy;
    t1=t1+paso;
    [xx,yy]=cuad(xx(3),yy(3),5,0);
    XP(i,:)=xx;
    YP(i,:)=yy;
end
for i=1:nc
    plot(-100,-100)
    hold on
    plot(100,100)
    plot(X(i,:),Y(i,:),'-o')
    plot(XP(i,:),YP(i,:))
    pause(.1)
    hold off
end
