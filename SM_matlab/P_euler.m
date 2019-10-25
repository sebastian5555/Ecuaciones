clear all
f=@(t,y) -2*t*y^2;
a=0;
b=2;
n=50;
h=(b-a)/n;
y0=1;
u =Euler(f,a,b,y0,n);
plot(u)


t=a:h:b;
w= 1./(t.^2+1);
hold on
plot (w,'r')
error=max(abs(u-w))