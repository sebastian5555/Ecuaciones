%metodo de Runge_Kutta
clc
f=@(t,y) -2*t*(y^2) ;
a=0;
b=2;
n=3;
h=(b-a)/n;
y0=1;
[u,v] =Runge_Kutta(f,a,b,y0,n);
plot(u, v)


t=a:h:b;
w= 1./((t.^2)+1);
hold on
plot(u, w,'r')
error=max(abs(v-w))
