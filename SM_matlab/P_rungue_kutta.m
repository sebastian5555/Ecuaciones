clc
f=@(t,y) 2*y+1 ;
a=0;
b=2;
n=20;
h=(b-a)/n;
y0=3;
[u,v] =Runge_Kutta(f,a,b,y0,n);
plot(u, v)

t=a:h:b;
w= -(1./2) + (7./2)*exp(2*t);
hold on
plot(u, w,'r')
error=max(abs(v-w))