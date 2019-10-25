clear all
f=@(t,y) 2*y+1;
a=0;
b=2;
n=50;
h=(b-a)/n;
y0=3;


u =Euler(f,a,b,y0,n);
%plot(u,'r')
hold on
m = Euler_mejorado(f,a,b,y0,n);
%plot(m, 'b')
hold on
x = Runge1_Kutta(f,a,b,y0,n);
%plot(x ,'g')

t=a:h:b;
w= -(1./2) + (7./2)*exp(2*t);
hold on
%plot (w,'k')

plot(abs(u-w), 'r')
plot(abs(m-w), 'b')
plot(abs(x-w), 'g')
