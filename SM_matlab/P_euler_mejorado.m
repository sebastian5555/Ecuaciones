clear all
f=@(t,y) 2*y+1;
a=0;
b=2;
n=10;
h=(b-a)/n;
y0=3;
u =Euler_mejorado(f,a,b,y0,n);
plot(u)


t=a:h:b;
w= -(1./2) + (7./2)*exp(2*t);
hold on
plot (w,'r')
error=max(abs(u-w))